#!/usr/bin/perl

use POSIX qw(strftime);

my $pjroot="/Users/owner99/apps/load_fx_data";
my $workdir=$pjroot."/zip";
my $logdir=$pjroot."/log";
my $bkdir=$pjroot."/rate_data";
my $bindir=$pjroot."/bin";
my $curtime=(strftime "%Y%m%d%H%M%S", localtime);
my $logfile=$logdir."/loaddata".$curtime.".log";
my $sqlfile=$logdir."/loaddata".$curtime.".sql";
my $sqllog=$logdir."/loaddata".$curtime.".sql.log";
my $regDB=$logdir."/regDB.db";
my $ldSQL=$bindir."/load_data_to_tmp_tables_from_views.sql";
my $ldlog=$logdir."/load_data_to_tmp_tables_from_views.sql.".$curtime.".log";
my $targetDB="fx";
@target=();
$index=0;

#system( "echo $logfile");
open LOG, ">>$logfile"
    or die "Cannot open log file:$logfile. Error:$!";

# initialize.
print LOG "Starting....\n";
print LOG "Loading data from regDB.\n";
open (DB, $regDB) and @DBDATA=<DB> and chop(@DBDATA) and close DB
    or print LOG "Cannot open DB file:$regDB. Error:$!" && die "exit!";
#print LOG @DBDATA;
print LOG "Open a new sql file for writing.\n";
open SQL, ">>$sqlfile"
    or print LOG "Cannot open sql file:$sqlfile. Error:$!" && die "exit!";

# unzip all the zip files.
print LOG "unzip all the zip file.\n";
(system 'cd '.$workdir.' && unzip \*.zip') == 0
    or print LOG "Cannot unzip the zip files! Error:$!\n"
       && die "exit!";

# remove all the zip files.
print LOG "remove all the zip files.\n";
(system "rm $workdir/*.zip") == 0
    or print LOG "Cannot remove the zip files! Error:$!\n"
       && die "exit!";

print LOG "Call seekFolders sub from main routine.\n";
seekFolders($workdir);

close SQL;
print LOG "Execute the sql file.\n";
(system "export PGPASSWORD=pgsql1 && psql -U pgsql $targetDB -f $sqlfile".
       " -o $sqllog") == 0
    or print LOG "Cannot execute sql command.\n" && die "exit!";

# update regDB.
open WDB, ">>$regDB"
    or print LOG "Cannot open DB file for writing. Error:$!\n" && die "exit!";
while (@target) {
    $filename.=shift(@target)."\n";
}
print WDB "These files were loaded at $curtime.\n";
print WDB $filename if length($filename) > 0;
close WDB;

print LOG "Move files from workspace to backup storage.\n";
(system "cp -R ".$workdir.'/* '.$bkdir.' && rm -R '.$workdir.'/*') == 0
    or print LOG "Cannot copy files from workspace to backup storage.\n";

print LOG "Load data to tmporary tables.\n";
(system "export PGPASSWORD=pgsql1 && psql -U pgsql $targetDB -f $ldSQL".
        " -o $ldlog") == 0
    or print LOG "Cannot load data to temporary tables.\n" && die "exit!";

print LOG "Finished.\n";
close LOG;

# check all the csv files.
# if already loaded, remove it from workspace.
# else inclue it into sql file.
sub seekFolders{
    local ( $dir)=@_;
    opendir ( $folder, $dir)
       || print LOG "Cannot open folder:$dir. Error:$!\n" && die "exit!";
#    print LOG 'seekFolders:$dir='. $dir."\n";
    local @array=readdir($folder);

    # scan all the element of the folder.
    for(local $i=0; $i < @array; $i++) {
        $aname=$array[$i];
#        print LOG 'seekFolders:$i='. $i.'**$array['.$i.']='.$aname.".\n";
        print LOG "Element=$dir/$aname.\n";
        # current element is csv file.
        if ((-f "$dir/$aname") && $aname=~/\.csv$/i) {
            # check already load. 0: not loaded, 1: loaded.
            $already=0;
            foreach $elm (@DBDATA) {
                if ($elm eq $aname) {
                    $already=1;
                }
            }
            # remove is csv file cause already loaded.
            if ($already == 1) { 
                print LOG "File:$aname is already loaded.\n";
                (system "rm $dir/$aname") == 0
                    or print LOG "Cannot remove file:$dir/$aname. Error:$!\n"
                       && die "exit!";
            }
            # include it into sql file for loading.
            else {
                print LOG "Including file:$aname into sql file.\n";
                print SQL "select 'Load data from file:".
                      $aname."' as label;\n";
                print SQL "copy t_".lc(substr($aname, 0, 6)).
                      " from E'".$dir."/".$aname."' delimiter ',';\n";
                print SQL "insert into m_".lc(substr($aname, 0, 6)).
                      " (id, opening_price, high_price, low_price,".
                      " closing_price, date_time) select id, opening_price,".
                      " high_price, low_price, closing_price,".
                      " fx_get_timestamp(id) from t_".lc(substr($aname, 0, 6)).
                      ";\n";
                print SQL "insert into tmp_".lc(substr($aname, 0, 6)).
                      " (id, opening_price, high_price, low_price,".
                      " closing_price, date_time) select id, opening_price,".
                      " high_price, low_price, closing_price,".
                      " fx_get_timestamp(id) from t_".lc(substr($aname, 0, 6)).
                      ";\n";
                print SQL "delete from t_".lc(substr($aname, 0, 6)).";\n";
                print SQL "select count(*) from m_".lc(substr($aname, 0, 6)).
                      " where date_time is null;\n";
                print SQL "select count(*) from tmp_".lc(substr($aname, 0, 6)).
                      " where date_time is null;\n";
                filteringFiles($dir."/".$aname);
                $target[$index++]=$aname;
            }
        }
        # current element is directory.
        elsif(-d $dir."/".$aname && $aname ne '.' && $aname ne '..') {
            print LOG 'seekFolders:in elsif. $i='. $i.
                  '**$array['.$i.']='.$aname."\n";
            seekFolders("$dir/$aname");
        }
    }

    closedir($folder);
    return;
}

# remove the first line from the original csv file.
sub filteringFiles {
    my $fileName = shift;
#    print LOG 'filteringFiles:fileName='. $fileName."¡¡¡¡";
    open FH, $fileName or die "$!";
    @all = <FH>;
    close FH;
    my $flag = 0;

    open FH, $fileName or die "$!";
    while ( $line = <FH> && $flag == 0) {
#        print 'filteringFiles:$line='. $line."\n";
#        return;
         print LOG 'filteringFiles:fileName='. $fileName."\n";
         $num = $. - 1;
         sub_del( $num);
         $flag = 1;
         break;
    }
#    print LOG 'filteringFiles:$flag='. $flag."\n";
    close FH;
    if ($flag == 1) {
        sub_write($fileName);
    }
}

sub sub_del {
    my $line_num = shift;
    delete $all[$line_num];
}

sub sub_write {
    my $outFileName = shift;
    open FH2, '+>'.$outFileName or die "Error:$!";
    print FH2 @all;
    close FH2;
#    print "Finish";
}


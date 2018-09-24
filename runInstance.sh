if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit
fi
backupFile=$1
target="current"
setupDir=`pwd`

webRoot='/Ampps/www/'


echo "Restoring $backupFile to $target instance ..."
rm -rf $setupDir/deleteme
mkdir $setupDir/deleteme
cd $setupDir/deleteme
mv $setupDir/$backupFile*.gz $setupDir/deleteme
tar xvfz $backupFile*.gz
rm -rf *.tar
cd $backupFile/
pwd
ls -lrtha
rm -rf *trigger*
cat $setupDir/reserve/sqlhead.sql > $setupDir/deleteme/db.sql
cat ./*.sql >> $setupDir/deleteme/db.sql
cat $setupDir/reserve/addewalls.sql >> $setupDir/deleteme/db.sql
mysql -u root < $setupDir/deleteme/db.sql
rm -rf $webRoot/$target
rm -rf *.sql
mv * $webRoot/$target
cp $setupDir/reserve/htaccess $webRoot/$target/.htaccess
cat $setupDir/reserve/config.php >> $webRoot/$target/config.php
#apachectl -k restart

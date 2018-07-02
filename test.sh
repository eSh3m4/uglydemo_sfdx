for i in `find . -type f -name '*plan.json'`
do
    echo 'Treating Permission file : '$i
    sfdx force:data:tree:import --plan $i --targetusername $1
done

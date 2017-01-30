now=`date +"%m_%d_%Y"`

noerrors=true

#timestamp=`date +%T`

timestamp (){
date +"%T"
}

divider="_"

jobname=$JOB_NAME

logname=$jobname$divider$now

checklog="$WORKSPACE/$logname.log"

pwd > $checklog

#timestamp

echo "$(timestamp)"

echo "$(timestamp) some text " >> $checklog

if $noerrors

	then
    	echo Validation revealed no errors. 
        exit 0
    else
    	echo Validation has revealed errors. See this log.
        exit 1
fi
        

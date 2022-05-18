SCENARIO=$1
ENDPOINT=$2

./run-scenario.sh "./results/multinode/$SCENARIO/cfg-$SCENARIO-$ENDPOINT" $ENDPOINT &> "./results/multinode/$SCENARIO/$ENDPOINT/run.log"
SCENARIO=$1
ENDPOINT=$2

./run-scenario.sh "./results/single-node/$SCENARIO/cfg-$SCENARIO-$ENDPOINT" $ENDPOINT &> "./results/single-node/$SCENARIO/$ENDPOINT/run.log"
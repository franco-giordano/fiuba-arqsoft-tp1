#!/bin/bash

n_loops="${2:-11}"
endpoint="${1:-async}"

function send-requests {
  for ((i=0; i<$n_loops; i++)); do
      curl localhost:5555/${endpoint} &> /dev/null &
      pids[${i}]=$!
  done

  for pid in ${pids[*]}; do
      wait $pid
  done
}

time send-requests




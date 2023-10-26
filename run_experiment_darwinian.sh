#!/bin/bash

experiment_optimize=body_mapping_v1/darwinian_evolution/optimize.py
experiment_name=darwinian_bfs

for num in {1..1}
do
  screen -d -m -S "${experiment_name}" -L -Logfile "./${experiment_name}.log" nice -n19 python3 "${experiment_optimize}"
done

# Breadth-first search VS Random search for body geno to pheno mapping
We compared two robot body genotpye to phenotype mapping methods: breadth-first search and Random search. We tested these two methods with two frameworks: Lamarckian evolution framework and Darwinian evolution framework in a mujoco based wrapper called Revolve2. The release version of Revolve2 used in this project is v0.3.8-beta1 (https://github.com/ci-group/revolve2/releases/tag/v0.3.8-beta1).

Both frameworks were tested with two tasks (panoramic rotation and point navigation).
Regarding body genotype to phenotype mapping in both frameworks, we implemented two versions:
body_mapping_v1: CPPN, breadth-first query
body_mapping_v2: CPPN, random query (select random position, then use seed to inherit. No mutation needed).
Parameters used in the experiments are:
``` 
pop_size=50,
offspring_size=25,
nr_generations=30,
learner==RevDE,
learning_trials=280,
simulation_time=30 secs for rotation task,
simulation_time=40 secs for point navigation task.

``` 

## Installation 
Steps to install:
``` 
1. git clone git@github.com:onerachel/Breadth_First_vs_Random_Search.git
2. cd Breadth_First_vs_Random_Search
3. virtualenv -p=python3.8 .venv
4. source .venv/bin/activate
5. ./dev_requirements.sh
``` 

## Run experiments 
To run experiments, e.g. darwinian_point_navigation:
``` 
python darwinian_evolution/optimize.py
``` 
To show the simulation, add --visualize: 
``` 
python darwinian_evolution/optimize.py --visualize
``` 
To restart from the last optimization checkpoint, add --from_checkpoint: 
``` 
python darwinian_evolution/optimize.py --from_checkpoint
``` 
To plot fitness:
``` 
python darwinian_evolution/plot_fitness.py
``` 
To check the best robot wrt the fitness:
``` 
cd darwinian_evoluation
python rerun_best.py
```
To check the best robot wrt the fitness and save the video:
``` 
cd darwinian_evoluation
python rerun_best.py -r <OUTPUT-DIR>
```

## Examples


## Documentation 

[ci-group.github.io/revolve2](https://ci-group.github.io/revolve2/) 
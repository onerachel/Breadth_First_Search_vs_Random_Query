# Exploring Robot Morphology Spaces through Breadth-First Search and Random Query
Evolutionary robotics offers a powerful framework for designing and evolving robot morphologies, particularly in the context of modular robots. However, the role of query mechanisms during the genotype-to-phenotype mapping process has been largely overlooked. This research addresses this gap by conducting a comparative analysis of query mechanisms in the brain-body co-evolution of modular robots. Using two different query mechanisms, Breadth-First Search (BFS) and Random Query, within the context of evolving robot morphologies using CPPNs and robot controllers using tensors, and testing them in two evolutionary frameworks, Lamarckian and Darwinian systems, this study investigates their influence on evolutionary outcomes and performance. The findings demonstrate the impact of the two query mechanisms on the evolution and performance of modular robot bodies, including morphological intelligence, diversity, and morphological traits. This study suggests that BFS is both more effective and efficient in producing highly performing robots. It also reveals that initially, robot diversity was higher with BFS compared to Random Query, but in the Lamarckian system, it declines faster, converging to superior designs, while in the Darwinian system, BFS led to higher end-process diversity.

We compared two robot body genotype-to-phenotype mapping query mechanisms: breadth-first search (BFS) and random query. We tested these two methods within two frameworks: the Lamarckian evolution framework and the Darwinian evolution framework using a Mujoco-based wrapper called Revolve2. The release version of Revolve2 used in this project is v0.3.8-beta1 (available at https://github.com/ci-group/revolve2/releases/tag/v0.3.8-beta1)

Both frameworks were tested with two tasks (panoramic rotation and point navigation).
Regarding body genotype to phenotype mapping in both frameworks, we implemented two versions:
body_mapping_v1: CPPN, breadth-first search
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
1. git clone git@github.com:onerachel/Breadth_First_Search_vs_Random_Query.git
2. cd Breadth_First_Search_vs_Random_Query
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


## Highlighted results
PCA plot of Breadth-first search
![pca_biplot_v1](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/53a26625-3ee7-4d88-b681-fe5f399dad1d)
PCA plot of Random query
![pca_biplot_v2](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/8f5422b1-3375-4cdf-92f2-024d654d23d9)
![fitness_diversity_v1](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/b48c34c6-b196-4ae8-beb7-85edef990efa)
![fitness_diversity_v2](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/cd02fbc1-b0e3-4a2e-9b9a-ed8194298f68)
![fitness_avg_max_lineplot_v1](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/3afa98d9-15b9-438f-b671-e16a436d5eb1)
![fitness_avg_max_lineplot_v2](https://github.com/onerachel/Breadth_First_Search_vs_Random_Query/assets/75667244/d738a5e9-a062-4f42-86c5-f5ef8b632b38)

## Documentation 

[ci-group.github.io/revolve2](https://ci-group.github.io/revolve2/) 

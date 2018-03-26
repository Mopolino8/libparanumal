#!/bin/bash

cd /scratch/stimmel/convergence
for N in `seq 2 7`;
do  
    for meshnum in 18 29 60;
    do
	echo mesh=$meshnum N=$N;
	~/holmes/examples/advectionQuad3D/advectionMainQuad3D ~/holmes/meshes/cubed_grid_${meshnum}.msh $N | grep norm ;
    done;
done

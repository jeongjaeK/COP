#! /bin/bash

app_name=$1
percentage=$2
A="bfs"
B="gaussian"
C="hotspot3D"
D="pathfinder"
if [ $app_name == $A ]; then
    cd $A
    sed -i "2s/txt/txt $2/" run
    make clean
    make
    nsys nvprof ./run
    rm report*
    sed -i "2s/$2//" run
fi
if [ $app_name == $B ]; then
    cd $B
    sed -i "2s/1024/1024 $2/" run
    make clean
    make KERNEL_DIM="-DRD_WG_SIZE_0=128 -DRD_WG_SIZE_1=16 "
    nsys nvprof ./run
    rm report*
    sed -i "2s/$2//" run
fi
if [ $app_name == $C ]; then
    cd $C
    sed -i "2s/output.out/output.out $2/" run
    make clean
    make
    nsys nvprof ./run
    rm report*
    sed -i "2s/$2//" run
fi
if [ $app_name == $D ]; then
    cd $D
    sed -i "2s/20/20 $2/" run
    make clean
    make
    nsys nvprof ./run
    rm report*
    sed -i "2s/$2//" run
fi
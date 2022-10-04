# COP (Check Oversubscription Performance)
## Description
This program shows the performance according to the degree of oversubscription when unified memory is used during cuda programming. If you use this tool, you can get a best degree of oversubscription. It is based on Rodinia 3.1 benchmark.
## How to use
1. Download Rodinia 3.1 at [here](http://lava.cs.virginia.edu/Rodinia/download.htm).
2. Unzip rodinia_3.1.tar
```
$tar -cvf rodinia_3.1.tar
```
3. Go to rodinia3.1/cuda directory.
```
$cd rodinia3.1/cuda/
```
4. Change bfs, gaussian, hotspot3D, pathfinder directory to each directory in this file.
5. Exectue chk_oversubscription_performance.sh with parameters.
```
$./chk_oversubscription_performance.sh [app_name] [percentage]
```
## Example

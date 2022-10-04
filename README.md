# COP (Check Oversubscription Performance)
## Description
This program shows the performance according to the degree of oversubscription when unified memory is used during cuda programming. If you use this tool, you can get a best degree of oversubscription. It is based on Rodinia 3.1 benchmark.
## How to use
1. Download Rodinia 3.1 at [here](http://lava.cs.virginia.edu/Rodinia/download.htm).
2. Unzip rodinia_3.1.tar.bz
```
$tar -xvf rodinia_3.1.tar.bz
```
3. Go to rodinia3.1/cuda directory.
```
$cd rodinia3.1/cuda/
```
4. Change bfs, gaussian, hotspot3D, pathfinder directory to each directory in this file.
5. Exectue chk_oversubscription_perf.sh with parameters.
```
$./chk_oversubscription_perf.sh [app_name] [percentage]
```
* Parameters
  * app_name: bfs, gaussian, hotspot3D, pathfinder
  * percentage: 0-100
## Example
![image](https://user-images.githubusercontent.com/90786410/193745616-5f7e2c01-c4ee-4aa6-ad14-c8bd08855950.png)

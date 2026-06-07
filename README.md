# Circle Packing

![](https://img.shields.io/github/languages/top/tomtkg/Circle-Packing-Square)
![](https://img.shields.io/github/languages/code-size/tomtkg/Circle-Packing-Square)
![](https://img.shields.io/github/last-commit/tomtkg/Circle-Packing-Square)

Generate equal circles in the unit square by `CPS.m`.
Circle packing in a square is a packing problem. (from [wikipedia](https://en.wikipedia.org/wiki/Circle_packing_in_a_square).)

Generate equal circles in the unit circle by `CPC.m`.
Circle packing in a circle is a packing problem. (from [wikipedia](https://en.wikipedia.org/wiki/Circle_packing_in_a_circle).)

# How to use
`main.m` is the main file. You can execute `main.m` in one of the following ways:
### Run from the Command Line
Execute the script using MATLAB's batch mode:
```
matlab -batch main
```
### Run in MATLAB
Open and run `main.m` directly in MATLAB, or use the following example in the MATLAB command window:
```MATLAB:
[X,r] = CPS(7);
[X,r] = CPC(7);
```
### Requirements
To execute this script, the [Optimization Toolbox](https://www.mathworks.com/help/optim) is required.  

# Gallery
### Circle packing in a square
|![](image/CPS(1).png)|![](image/CPS(2).png)|![](image/CPS(3).png)|
|:-:|:-:|:-:|
|CPS(1) $r=0.50000000$|CPS(2) $r=0.29289322$|CPS(3) $r=0.25433310$|
|![](image/CPS(4).png)|![](image/CPS(5).png)|![](image/CPS(6).png)|
|CPS(4) $r=0.25000000$|CPS(5) $r=0.20710678$|CPS(6) $r=0.18768060$|
|![](image/CPS(7).png)|![](image/CPS(8).png)|![](image/CPS(9).png)|
|CPS(7) $r=0.17445763$|CPS(8) $r=0.17054069$|CPS(9) $r=0.16666667$|
### Circle packing in a circle
|![](image/CPC(1).png)|![](image/CPC(2).png)|![](image/CPC(3).png)|
|:-:|:-:|:-:|
|CPC(1) $r=1.00000000$|CPC(2) $r=0.50000000$|CPC(3) $r=0.46410162$|
|![](image/CPC(4).png)|![](image/CPC(5).png)|![](image/CPC(6).png)|
|CPC(4) $r=0.41421356$|CPC(5) $r=0.37019191$|CPC(6) $r=0.33333333$|
|![](image/CPC(7).png)|![](image/CPC(8).png)|![](image/CPC(9).png)|
|CPC(7) $r=0.33333333$|CPC(8) $r=0.30259339$|CPC(9) $r=0.27676865$|

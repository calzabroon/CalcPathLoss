% Path loss
clear all; clc;
d = 0:0.01:20;
K = 45;
gamma = 1.8;
d0 = 1;
L = K + 10*gamma*log10(d/d0);

PAF = 4;
FAF = 10;
   
OnefloorPerCell = K + 10*gamma*log10(19.75/d0) + 3*PAF + 0*FAF
TwofloorPerCell = K + 10*gamma*log10(19.75/d0) + 3*PAF + 1*FAF
ThreefloorPerCell = K + 10*gamma*log10(20.43/d0) + 3*PAF + 1*FAF
FourfloorPerCell = K + 10*gamma*log10(20.43/d0) + 3*PAF + 2*FAF
plot(d, L)
title('Path Loss')
xlabel('d(m)')
ylabel('L(dB)')
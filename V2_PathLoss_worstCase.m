% Path loss
clear all; clc;
d = 0:0.01:20;
K = 45;
gamma = 1.8;
d0 = 1;
L = K + 10*gamma*log10(d/d0);

PAF = 4;
FAF = 10;

distanceHeightis3 = sqrt(30^2 + 12.5^2 + 3^2) %xzy
distanceHeightis6 = sqrt(30^2 + 12.5^2 + 6^2) %xzy

   
OnefloorPerCell = K + 10*gamma*log10(distanceHeightis3/d0) + 4*PAF + 0*FAF
TwofloorPerCell = K + 10*gamma*log10(distanceHeightis3/d0) + 4*PAF + 1*FAF
ThreefloorPerCell = K + 10*gamma*log10(distanceHeightis6/d0) + 4*PAF + 1*FAF
FourfloorPerCell = K + 10*gamma*log10(distanceHeightis6/d0) + 4*PAF + 2*FAF
plot(d, L)
title('Path Loss')
xlabel('d(m)')
ylabel('L(dB)')
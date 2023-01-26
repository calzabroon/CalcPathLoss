% Path loss
clear all; clc;
d = 0:0.01:20;
K = 45;
gamma = 1.8;
d0 = 1;
L = K + 10*gamma*log10(d/d0);

PAF = 4;
FAF = 10;



prompt = "Floors per Cell: ";
fpc = input(prompt)
prompt = "Reuse Factor: ";
ReuseFactor = input(prompt);


if fpc == 1
%%1 floor
%calculate distance between Access point and transmitter
distanceA = sqrt(30^2 + 12.5^2 + (1*3)^2) %xzy
if ReuseFactor == 1
       distanceB = sqrt(0^2 + 12.5^2 + (0*3)^2) %xzy
    elseif ReuseFactor == 2   
       distanceB = sqrt(30^2 + 12.5^2 + (1*3)^2) %xzy
    elseif ReuseFactor == 3  
       distanceB = sqrt(0^2 + 12.5^2 + (2*3)^2) %xzy
    elseif ReuseFactor == 4  
       distanceB = sqrt(30^2 + 12.5^2 + (3*3)^2) %xzy
    elseif ReuseFactor == 5  
       distanceB = sqrt(0^2 + 12.5^2 + (4*3)^2) %xzy
end

%calculate total path loss   
A = K + 10*gamma*log10(distanceA/d0) + 5*PAF + 0*FAF
if ReuseFactor == 1
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 1*FAF
    elseif ReuseFactor == 2   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 2*FAF
    elseif ReuseFactor == 3   
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 3*FAF
    elseif ReuseFactor == 4   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 4*FAF
    elseif ReuseFactor == 5   
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 5*FAF
end
    
SIRatio = B - A

elseif(fpc == 2)
%%2 floor

%calculate distance between Access point and transmitter
distanceA = sqrt(30^2 + 12.5^2 + (2*3)^2) %xzy
if ReuseFactor == 1
       distanceB = sqrt(0^2 + 12.5^2 + (0*3)^2) %xzy
    elseif ReuseFactor == 2   
       distanceB = sqrt(30^2 + 12.5^2 + (2*3)^2) %xzy
    elseif ReuseFactor == 3  
       distanceB = sqrt(0^2 + 12.5^2 + (4*3)^2) %xzy
    elseif ReuseFactor == 4  
       distanceB = sqrt(30^2 + 12.5^2 + (6*3)^2) %xzy
    elseif ReuseFactor == 5  
       distanceB = sqrt(0^2 + 12.5^2 + (8*3)^2) %xzy
end

%calculate total path loss   
A = K + 10*gamma*log10(distanceA/d0) + 5*PAF + 1*FAF
if ReuseFactor == 1
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 1*FAF
    elseif ReuseFactor == 2   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 3*FAF
    elseif ReuseFactor == 3   
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 5*FAF
    elseif ReuseFactor == 4   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 7*FAF
    elseif ReuseFactor == 5   
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 9*FAF
end
SIRatio = B - A

elseif(fpc == 3)
%%3 floor

distanceA = sqrt(30^2 + 12.5^2 + (2*3)^2) %xzy
if ReuseFactor == 1
       distanceB = sqrt(0^2 + 12.5^2 + (1*3)^2) %xzy
    elseif ReuseFactor == 2   
       distanceB = sqrt(30^2 + 12.5^2 + (4*3)^2) %xzy
end

%calculate total path loss   
A = K + 10*gamma*log10(distanceA/d0) + 5*PAF + 1*FAF
if ReuseFactor == 1
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 2*FAF
    elseif ReuseFactor == 2   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 5*FAF
end
SIRatio = B - A


elseif(fpc == 4)
%%4 floor

distanceA = sqrt(30^2 + 12.5^2 + (2*3)^2) %xzy
if ReuseFactor == 1
       distanceB = sqrt(0^2 + 12.5^2 + (2*3)^2) %xzy
    elseif ReuseFactor == 2   
       distanceB = sqrt(30^2 + 12.5^2 + (5*3)^2) %xzy
end

%calculate total path loss   
A = K + 10*gamma*log10(distanceA/d0) + 5*PAF + 2*FAF
if ReuseFactor == 1
        B = K + 10*gamma*log10(distanceB/d0) + 0*PAF + 2*FAF
    elseif ReuseFactor == 2   
        B = K + 10*gamma*log10(distanceB/d0) + 5*PAF + 5*FAF
end

SIRatio = B - A

end
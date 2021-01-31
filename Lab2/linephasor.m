function [ Vs, Is ] = linephasor(V0,Gamma,gamma,Z0,z)
    Vs = V0*(exp(gamma*z)+Gamma*exp(-gamma*z));
    Is = V0*(exp(gamma*z)-Gamma*exp(-gamma*z))/Z0;
end



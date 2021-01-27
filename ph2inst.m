function [ v ] = ph2inst(V,omega,t)
    %Initialize empty voltage matrix
    v = zeros(length(V),length(t));
    % populate the matrix with the real part of the phasors
    for i = 1:length(V)
        v(i,:)=real(V(i)*exp(j*omega*t));
    end
end



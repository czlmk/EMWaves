% Problem 2
% Phasor mag on a lossless line

%__________________________________________________________________________
% section 1
%__________________________________________________________________________

%Constants
Z0 = 100;  % Ohms
Gamma = 0;
gamma = -2*pi*j;  % rad/m
V0 = 1; % Volts
z = linspace(-2,0,1000);

% Define empty voltage and current arrays
Vs = zeros(length(z));
Is = zeros(length(z));

% Get phasors (for all of z)
for i =1:length(z)
    [Vs(i), Is(i)] = linephasor(V0,Gamma,gamma,Z0,z(i));
    
    % Get the magnitude of the phasors
    Vs(i) = abs(Vs(i));
    Is(i) = abs(Is(i));
end

%Plotting the phasor magnitude:
for k=1:length(z)
plot(z, Vs(k),'b'); hold on;
    plot(z, 100*Is(k),'r'); hold off;
    xlabel('z [m]');
    ylabel('V(z)[V]');
    title('Magnitude of the voltage and current phasors'); legend('V(z)',' I(z)');
    axis([-2 0 -1.25 1.25]);
end

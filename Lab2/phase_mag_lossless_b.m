% Problem 2
% Phasor mag on a lossless line

%__________________________________________________________________________
% section 1
%__________________________________________________________________________

%Constants
Z0 = 100;  % Ohms
Gammaa = 1/3;

gamma = -2*pi*1i;  % rad/m
V0 = 1; % Volts
z = linspace(-2,0,200);

% Define empty voltage and current arrays
%a
Vsa = zeros(1,length(z));
Isa = zeros(1,length(z));
%for ratio
Vs = zeros(1,length(z));
Is = zeros(1,length(z));

% Get phasors (for all of z)

for i =1:length(z)
    [Vs(i), Is(i)] = linephasor(V0,Gammaa,gamma,Z0,z(i));
    
    % Get the magnitude of the phasors
    Vsa(i) = abs(Vs(i));
    Isa(i) = 100*abs(Is(i));
   
end

%v(z=0)/i(z=0)
vi_ratio = Vs(length(z))/Is(length(z))
%s = maxabs vs / minabs vs
s = max(Vsa)/min(Vsa)
%Plotting the phasor magnitude:
for k=1:length(z)
    plot(z, Vsa(k, :),'b'); hold on;
    plot(z, Isa(k, :),'r'); hold off;
    xlabel('z [m]');
    ylabel('V(z)[V]');
    title('Magnitude of the voltage and current phasors b'); legend('V(z)',' I(z)');
    axis([-2 0 -2 2]);
end

Movie(M)


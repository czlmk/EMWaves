%Question 2: Animate a wave with the given parameters.

v0 = 1; %Units of volts
omega = 2*pi*10^(-9); %rad/s
z0 = 50; %Ohms
phi = 0; %rads
vp = 2*10^8; %m/s

t_total = 5; %ns
z_total = 0.4; %m
samples = 1000;

% Defining the sampling period for each array
tstep = t_total/samples; 
zstep = z_total/samples;

% Defining the space and time arrays
t = (0:tstep:t_total);
z = (0:zstep:z_total);

%Create forward and backward waves
[vf, i_f] = forward_wave(v0, omega, phi, z0, vp, z, t)

for k=1:length(t)
    plot(z, vf(k, :),'b'); hold on;
    plot(z, vb(k, :),'r'); hold off;
    xlabel('z [m]');
    ylabel('v(z,t)[V]');
    title('instantaneous voltage on a lossless line'); legend('v_f(z,t)',' v_b(z,t)');
    axis([0 4 -1 1]);
    M(k)=getframe;
end;
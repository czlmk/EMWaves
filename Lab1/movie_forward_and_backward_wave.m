%Question 2: Animate a wave with the given parameters.

 v0 = 1; %V
 omega = 2*pi*10^9; %Hz
 phi = 0;
 z0 = 50; %ohms
 vp = 2*10^8; %m/s
 z = linspace(0,0.4,1000); %m
 t = linspace(0,5e-9,1000); %s

%Create forward and backward waves
vf = zeros(length(z), length(t));
vb = zeros(length(z), length(t));

%Populate the matrices with values
for j=1:length(t) %columns
    for i=1:length(z) %rows
      [vf(i,j), ~] = forward_wave(v0,omega,phi,z0,vp,z(i),t(j));
      [vb(i,j), ~] = backward_wave(v0,omega,phi,z0,vp,z(i),t(j));
    end
end

for k=1:length(t)
    plot(z, vf(k, :),'b'); hold on;
    plot(z, vb(k, :),'r'); hold off;
    xlabel('z [m]');
    ylabel('v(z,t)[V]');
    title('instantaneous voltage on a lossless line'); legend('v_f(z,t)',' v_b(z,t)');
    axis([0 0.4 -1 1]);
    M(k)=getframe;
end;

movie(M)

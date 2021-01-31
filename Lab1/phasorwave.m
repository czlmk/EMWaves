
omega = 2*pi*10^9; %Hz
z_arr = linspace(0, 0.4, 1000); %m
t = linspace(0,5e-9,1000); %s

% Define phasor
beta = 2*pi/0.2; % rad/m
V = 1i*exp(1i*beta*z_arr); %phasor array 

%Perform conversion
v = ph2inst(V, omega, t);

%Movie
 for k=1:length(t)
        plot(z_arr, v(:,k),'b');
        xlabel('z [m]');
        ylabel('v(z,t)[V]');
        title('Phasor to Instantaneous'); legend('v(z,t)');
        axis([0 0.4 -1 1]);
        M(k)=getframe;
 end
 
 Movie(M)
 
 % The wave phasor rotates counter-clockwise, and thus it travels as
 % expected (in the backwards direction). Since the voltage v(z, t=0) is
 % still a cosine, (cos(beta*z)), and it is phase-shifted by 90 degrees (or
 % j), we expect it to behave like a sine function. (sin(theta)=cos(pi/2 -
 % theta), but in our case, we set theta = - theta, and we get: -sin(theta)
 % = cos(theta+pi/2). Thus, our phasor is behaving as it should. We can
 % create a wave  travelling in the opposite direction. We simply change
 % the sign in the z-dependent phasor.
    
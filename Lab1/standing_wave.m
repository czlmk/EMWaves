 % Define constants
   v0 = 1; %V
   omega = 2*pi*10^9; %Hz
   phi = 0;
   z0 = 50; %ohms
   vp = 2*10^8; %m/s
   
   z = linspace(0,0.4,1000); %m
   t = linspace(0,5e-9,1000); %s
    
   %define voltage and current  matrices
   vs = zeros(length(z), length(t));
   is = zeros(length(z), length(t));
   
   for j=1:length(t)
       for i=1:length(z)
           [vf, i_f] = forward_wave(v0, omega, phi, z0, vp, z(i), t(j));
           [vb, ib] =  backward_wave(v0, omega, phi, z0, vp, z(i), t(j));
           % Now, add matrix elements together
           vs(i,j) = vf+vb;
           is(i,j) = i_f-ib;
       end
   end
   
   
for k=1:length(t)
   plot(z, vs(k, :),'b'); hold on;
   plot(z, is(k, :),'r'); hold off;
   xlabel('z [m]');
   ylabel('magnitude of wave (I, V)');
   title('instantaneous voltage on a lossless line'); legend('v_s(z,t)',' is(z,t)');
   axis([0 0.4 -2 2]);
   M(k)=getframe;
end;

movie(M)

   
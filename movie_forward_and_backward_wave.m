%Question 2: Animate a wave with the given parameters.

v0 = 1; %Units of volts
omega = 2*pi*10^(-9); %rad/s
z0 = 50; %Ohms

for k=1:length(t)
    plot(z, vf(k,:),’b’); hold on;
    plot(z, vb(k,:),’r’); hold off;
    xlabel(‘z [m]’);
    ylabel(‘v(z,t)[V]’);
    title(‘instantaneous voltage on a lossless line’); legend(‘v_f(z,t)’,’ v_b(z,t)’);
    axis([0 4 -1 1]);
    M(k)=getframe;
end;
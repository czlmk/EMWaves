reflection_coeff = (j*75-37.5)/(j*75+112.5)

mag = abs(reflection_coeff)
theta = angle(reflection_coeff)*180/pi


s = (1+0.62)/(1-0.62)


%1e)
Z_in = 75*(1+0.6202*exp(-2*j*25.13*0.2 +j*82.9*pi/180))/(1-0.6202*exp(-2*j*25.13*0.2+j*82.9*pi/180))

Z = abs(Z_in)
theta = angle(Z_in)*180/pi



%1f)

V_l = Z_in/(Z_in+17.5)

mag_v_l = abs(V_l)
ang_v_l = angle(V_l)*180/pi

i_l = 1/(Z_in+17.5)

i_mag = abs(i_l)
i_theta = angle(i_l)*180/pi


p = 1/2*real(V_l*conj(i_l))



%---------------------------------
% Textbook

alpha = 1/2*(0.2*sqrt(100*10^(-12)/0.25*10^(-6))+10^(-5)*sqrt(0.25*10^(-6)/100*10^(-12)))


beta = 500*10^6*sqrt((0.25*10^-6)*(100*10^(-12)))

lambda = 2*pi/beta

vp = 1/sqrt((0.25*10^(-6))*(100*10^-12))

Z0 =sqrt((0.25*10^(-6))/(100*10^(-12)))*(1+j/(2*500*10^6)*((10*10^-6)/(100*10^(-12)) - (0.2)/(0.25*10^-6)))


% Ex 10.5
tau = 2*(50-j*75)/(50+50 -j*75)
mag_tau = abs(tau)

gamma = (50 -j*75 -50)/(50+50 -j*75)

mag_gamma = abs(gamma)

%ex 10.6 

Pf = 10^(-0.35)*0.1

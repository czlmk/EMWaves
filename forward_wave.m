%For a forward-moving wave
function [vf, i_f] = forward_wave(v0, omega, phi, z0, vp, z, t)
   vf = @ (z,t) v0*cos(omega*(t-z/vp)+phi);
   i_f = vf/z0;
end
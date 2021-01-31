%For a backward-moving wave
function [vf, i_f] = backward_wave(v0, omega, phi, z0, vp, z, t)
   vf = v0*cos(omega*(t+z/vp)+phi);
   i_f = -(v0/z0)*cos(omega*(t+z/vp)+phi);
end
%For a backward-moving wave
function [vb, i_b] = backward_wave(v0, omega, phi, z0, vp, z, t)
   vb=@ (z,t) v0*cos(omega*(t+z/vp)+phi)
   i_b= -vf/z0
end

function [resps] = dlFeedback(K, f)

T = 1;
w = 2*pi*f;
nume = 2 * (1 - cos(w*T));
deno = (1+(K*K))-(2*K*cos(w*T));
resps = sqrt(abs(nume ./ deno));

end
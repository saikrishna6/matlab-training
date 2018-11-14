function K = exampleeven(P)
tic
P = 1:50000;
K = P(mod(P,2)==0);
disp('P');
toc
end
% Make a function to do the same as above 
%but without the use of any loops and conditions
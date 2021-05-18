% Computes the value of the Powell Sum benchmark function.
% SCORES = POWELLSUMFCN(X) computes the value of the Powell Sum function at 
% point X. POWELLSUMFCN accepts a matrix of size M-by-N and returns a vetor 
% SCORES of size M-by-1 in which each row contains the 
% function value for the corresponding row of X. 
% 
% Author: Mazhar Ansari Ardeh
% Please forward any comments or bug reports to mazhar.ansari.ardeh at
% Google's e-mail service or feel free to kindly modify the repository.
function scores = powellsumfcn(x)
    n = size(x, 2);
    absx = abs(x);
    
    scores = 0;
    for i = 1:n
        scores = scores + (absx(:, i) .^ (i + 1));
    end
end
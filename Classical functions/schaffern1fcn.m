% Computes the value of the Schaffer N. 1 function.
% SCORES = SCHAFFERN1FCN(X) computes the value of the Schaffer N. 1 
% function at point X. SCHAFFERN1FCN accepts a matrix of size M-by-2 and 
% returns a vetor SCORES of size M-by-1 in which each row contains the 
% function value for the corresponding row of X.
% 
% Author: Mazhar Ansari Ardeh
% Please forward any comments or bug reports to mazhar.ansari.ardeh at
% Google's e-mail service or feel free to kindly modify the repository.
function scores = schaffern1fcn(x)
    n = size(x, 2);
    assert(n == 2, 'Schaffer function N. 1 is defined only on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    numeratorcomp = (sin((X .^ 2 + Y .^ 2) .^ 2) .^ 2) - 0.5; 
    denominatorcomp = (1 + 0.001 * (X .^2 + Y .^2)) .^2 ;
    scores = 0.5 + numeratorcomp ./ denominatorcomp;
end
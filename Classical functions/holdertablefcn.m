% Computes the value of the H�lder table benchmark function.
% SCORES = HOLDERTABLEFCN(X) computes the value of the H�lder table  
% function at point X. HOLDERTABLEFCN accepts a matrix of size M-by-2 and 
% returns a vetor SCORES of size M-by-1 in which each row contains the 
% function value for the corresponding row of X. For more information 
% please visit: 
% https://en.wikipedia.org/wiki/Test_functions_for_optimization
% 
% Author: Mazhar Ansari Ardeh
% Please forward any comments or bug reports to mazhar.ansari.ardeh at
% Google's e-mail service or feel free to kindly modify the repository.
function scores = holdertablefcn(x)
    
   % n = size(x, 2);
   % assert(n == 2, 'The H�lder table function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    expcomponent = exp( abs(1 - (sqrt(X .^2 + Y .^ 2) / pi)) );
    
    scores = -abs(sin(X) .* cos(Y) .* expcomponent);
end
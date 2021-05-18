function scores = Schaffer2(x)
    
    n = size(x, 2);
%    assert(n == 2, 'The Schaffer N. 2 function is only defined on a 2D space.')
    X = x(:, 1);
    Y = x(:, 2);
    
    sincomponent = sin( (X .^ 2) - (Y .^ 2) ).^2;
    
    scores = 0.5 + ((sincomponent - 0.5) ./ (1 + 0.001 * (X .^2 + Y .^2)) .^2 ) ;
end

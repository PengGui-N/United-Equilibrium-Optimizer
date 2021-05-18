clc
clear
addpath(genpath(pwd)); 

%for i= 1:30
%% Settings 
fun_type        =1;            % 1: using classical functions;
n               = 30;           % dimensionality
functions       = 7 ;         % numbers of used test functions
num_test        = 10;           % number of testing (repeating)
%N               = 10*n;       % number of points per iteration 
N               = 100; 
M               = 100;           % number of iterations

%% Algorithms
algorithms = ones(10,1);
alg_names = {
   @BatAlgorithm
   @GreyWolfOptimizer
   @WingsuitFlyingSearch
   @ButterflyOptimizationAlgorithm
   @WhaleOptimizationAlgorithm
   @LSHADE
   @LSHADE_cnEpSin
   @LSHADE_SPACMA
   @EO
   @UEO
    };

for ii = 1:length(functions)
    num_alg = sum(algorithms);    
    temp.algorithms = alg_names;
    temp.fun = functions(ii);
        temp.category = 'classical2';
        [f_real, constraints, fun] = SetParametresfuc(functions(ii), n(ii));
        disp(['Test function: ', func2str(fun)]);        

    temp.n = n(ii);
    temp.mean_values = zeros(1,num_alg);
    temp.std = zeros(1,num_alg);
    temp.best_values = zeros(1,num_alg);
    temp.worst_values = zeros(1,num_alg);
    temp.mean_runtimes = zeros(1,num_alg);
    temp.values = zeros(num_test, num_alg);
    temp.all_values = zeros(M, num_test, num_alg);
    
    runtimes = zeros(num_test, num_alg);
    num_eval_fun_values = N*M;
    disp(['Dimensionality: ', num2str(n(ii))]);
    disp(' ');

    for i = 1:num_test
        disp(['Testing: ', num2str(i),' of ', num2str(num_test)]);
        f_val = zeros(num_alg, 1);
        x_best = zeros(num_alg, n(ii));
        num = 1;
        for j = 1:length(algorithms)
            if algorithms(j)
                [x_best(num,:), temp.values(i,num), temp.all_values(:,i,num), runtimes(i,num)] = alg_names{j}(fun, n(ii), constraints, N(ii), M);
                  temp.values(i,num) = temp.values(i,num)-f_real;
%                 if abs(temp.values(i,num)) < 1e-14
%                     temp.values(i,num) = 0;
%                 end
                num = num + 1;
            end
        end
    end

    for i=1:num_alg
        temp.mean_values(1,i) = 1/num_test*sum(temp.values(:,i));
        temp.std(1,i) = sqrt(1/num_test*sum((temp.values(:,i)).^2));
        temp.best_values(1,i) = min(temp.values(:,i));
        temp.worst_values(1,i) = max(temp.values(:,i));
        temp.mean_runtimes(1,i) = 1/num_test*sum(runtimes(:,i));
    end

    format shortE;
    disp(' ');
    disp('Mean solution values: '); disp(temp.mean_values(1,:));
    disp('Standard deviation of solution values: '); disp(temp.std(1,:));
    disp('Best solution values: '); disp(temp.best_values(1,:));
    disp('Worst solution values: '); disp(temp.worst_values(1,:));
    disp('Mean runtimes: '); disp(temp.mean_runtimes(1,:));
    disp('---------------------------------------------------------------------------------------------');
    
    %data{ii} = temp;
    
    str = matlab.unittest.diagnostics.ConstraintDiagnostic.getDisplayableString(functions);
    save(str)
end
%end
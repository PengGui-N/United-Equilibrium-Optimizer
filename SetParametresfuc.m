function [f_real, constraints, fun] = SetParametresfuc(fun_number, n)  
    global x_real;       
   %%%%%    Unimodal and separable     
    if fun_number == 1
        fun = @powellsumfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 1*[-ones(n,1), ones(n,1)];
    elseif fun_number == 2
        fun = @spherefcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:)); 
        constraints = 100*[-ones(n,1), ones(n,1)]; 
    elseif fun_number == 3
        fun = @sumsquaresfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:)); 
        constraints = 10*[-ones(n,1), ones(n,1)];   
    elseif fun_number == 4
        fun = @schwefel220fcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];
    elseif fun_number == 5
        fun = @schwefel221fcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];
  
 %%%%%%       Unimodal and non-separable       
        
    elseif fun_number == 6
        fun = @ackleyn2fcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 32*[-ones(n,1), ones(n,1)];
    elseif fun_number == 7
        fun = @boothfcn;
        x_real = [1 3];
        f_real = fun(x_real(1,:));
        constraints = 10*[-ones(n,1), ones(n,1)];  
    elseif fun_number == 8
        fun = @brownfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = [-4*ones(n,1), 4*ones(n,1)]; 
    elseif fun_number == 9
        fun = @exponentialfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 1*[-ones(n,1), ones(n,1)];
    elseif fun_number == 10
        fun = @leonfcn;
        x_real = [1,1];
        f_real = fun(x_real(1,:)); 
        constraints = [zeros(n,1),10*ones(n,1)];   
    elseif fun_number == 11
        fun = @matyasfcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 10*[-ones(n,1), ones(n,1)];
    elseif fun_number == 12
        fun = @schaffern2fcn; 
        x_real = [0 0];
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];
    elseif fun_number == 13
        fun = @schaffern4fcn; 
        x_real = [0, 1.253115];
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];


  %%%%%    Multimodal and separable benchmark functions      
        
      elseif fun_number == 14
        fun = @easomfcn;
        x_real = [pi,pi];
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];
      elseif fun_number == 15
        fun = @eggcratefcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 5*[-ones(n,1), ones(n,1)];        
      elseif fun_number == 16
        fun = @quarticfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:)); 
        constraints = 1.28*[-ones(n,1), ones(n,1)];   
      elseif fun_number == 17
        fun = @rastriginfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 5.12*[-ones(n,1), ones(n,1)]; 
      elseif fun_number == 18
        fun = @xinsheyangn1fcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 5*[-ones(n,1), ones(n,1)]; 

        
  %%%%%    Multimodal and non-separable benchmark functions 
      elseif fun_number == 19
        fun = @bohachevskyn2fcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];      
      elseif fun_number ==20
        fun = @holdertablefcn;
        x_real = [8.055023472141116, 9.664590028909654; 8.055023472141116, -9.664590028909654; 
            -8.055023472141116, 9.664590028909654; -8.055023472141116, -9.664590028909654];
        f_real = fun(x_real(1,:));
        constraints = 10*[-ones(n,1), ones(n,1)];
      elseif fun_number == 21
        fun = @levin13fcn;
        x_real = [1,1];
        f_real = fun(x_real(1,:));
        constraints = 10*[-ones(n,1), ones(n,1)];
      elseif fun_number == 22
        fun = @periodicfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 10*[-ones(n,1), ones(n,1)];          
      elseif fun_number == 23
        fun = @wolfefcn;
        x_real = [0,0,0];
        f_real = fun(x_real(1,:));
        constraints = [zeros(n,1),2*ones(n,1)];        
    elseif fun_number == 24
        fun = @bartelsconnfcn; 
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 500*[-ones(n,1), ones(n,1)];
    elseif fun_number == 25
        fun = @threehumpcamelfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 5*[-ones(n,1), ones(n,1)];
        
%%%%%%% other

      elseif fun_number == 26
        fun = @ackleyfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 32*[-ones(n,1), ones(n,1)]; 
    elseif fun_number == 27
        fun = @bohachevskyn1fcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 100*[-ones(n,1), ones(n,1)];
    elseif fun_number == 28
        fun = @dropwavefcn;
        x_real = [0,0];
        f_real = fun(x_real(1,:));
        constraints = 5.2*[-ones(n,1), ones(n,1)];
     elseif fun_number == 29
        fun = @griewankfcn;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 600*[-ones(n,1), ones(n,1)];                       
    elseif fun_number == 30
        fun = @rothyp;
        x_real = zeros(1, n);
        f_real = fun(x_real(1,:));
        constraints = 65.536*[-ones(n,1), ones(n,1)];

end
   x = -5:0.1:5;
   y = x; 

subplot(1,2,1);
     surffcn(@styblinskitankfcn, x, y);
subplot(1,2,2);
    contourfcn(@styblinskitankfcn, x, y);
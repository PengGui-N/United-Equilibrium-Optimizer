clc
clear
%load('20.mat');
evodata= temp.all_values;%%读所有数据
%5for i=1:13
% for i=1:13
%  alg=evodata(:,:,i);%%读某一算法数据
%  avg(i,:)= mean(alg,2)';
%  Mmax(i,:)= max(alg,[],2)';
%  Mmin(i,:) = min(alg,[],2)';
% 
% end

alg1=evodata(:,:,12)';%%读某一算法数据
alg2=evodata(:,:,9)';%%读某一算法数据

lb=constraints(1,1);
ub=constraints(1,2);
line=(abs(ub)+abs(lb))/100;
   x = lb:line:ub;
   y = x; 
   figure();%('Position',[0 0 500 500])
set(gcf,'outerposition',get(0,'screensize'));
subplot(1,2,1);
     surffcn(fun, x, y);
subplot(1,2,2);
    contourfcn(fun, x, y);
     hold on

for i=1:100
if rand >0.5
    X=1;
else
    X=-1;
end
ab1(i)=alg1(ceil(rand*10),i).*X;
end
for i=1:100
    if rand >0.5
    X=1;
else
    X=-1;
    end
ab2(i)=alg1(ceil(rand*10),i).*X;
end

for i=1:100
if rand >0.5
    X=1;
else
    X=-1;
end
ba1(i)=alg2(ceil(rand*10),i).*X;
end
for i=1:100
    if rand >0.5
    X=1;
else
    X=-1;
    end
ba2(i)=alg2(ceil(rand*10),i).*X;
end

  plot(ab1,ab2,'k.','markersize',15)
  plot(ba1,ba2,'r.','markersize',15)
  plot(f_real,f_real,'g.','markersize',20)
  axis([lb ub lb ub])
 % meshfcn(@ackleyfcn, x, y, 'x_1', 'x_2', 'z', true)
str = matlab.unittest.diagnostics.ConstraintDiagnostic.getDisplayableString(functions);
saveas(gcf, str, 'png')
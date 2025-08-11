clc; clear; close all; A = xlsread('d.xls');

p = A(:,2); pr = A(:,1); len = length(p); f = 0; w(1:30) = 1000;
for i = 31:len-1
    if f==1
        w(i) = w(i-1)/p(i-1)*p(i);
    else
        w(i) = w(i-1);
    end
    pp = (pr(i+1)-pr(i))/pr(i);
    if pp>0.02
        if f == 0
            f = 1;
            w(i) = 0.98*w(i-1);
        end
    end
    if pp<-0.02
        if f==1
            f = 0;
            w(i) = 0.98*w(i-1);
        end
    end
end
plot(1:len-1, w, 'b');
grid on;
axis([0 1827 0 90000]);
xlabel('Days');
ylabel('Wealth in total');
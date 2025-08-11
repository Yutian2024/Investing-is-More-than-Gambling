p = xlsread('data.xls');
c = 1000; w = 0; ss = 0; x(1:366) = 1000;

for i = 367:3:1823
    switch str(i-366)
        case '>'
            if c>0 %w/(w+c) < per(i)/100
                w = w+0.98*c; %*per(i)/100;
                c = 0; %c*(1-per(i)/100);
            end
%         case '+'
%             if c>0
%                 w = w+0.98*0.5*c;
%                 c = 0.5*c;
%             end
        case '<'
            if w>0 %w/(w+c) > 1-per(i)/100
                c = c+0.98*w; %*per(i)/100;
                w = 0; %w*(1-per(i)/100);
            end
%         case '-'
%             if w>0 %w/(w+c) > 1-per(i)/100
%                 c = c+0.98*w; %*per(i)/100;
%                 w = 0; %w*(1-per(i)/100);
%             end
    end
    w = w/p(i)*p(i+3);
    if i+2<length(st) && st(i+3) ~= str(i-366)
        ss = ss+1;
    end
    if i+2<length(st)
        fprintf('%4d %c %c  %.2f%% %.2f\n', i, st(i+3), str(i-366), w/(c+w)*100, c+w);
    else
        fprintf('%4d   %c  %.2f%% %.2f\n', i, str(i-366), w/(c+w)*100, c+w);
    end
    x(i) = w+c;
    x(i-1) = w+c;
    x(i-2) = w+c;
end
x(1823) = x(1822);
x(1824) = x(1823);
x(1825) = x(1824);
x(1826) = x(1825);
plot(1:1826, x, 'b');
grid on;
axis([0 1827 0 90000]);
xlabel('Days');
ylabel('Wealth in total');
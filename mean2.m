clc; clear; close all; A = xlsread('point.xls'); pr = xlsread('pr.xls');

p = A(:,1); pg = A(:,2); fg = A(:,3); len = length(p); w(1:30) = 1000; w(31:len) = 0; f(1:len) = 0; k(1: len) = 0; b = 0;
for i = 30:len
    m_3(i) = sum(p(i-10:i))/11;
    m_7(i) = sum(p(i-21:i))/22;
end

for i = 31:len
    s = 0;
    for j = 1:6
        s = s + k(i-j);
    end
    if f(i-1) == 0
        w(i) = w(i-1);
    end
    if f(i-1) == 1
        w(i) = w(i-1)/p(i-1)*p(i);
    end
    if f(i-1) == 2
        w(i) = w(i-1)/pg(i-1)*pg(i);
    end
    f(i) = f(i-1);
    
    if (m_3(i)>=m_7(i))&&(m_3(i-1)<=m_7(i-1))
        b = 1;
        if s<2 && (f(i-1)-fg(i))<2
            w(i) = 0.98*w(i);
            if f(i-1) == 2
                w(i) = 0.99*w(i);
            end
            f(i) = 1;
            k(i) = 1;
        end
    end
    
    if (m_3(i)<=m_7(i))&&(m_3(i-1)>=m_7(i-1))
        b = 0;
        if s<2
            w(i) = 0.98*w(i);
            f(i) = 0;
            k(i) = 1;
        end
    end
    
    if(f(i-1) == 0)&&(fg(i) == 1)&& (pg(i+5)-pg(i))/pg(i)>0.06
        w(i) = 0.99*w(i);
        f(i) = 2;
    end
    
    if b == 1 && fg(i) == 1 && f(i-1) == 2
        w(i) = 0.98*0.99*w(i);
        f(i) = 1;
        k(i) = 1;
    end
end
%fprintf('%d %d %f\n\n',x,y,w);
disp(w);
plot(1:len, w, 'b');
grid on;
axis([0 1827 0 90000]);
xlabel('Days');
ylabel('Wealth in total');

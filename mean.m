clc; clear; close all; A = xlsread('point.xls');

p = A(:,1); pg = A(:,2); fg = A(:,3); len = length(p); w = 1000; f = 0; k(1: len) = 0;
for i = 30:len
    m_3(i) = sum(p(i-10:i))/11;
    m_7(i) = sum(p(i-21:i))/22;
end

for i = 31:len
    s = 0;
    for j = 1:6
        s = s + k(i-j);
    end
    if f == 1
        w = w/p(i-1)*p(i);
    end
    
    if (m_3(i)>=m_7(i))&&(m_3(i-1)<=m_7(i-1))
        if s<2
            w = 0.98*w;
            f = 1;
            k(i) = 1;
        end
    end
    if (m_3(i)<=m_7(i))&&(m_3(i-1)>=m_7(i-1))
        if s<2
            w = 0.98*w;
            f = 0;
            k(i) = 1;
        end
    end
    if f == 0 && (pg(i+5)-pg(i))/pg(i)>0.05
        w = 0.99*w;
        f = 2;
    end
        
end
%fprintf('%d %d %f\n\n',x,y,w);
disp(w);
plot(1:len, p, 'k'); hold on;
plot(1:len, m_3, 'r'); hold on; plot(1:len, m_7, 'b');

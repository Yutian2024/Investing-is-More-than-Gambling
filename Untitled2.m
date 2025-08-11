clc; clear;
A = xlsread('3.xlsx');
b = A(:, 1); g = A(:, 2); f = A(:, 3); n = length(f); k(1) = 1;
x = 1000; w(1) = 1000;

for i = 2:n
    if (k(i-1) == 1)
        m = 1; k(i) = 1;
        if (0.98*b(i)/b(i-1) > m)
            m = 0.98*b(i)/b(i-1);
            k(i) = 2;
        end
        if (0.99*g(i)/g(i-1)*f(i) > m)
            m = 0.99*g(i)/g(i-1)*f(i);
            k(i) = 3;
        end
        x = m*x;
    end
    if (k(i-1) == 2)
        m = b(i)/b(i-1); k(i) = 2;
        if (0.98 > m)
            m = 0.98;
            k(i) = 1;
        end
        if (0.99*0.98*g(i)/g(i-1)*f(i) > m)
            m = 0.99*0.98*g(i)/g(i-1)*f(i);
            k(i) = 3;
        end
        x = m*x;
    end
    if (k(i-1) == 3)
        m = g(i)/g(i-1); k(i) = 3;
        if (0.99*f(i) > m)
            m = 0.99*f(i);
            k(i) = 1;
        end
        if (0.99*0.98*b(i)/b(i-1)*f(i) > m)
            m = 0.99*0.98*b(i)/b(i-1)*f(i);
            k(i) = 2;
        end
        x = m*x;
    end
    w(i) = x;
end

xlswrite('3.xlsx', w.', 2);
xlswrite('3.xlsx', k.', 3);

i = 1:n;
figure(2); 
plot(i, w, 'b');grid on;
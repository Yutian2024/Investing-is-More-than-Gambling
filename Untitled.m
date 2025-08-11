clc; clear;
A = xlsread('2.xlsx');
b = A(:, 1); g = A(:, 2); f = A(:, 3); n = length(f); k(n) = 1;
dp_c(1) = 1000; dp_b(1) = 0; dp_g(1) = 0;

for i = 2:n
    dp_c(i) = max([dp_c(i-1), 0.98*b(i)/b(i-1)*dp_b(i-1), 0.99*g(i)/g(i-1)*dp_g(i-1)*f(i)]);
    dp_b(i) = max([0.98*dp_c(i-1), b(i)/b(i-1)*dp_b(i-1), 0.99*0.98*g(i)/g(i-1)*dp_g(i-1)*f(i)]);
    dp_g(i) = max([0.99*dp_c(i-1)*f(i), 0.98*0.99*b(i)/b(i-1)*dp_b(i-1)*f(i), g(i)/g(i-1)*dp_g(i-1)]);
end

dp = [dp_c; dp_b; dp_g];
for j = 2:n
    i = n+2-j;
    if (k(i) == 1)
        if (dp(1, i) == dp(1, i-1))
            k(i-1) = 1;
        elseif (dp(1, i) == 0.98*b(i)/b(i-1)*dp(2, i-1))
            k(i-1) = 2;
        else k(i-1) = 3;
        end
    end
    if (k(i) == 2)
        if (dp(2, i) == 0.98*dp(1, i-1))
            k(i-1) = 1;
        elseif (dp(2, i) == b(i)/b(i-1)*dp(2, i-1))
            k(i-1) = 2;
        else k(i-1) = 3;
        end
    end
    if (k(i) == 3)
        if (dp(3, i) == 0.99*dp(1, i-1)*f(i))
            k(i-1) = 1;
        elseif (dp(3, i) == 0.98*0.99*b(i)/b(i-1)*dp(2, i-1)*f(i))
            k(i-1) = 2;
        else k(i-1) = 3;
        end
    end
end

xlswrite('2.xlsx', k.', 3);

x = 1000; w(1) = 1000;
for i = 2:n
    if (k(i) == 1)
        if (k(i-1) == 2)
            x = 0.98*b(i)/b(i-1)*x;
        end
        if (k(i-1) == 3)
            x = 0.99*g(i)/g(i-1)*x;
        end
    end
    if (k(i) == 2)
        if (k(i-1) == 1)
            x = 0.98*x;
        end
        if (k(i-1) == 2)
            x = b(i)/b(i-1)*x;
        end
        if (k(i-1) == 3)
            x = 0.99*0.98*g(i)/g(i-1)*x;
        end
    end
    if (k(i) == 3)
        if (k(i-1) == 1)
            x = 0.99*x;
        end
        if (k(i-1) == 2)
            x = 0.99*0.98*b(i)/b(i-1)*x;
        end
        if (k(i-1) == 3)
            x = g(i)/g(i-1)*x;
        end
    end
    w = [w x];
end

xlswrite('2.xlsx', w.', 2);

i = 1:n;
figure(1); 
plot(i, w, 'r');grid on;

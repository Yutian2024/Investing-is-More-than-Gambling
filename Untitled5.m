clear; clc;
A = xlsread('data2.xls');
r = A(:, 1); p = A(:, 2); l = length(r);
r_f = 0; p_f = 0; s = 0; acc(1:length(r)) = 0;

for i = 1:l
    if r(i)>0.0205
        r_f(i) = 3;
    elseif r(i)>0
        r_f(i) = 1;
    elseif r(i)>-0.02
        r_f(i) = -1;
    else r_f(i) = -3;
    end
    if p(i)>0.0205
        p_f(i) = 3;
    elseif p(i)>0
        p_f(i) = 1;
    elseif p(i)>-0.02
        p_f(i) = -1;
    else p_f(i) = -3;
    end
end

for i = 1:l
    if (r_f(i) == p_f(i))||(r_f(i)*p_f(i) == -1)
        s = s+1;
    end
    acc(i) = 100*s/i;
    fprintf('accuracy: %.2f%%\n', acc(i));
end

plot(1:l, acc);grid on;

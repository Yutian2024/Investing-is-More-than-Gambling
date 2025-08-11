clear;clc;
A = xlsread('go.xls');
ans = 0; st_p = '   '; s = 0; b(7, 1:65) = 0; x(1:7) = 0; st = ''; str = ''; per(1:1826) = 0;
u = 5;
 
for i = 1:364
    s(u, i) = 100*(A(i+u)-A(i))/A(i);
    x(u) = x(u)+1;
end
 
for i = 1:364
    if s(u, i)>3
        st = strcat(st, '>');
    elseif s(u, i)>0
        st = strcat(st, '+');
    elseif s(u, i)>-2
        st = strcat(st, '-');
    else
        st = strcat(st, '<');
    end
end
 
for i = 3:length(st)
    switch st(i-2:i)
        case '>>>'
            b(u, 1) = b(u, 1)+1;
        case '>>+'
            b(u, 2) = b(u, 2)+1;
        case '>>-'
            b(u, 3) = b(u, 3)+1;
        case '>><'
            b(u, 4) = b(u, 4)+1;
        case '>+>'
            b(u, 5) = b(u, 5)+1;
        case '>++'
            b(u, 6) = b(u, 6)+1;
        case '>+-'
            b(u, 7) = b(u, 7)+1;
        case '>+<'
            b(u, 8) = b(u, 8)+1;
        case '>->'
            b(u, 9) = b(u, 9)+1;
        case '>-+'
            b(u, 10) = b(u, 10)+1;
        case '>--'
            b(u, 11) = b(u, 11)+1;
        case '>-<'
            b(u, 12) = b(u, 12)+1;
        case '><>'
            b(u, 13) = b(u, 13)+1;
        case '><+'
            b(u, 14) = b(u, 14)+1;
        case '><-'
            b(u, 15) = b(u, 15)+1;
        case '><<'
            b(u, 16) = b(u, 16)+1;
        case '+>>'
            b(u, 17) = b(u, 17)+1;
        case '+>+'
            b(u, 18) = b(u, 18)+1;
        case '+>-'
            b(u, 19) = b(u, 19)+1;
        case '+><'
            b(u, 20) = b(u, 20)+1;
        case '++>'
            b(u, 21) = b(u, 21)+1;
        case '+++'
            b(u, 22) = b(u, 22)+1;
        case '++-'
            b(u, 23) = b(u, 23)+1;
        case '++<'
            b(u, 24) = b(u, 24)+1;
        case '+->'
            b(u, 25) = b(u, 25)+1;
        case '+-+'
            b(u, 26) = b(u, 26)+1;
        case '+--'
            b(u, 27) = b(u, 27)+1;
        case '+-<'
            b(u, 28) = b(u, 28)+1;
        case '+<>'
            b(u, 29) = b(u, 29)+1;
        case '+<+'
            b(u, 30) = b(u, 30)+1;
        case '+<-'
            b(u, 31) = b(u, 31)+1;
        case '+<<'
            b(u, 32) = b(u, 32)+1;
        case '->>'
            b(u, 33) = b(u, 33)+1;
        case '->+'
            b(u, 34) = b(u, 34)+1;
        case '->-'
            b(u, 35) = b(u, 35)+1;
        case '-><'
            b(u, 36) = b(u, 36)+1;
        case '-+>'
            b(u, 37) = b(u, 37)+1;
        case '-++'
            b(u, 38) = b(u, 38)+1;
        case '-+-'
            b(u, 39) = b(u, 39)+1;
        case '-+<'
            b(u, 40) = b(u, 40)+1;
        case '-->'
            b(u, 41) = b(u, 41)+1;
        case '--+'
            b(u, 42) = b(u, 42)+1;
        case '---'
            b(u, 43) = b(u, 43)+1;
        case '--<'
            b(u, 44) = b(u, 44)+1;
        case '-<>'
            b(u, 45) = b(u, 45)+1;
        case '-<+'
            b(u, 46) = b(u, 46)+1;
        case '-<-'
            b(u, 47) = b(u, 47)+1;
        case '-<<'
            b(u, 48) = b(u, 48)+1;
        case '<>>'
            b(u, 49) = b(u, 49)+1;
        case '<>+'
            b(u, 50) = b(u, 50)+1;
        case '<>-'
            b(u, 51) = b(u, 51)+1;
        case '<><'
            b(u, 52) = b(u, 52)+1;
        case '<+>'
            b(u, 53) = b(u, 53)+1;
        case '<++'
            b(u, 54) = b(u, 54)+1;
        case '<+-'
            b(u, 55) = b(u, 55)+1;
        case '<+<'
            b(u, 56) = b(u, 56)+1;
        case '<->'
            b(u, 57) = b(u, 57)+1;
        case '<-+'
            b(u, 58) = b(u, 58)+1;
        case '<--'
            b(u, 59) = b(u, 59)+1;
        case '<-<'
            b(u, 60) = b(u, 60)+1;
        case '<<>'
            b(u, 61) = b(u, 61)+1;
        case '<<+'
            b(u, 62) = b(u, 62)+1;
        case '<<-'
            b(u, 63) = b(u, 63)+1;
        case '<<<'
            b(u, 64) = b(u, 64)+1;
        otherwise
            b(u, 65) = b(u, 65)+1;
    end
end
 
fprintf('    >    +    -    <     \n');
 
sum = 0; b_1(u, 1:64) = 0; b_2(u, 1:16) = 0;
for i = 1:16
    sum = b(u, 4*i)+b(u, 4*i-1)+b(u, 4*i-2)+b(u, 4*i-3);
    if sum>0
        b_1(u, 4*i) = round(100*b(u, 4*i)/sum);
        b_1(u, 4*i-1) = round(100*b(u, 4*i-1)/sum);
        b_1(u, 4*i-2) = round(100*b(u, 4*i-2)/sum);
        b_1(u, 4*i-3) = round(100*b(u, 4*i-3)/sum);
        b_2(u, i) = sum/length(s(1, :));
    end
end
 
for i = 1:64
    if mod(i,4) == 1
        if i/16 < 1
            fprintf('>');
        elseif i/16 <2
            fprintf('+');
        elseif i/16 <3
            fprintf('-');
        else
            fprintf('<');
        end
        if mod(i, 16) == 1
            fprintf('> ');
        elseif mod(i, 16) == 5
            fprintf('+ ');
        elseif mod(i, 16) == 9
            fprintf('- ');
        else
            fprintf('< ');
        end
    end
    fprintf('%2d%%  ',b_1(u, i));
    if mod(i,4) == 0
        %fprintf('/%.1f%%\n',300*b_2(u, i/4));
        fprintf('\n');
        %fprintf('/%f\n', b_1(u, i-3)*b_2(u, i/4)*3+b_1(u, i-2)*b_2(u, i/4)*1-b_1(u, i-1)*b_2(u, i/4)*1-b_1(u, i)*b_2(u, i/4)*3)
    end
end
 
st_p = strcat(st(length(st)-u),st(length(st)));
 
for k = 365:(1265-u)
 
    s(u, k) = 100*(A(k+u)-A(k))/A(k);
    x(u) = x(u)+1;
 
    if s(u, k)>3
        st = strcat(st, '>');
    elseif s(u, k)>0
        st = strcat(st, '+');
    elseif s(u, k)>-2
        st = strcat(st, '-');
    else
        st = strcat(st, '<');
    end
 
    sum = 0; b_1(u, 1:64) = 0; b_2(u, 1:16) = 0;
    for i = 1:16
        sum = b(u, 4*i)+b(u, 4*i-1)+b(u, 4*i-2)+b(u, 4*i-3);
        if sum>0
            b_1(u, 4*i) = round(100*b(u, 4*i)/sum);
            b_1(u, 4*i-1) = round(100*b(u, 4*i-1)/sum);
            b_1(u, 4*i-2) = round(100*b(u, 4*i-2)/sum);
            b_1(u, 4*i-3) = round(100*b(u, 4*i-3)/sum);
            b_2(u, i) = sum/length(s(1, :));
        end
    end
    
    switch st_p
        case '>>'
            if max(b_1(u, 1:4)) == b_1(u, 1)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 1:4)) == b_1(u, 2)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 1:4)) == b_1(u, 3)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 1:4));
        case '>+'
            if max(b_1(u, 5:8)) == b_1(u, 5)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 5:8)) == b_1(u, 6)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 5:8)) == b_1(u, 7)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 5:8));
        case '>-'
            if max(b_1(u, 9:12)) == b_1(u, 9)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 9:12)) == b_1(u, 10)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 9:12)) == b_1(u, 11)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 9:12));
        case '><'
            if max(b_1(u, 13:16)) == b_1(u, 13)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 13:16)) == b_1(u, 14)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 13:16)) == b_1(u, 15)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 13:16));
        case '+>'
            if max(b_1(u, 17:20)) == b_1(u, 17)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 17:20)) == b_1(u, 18)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 17:20)) == b_1(u, 19)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 17:20));
        case '++'
            if max(b_1(u, 21:24)) == b_1(u, 21)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 21:24)) == b_1(u, 22)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 21:24)) == b_1(u, 23)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 21:24));
        case '+-'
            if max(b_1(u, 25:28)) == b_1(u, 25)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 25:28)) == b_1(u, 26)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 25:28)) == b_1(u, 27)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 25:28));
        case '+<'
            if max(b_1(u, 29:32)) == b_1(u, 29)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 29:32)) == b_1(u, 30)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 29:32)) == b_1(u, 31)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 29:32));
        case '->'
            if max(b_1(u, 33:36)) == b_1(u, 33)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 33:36)) == b_1(u, 34)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 33:36)) == b_1(u, 35)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 33:36));
        case '-+'
            if max(b_1(u, 37:40)) == b_1(u, 37)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 37:40)) == b_1(u, 38)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 37:40)) == b_1(u, 39)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 37:40));
        case '--'
            if max(b_1(u, 41:44)) == b_1(u, 41)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 41:44)) == b_1(u, 42)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 41:44)) == b_1(u, 43)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 41:44));
        case '-<'
            if max(b_1(u, 45:48)) == b_1(u, 45)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 45:48)) == b_1(u, 46)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 45:48)) == b_1(u, 47)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 45:48));
        case '<>'
            if max(b_1(u, 49:52)) == b_1(u, 49)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 49:52)) == b_1(u, 50)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 49:52)) == b_1(u, 51)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 49:52));
        case '<+'
            if max(b_1(u, 53:56)) == b_1(u, 53)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 53:56)) == b_1(u, 54)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 53:56)) == b_1(u, 55)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 53:56));
        case '<-'
            if max(b_1(u, 57:60)) == b_1(u, 57)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 57:60)) == b_1(u, 58)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 57:60)) == b_1(u, 59)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 57:60));
        case '<<'
            if max(b_1(u, 61:64)) == b_1(u, 61)
                st_p = strcat(st_p, '>');
            elseif max(b_1(u, 61:64)) == b_1(u, 62)
                st_p = strcat(st_p, '+');
            elseif max(b_1(u, 61:64)) == b_1(u, 63)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
            per(k) = max(b_1(u, 61:64));
    end
 
    switch st(k-2:k)
        case '>>>'
            b(u, 1) = b(u, 1)+1;
        case '>>+'
            b(u, 2) = b(u, 2)+1;
        case '>>-'
            b(u, 3) = b(u, 3)+1;
        case '>><'
            b(u, 4) = b(u, 4)+1;
        case '>+>'
            b(u, 5) = b(u, 5)+1;
        case '>++'
            b(u, 6) = b(u, 6)+1;
        case '>+-'
            b(u, 7) = b(u, 7)+1;
        case '>+<'
            b(u, 8) = b(u, 8)+1;
        case '>->'
            b(u, 9) = b(u, 9)+1;
        case '>-+'
            b(u, 10) = b(u, 10)+1;
        case '>--'
            b(u, 11) = b(u, 11)+1;
        case '>-<'
            b(u, 12) = b(u, 12)+1;
        case '><>'
            b(u, 13) = b(u, 13)+1;
        case '><+'
            b(u, 14) = b(u, 14)+1;
        case '><-'
            b(u, 15) = b(u, 15)+1;
        case '><<'
            b(u, 16) = b(u, 16)+1;
        case '+>>'
            b(u, 17) = b(u, 17)+1;
        case '+>+'
            b(u, 18) = b(u, 18)+1;
        case '+>-'
            b(u, 19) = b(u, 19)+1;
        case '+><'
            b(u, 20) = b(u, 20)+1;
        case '++>'
            b(u, 21) = b(u, 21)+1;
        case '+++'
            b(u, 22) = b(u, 22)+1;
        case '++-'
            b(u, 23) = b(u, 23)+1;
        case '++<'
            b(u, 24) = b(u, 24)+1;
        case '+->'
            b(u, 25) = b(u, 25)+1;
        case '+-+'
            b(u, 26) = b(u, 26)+1;
        case '+--'
            b(u, 27) = b(u, 27)+1;
        case '+-<'
            b(u, 28) = b(u, 28)+1;
        case '+<>'
            b(u, 29) = b(u, 29)+1;
        case '+<+'
            b(u, 30) = b(u, 30)+1;
        case '+<-'
            b(u, 31) = b(u, 31)+1;
        case '+<<'
            b(u, 32) = b(u, 32)+1;
        case '->>'
            b(u, 33) = b(u, 33)+1;
        case '->+'
            b(u, 34) = b(u, 34)+1;
        case '->-'
            b(u, 35) = b(u, 35)+1;
        case '-><'
            b(u, 36) = b(u, 36)+1;
        case '-+>'
            b(u, 37) = b(u, 37)+1;
        case '-++'
            b(u, 38) = b(u, 38)+1;
        case '-+-'
            b(u, 39) = b(u, 39)+1;
        case '-+<'
            b(u, 40) = b(u, 40)+1;
        case '-->'
            b(u, 41) = b(u, 41)+1;
        case '--+'
            b(u, 42) = b(u, 42)+1;
        case '---'
            b(u, 43) = b(u, 43)+1;
        case '--<'
            b(u, 44) = b(u, 44)+1;
        case '-<>'
            b(u, 45) = b(u, 45)+1;
        case '-<+'
            b(u, 46) = b(u, 46)+1;
        case '-<-'
            b(u, 47) = b(u, 47)+1;
        case '-<<'
            b(u, 48) = b(u, 48)+1;
        case '<>>'
            b(u, 49) = b(u, 49)+1;
        case '<>+'
            b(u, 50) = b(u, 50)+1;
        case '<>-'
            b(u, 51) = b(u, 51)+1;
        case '<><'
            b(u, 52) = b(u, 52)+1;
        case '<+>'
            b(u, 53) = b(u, 53)+1;
        case '<++'
            b(u, 54) = b(u, 54)+1;
        case '<+-'
            b(u, 55) = b(u, 55)+1;
        case '<+<'
            b(u, 56) = b(u, 56)+1;
        case '<->'
            b(u, 57) = b(u, 57)+1;
        case '<-+'
            b(u, 58) = b(u, 58)+1;
        case '<--'
            b(u, 59) = b(u, 59)+1;
        case '<-<'
            b(u, 60) = b(u, 60)+1;
        case '<<>'
            b(u, 61) = b(u, 61)+1;
        case '<<+'
            b(u, 62) = b(u, 62)+1;
        case '<<-'
            b(u, 63) = b(u, 63)+1;
        case '<<<'
            b(u, 64) = b(u, 64)+1;
        otherwise
            b(u, 65) = b(u, 65)+1;
    end
 
    if k>366
        if abs(str(k-366)-st(length(st)))<3
            ans = ans+1;
        end
    end
 
    str = strcat(str, st_p(3));
    
    st_p = strcat(st(length(st)-3),st(length(st)));
 
end
 
fprintf('    >    +    -    <     \n');
 
sum = 0; b_1(u, 1:64) = 0; b_2(u, 1:16) = 0;
for i = 1:16
    sum = b(u, 4*i)+b(u, 4*i-1)+b(u, 4*i-2)+b(u, 4*i-3);
    if sum>0
        b_1(u, 4*i) = round(100*b(u, 4*i)/sum);
        b_1(u, 4*i-1) = round(100*b(u, 4*i-1)/sum);
        b_1(u, 4*i-2) = round(100*b(u, 4*i-2)/sum);
        b_1(u, 4*i-3) = round(100*b(u, 4*i-3)/sum);
        b_2(u, i) = sum/length(s(1, :));
    end
end
 
for i = 1:64
    if mod(i,4) == 1
        if i/16 < 1
            fprintf('>');
        elseif i/16 <2
            fprintf('+');
        elseif i/16 <3
            fprintf('-');
        else
            fprintf('<');
        end
        if mod(i, 16) == 1
            fprintf('> ');
        elseif mod(i, 16) == 5
            fprintf('+ ');
        elseif mod(i, 16) == 9
            fprintf('- ');
        else
            fprintf('< ');
        end
    end
    fprintf('%2d%%  ',b_1(u, i));
    if mod(i,4) == 0
        %fprintf('/%.1f%%\n',300*b_2(u, i/4));
        fprintf('\n');
        %fprintf('/%f\n', b_1(u, i-3)*b_2(u, i/4)*3+b_1(u, i-2)*b_2(u, i/4)*1-b_1(u, i-1)*b_2(u, i/4)*1-b_1(u, i)*b_2(u, i/4)*3)
    end
end

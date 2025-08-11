clear; clc;
A = xlsread('data.xlsx');
con(1:length(A)) = 0; v(length(A), 1:16) = 0; s = 0;

for k = 1:length(A) %k作为当日
%fprintf('\nk=%d\n',k);

x(1:7) = 0;
for i = 1: k-2
    s(3, i) = 100*(A(i+3)-A(i))/A(i);
    x(3) = x(3)+1;
end

st = ' '; b(1:65) = 0;
for i = 1: length(s(1, :))
    %if s(1, i)~=0
        if s(1, i)>2.05
            st = strcat(st, '>');
        elseif s(1, i)>0
            st = strcat(st, '+');
        elseif s(1, i)>-2
            st = strcat(st, '-');
        else
            st = strcat(st, '<');
        end
    %end
end

for i = 3:length(st)
    switch st(i-2:i)
        case '>>>'
            b(1) = b(1)+1;
        case '>>+'
            b(2) = b(2)+1;
        case '>>-'
            b(3) = b(3)+1;
        case '>><'
            b(4) = b(4)+1;
        case '>+>'
            b(5) = b(5)+1;
        case '>++'
            b(6) = b(6)+1;
        case '>+-'
            b(7) = b(7)+1;
        case '>+<'
            b(8) = b(8)+1;
        case '>->'
            b(9) = b(9)+1;
        case '>-+'
            b(10) = b(10)+1;
        case '>--'
            b(11) = b(11)+1;
        case '>-<'
            b(12) = b(12)+1;
        case '><>'
            b(13) = b(13)+1;
        case '><+'
            b(14) = b(14)+1;
        case '><-'
            b(15) = b(15)+1;
        case '><<'
            b(16) = b(16)+1;
        case '+>>'
            b(17) = b(17)+1;
        case '+>+'
            b(18) = b(18)+1;
        case '+>-'
            b(19) = b(19)+1;
        case '+><'
            b(20) = b(20)+1;
        case '++>'
            b(21) = b(21)+1;
        case '+++'
            b(22) = b(22)+1;
        case '++-'
            b(23) = b(23)+1;
        case '++<'
            b(24) = b(24)+1;
        case '+->'
            b(25) = b(25)+1;
        case '+-+'
            b(26) = b(26)+1;
        case '+--'
            b(27) = b(27)+1;
        case '+-<'
            b(28) = b(28)+1;
        case '+<>'
            b(29) = b(29)+1;
        case '+<+'
            b(30) = b(30)+1;
        case '+<-'
            b(31) = b(31)+1;
        case '+<<'
            b(32) = b(32)+1;
        case '->>'
            b(33) = b(33)+1;
        case '->+'
            b(34) = b(34)+1;
        case '->-'
            b(35) = b(35)+1;
        case '-><'
            b(36) = b(36)+1;
        case '-+>'
            b(37) = b(37)+1;
        case '-++'
            b(38) = b(38)+1;
        case '-+-'
            b(39) = b(39)+1;
        case '-+<'
            b(40) = b(40)+1;
        case '-->'
            b(41) = b(41)+1;
        case '--+'
            b(42) = b(42)+1;
        case '---'
            b(43) = b(43)+1;
        case '--<'
            b(44) = b(44)+1;
        case '-<>'
            b(45) = b(45)+1;
        case '-<+'
            b(46) = b(46)+1;
        case '-<-'
            b(47) = b(47)+1;
        case '-<<'
            b(48) = b(48)+1;
        case '<>>'
            b(49) = b(49)+1;
        case '<>+'
            b(50) = b(50)+1;
        case '<>-'
            b(51) = b(51)+1;
        case '<><'
            b(52) = b(52)+1;
        case '<+>'
            b(53) = b(53)+1;
        case '<++'
            b(54) = b(54)+1;
        case '<+-'
            b(55) = b(55)+1;
        case '<+<'
            b(56) = b(56)+1;
        case '<->'
            b(57) = b(57)+1;
        case '<-+'
            b(58) = b(58)+1;
        case '<--'
            b(59) = b(59)+1;
        case '<-<'
            b(60) = b(60)+1;
        case '<<>'
            b(61) = b(61)+1;
        case '<<+'
            b(62) = b(62)+1;
        case '<<-'
            b(63) = b(63)+1;
        case '<<<'
            b(64) = b(64)+1;
        otherwise
            b(65) = b(65)+1;
    end
end

sum = 0; b_1(1:64) = 0; b_2(1:16) = 0;
for i = 1:16
    sum = b(4*i)+b(4*i-1)+b(4*i-2)+b(4*i-3);
    if sum>0
        b_1(4*i) = round(100*b(4*i)/sum);
        b_1(4*i-1) = round(100*b(4*i-1)/sum);
        b_1(4*i-2) = round(100*b(4*i-2)/sum);
        b_1(4*i-3) = round(100*b(4*i-3)/sum);
        b_2(i) = sum/length(s(1, :));
    end
end

%fprintf('    >    +    -    <      con\n');

for i = 1:64
%     if mod(i,4) == 1
%         if i/16 < 1
%             fprintf('>');
%         elseif i/16 <2
%             fprintf('+');
%         elseif i/16 <3
%             fprintf('-');
%         else
%             fprintf('<');
%         end
%         if mod(i, 16) == 1
%             fprintf('> ');
%         elseif mod(i, 16) == 5
%             fprintf('+ ');
%         elseif mod(i, 16) == 9
%             fprintf('- ');
%         else
%             fprintf('< ');
%         end
%     end
    %fprintf('%2d',b_1(i));
    %fprintf('%%  ');
    if mod(i,4) == 0
        v(k, i/4) = b_1(i-3)*b_2(i/4)*3+b_1(i-2)*b_2(i/4)*1-b_1(i-1)*b_2(i/4)*1-b_1(i)*b_2(i/4)*3;
        %fprintf('/%f\n', v(i/4));
    end
end

if k>365
        if st(k-1: k) == '>>'
            con(k) = con(k-1) + v(k, 1);
        elseif st(k-1: k) == '>+'
            con(k) = con(k-1) + v(k, 2);
        elseif st(k-1: k) == '>-'
            con(k) = con(k-1) + v(k, 3);
        elseif st(k-1: k) == '><'
            con(k) = con(k-1) + v(k, 4);
        elseif st(k-1: k) == '+>'
            con(k) = con(k-1) + v(k, 5);
        elseif st(k-1: k) == '++'
            con(k) = con(k-1) + v(k, 6);
        elseif st(k-1: k) == '+-'
            con(k) = con(k-1) + v(k, 7);
        elseif st(k-1: k) == '+<'
            con(k) = con(k-1) + v(k, 8);
        elseif st(k-1: k) == '->'
            con(k) = con(k-1) + v(k, 9);
        elseif st(k-1: k) == '-+'
            con(k) = con(k-1) + v(k, 10);
        elseif st(k-1: k) == '--'
            con(k) = con(k-1) + v(k, 11);
        elseif st(k-1: k) == '-<'
            con(k) = con(k-1) + v(k, 12);
        elseif st(k-1: k) == '<>'
            con(k) = con(k-1) + v(k, 13);
        elseif st(k-1: k) == '<+'
            con(k) = con(k-1) + v(k, 14);
        elseif st(k-1: k) == '<-'
            con(k) = con(k-1) + v(k, 15);
        elseif st(k-1: k) == '<<'
            con(k) = con(k-1) + v(k, 16);
        end
        con(k) = con(k);
end

end
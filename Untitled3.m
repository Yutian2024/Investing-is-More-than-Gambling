clear; clc;
A = xlsread('data.xlsx');
ans = 0; st_p = '   '; s = 0; b(1:65) = 0; x(1:7) = 0; st = '';

for i = 1:365
    s(3, i) = 100*(A(i+3)-A(i))/A(i);
    x(3) = x(3)+1;
end

for i = 1:365
        if s(3, i)>5
            st = strcat(st, '>');
        elseif s(3, i)>0
            st = strcat(st, '+');
        elseif s(3, i)>-5
            st = strcat(st, '-');
        else
            st = strcat(st, '<');
        end
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

st_p = st(length(st)-1:length(st));

for k = 365:1800
% fprintf('\nk=%d\n',k);

% for i = 1: k-1%length(A)-1
%     s(1, i) = 100*(A(i+1)-A(i))/A(i);
%     x(1) = x(1)+1;
% end
% for i = 1: k-7%length(A)-1
%     s(7, i) = 100*(A(i+7)-A(i))/A(i);
%     x(7) = x(7)+1;
% end

    s(3, k) = 100*(A(k+3)-A(k))/A(k);
    x(3) = x(3)+1;

% i = 2:length(A);
% figure(1);
% subplot(511); plot(i,s(1, :),'.b'); hold on; grid on; axis([0 1830 -50 50]);
% subplot(512); plot(i,s(2, :),'.c'); hold on; grid on; axis([0 1830 -50 50]);
% subplot(513); plot(i,s(3, :),'.r'); hold on; grid on; axis([0 1830 -50 50]);
% subplot(514); plot(i,s(4, :),'.k'); hold on; grid on; axis([0 1830 -50 50]);
% subplot(515); plot(i,s(5, :),'.m'); grid on; axis([0 1830 -50 50]);

% m(1:5) = 0;
% for i = 1:5
%     for j = 1:length(s(i, :))
%         if (s(i, j)>2)
%             m(i) = m(i)+1;
%         end
%     end
% end
% n(1:5) = 0;
% for i = 1:5
%     for j = 1:length(s(i, :))
%         if (s(i, j)<-2)
%             n(i) = n(i)+1;
%         end
%     end
% end
% 
% disp(m./x); disp(n./x);

% b_p(1:5, 1:50) = 0; b_m(1:5, 1:50) = 0;
% for i = 1:5
%     for j = 1:length(s(1,:))
%         if s(i, j)>0 
%             b_p(i, ceil(s(i, j))) = b_p(i, ceil(s(i, j)))+1;
%             fprintf('+');
%         end
%         if s(i, j)<0
%             b_m(i, -floor(s(i, j))) = b_m(i, -floor(s(i, j)))+1;
%             fprintf('-');
%         end
%     end
%     fprintf('\n');
% end
% disp(b_p); disp(b_m);
% 
% i = 0.5:49.5;
% figure(2);
% subplot(211); plot(i,b_p(1, :)); hold on; grid on;
% subplot(212); plot(i,b_m(1, :)); hold on; grid on;

    if s(3, k)>5
       st = strcat(st, '>');
    elseif s(3, k)>0
       st = strcat(st, '+');
    elseif s(3, k)>-5
        st = strcat(st, '-');
    else
        st = strcat(st, '<');
    end

    switch st_p
        case '>>'
            if max(b(1:4)) == b(1)
                st_p = strcat(st_p, '>');
            elseif max(b(1:4)) == b(2)
                st_p = strcat(st_p, '+');
            elseif max(b(1:4)) == b(3)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '>+'
            if max(b(5:8)) == b(5)
                st_p = strcat(st_p, '>');
            elseif max(b(5:8)) == b(6)
                st_p = strcat(st_p, '+');
            elseif max(b(5:8)) == b(7)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '>-'
            if max(b(9:12)) == b(9)
                st_p = strcat(st_p, '>');
            elseif max(b(9:12)) == b(10)
                st_p = strcat(st_p, '+');
            elseif max(b(9:12)) == b(11)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '><'
            if max(b(13:16)) == b(13)
                st_p = strcat(st_p, '>');
            elseif max(b(13:16)) == b(14)
                st_p = strcat(st_p, '+');
            elseif max(b(13:16)) == b(15)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '+>'
            if max(b(17:20)) == b(17)
                st_p = strcat(st_p, '>');
            elseif max(b(17:20)) == b(18)
                st_p = strcat(st_p, '+');
            elseif max(b(17:20)) == b(19)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '++'
            if max(b(21:24)) == b(21)
                st_p = strcat(st_p, '>');
            elseif max(b(21:24)) == b(22)
                st_p = strcat(st_p, '+');
            elseif max(b(21:24)) == b(23)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '+-'
            if max(b(25:28)) == b(25)
                st_p = strcat(st_p, '>');
            elseif max(b(25:28)) == b(26)
                st_p = strcat(st_p, '+');
            elseif max(b(25:28)) == b(27)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '+<'
            if max(b(29:32)) == b(29)
                st_p = strcat(st_p, '>');
            elseif max(b(29:32)) == b(30)
                st_p = strcat(st_p, '+');
            elseif max(b(29:32)) == b(31)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '->'
            if max(b(33:36)) == b(33)
                st_p = strcat(st_p, '>');
            elseif max(b(33:36)) == b(34)
                st_p = strcat(st_p, '+');
            elseif max(b(33:36)) == b(35)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '-+'
            if max(b(37:40)) == b(37)
                st_p = strcat(st_p, '>');
            elseif max(b(37:40)) == b(38)
                st_p = strcat(st_p, '+');
            elseif max(b(37:40)) == b(39)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '--'
            if max(b(41:44)) == b(41)
                st_p = strcat(st_p, '>');
            elseif max(b(41:44)) == b(42)
                st_p = strcat(st_p, '+');
            elseif max(b(41:44)) == b(43)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '-<'
            if max(b(45:48)) == b(45)
                st_p = strcat(st_p, '>');
            elseif max(b(45:48)) == b(46)
                st_p = strcat(st_p, '+');
            elseif max(b(45:48)) == b(47)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '<>'
            if max(b(49:52)) == b(49)
                st_p = strcat(st_p, '>');
            elseif max(b(49:52)) == b(50)
                st_p = strcat(st_p, '+');
            elseif max(b(49:52)) == b(51)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '<+'
            if max(b(53:56)) == b(53)
                st_p = strcat(st_p, '>');
            elseif max(b(53:56)) == b(54)
                st_p = strcat(st_p, '+');
            elseif max(b(53:56)) == b(55)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '<-'
            if max(b(57:60)) == b(57)
                st_p = strcat(st_p, '>');
            elseif max(b(57:60)) == b(58)
                st_p = strcat(st_p, '+');
            elseif max(b(57:60)) == b(59)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
        case '<<'
            if max(b(61:64)) == b(61)
                st_p = strcat(st_p, '>');
            elseif max(b(61:64)) == b(62)
                st_p = strcat(st_p, '+');
            elseif max(b(61:64)) == b(63)
                st_p = strcat(st_p, '-');
            else
                st_p = strcat(st_p, '<');
            end
    end

    switch st(k-2:k)
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

% fprintf('%c %c\n',st_p(3),st(length(st)));
    if st_p(3) == st(length(st))
        ans = ans+1;
    end

    st_p = st(length(st)-1:length(st));

% sum = 0; b_1(1:64) = 0; b_2(1:16) = 0;
% for i = 1:16
%     sum = b(4*i)+b(4*i-1)+b(4*i-2)+b(4*i-3);
%     if sum>0
%         b_1(4*i) = round(100*b(4*i)/sum);
%         b_1(4*i-1) = round(100*b(4*i-1)/sum);
%         b_1(4*i-2) = round(100*b(4*i-2)/sum);
%         b_1(4*i-3) = round(100*b(4*i-3)/sum);
%         b_2(i) = sum/length(s(1, :));
%     end
% end

% fprintf('    >    +    -    <     \n');

% for i = 1:64
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
%     fprintf('%2d%%  ',b_1(i));
%     if mod(i,4) == 0
%         %fprintf('/%.1f%%\n',300*b_2(i/4));
%         fprintf('\n');
%         %fprintf('/%f\n', b_1(i-3)*b_2(i/4)*3+b_1(i-2)*b_2(i/4)*1-b_1(i-1)*b_2(i/4)*1-b_1(i)*b_2(i/4)*3)
%     end
% end

end

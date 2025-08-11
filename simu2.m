p = xlsread('data.xls');
c = 1000; w = 0; ss = 0;

for i = 365:1:1825
    switch str(i-364)
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
    w = w/p(i)*p(i+1);
    if i+2<length(st) && st(i+1) ~= str(i-364)
        ss = ss+1;
    end
    if i+2<length(st)
        fprintf('%4d %c %c  %.2f%% %.2f\n', i, st(i+1), str(i-364), w/(c+w)*100, c+w);
    else
        fprintf('%4d   %c  %.2f%% %.2f\n', i, str(i-364), w/(c+w)*100, c+w);
    end
end
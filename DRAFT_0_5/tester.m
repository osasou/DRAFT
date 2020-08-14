addpath("utils")
r = 0
re = 0

EbN0 = 100
trials = 100
user_num = 1
prop=1
m = 3
p = 0

patches=2^r;

if (re==0)
    B = m*(m+3)/2 + p;
else
    B = m*(m+1)/2 + p;
end
if (r<1)
    B = patches*B;
else
    B = patches*B - sum(l(2:end));
end

output=[];
dist=[];
h_all_output = [];
prop=1.1;

disp(user_num)

[prop, ave_dist, h_output] = run(re, m, p, EbN0, user_num, trials);
disp("prop")
disp(prop)
output = [output, prop];
dist = [dist, ave_dist];
h_all_output = [h_all_output, h_output]
 
 figure
 plot(h_all_output,'o')
A = sort(h_all_output,'ComparisonMethod','real')
data = [real(A); imag(A)]
% data = [real(h_all_output)*10; imag(h_all_output)*10]
%  em_algo(data.')

filename = strcat("user_num", num2str(user_num),'EbN0', num2str(EbN0),'r', num2str(r),'m', num2str(m),'p', num2str(p), 'trials', num2str(trials))

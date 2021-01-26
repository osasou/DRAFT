function min_num = ber_compare_bits(input,output)

%propfound = inputの列で見て、outputにあったらcount+1していき、count/size(input,2)  (inputの列数)
k1 = size(input,2);
k2 = size(output,2);

found = zeros(k1,1);
%{
disp("k1")
disp(k1)

disp("k2")
disp(k2)

disp("input")
disp(input)
disp("output")
disp(output)
%}
for i = 1:k1
    %{
    disp("input")
    disp(i)
    disp(input(:,i))
    %}
    for j = 1:k2
        %{
        disp("output")
        disp(j)
        disp(output(:,j))
        %}
        try
            l = min([size(input,1) size(output,1)]);
            bits = xor(output(1:l,j),input(1:l,i));
            one_num = nnz(bits);
            if (j == 1)
                min_one_num = one_num;
            end
            if (one_num < min_one_num)
                min_one_num = one_num;
            end
        catch
%             disp("input and output size errorrrr in compare_bits.m")
%             disp("input size  output size")
%             disp([length(input'), length(output')])
        end
    end
end
if(k1 < sum(found>0))
    disp("warninggggg")
end
min_num = min_one_num; 
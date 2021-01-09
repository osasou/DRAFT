addpath("utils")
r = 0
re = 0

EbN0 = 30
trials = 10
slots = 2
user_num = 1
prop = 1
m = 9
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

prop_packet = 0;
prop_packet_list = [];

disp(user_num)
for ebn0 = 1:EbN0
    prop_packet = 0;
    for i = 1:trials
        this_prop = 0;
        [prop, input_bits, output_bits, ave_dist, h_output] = run(re, m, p, ebn0, user_num, slots);
%         disp("this prop")
%         disp(this_prop)
        output=[];
        dist=[];
        h_all_output = [];
        output = [output, prop];
        input_bits_all = input_bits;
        output_bits_all = output_bits;
        dist = [dist, ave_dist];
        h_all_output = [h_all_output, h_output];

        data2 = [real(h_all_output); imag(h_all_output)];

        [cluster1] = hard_clustering(data2.',user_num);
        ind1 = find(cluster1 == 1);

        mesg1 = input_bits_all(:,1);

        rec1 = [];
        
        cnt = 0;
        for j = 1:length(data2)
            j = j - 1;
            cnt = floor(j/user_num)+1;
            j = j + 1;
            if find(ind1 == j)
                rec1 = [rec1; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
        end

        pro1 = max([compare_bits(mesg1, rec1)]);

        this_prop = (pro1)/1;
        prop_packet = prop_packet+pro1;
        disp("pro1")
        disp(pro1)
        disp("prop_packet");
        disp(prop_packet)
    end

%     prop_packet = prop_packet/(trials*slots*1); % ここ，どういう意味だっけ？
    prop_packet = prop_packet/trials;           % こっちで良いのでは？
    prop_packet_list = [prop_packet_list; prop_packet];
    disp("prop_packet")
    disp(prop_packet)
end

for i = 1:EbN0
    disp(["EbN0",i,"dB","prop_packet",prop_packet_list(i)]);
end

x = 1:1:EbN0;
plot(x,1-prop_packet_list');
xlabel('EbN0')
ylabel('PER(Packet Error Rate)')

filename = strcat("tests/user_num", num2str(user_num),'EbN0', num2str(EbN0),'r', num2str(r),'m', num2str(m),'p', num2str(p), 'trials', num2str(slots))
save(filename, "EbN0", "output", "dist");

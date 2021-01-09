addpath("utils")
r = 0
re = 0

EbN0 = 20
trials = 1
slots = 8
user_num = 5
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
    for i = 1:trials
        this_prop = 0;
        [prop, input_bits, output_bits, ave_dist, h_output] = run(re, m, p, ebn0, user_num, slots);
        disp("this prop")
        disp(this_prop)
        output=[];
        dist=[];
        h_all_output = [];
        output = [output, prop];
        input_bits_all = input_bits;
        output_bits_all = output_bits;
        dist = [dist, ave_dist];
        h_all_output = [h_all_output, h_output];

        data2 = [real(h_all_output); imag(h_all_output)];

        [cluster1, cluster2, cluster3, cluster4, cluster5] = hard_clustering(data2.',user_num);
        ind1 = find(cluster1 == 1);
        ind2 = find(cluster2 == 1);
        ind3 = find(cluster3 == 1);
        ind4 = find(cluster4 == 1);
        ind5 = find(cluster5 == 1);

        mesg1 = input_bits_all(:,1);
        mesg2 = input_bits_all(:,2);
        mesg3 = input_bits_all(:,3);
        mesg4 = input_bits_all(:,4);
        mesg5 = input_bits_all(:,5);

        rec1 = [];
        rec2 = [];
        rec3 = [];
        rec4 = [];
        rec5 = [];
        cnt = 0;
        for j = 1:length(data2)
            j = j - 1;
            cnt = floor(j/user_num)+1;
            j = j + 1;
            if find(ind1 == j)
                rec1 = [rec1; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
            if find(ind2 == j)
                rec2 = [rec2; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
            if find(ind3 == j)
                rec3 = [rec3; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
            if find(ind4 == j)
                rec4 = [rec4; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
            if find(ind5 == j)
                rec5 = [rec5; output_bits_all(:,j - user_num*(cnt-1),cnt)];
            end
        end



        pro1 = max([compare_bits(mesg1, rec1) compare_bits(mesg1, rec2) compare_bits(mesg1, rec3) compare_bits(mesg1, rec4) compare_bits(mesg1, rec5)]);
        pro2 = max([compare_bits(mesg2, rec1) compare_bits(mesg2, rec2) compare_bits(mesg2, rec3) compare_bits(mesg2, rec4) compare_bits(mesg2, rec5)]);
        pro3 = max([compare_bits(mesg3, rec1) compare_bits(mesg3, rec2) compare_bits(mesg3, rec3) compare_bits(mesg3, rec4) compare_bits(mesg3, rec5)]);
        pro4 = max([compare_bits(mesg4, rec1) compare_bits(mesg4, rec2) compare_bits(mesg4, rec3) compare_bits(mesg4, rec4) compare_bits(mesg4, rec5)]);
        pro5 = max([compare_bits(mesg5, rec1) compare_bits(mesg5, rec2) compare_bits(mesg5, rec3) compare_bits(mesg5, rec4) compare_bits(mesg5, rec5)]);

        this_prop = (pro1+pro2+pro3+pro4+pro5)/5;
        prop_packet = prop_packet+pro1+pro2+pro3+pro4+pro5;
    end

    prop_packet = prop_packet/(trials*slots*5);
    prop_packet_list = [prop_packet_list; prop_packet];
    disp("prop_packet")
    disp(prop_packet)
end

for i = 1:EbN0
    disp(["EbN0",i,"dB","prop_packet",prop_packet_list(i)]);
end

x = 1:1:20;
plot(x,1-prop_packet_list');

filename = strcat("tests/user_num", num2str(user_num),'EbN0', num2str(EbN0),'r', num2str(r),'m', num2str(m),'p', num2str(p), 'trials', num2str(slots))
save(filename, "EbN0", "output", "dist");

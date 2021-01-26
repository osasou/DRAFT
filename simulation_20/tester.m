addpath("utils")
r = 0;

re = 0

start_ebn0 = 20
diff_EbN0 = 5
EbN0 = 20
trials = 70000000000;
slots = 3;
user_num = 3 %ここ変えるならEncoderのhも変える
prop = 1;
m = 8
p = 0;
skip_to_last_EbN0 = 0;
without_h = 0
without_sigma = 0

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
ber_list = [];
dist = 0;
dist_list = [];

disp(user_num)

for ebn0 = start_ebn0:EbN0
    if (rem(ebn0,diff_EbN0) ~= 0)
        continue;
    end
    
    if (skip_to_last_EbN0 == 1)
         if (ebn0 < EbN0)
             prop_packet_list = [prop_packet_list; 0];
             ber_list = [ber_list; 0.5];
             dist_list = [dist_list; 1];
             continue;
         end
    end
    
    prop_packet = 0;
    all_wrong_bit = 0;
    all_dist = 0;
    dist = 0;
    
    for i = 1:trials
        this_prop = 0;
        [prop, input_bits, output_bits, ave_dist, h_output] = run(re, m, p, ebn0, user_num, slots, without_h, without_sigma);
%         disp("this prop")
%         disp(this_prop)
         output=[];
        
         h_all_output = [];
         output = [output, prop];
         input_bits_all = input_bits;
         output_bits_all = output_bits;

         all_dist = all_dist + ave_dist;
         h_all_output = [h_all_output, h_output];

         data2 = [real(h_all_output); imag(h_all_output)]; 
         [clusters] = k_means_plus(data2.',user_num);
         ind1 = find(clusters(:,1) == 1);
         ind2 = find(clusters(:,2) == 1);
         ind3 = find(clusters(:,3) == 1);
%         mesg = [input_bits_all(:,1),input_bits_all(:,2),input_bits_all(:,3),input_bits_all(:,4),input_bits_all(:,5)];
        mesg1 = input_bits_all(:,1);
        mesg2 = input_bits_all(:,2);
        mesg3 = input_bits_all(:,3);

        rec1 = [];
        rec2 = [];
        rec3 = [];
        
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
%              if find(ind4 == j)
%                  rec4 = [rec4; output_bits_all(:,j - user_num*(cnt-1),cnt)];
%              end
%              if find(ind5 == j)
%                  rec5 = [rec5; output_bits_all(:,j - user_num*(cnt-1),cnt)];
%              end
        end
        
        pro = [];
%         pro = max(compare_bits(mesg, rec));
        pro1 = max([compare_bits(mesg1, rec1) compare_bits(mesg1, rec2) compare_bits(mesg1, rec3)]);
        pro2 = max([compare_bits(mesg2, rec1) compare_bits(mesg2, rec2) compare_bits(mesg2, rec3)]);
        pro3 = max([compare_bits(mesg3, rec1) compare_bits(mesg3, rec2) compare_bits(mesg3, rec3)]);
        
        pro1_bit = min([ber_compare_bits(mesg1, rec1) ber_compare_bits(mesg1, rec2) ber_compare_bits(mesg1, rec3)]);
        pro2_bit = min([ber_compare_bits(mesg2, rec1) ber_compare_bits(mesg2, rec2) ber_compare_bits(mesg2, rec3)]);
        pro3_bit = min([ber_compare_bits(mesg3, rec1) ber_compare_bits(mesg3, rec2) ber_compare_bits(mesg3, rec3)]);
%         if (pro1_bit+pro2_bit+pro3_bit ~= 0)
%             disp("not zero")
%         end
         this_wrong_bit = (pro1_bit+pro2_bit+pro3_bit)/user_num;
         this_prop = (pro1+pro2+pro3)/user_num;
%         prop_packet = prop_packet+pro1+pro2+pro3+pro4+pro5;
         prop_packet = prop_packet+this_prop;
         all_wrong_bit = all_wrong_bit + this_wrong_bit;
%         disp("pro1")
%         disp(pro1)
         if (rem(i,100) == 0)
             disp("i");
             disp(i);
             disp("prop_packetsssss");
             disp(prop_packet);
             disp("all_wrong_bit")
             disp(all_wrong_bit);
             disp("all_dist");
             disp(all_dist);
         end
    end
    
%     prop_packet = prop_packet/(trials*slots*1); % ここ，どういう意味だっけ？
    prop_packet = prop_packet/trials;           % こっちで良いのでは？
    dist = all_dist/trials;
    ber = all_wrong_bit/(trials*2^m);
    ber_list = [ber_list; ber];
    prop_packet_list = [prop_packet_list; prop_packet];
    dist_list = [dist_list; dist];
    disp("finish EbN0");
    disp(ebn0);
    disp("BER");
    disp(ber);
    disp("prop_packetdddd");
    disp(prop_packet);
    disp("h_dist");
    disp(dist);
end

for i = 1:(EbN0-start_ebn0)/diff_EbN0+1
    disp(["EbN0",(i-1)*diff_EbN0+start_ebn0,"dB","BER",ber_list(i),"prop_packet",1-prop_packet_list(i), "h_dist",dist_list(i)]);
end

figure
hold on
x = start_ebn0:diff_EbN0:EbN0;
plot(x,1-prop_packet_list');
xlabel('EbN0')
ylabel('PER(Packet Error Rate)')
hold off

figure
plot(x,ber_list');
xlabel('EbN0')
ylabel('BER');

figure
plot(x,dist_list');
xlabel('EbN0')
ylabel('h distance 二乗誤差の平均');

filename = strcat("tests/user_num", num2str(user_num),'EbN0', num2str(EbN0),'r', num2str(r),'m', num2str(m),'p', num2str(p), 'trials', num2str(trials))
save(filename, "EbN0", "user_num", "dist");

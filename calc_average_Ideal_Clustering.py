
# trialsが何万回かによって変えるつもりだったけど，別にlistの中に複数回書けば解決するか．
print('PER')
# OK 2/7
four_user_one_result_trials = 1
per_four_user_list_20dB = [0.16286,0.16283,0.16286,0.16239,0.16283]
print('4 User Ideal Clustering')
per_sum_4user_20 = 0
for num in per_four_user_list_20dB:
  per_sum_4user_20 += num
print(len(per_four_user_list_20dB))
print(per_sum_4user_20/len(per_four_user_list_20dB))

per_four_user_list_25dB = [0.14288,0.14284,0.14288,0.14296,0.14285]
per_sum_4user_25 = 0
for num in per_four_user_list_25dB:
  per_sum_4user_25 += num
print(len(per_four_user_list_25dB))
print(per_sum_4user_25/len(per_four_user_list_25dB))

per_four_user_list_30dB = [0.1375,0.13754,0.1375,0.13724,0.13758]
per_sum_4user_30 = 0
for num in per_four_user_list_30dB:
  per_sum_4user_30 += num
print(len(per_four_user_list_30dB))
print(per_sum_4user_30/len(per_four_user_list_30dB))


print('BER')
# OK 2/7
four_user_one_result_trials = 1
ber_four_user_list_20dB = [0.009702,0.0097006,0.009702,0.0096943,0.0097002]
print('4 User Ideal Clustering')
ber_sum_4user_20 = 0
for num in ber_four_user_list_20dB:
  ber_sum_4user_20 += num
print(len(ber_four_user_list_20dB))
print(ber_sum_4user_20/len(ber_four_user_list_20dB))


ber_four_user_list_25dB = [0.0084264,0.0084241,0.0084264,0.0084275,0.0084242]
ber_sum_4user_25 = 0
for num in ber_four_user_list_25dB:
  ber_sum_4user_25 += num
print(len(ber_four_user_list_25dB))
print(ber_sum_4user_25/len(ber_four_user_list_25dB))


ber_four_user_list_30dB = [0.008126,0.0081286,0.008126,0.0081218,0.0081302]
ber_sum_4user_30 = 0
for num in ber_four_user_list_30dB:
  ber_sum_4user_30 += num
print(len(ber_four_user_list_30dB))
print(ber_sum_4user_30/len(ber_four_user_list_30dB))


print('PER')
# OK 2/7
three_user_one_result_trials = 1
per_three_user_list_20dB = [0.078707,0.078693,0.0786,0.078687,0.07874,0.078653,0.07875,0.078713,0.078723,0.078733]
print('3 User Ideal Clustering')
per_sum_3user_20 = 0
for num in per_three_user_list_20dB:
  per_sum_3user_20 += num
print(len(per_three_user_list_20dB))
print(per_sum_3user_20/len(per_three_user_list_20dB))


per_three_user_list_25dB = [0.063217,0.06321,0.063153,0.063123,0.063143,0.063143,0.063203,0.063213,0.063237,0.063153]
per_sum_3user_25 = 0
for num in per_three_user_list_25dB:
  per_sum_3user_25 += num
print(len(per_three_user_list_25dB))
print(per_sum_3user_25/len(per_three_user_list_25dB))


per_three_user_list_30dB = [0.061307,0.061367,0.061383,0.06133,0.06142,0.06135,0.06131,0.061347,0.061297,0.061397]
per_sum_3user_30 = 0
for num in per_three_user_list_30dB:
  per_sum_3user_30 += num
print(len(per_three_user_list_30dB))
print(per_sum_3user_30/len(per_three_user_list_30dB))



print('BER')
# OK 2/7
three_user_one_result_trials = 1
ber_three_user_list_20dB = [0.0043894,0.0043894,0.0043897,0.0043928,0.0043897,0.0043921,0.0043916,0.0043903,0.0043901,0.0043889]
print('3 User Ideal Clustering')
ber_sum_3user_20 = 0
for num in ber_three_user_list_20dB:
  ber_sum_3user_20 += num
print(len(ber_three_user_list_20dB))
print(ber_sum_3user_20/len(ber_three_user_list_20dB))


ber_three_user_list_25dB = [0.0034916,0.0034909,0.0034913,0.0034907,0.0034913,0.0034909,0.0034906,0.0034913,0.0034927,0.0034918]
ber_sum_3user_25 = 0
for num in ber_three_user_list_25dB:
  ber_sum_3user_25 += num
print(len(ber_three_user_list_25dB))
print(ber_sum_3user_25/len(ber_three_user_list_25dB))


ber_three_user_list_30dB = [0.0033552,0.0033586,0.0033565,0.0033537,0.0033565,0.0033541,0.0033556,0.0033576,0.0033548,0.0033551]
ber_sum_3user_30 = 0
for num in ber_three_user_list_30dB:
  ber_sum_3user_30 += num
print(len(ber_three_user_list_30dB))
print(ber_sum_3user_30/len(ber_three_user_list_30dB))


print('PER')
# OK 2/7
two_user_one_result_trials = 1
per_two_user_list_20dB = [0.0062075,0.0062075,0.0062075,0.0062075,0.006215,0.006215]
print('Two User Ideal Clustering')
per_sum_2user_20 = 0
for num in per_two_user_list_20dB:
  per_sum_2user_20 += num
print(len(per_two_user_list_20dB))
print(per_sum_2user_20/len(per_two_user_list_20dB))


per_two_user_list_25dB = [0.0032025,0.0032025,0.00321,0.00321,0.00321,0.00321]
per_sum_2user_25 = 0
for num in per_two_user_list_25dB:
  per_sum_2user_25 += num
print(len(per_two_user_list_25dB))
print(per_sum_2user_25/len(per_two_user_list_25dB))


per_two_user_list_30dB = [0.0036475,0.0036475,0.003645,0.003645,0.003645,0.003645]
per_sum_2user_30 = 0
for num in per_two_user_list_30dB:
  per_sum_2user_30 += num
print(len(per_two_user_list_30dB))
print(per_sum_2user_30/len(per_two_user_list_30dB))


print('BER')
# OK 2/7
two_user_one_result_trials = 1
ber_two_user_list_20dB = [0.00030626,0.00030626,0.00030592,0.00030592,0.00030647,0.00030647]
print('Two User Ideal Clustering')
ber_sum_2user_20 = 0
for num in ber_two_user_list_20dB:
  ber_sum_2user_20 += num
print(len(ber_two_user_list_20dB))
print(ber_sum_2user_20/len(ber_two_user_list_20dB))


ber_two_user_list_25dB = [0.00014981,0.00014981,0.00015048,0.00015048,0.00015048,0.00015048]
ber_sum_2user_25 = 0
for num in ber_two_user_list_25dB:
  ber_sum_2user_25 += num
print(len(ber_two_user_list_25dB))
print(ber_sum_2user_25/len(ber_two_user_list_25dB))


ber_two_user_list_30dB = [0.00017057,0.00017057,0.00016967,0.00016967,0.00016967,0.00016967]
ber_sum_2user_30 = 0
for num in ber_two_user_list_30dB:
  ber_sum_2user_30 += num
print(len(ber_two_user_list_30dB))
print(ber_sum_2user_30/len(ber_two_user_list_30dB))


print('PER')
# OK
one_user_one_result_trials = 1
per_one_user_list_20dB = [0,0,0,0]
print('One User Ideal Clustering')
per_sum_1user_20 = 0
for num in per_one_user_list_20dB:
  per_sum_1user_20 += num
print(len(per_one_user_list_20dB))
print(per_sum_1user_20/len(per_one_user_list_20dB))


per_one_user_list_25dB = [0,0,0,0]
per_sum_1user_25 = 0
for num in per_one_user_list_25dB:
  per_sum_1user_25 += num
print(len(per_one_user_list_25dB))
print(per_sum_1user_25/len(per_one_user_list_25dB))


per_one_user_list_30dB = [0,0,0,0]
per_sum_1user_30 = 0
for num in per_one_user_list_30dB:
  per_sum_1user_30 += num
print(len(per_one_user_list_30dB))
print(per_sum_1user_30/len(per_one_user_list_30dB))


print('BER')
# OK
one_user_one_result_trials = 1
ber_one_user_list_20dB = [0,0,0,0]
print('One User Ideal Clustering')
ber_sum_1user_20 = 0
for num in ber_one_user_list_20dB:
  ber_sum_1user_20 += num
print(len(ber_one_user_list_20dB))
print(ber_sum_1user_20/len(ber_one_user_list_20dB))


ber_one_user_list_25dB = [0,0,0,0]
ber_sum_1user_25 = 0
for num in ber_one_user_list_25dB:
  ber_sum_1user_25 += num
print(len(ber_one_user_list_25dB))
print(ber_sum_1user_25/len(ber_one_user_list_25dB))


ber_one_user_list_30dB = [0,0,0,0]
ber_sum_1user_30 = 0
for num in ber_one_user_list_30dB:
  ber_sum_1user_30 += num
print(len(ber_one_user_list_30dB))
print(ber_sum_1user_30/len(ber_one_user_list_30dB))

print('PER')
print('At Most 4 User Ideal Clustering')
sum = 0
for num in per_four_user_list_20dB:
  sum += num*four_user_one_result_trials
for num in per_three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_20dB)*one_user_one_result_trials+len(per_two_user_list_20dB)*two_user_one_result_trials+len(per_three_user_list_20dB)*three_user_one_result_trials+len(per_four_user_list_20dB)*four_user_one_result_trials))

sum = 0
for num in per_four_user_list_25dB:
  sum += num*four_user_one_result_trials
for num in per_three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_25dB)*one_user_one_result_trials+len(per_two_user_list_25dB)*two_user_one_result_trials+len(per_three_user_list_25dB)*three_user_one_result_trials+len(per_four_user_list_25dB)*four_user_one_result_trials))

sum = 0
for num in per_four_user_list_30dB:
  sum += num*four_user_one_result_trials
for num in per_three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_30dB)*one_user_one_result_trials+len(per_two_user_list_30dB)*two_user_one_result_trials+len(per_three_user_list_30dB)*three_user_one_result_trials+len(per_four_user_list_30dB)*four_user_one_result_trials))


print('At Most 3 User Ideal Clustering')
sum = 0
for num in per_three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_20dB)*one_user_one_result_trials+len(per_two_user_list_20dB)*two_user_one_result_trials+len(per_three_user_list_20dB)*three_user_one_result_trials))

sum = 0
for num in per_three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_25dB)*one_user_one_result_trials+len(per_two_user_list_25dB)*two_user_one_result_trials+len(per_three_user_list_25dB)*three_user_one_result_trials))

sum = 0
for num in per_three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in per_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_30dB)*one_user_one_result_trials+len(per_two_user_list_30dB)*two_user_one_result_trials+len(per_three_user_list_30dB)*three_user_one_result_trials))


print('At Most 2 User Ideal Clustering')
sum = 0
for num in per_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_20dB)*one_user_one_result_trials+len(per_two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in per_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_20dB)*one_user_one_result_trials+len(per_two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in per_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in per_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(per_one_user_list_20dB)*one_user_one_result_trials+len(per_two_user_list_20dB)*two_user_one_result_trials))



print('BER')
print('At Most 4 User Ideal Clustering')
sum = 0
for num in ber_four_user_list_20dB:
  sum += num*four_user_one_result_trials
for num in ber_three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_20dB)*one_user_one_result_trials+len(ber_two_user_list_20dB)*two_user_one_result_trials+len(ber_three_user_list_20dB)*three_user_one_result_trials+len(ber_four_user_list_20dB)*four_user_one_result_trials))

sum = 0
for num in ber_four_user_list_25dB:
  sum += num*four_user_one_result_trials
for num in ber_three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_25dB)*one_user_one_result_trials+len(ber_two_user_list_25dB)*two_user_one_result_trials+len(ber_three_user_list_25dB)*three_user_one_result_trials+len(ber_four_user_list_25dB)*four_user_one_result_trials))

sum = 0
for num in ber_four_user_list_30dB:
  sum += num*four_user_one_result_trials
for num in ber_three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_30dB)*one_user_one_result_trials+len(ber_two_user_list_30dB)*two_user_one_result_trials+len(ber_three_user_list_30dB)*three_user_one_result_trials+len(ber_four_user_list_30dB)*four_user_one_result_trials))


print('At Most 3 User Ideal Clustering')
sum = 0
for num in ber_three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_20dB)*one_user_one_result_trials+len(ber_two_user_list_20dB)*two_user_one_result_trials+len(ber_three_user_list_20dB)*three_user_one_result_trials))

sum = 0
for num in ber_three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_25dB)*one_user_one_result_trials+len(ber_two_user_list_25dB)*two_user_one_result_trials+len(ber_three_user_list_25dB)*three_user_one_result_trials))

sum = 0
for num in ber_three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in ber_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_30dB)*one_user_one_result_trials+len(ber_two_user_list_30dB)*two_user_one_result_trials+len(ber_three_user_list_30dB)*three_user_one_result_trials))


print('At Most 2 User Ideal Clustering')
sum = 0
for num in ber_two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_20dB)*one_user_one_result_trials+len(ber_two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in ber_two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_20dB)*one_user_one_result_trials+len(ber_two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in ber_two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in ber_one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(ber_one_user_list_20dB)*one_user_one_result_trials+len(ber_two_user_list_20dB)*two_user_one_result_trials))
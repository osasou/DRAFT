
# trialsが何万回かによって変えるつもりだったけど，別にlistの中に複数回書けば解決するか．
print('PER')

# OK 2/7
four_user_one_result_trials = 1
per_four_user_list_20dB = [0.17657,0.1763,0.1763,0.17584,0.1763]
print('4 User With Slots ')
per_sum_4user_20 = 0
for num in per_four_user_list_20dB:
  per_sum_4user_20 += num
print(len(per_four_user_list_20dB))
print(per_sum_4user_20/len(per_four_user_list_20dB))

per_four_user_list_25dB = [0.1548,0.15474,0.15474,0.15453,0.15474]
per_sum_4user_25 = 0
for num in per_four_user_list_25dB:
  per_sum_4user_25 += num
print(len(per_four_user_list_25dB))
print(per_sum_4user_25/len(per_four_user_list_25dB))


per_four_user_list_30dB = [0.14911,0.14933,0.14933,0.14928,0.14933]
per_sum_4user_30 = 0
for num in per_four_user_list_30dB:
  per_sum_4user_30 += num
print(len(per_four_user_list_30dB))
print(per_sum_4user_30/len(per_four_user_list_30dB))



print('BER')

# OK 2/7
four_user_one_result_trials = 1
ber_four_user_list_20dB = [0.016745,0.016725,0.016725,0.016683,0.016725]
print('4 User With Slots ')
ber_sum_4user_20 = 0
for num in ber_four_user_list_20dB:
  ber_sum_4user_20 += num
print(len(ber_four_user_list_20dB))
print(ber_sum_4user_20/len(ber_four_user_list_20dB))


ber_four_user_list_25dB = [0.014639,0.014623,0.014623,0.014604,0.014623]
ber_sum_4user_25 = 0
for num in ber_four_user_list_25dB:
  ber_sum_4user_25 += num
print(len(ber_four_user_list_25dB))
print(ber_sum_4user_25/len(ber_four_user_list_25dB))


ber_four_user_list_30dB = [0.014206,0.014233,0.014233,0.014209,0.014233]
ber_sum_4user_30 = 0
for num in ber_four_user_list_30dB:
  ber_sum_4user_30 += num
print(len(ber_four_user_list_30dB))
print(ber_sum_4user_30/len(ber_four_user_list_30dB))



print('PER')
# OK 2/7
three_user_one_result_trials = 1
per_three_user_list_20dB = [0.08693,0.08614,0.086863,0.086197,0.08614,0.08871,0.08871,0.08871,0.08871,0.086133]
print('3 User With Slots')
per_sum_3user_20 = 0
for num in per_three_user_list_20dB:
  per_sum_3user_20 += num
print(len(per_three_user_list_20dB))
print(per_sum_3user_20/len(per_three_user_list_20dB))


per_three_user_list_25dB = [0.07095,0.070293,0.070967,0.070297,0.070293,0.069677,0.069677,0.069677,0.069677,0.070263]
per_sum_3user_25 = 0
for num in per_three_user_list_25dB:
  per_sum_3user_25 += num
print(len(per_three_user_list_25dB))
print(per_sum_3user_25/len(per_three_user_list_25dB))


per_three_user_list_30dB = [0.066803,0.065833,0.06678,0.065843,0.065823,0.066427,0.066427,0.066427,0.066427,0.065843]
per_sum_3user_30 = 0
for num in per_three_user_list_30dB:
  per_sum_3user_30 += num
print(len(per_three_user_list_30dB))
print(per_sum_3user_30/len(per_three_user_list_30dB))


print('BER')
# OK 2/7
three_user_one_result_trials = 1
ber_three_user_list_20dB = [0.0080797,0.0080849,0.0080999,0.0080715,0.0080565,0.0082992,0.0082992,00.0082992,00.0082992,0.0080848]
print('3 User With Slots')
ber_sum_3user_20 = 0
for num in ber_three_user_list_20dB:
  ber_sum_3user_20 += num
print(len(ber_three_user_list_20dB))
print(ber_sum_3user_20/len(ber_three_user_list_20dB))


ber_three_user_list_25dB = [0.0065757,0.0065408,0.0065774,00.0065403,0.0065411,0.006482,0.006482,0.006482,0.006482,0.0065376]
ber_sum_3user_25 = 0
for num in ber_three_user_list_25dB:
  ber_sum_3user_25 += num
print(len(ber_three_user_list_25dB))
print(ber_sum_3user_25/len(ber_three_user_list_25dB))


ber_three_user_list_30dB = [0.0061766,0.0061729,0.0061737,0.0061748,0.0061716,0.0061807,0.0061807,0.0061807,0.0061807,0.0061742]
ber_sum_3user_30 = 0
for num in ber_three_user_list_30dB:
  ber_sum_3user_30 += num
print(len(ber_three_user_list_30dB))
print(ber_sum_3user_30/len(ber_three_user_list_30dB))


print('PER')
# OK 2/7
two_user_one_result_trials = 1
per_two_user_list_20dB = [0.0064275,0.0064275,0.0064275,0.0064275,0.0064825,0.0064825]
print('Two User With Slots')
per_sum_2user_20 = 0
for num in per_two_user_list_20dB:
  per_sum_2user_20 += num
print(len(per_two_user_list_20dB))
print(per_sum_2user_20/len(per_two_user_list_20dB))


per_two_user_list_25dB = [0.0032425,0.0032425,0.0032425,0.0032425,0.0032575,0.0032575]
per_sum_2user_25 = 0
for num in per_two_user_list_25dB:
  per_sum_2user_25 += num
print(len(per_two_user_list_25dB))
print(per_sum_2user_25/len(per_two_user_list_25dB))


per_two_user_list_30dB = [0.003345,0.003345,0.003345,0.003345,0.0033125,0.0033125]
per_sum_2user_30 = 0
for num in per_two_user_list_30dB:
  per_sum_2user_30 += num
print(len(per_two_user_list_30dB))
print(per_sum_2user_30/len(per_two_user_list_30dB))


print('BER')
# OK 2/7
two_user_one_result_trials = 1
ber_two_user_list_20dB = [0.00044488,0.00044488,0.00044488,0.00044488,0.00044391,0.00044391]
print('Two User With Slots')
ber_sum_2user_20 = 0
for num in ber_two_user_list_20dB:
  ber_sum_2user_20 += num
print(len(ber_two_user_list_20dB))
print(ber_sum_2user_20/len(ber_two_user_list_20dB))


ber_two_user_list_25dB = [0.0002102,0.0002102,0.0002102,0.0002102,0.00021106,0.00021106]
ber_sum_2user_25 = 0
for num in ber_two_user_list_25dB:
  ber_sum_2user_25 += num
print(len(ber_two_user_list_25dB))
print(ber_sum_2user_25/len(ber_two_user_list_25dB))


ber_two_user_list_30dB = [0.00021362,0.00021362,0.00021362,0.00021362,0.00021061,0.00021061]
ber_sum_2user_30 = 0
for num in ber_two_user_list_30dB:
  ber_sum_2user_30 += num
print(len(ber_two_user_list_30dB))
print(ber_sum_2user_30/len(ber_two_user_list_30dB))






print('PER')
one_user_one_result_trials = 1
per_one_user_list_20dB = [0,0,0,0]
print('One User With Slots')
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
one_user_one_result_trials = 1
ber_one_user_list_20dB = [0,0,0,0]
print('One User With Slots')
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
print('At Most 4 User With Slots')
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


print('At Most 3 User With Slots')
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


print('At Most 2 User With Slots')
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
print('At Most 4 User With Slots')
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


print('At Most 3 User With Slots')
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


print('At Most 2 User With Slots')
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



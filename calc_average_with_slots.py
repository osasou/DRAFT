
# trialsが何万回かによって変えるつもりだったけど，別にlistの中に複数回書けば解決するか．
four_user_one_result_trials = 1
four_user_list_20dB = [0.1763,0.1763,0.1763,0.1763,0.1763]
print('4 User With Slots')
sum_4user_20 = 0
for num in four_user_list_20dB:
  sum_4user_20 += num
print(len(four_user_list_20dB))
print(sum_4user_20/len(four_user_list_20dB))


four_user_list_25dB = [0.15474,0.15474,0.15474,0.15474,0.15474]
sum_4user_25 = 0
for num in four_user_list_25dB:
  sum_4user_25 += num
print(len(four_user_list_25dB))
print(sum_4user_25/len(four_user_list_25dB))


four_user_list_30dB = [0.14933,0.14933,0.14933,0.14933,0.14933]
sum_4user_30 = 0
for num in four_user_list_30dB:
  sum_4user_30 += num
print(len(four_user_list_30dB))
print(sum_4user_30/len(four_user_list_30dB))



three_user_one_result_trials = 1
three_user_list_20dB = [0.08693,0.08614,0.086863,0.086197,0.08614,0.08871,0.08871,0.08871,0.08871,0.086133]
print('3 User With Slots')
sum_3user_20 = 0
for num in three_user_list_20dB:
  sum_3user_20 += num
print(len(three_user_list_20dB))
print(sum_3user_20/len(three_user_list_20dB))


three_user_list_25dB = [0.07095,0.070293,0.070967,0.070297,0.070293,0.069677,0.069677,0.069677,0.069677,0.070263]
sum_3user_25 = 0
for num in three_user_list_25dB:
  sum_3user_25 += num
print(len(three_user_list_25dB))
print(sum_3user_25/len(three_user_list_25dB))


three_user_list_30dB = [0.066803,0.065833,0.06678,0.065843,0.065823,0.066427,0.066427,0.066427,0.066427,0.065843]
sum_3user_30 = 0
for num in three_user_list_30dB:
  sum_3user_30 += num
print(len(three_user_list_30dB))
print(sum_3user_30/len(three_user_list_30dB))



two_user_one_result_trials = 1
two_user_list_20dB = [0.0059525,0.0059525,0.0064275,0.0064275,0.0064825,0.0064825]
print('Two User With Slots')
sum_2user_20 = 0
for num in two_user_list_20dB:
  sum_2user_20 += num
print(len(two_user_list_20dB))
print(sum_2user_20/len(two_user_list_20dB))


two_user_list_25dB = [0.0032975,0.0032975,0.0032425,0.0032425,0.0032575,0.0032575]
sum_2user_25 = 0
for num in two_user_list_25dB:
  sum_2user_25 += num
print(len(two_user_list_25dB))
print(sum_2user_25/len(two_user_list_25dB))


two_user_list_30dB = [0.003435,0.003435,0.003345,0.003345,0.0033125,0.0033125]
sum_2user_30 = 0
for num in two_user_list_30dB:
  sum_2user_30 += num
print(len(two_user_list_30dB))
print(sum_2user_30/len(two_user_list_30dB))




one_user_one_result_trials = 1
one_user_list_20dB = [0,0,0,0]
print('One User With Slots')
sum_1user_20 = 0
for num in one_user_list_20dB:
  sum_1user_20 += num
print(len(one_user_list_20dB))
print(sum_1user_20/len(one_user_list_20dB))


one_user_list_25dB = [0,0,0,0]
sum_1user_25 = 0
for num in one_user_list_25dB:
  sum_1user_25 += num
print(len(one_user_list_25dB))
print(sum_1user_25/len(one_user_list_25dB))


one_user_list_30dB = [0,0,0,0]
sum_1user_30 = 0
for num in one_user_list_30dB:
  sum_1user_30 += num
print(len(one_user_list_30dB))
print(sum_1user_30/len(one_user_list_30dB))


print('At Most 4 User With Slots')
sum = 0
for num in four_user_list_20dB:
  sum += num*four_user_one_result_trials
for num in three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_20dB)*one_user_one_result_trials+len(two_user_list_20dB)*two_user_one_result_trials+len(three_user_list_20dB)*three_user_one_result_trials+len(four_user_list_20dB)*four_user_one_result_trials))

sum = 0
for num in four_user_list_25dB:
  sum += num*four_user_one_result_trials
for num in three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_25dB)*one_user_one_result_trials+len(two_user_list_25dB)*two_user_one_result_trials+len(three_user_list_25dB)*three_user_one_result_trials+len(four_user_list_25dB)*four_user_one_result_trials))

sum = 0
for num in four_user_list_30dB:
  sum += num*four_user_one_result_trials
for num in three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_30dB)*one_user_one_result_trials+len(two_user_list_30dB)*two_user_one_result_trials+len(three_user_list_30dB)*three_user_one_result_trials+len(four_user_list_30dB)*four_user_one_result_trials))


print('At Most 3 User With Slots')
sum = 0
for num in three_user_list_20dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_20dB)*one_user_one_result_trials+len(two_user_list_20dB)*two_user_one_result_trials+len(three_user_list_20dB)*three_user_one_result_trials))

sum = 0
for num in three_user_list_25dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_25dB)*one_user_one_result_trials+len(two_user_list_25dB)*two_user_one_result_trials+len(three_user_list_25dB)*three_user_one_result_trials))

sum = 0
for num in three_user_list_30dB:
  sum += num*three_user_one_result_trials
for num in two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_30dB)*one_user_one_result_trials+len(two_user_list_30dB)*two_user_one_result_trials+len(three_user_list_30dB)*three_user_one_result_trials))


print('At Most 2 User With Slots')
sum = 0
for num in two_user_list_20dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_20dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_20dB)*one_user_one_result_trials+len(two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in two_user_list_25dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_25dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_20dB)*one_user_one_result_trials+len(two_user_list_20dB)*two_user_one_result_trials))

sum = 0
for num in two_user_list_30dB:
  sum += num*two_user_one_result_trials
for num in one_user_list_30dB:
  sum += num*one_user_one_result_trials
print(sum/(len(one_user_list_20dB)*one_user_one_result_trials+len(two_user_list_20dB)*two_user_one_result_trials))
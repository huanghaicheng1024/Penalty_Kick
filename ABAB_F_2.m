%% 只A队进球概率
function F = ABAB_F_2(x,y)
syms pA qB Delta al
F = (pA+Delta+(x-y)*al)*(1-(qB+(y-x-1)*al));




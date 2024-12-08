%% 两队不进球概率
function F = ABAB_F_4(x,y)
syms pA qB Delta al
F = (1-(pA+Delta+(x-y)*al))*(1-(qB+Delta+(y-x)*al));




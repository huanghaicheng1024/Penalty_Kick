%% 只B队进球概率
function F = ABAB_F_3(x,y)
syms pA qB Delta al
F = (1-(pA+Delta+(x-y)*al))*(qB+Delta+(y-x)*al);




%% 定义函数
% ABAB规则，输入过程比分，返回得到该过程比分的概率
function p = ABAB_p(A,B)
% A B为长度为5的向量，代表过程比分
% p为A队胜率，为符号代数
A = [0,cumsum(A)];
B = [0,cumsum(B)];
p = 1;
% 循环各轮比分，选择函数
for i = 1:5
    if A(i+1)==A(i)+1 && B(i+1)==B(i)+1
        p = ABAB_F_1(A(i),B(i))*p;
    elseif A(i+1)==A(i)+1 && B(i+1)==B(i)
        p = ABAB_F_2(A(i),B(i))*p;
    elseif A(i+1)==A(i) && B(i+1)==B(i)+1
        p = ABAB_F_3(A(i),B(i))*p;
    else
        p = ABAB_F_4(A(i),B(i))*p;
    end
end
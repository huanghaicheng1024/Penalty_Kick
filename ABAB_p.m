%% ���庯��
% ABAB����������̱ȷ֣����صõ��ù��̱ȷֵĸ���
function p = ABAB_p(A,B)
% A BΪ����Ϊ5��������������̱ȷ�
% pΪA��ʤ�ʣ�Ϊ���Ŵ���
A = [0,cumsum(A)];
B = [0,cumsum(B)];
p = 1;
% ѭ�����ֱȷ֣�ѡ����
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
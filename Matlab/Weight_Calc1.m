
clc;
clear all;

Score = 0;
People = 0;
Lug=0;

for i=.5:.01:.75
for P=10:1:100

C=P*i;
Q = (P*(.125))+(C);

if Q<55

S=(100*P)+(50*C);
    
Score = [Score S];
People = [People P];
Lug = [Lug C];

end 
end
end

figure (1)
plot(Score)
legend('Score')

figure (2)
plot(People)
hold on
plot(Lug)
hold on
legend('People','Lug')

WW = max(Score);
SCell=num2cell(Score);
L=cellfun(@(x) find(x==WW),SCell,'Un',0);
Location= find(not(cellfun('isempty',L)));

SL=Score(Location);
PL=People(Location);
LL=Lug(Location);
LR=LL/PL;
PW=55-LL;

slx=['Max Score = $',num2str(SL)];
plx=['Max People = ',num2str(PL)];
llx=['Max Luggage = ',num2str(LL)];
lrx=['Luggage Ratio = ',num2str(LR)];
pwx=['Plane Weight = ',num2str(PW)];

disp(slx)
disp(plx)
disp(llx)
disp(lrx)
disp(pwx)

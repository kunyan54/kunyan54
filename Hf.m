%data Splicing and registration
Totalf920=[ans0(1:250,14100:14299),ans01(1:250,14100:14299),ans02(1:250,14100:14299),ans03(1:250,14100:14299),...
    ans04(1:250,14100:14299),ans05(1:250,14100:14299),ans06(1:250,14100:14299),ans07(1:250,14100:14299),...
    ans08(1:250,14100:14299),ans09(1:250,14100:14299),ans10(1:250,14100:14299),ans11(1:250,14100:14299),...
    ans12(1:250,14100:14299),ans13(1:250,14100:14299),ans14(1:250,14100:14299),ans15(1:250,14100:14299)]
for j=1:250
for i=1:16
    meanX(j,i)=mean(Totalf920(j,(i-1)*200+1:i*200));
end
end
for j=1:250
for i=1:15
    diffX(j,i)=meanX(j,i+1)-meanX(j,1);
end
end
Btotalf920=Totalf920;
for j=1:250
for i=1:15
    Btotalf920(j,i*200+1:(i+1)*200)=Btotalf920(j,i*200+1:(i+1)*200)-diffX(j,i);
end
end

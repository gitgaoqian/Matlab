function rdst(x,y)
plot(x,y,'linestyle','-','color','g','linewidth',1.2);
xlim([1,71]);%unadjust
%xlim([1,152]);
xlabel('QoS���Ƶ��','fontsize',14);
set(gca,'YTick',0:2:10);
ylabel('�¼������ݷ���Ƶ��(Hz)','fontsize',14);
%����
line([1,152],[9,9],'linestyle','--','color','b','linewidth',1.2);
line([1,152],[6,6],'linestyle','--','color','b','linewidth',1.2);
%index = [37 76 122 134 137 142];
index = [28 43 55 57 58] %unadjust
[row,col] = size(index);
for i = 1:1:col
    hold on;
    plot(index(i),y(index(i)),'.','color','r','markersize',14);
end
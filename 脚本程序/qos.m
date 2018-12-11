function qos(x,y)
plot(x,y,'linestyle','-','color','g','linewidth',1.0);
%xlim([1,150]);%adjust
xlim([1,71]);
xlabel('QoS监控频次','fontsize',14);
set(gca,'YTick',0:20:100);
ylabel('Q','fontsize',14,'fontangle','italic');
set(gca,'ygrid','on');%gca表示对当前图片进行操作
%index = [37 76 122 134 137 142];%adjust
index = [28 43 55 57 58];
[row,col] = size(index);
for i = 1:1:col
    hold on;
    plot(index(i),y(index(i)),'.','color','r','markersize',14);
end

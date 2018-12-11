function cpu(x,y)
plot(x,y,'linestyle','-','color','r','linewidth',1.0);
xlabel('时间(s)','fontsize',9);
ylabel('树莓派CPU占有率(%)','fontsize',9);
xlim([1,56]);
ylim([0,100]);

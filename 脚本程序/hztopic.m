function hztopic(x,y1,y2)
plot(x,y1,'linestyle','--','color','r','linewidth',1.0);
hold on;
plot(x,y2,'linestyle','-.','color','b','linewidth',1.0);
xlim([1,178]);
xlabel('时间(s)','fontsize',9);
ylabel('话题发布频率(fps)','fontsize',9);
ylim([0,10]);
set(gca,'YTick',0:2:10);
legend({'/camera/left/image\_raw';'/camera/scan'},'FontSize',8,'Location','Northeast','fontangle','italic');

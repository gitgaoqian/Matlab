function Network(x,y1,y2)
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');%[AX,H1,H2] = plotyy(___) 返回 AX 中创建的两个坐标区的句柄，以及 H1 和 H2 中每个绘图的图形对象的句柄。AX(1) 是左边的坐标区，AX(2) 是右边的坐标区。

%设置坐标轴的属性
%设置坐标区颜色
set(AX(1),'XColor','k','YColor','k');
set(AX(2),'XColor','k','YColor','k');

set(AX,'FontSize',14,'FontName','Times New Roman')%设置x轴、左y轴、右y轴刻度字号和字型
%设置x轴
set(get(AX(1),'Xlabel'),'string','QoS监控频次','FontSize',14,'FontName','Helvetica');
%set(AX,'Xlim',[1 71]);%unadjust
set(AX,'Xlim',[1 152]);
%设置y1轴
set(get(AX(1),'Ylabel'),'string','往返时延(ms)','FontSize',14,'FontName','Helvetica');
set(AX(1),'ylim',[0,125],'ytick',[0:20:100])%设置左y轴数据范围（0到0.5），刻度显示（0,20...）
%设置y2轴
set(get(AX(2),'Ylabel'),'string','网络传输速率(KB/s)','FontSize',14,'FontName','Helvetica');
set(AX(2),'ylim',[100,350],'ytick',[0:100:300])%设置左y轴数据范围（0到0.5），刻度显示（0,0.1,0.2...0.5）
%设置图形属性：从 R2014b 开始，您可以使用圆点表示法查询和设置属性，早期版本需要用set函数
H1.LineStyle = '--'; H1.Color = 'r'; H1.LineWidth = 1.2;
H2.LineStyle = '-'; H2.Color = 'b'; H2.LineWidth = 1.2';

%画线

line([1,152],[10,10],'linestyle','--','color','r','linewidth',1.2);
line([1,152],[100,100],'linestyle','--','color','r','linewidth',1.2);

legend([H1,H2],{'RTT';'Network transmission rate'},'FontSize',13,'Location','Northeast','fontangle','italic');

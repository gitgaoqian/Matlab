function Network(x,y1,y2)
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');%[AX,H1,H2] = plotyy(___) ���� AX �д����������������ľ�����Լ� H1 �� H2 ��ÿ����ͼ��ͼ�ζ���ľ����AX(1) ����ߵ���������AX(2) ���ұߵ���������

%���������������
%������������ɫ
set(AX(1),'XColor','k','YColor','k');
set(AX(2),'XColor','k','YColor','k');

set(AX,'FontSize',14,'FontName','Times New Roman')%����x�ᡢ��y�ᡢ��y��̶��ֺź�����
%����x��
set(get(AX(1),'Xlabel'),'string','QoS���Ƶ��','FontSize',14,'FontName','Helvetica');
%set(AX,'Xlim',[1 71]);%unadjust
set(AX,'Xlim',[1 152]);
%����y1��
set(get(AX(1),'Ylabel'),'string','����ʱ��(ms)','FontSize',14,'FontName','Helvetica');
set(AX(1),'ylim',[0,125],'ytick',[0:20:100])%������y�����ݷ�Χ��0��0.5�����̶���ʾ��0,20...��
%����y2��
set(get(AX(2),'Ylabel'),'string','���紫������(KB/s)','FontSize',14,'FontName','Helvetica');
set(AX(2),'ylim',[100,350],'ytick',[0:100:300])%������y�����ݷ�Χ��0��0.5�����̶���ʾ��0,0.1,0.2...0.5��
%����ͼ�����ԣ��� R2014b ��ʼ��������ʹ��Բ���ʾ����ѯ���������ԣ����ڰ汾��Ҫ��set����
H1.LineStyle = '--'; H1.Color = 'r'; H1.LineWidth = 1.2;
H2.LineStyle = '-'; H2.Color = 'b'; H2.LineWidth = 1.2';

%����

line([1,152],[10,10],'linestyle','--','color','r','linewidth',1.2);
line([1,152],[100,100],'linestyle','--','color','r','linewidth',1.2);

legend([H1,H2],{'RTT';'Network transmission rate'},'FontSize',13,'Location','Northeast','fontangle','italic');

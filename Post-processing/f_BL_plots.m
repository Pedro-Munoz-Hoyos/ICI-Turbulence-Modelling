function [] = f_BL_plots(y,u,u_c,d)

figure;
subplot(1,6,1);
plot(u(1,:,1)/u_c(1),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(1,2,1)/u_c(1),d(1,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(1,6,2);
plot(u(40,:,1)/u_c(40),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(40,2,1)/u_c(40),d(40,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
% Styling
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(1,6,3);
plot(u(72,:,1)/u_c(72),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(72,2,1)/u_c(72),d(72,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
% Styling
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(1,6,4);
plot(u(106,:,1)/u_c(106),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(106,2,1)/u_c(106),d(106,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
% Styling
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(1,6,5);
plot(u(138,:,1)/u_c(138),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(138,2,1)/u_c(138),d(138,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
% Styling
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

subplot(1,6,6);
plot(u(end,:,1)/u_c(end),y(:,1),"LineStyle","-","Color","b","LineWidth",1.25);
hold on;
plot(d(end,2,1)/u_c(end),d(end,1,1),'o','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',4);
hold off;
xlim([0 1.1]);
ylim([0 0.3]);
box off;
% Styling
set(gca,'yticklabel',num2str(get(gca,'ytick')','%.1f'))
fontname(gca,"Times New Roman")
set(gcf,'color','w');
set(gca,'XMinorTick','on','YMinorTick','on');
ax = gca;
ax.LineWidth = 1.2;
ax.XAxis.FontSize = 12;
ax.YAxis.FontSize = 12;

end


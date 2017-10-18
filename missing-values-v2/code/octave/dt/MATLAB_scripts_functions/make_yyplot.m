function make_yyplot( ActualY, EstimatedY, YMax, YMin, EstimatedYName )
%MAKE_YYPLOT Make plot of Actual Y vs. Estimated Y

figure;
plot( [YMin-(YMax-YMin)*0.05 YMax+(YMax-YMin)*0.05], [YMin-(YMax-YMin)*0.05 YMax+(YMax-YMin)*0.05], 'k-' ); hold on;
plot( ActualY, EstimatedY, 'b.', 'markersize', 15 ); hold off;
xlim( [YMin-(YMax-YMin)*0.05 YMax+(YMax-YMin)*0.05] );
ylim( [YMin-(YMax-YMin)*0.05 YMax+(YMax-YMin)*0.05] );
xlabel( 'Actual Y' ,  'FontSize' , 18 );
ylabel( EstimatedYName,  'FontSize' , 18 );
axis square

end


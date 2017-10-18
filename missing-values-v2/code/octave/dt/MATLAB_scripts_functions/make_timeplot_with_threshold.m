function make_timeplot_with_threshold( Index, Threshold, xname, yname )
%MAKE_TIMEPLOT_WITH_THRESHOLD Make plot of T2 and SPE

figure;
plot( Index, 'ko' );
hold on;
plot( [0, length(Index)+1], [ Threshold, Threshold ], 'r' );
hold off;
xlabel( xname ,  'FontSize' , 18 );
ylabel( yname ,  'FontSize' , 18 );
xlim( [0, length(Index)+1] );
xlim( [0, length(Index)+1] );

end


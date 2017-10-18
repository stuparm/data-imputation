% Show result of PCA (KPCA) and save result

ContributionRatio = EigenValue ./ sum(EigenValue);        %Contribution ratio
CumulativeContributionRatio = cumsum(ContributionRatio);  %Cumulative contribution ratio
figure;
bar( ContributionRatio );
hold on;
plot( CumulativeContributionRatio, 'r', 'linewidth', 2 );
hold off;
xlabel( 'Component number' ,  'FontSize' , 18 );
ylabel( 'Cont. ratio(blue)ACum. cont. ratio(red)' ,  'FontSize' , 18 );
% First PC vs. Second PC
figure;
plot( ScoreT(:,1), ScoreT(:,2), 'b.', 'markersize', 15 );
text( ScoreT(:,1), ScoreT(:,2), SampleName);
xlabel( 'First principal component' ,  'FontSize' , 18 );
ylabel( 'Second principal component' ,  'FontSize' , 18 );
% First PC vs. Third PC, etc
figure;
plot( ScoreT(:,1), ScoreT(:,3), 'b.', 'markersize', 15 );
text( ScoreT(:,1), ScoreT(:,3), SampleName);
xlabel( 'First principal component' ,  'FontSize' , 18 );
ylabel( 'Third principal component' ,  'FontSize' , 18 );
figure;
plot( ScoreT(:,1), ScoreT(:,4), 'b.', 'markersize', 15 );
text( ScoreT(:,1), ScoreT(:,4), SampleName);
xlabel( 'First principal component' ,  'FontSize' , 18 );
ylabel( 'Fourth principal component' ,  'FontSize' , 18 );
% Scatter plots of the first, second, third and fourth PCs
figure;
plotmatrix(ScoreT(:,1:4),'b.');
xlabel( 'First, second, third and fourth PCs' ,  'FontSize' , 18 );
ylabel( 'First, second, third and fourth PCs' ,  'FontSize' , 18 );
% Decide the number of PCs if PCs are used in further data analysis
NumOfPC = find( CumulativeContributionRatio >= ThresholdOfCumulativeContributionRatio );
NumOfPC = NumOfPC(1);
fprintf('When the threshold of cumulative contribution ratio is %g, the number of using principal components is %d.\n', ThresholdOfCumulativeContributionRatio, NumOfPC);
% Save result
TableOfScoreT = table( ScoreT(:,1:NumOfPC), 'RowNames', SampleName );
writetable( TableOfScoreT, 'ScoreT.csv', 'Delimiter', ',', 'WriteRowNames', true)

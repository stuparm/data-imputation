function ConfusionMatrix = arrange_confusionmatrix( RawConfusionMatrix, LavelOrder )
%ARRANGE_CONFUSIONMATRIX Arrange confusion matrix

ConfusionMatrix = cell( length(LavelOrder)+1, length(LavelOrder)+1 );
ConfusionMatrix(2:end,1) = LavelOrder;
ConfusionMatrix(1,2:end) = LavelOrder';
ConfusionMatrix(2:end,2:end) = num2cell( RawConfusionMatrix );

end


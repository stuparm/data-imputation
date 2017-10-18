function AccuracyRate = calc_accuracyrate( ActualY, EstimatedY )
%CALC_ACCURACYRATE Calculate accuracy rate

AccuracyRate = sum(EstimatedY+repmat(ActualY,1,size(EstimatedY,2)) ~= 0) / length(ActualY);

end


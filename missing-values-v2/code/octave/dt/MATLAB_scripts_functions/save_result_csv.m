function save_result_csv( EstimatedValues, SampleNameForPrediction, FileName )
%SAVE_RESULT_CSV Save result as csv file

TableOfPredictedY2 = table( EstimatedValues, 'RowNames', SampleNameForPrediction );
writetable( TableOfPredictedY2, [ FileName '.csv'], 'Delimiter', ',', 'WriteRowNames', true);

end


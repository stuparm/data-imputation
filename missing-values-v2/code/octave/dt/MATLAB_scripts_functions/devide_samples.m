function FoldInd = devide_samples( NumberOfSamples, FoldNumber )
%DEVIDE_SAMPLES Divide samples for cross-validation

Nmin = fix( NumberOfSamples / FoldNumber );
Nmod = NumberOfSamples - Nmin * FoldNumber;
Ind = repmat( 1:FoldNumber, 1, Nmin );
Ind = [Ind(:)' 1:Nmod];
rng('default'); rng(10000);
RandInd = randperm( NumberOfSamples );
rng('shuffle');
FoldInd = Ind(RandInd);

end


function Threshold = make_threshold_t2spe( Index, NumOfIndexThreshold )
%MAKE_THRESHOLD_T2SPE Make threshold of T2 and SPE

SortedIndex = sort(Index);
Threshold = SortedIndex( NumOfIndexThreshold );

end
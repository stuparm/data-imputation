function [OptimalGamma, GramMatrix] = optimize_gamma_grammatrix( X, CandidatesOfGamma )
%OPTIMIZE_GAMMA_GRAMMATRIX Optimize gamma to maximize variance of Gaussian gram matrix
%   OptimalGamma: Optimal values of gammaÅAGramMatrix: Optimal gram matrix

% Calculate gram matrix and its variance for each gamma value
VarianceOfKernelMatrix = zeros( 1, length(CandidatesOfGamma) );
DistanceMatrix = sum((X.^2), 2) * ones(1, size(X,1)) + ones(size(X,1), 1) * sum(X.^2,2)' - 2.*(X*(X')); 
for CandidateOfGammaNum = 1:length(CandidatesOfGamma)
    GramMatrix = exp( -CandidatesOfGamma(CandidateOfGammaNum) .* DistanceMatrix );
    VarianceOfKernelMatrix(CandidateOfGammaNum) = var( GramMatrix(:) );
end

% Decide the optimal gamma having the maximum variance
OptimalGamma = CandidatesOfGamma( VarianceOfKernelMatrix == max(VarianceOfKernelMatrix));
OptimalGamma = OptimalGamma(1);

GramMatrix = exp( -OptimalGamma .* DistanceMatrix ); %Gram matrix using the optimal gamma

end


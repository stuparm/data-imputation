function centroids = computeCentroids(X, indices, K)

  [rows cols] = size(X);
  centroids = zeros(K, cols);
  
  for i=1:K
    xi = X(indices==i,:);
    ck = size(xi,1);
    centroids(i, :) = (1/ck) * nansum(xi);
  end
end
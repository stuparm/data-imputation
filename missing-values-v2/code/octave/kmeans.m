function [indices centroids] = kmeans(X, k)
  max_iterations = 10;
  centroids = initCentroids(X,k);
  for i=1:max_iterations
    indices = getClosestCentroids(X, centroids);
    centroids = computeCentroids(X, indices, k);
  endfor
end
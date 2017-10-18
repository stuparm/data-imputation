X = dlmread('../../dataset/diabetes/training/training20.csv');
n = 8;
sse = zeros(1,n);

for k=1:n
  [indices centroids] = kmeans(X,k);
  clusterDistances = zeros(1,k);
  for c=1:k
    cluster = X(indices == c,:);
    clusterDistance = 0;
    for i = 1:rows(cluster)
      instance = cluster(i,:);
      centroid = centroids(c,:);
      distance = calculateDistance (instance, centroid);
      clusterDistance = clusterDistance + distance;
    endfor
    clusterDostance = clusterDistance/rows(cluster);
    clusterDistances(c) = clusterDistance;
  endfor
  sse(k) = mean(clusterDistances);
endfor

plot(sse,'o-')
axis([0 11])
grid
set(gca, 'XTick', [1,2,3,4,5,6,7,8])
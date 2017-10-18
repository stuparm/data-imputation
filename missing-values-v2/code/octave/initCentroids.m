function centroids = initCentroids(X,k)
  centroids = zeros(k,size(X,2));
  centr_rows = zeros(1,k);
  [rows cols] = size(X);
  n = 1;
  while (n<=k)
    i = randi(rows);
    row = X(i,:);
    if (sum(isnan(row)) > 0)
      continue
    endif
    if (any(centr_rows == i) > 0)
      continue
    endif
    centr_rows(n) = i;
    centroids(n,:) = row;
    n++;
  endwhile
end  
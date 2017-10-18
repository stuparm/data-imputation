function newDataset = remove(dataset, percentage)
  
  [dr dc] = size(dataset);
  X = dataset(:,1:dc-1);
  Y = dataset(:,dc);
  
  [r c] = size(X);
  n = r*c;
  m = percentage/100 * n;
  k = 0;
  while (k < m)
    i = randi(r);
    j = randi(c);
    if (isnan(X(i,j)))
      continue;
    endif
    X(i,j) = NaN;
    k = k+1;
  endwhile
  newDataset = [X,Y];
end
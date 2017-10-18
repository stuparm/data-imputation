function distance = calculateDistance(instance,centroid)
  totalCount = size(instance,2); % size of the row instance (all elements included, NaNs and real values)
  nanArgs = find(isnan(instance)); % find arguments/indexes/position of NaN values inside instance
  nanCount = sum(isnan(instance)); % total number of NaN values within the row instance
  valuesCount = sum(!isnan(instance)); % total number of real values within row instance
  instance(nanArgs) = centroid(nanArgs); % replace instance NaNs with arguments values, 
                                         % later when we do substraction the resultin vlaue will be 0
                                         % and this value is ignored in future calculation
  squared = ((instance-centroid) * (totalCount/valuesCount)).^2;
  sqrt =  sqrt(sum(squared));
  distance = sqrt;
end
size(Y);
minimum = min(Y);
maximum = max(Y);
d = maximum-minimum+1;
hist = zeros(d,1);
xs = zeros(d,1);
for i=1:length(Y)
  value = Y(i);
  index = value-minimum+1;
  hist(index)=hist(index)+1;
endfor

for i=1:length(xs)
  xs(i) = i;
endfor

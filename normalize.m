function[x] = normalize(data)

% Compute length, min and max values of data
N = length(data);
minimum = min(data);
delta = max(data) - min(data);

% Variable memory allocation 
x = zeros([N,1]);

% Generate N-by-1 matrix of normalized data
for i = 1:N
    x(i) = (data(i) - minimum) ./  (delta);  
end

disp('Data normalization complete.');

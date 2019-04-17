function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for k=1:K
	%% Holy hell I did it in one line, what the actual hell is this language.
	% The first half (before multiplication), counts the amount of points assigned
	% to the current centroid, by first gathering the unique elements of idx,
	% then using histc to get the count of each of the elements
	% The second half simply sums the points of each element in X where 
	% idx shows that it's assigned to the current centroid.
	centroids(k,:) = (1/histc(idx,unique(idx))(k))*sum(X(idx==k,:));
endfor

% =============================================================


end


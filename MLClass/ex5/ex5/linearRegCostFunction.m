function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

hypothesis = X*theta;

% set first value to be 0 in vector theta as theta0 doesn't matter, regularize
thetaWOut0 = [0;theta(2:end, :);];
J = (1/(2*m))*sum((hypothesis-y).^2)+(lambda/(2*m))*thetaWOut0'*thetaWOut0;

% theta will be 0 at first, so it is like the second term isn't there
grad = (1/m)*(X'*(hypothesis-y)+lambda*thetaWOut0); 



% =========================================================================

grad = grad(:);

end

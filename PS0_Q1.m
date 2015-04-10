A = dlmread('PS0_A.mat')

% Question 4A
A1 = sort(A(:), 'descend')
plot([1:10000], A1)

% Question 4B
histogram(A1)

% Question 4C
Z = A(50:100, 50:100)

% Question 4D
Amean = mean(A1)
W = A(:) - Amean
imshow(W)

% Question 4E
Y = zeros(100,100,3)
T = find(A(:) > Amean) 

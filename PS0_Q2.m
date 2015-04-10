A = imread('sexy.jpeg');

% Question 5A
subplot(3,2,1)
I = rgb2gray(A);
imshow(I)
title('5A')

% Question 5B
subplot(3,2,2)
In = imcomplement(I);
imshow(In)
title('5B')

% Question 5C
subplot(3,2,3)
M = flipdim(In, 2);
imshow(M)
title('5C')

% Question 5D
subplot(3,2,4)
S = A;
tempRed = A(:,:,1);
tempGreen = A(:,:,2);
S(:,:,1) = tempGreen;
S(:,:,2) = tempRed;
imshow(S)
title('5D')

% Question 5E
subplot(3,2,5)

Ared = A(:,:,1);
Agreen = A(:,:,2);
Ablue = A(:,:,3);
M2 = flipdim(A,2);
Mred = M2(:,:,1);
Mgreen = M2(:,:,2);
Mblue = M2(:,:,3);
 
AvgRed = (Ared + Mred)/2;
AvgGreen = (Agreen + Mgreen)/2;
AvgBlue = (Ablue + Mblue)/2;
 
E = A;
E(:,:,1) = AvgRed;
E(:,:,2) = AvgGreen;
E(:,:,3) = AvgBlue;
 
imshow(E)
title('5E')

% Question 5F
subplot(3,2,6)
[x,y] = size(A);
Q = randi(255,x,x);
H = int8(In) - int8(Q);
H(find(H < 0)) = 0;
H(find(H > 255)) = 255;
imshow(H)
title('5F')

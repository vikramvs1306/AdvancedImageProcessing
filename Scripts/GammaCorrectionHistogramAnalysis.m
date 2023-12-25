clc; clear all; close all;

% Read the image
MP = imread("unaltIm1.tif");

% Get the input for the Gamma value
prompt = "Enter Gamma value ";
gamma = input(prompt);

% Normalize the image to the range [0,1]
im = double(MP)/255;

% Transformation function
u = 0:1/255:1;
v = 255*(u.^gamma);

% Plotting the graph 
figure; plot(u, v); title('gamma correction');

% Implementing the transform function
imcorrected = v(round(im*(255))+1);

% Convert the image to 8-bit integer format
imcorrected = uint8(imcorrected);

% Plot the pixel histogram to see the difference
figure; 
subplot(2, 1, 1); imhist(MP); title('histogram original');
subplot(2, 1, 2); imhist(imcorrected); title('histogram imcorrected');

% Compare the images before and after contrast enhancement
figure;
montage({MP, imcorrected}, "Size", [1 2]);

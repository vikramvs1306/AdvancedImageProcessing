function fione(image)
    % Display the image
    figure(1);
    imshow(image);
    title('Original Image');

    % Display the histogram using imhist
    figure(2);
    imhist(image);
    title('Image Histogram');

    % Display histogram using bar function
    figure(3);
    [counts, bins] = imhist(image);
    bar(bins, counts);
    title('Plot using Bar function');
    xlabel('Pixel Intensity');
    ylabel('Pixel Count');

    % Display histogram using stem function
    figure(4);
    stem(bins, counts);
    title('Plot using Stem function');
    xlabel('Pixel Intensity');
    ylabel('Pixel Count');
end

% Script to call the function with different images
clc; clear all; close all;
image_files = ["imageCE1.tif", "imageCE2.tif", "imageCE3.tif", "imageCE4.tif"];

for i = 1:length(image_files)
    image = imread(image_files(i));
    fione(image);
end


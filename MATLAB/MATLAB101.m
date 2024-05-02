clear all %for tidiness, can exclude
close all %for tidiness, can exclude
clc %for tidiness, can exclude
%%Homework1_Q1
IQ1 = imread('cameraman.tif'); %read the image
%JPEG
imwrite(IQ1,'IQ1.jpeg','jpeg'); %write jpeg         
jpegsize = dir('IQ1.jpeg'); %specific jpeg in this directory           
jpegfilesize = jpegsize.bytes %jpeg file size = 10,717bytes

%PNG
imwrite(IQ1,'IQ1.png','png'); %write png            
pngsize = dir('IQ1.png'); %specific png in this directory      
pngfilesize = pngsize.bytes %png file size = 38,267bytes

%BMP
imwrite(IQ1,'IQ1.bmp','bmp'); %write bmp                
bmpsize = dir('IQ1.bmp'); %specific bmp in this directory            
bmpfilesize = bmpsize.bytes %bmp file size = 66,614bytes
%%Question 1.
%Pick a grayscale image, e.g. cameraman.tif (available from the toolbox).
%Using the imwrite function, write it to files of type JPEG, PNG, and BMP 
%and compare the sizes of those files. Explain your observation.
%%Answer for Question 1.
%In terms of file size, the highest ranked is IQ1.bmp(66,614bytes) > IQ1.png(38,267bytes) > IQ1.jpeg(10,717bytes),
%generally there are 3 categories of image formats namely uncompressed, lossless compression
%and lossy compression, looking at the file size alone, it can be deduced that 
%IQ1.bmp belongs to uncompressed/raw category as it has the largest file size 
%while IQ1.png belongs to lossless compression as it is in the middle while IQ1.jpeg
%that has the smallest file size belongs to lossy compression.


%%
IQ2 = imread('cameraman.tif'); %read the image
BW = imbinarize(IQ2,0.5); %converts grayscale image to binary image
figure; imshow(BW) %single output figure
%%Question 2.
%Convert cameraman.tif to a binary image.
%%Answer for Question 2.
%Converted with 0.5 luminance.


%%
%3A's image = cameraman.tif
IQ3A = imread('cameraman.tif'); %read
IHQ3A = histeq(IQ3A); %histogram equalized

figure;
%plot image and histogram before and after
subplot(2,2,1); imshow(IQ3A);
subplot(2,2,2); imhist(IQ3A);
subplot(2,2,3); imshow(IHQ3A);
subplot(2,2,4); imhist(IHQ3A);

IQ3Asubt = IQ3A - IHQ3A; %subtraction operation
figure;
%total two rows (with 1 blank row) for presentation purposes only
subplot(2,3,1);imshow(IQ3Asubt) %show
subplot(2,3,2);imshow(IQ3Asubt,[]) %show and scale 
subplot(2,3,3);imagesc(IQ3Asubt) %show and colour scale

%3B's image = moon.tif
IQ3B = im2double(imread('moon.tif')); %read and convert to double
IHQ3B = histeq(IQ3B); %histogram equalized

figure;
%plot image and histogram before and after
subplot(2,2,1); imshow(IQ3B);
subplot(2,2,2); imhist(IQ3B);
subplot(2,2,3); imshow(IHQ3B);
subplot(2,2,4); imhist(IHQ3B);

IQ3Bsubt = IQ3B - IHQ3B; %subtraction operation
figure;
%total two rows (with 1 blank row) for presentation purposes only
subplot(2,3,1);imshow(IQ3Bsubt) %show
subplot(2,3,2);imshow(IQ3Bsubt,[]) %show and scale 
subplot(2,3,3);imagesc(IQ3Bsubt) %show and colour scale


%%Question 3.
%Image Subtraction: Subtracting two images (that are of the same size) results 
%in the difference between the two images. Experiment with some images by subtracting 
%the original image from their respective histogram-equalised image. Does it result 
%in anything meaningful? Note: The resulting values could have either positive or 
%negative values. Re-scale the values to view the resulting image.
%%Answer for Question 3.
%Based on the output, it can be seen that the images from subtraction
%results in negative images where black is white and white is black
%something like a Kodak film.

%% Title: Zohair Filter for Image Deblurring

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen and Ghazali Sulong. 
% "A novel Zohair filters for deblurring computed tomography medical images." 
% International Journal of Imaging Systems and Technology, vol. 25, no. 3, (2015): pp. 265-275. DOI: 10.1002/ima.22143
%% INPUTS
% x --> is a given blurry image
% mu -- > deblurring parameter (higher value --> more sharpness)
% delta -- > regularization parameter = 0.1 
% p -- > extend margins by (p) no. of pixels to avoid boundary artifacts

%% OUTPUT
% out --> deblurred image


%% Starting implementation %%
clear all; close all; clc;

x=im2double(imread('BlurryCT.jpg'));
figure; imshow(x);title('Blurry')

%% deblurring kernel
H = fspecial('gaussian',[25 25], 2);

mu=10; delta=0.1; p=30;
tic; out = ZohairFilter(x,H,mu,delta,p); toc;
figure; imshow(out);title('Deblurred by Zohair Filter')
% imwrite(out,'1_ZF.jpg');
clear all;
%E¤ÉÊ^ªzu³êé([xæ)
file_name = uigetfile('*');
IMG = imread(file_name);
IMG = imresize(IMG,[256 256]);
IMG(:,:,1) = imadjust(IMG(:,:,1));
IMG(:,:,2) = imadjust(IMG(:,:,1));
IMG(:,:,3) = imadjust(IMG(:,:,1));
IMG = histeq(IMG);
imagesc(IMG); colorbar; axis image;

IMG0 = IMG;
%¶¤ÉÊ^ªzu³êé(RGBæ)
file_name = uigetfile('*');
IMG = imread(file_name);
IMG = imresize(IMG,[256 256]);
IMG(:,:,1) = imadjust(IMG(:,:,1));
IMG(:,:,2) = imadjust(IMG(:,:,1));
IMG(:,:,3) = imadjust(IMG(:,:,1));
imagesc(IMG); colorbar; axis image;


IMG = [IMG IMG0];

imwrite(IMG,'result.png');
imagesc(IMG); colorbar; axis image;
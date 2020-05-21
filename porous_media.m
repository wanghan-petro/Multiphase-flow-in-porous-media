%%  Image of porous media¡ú0-1 Matrix
clc,clear
lx=700;%Y
ly=300;%X
lxy=lx*ly;
flag=imread('Matrix.png');
thresh=graythresh(flag);
flag=im2bw(flag,thresh);
flag=imresize(flag,[ly,lx]);
flag1=flag;
flag(flag1(:,:)==0)=1;
flag(flag1(:,:)==1)=0;
boundary=find(flag);
imagesc(flag)
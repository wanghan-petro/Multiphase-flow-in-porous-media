# Multiphase-flow-in-porous-media
Oil-water-gas flow in porous media, phase change
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

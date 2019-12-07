%ya pas la function imhist sur octave donc on la cree
function [histVec]=imhist(vect)
  #si on travail avec du double on la tansforme on int
  vect=uint8(vect*256);
  
  #on a une image noir et blanc
  histVec=zeros(256);
  for i=1:size(vect)
     histVec(vect(i))+=1;
  endfor 
endfunction



#importe image
im = imread('/home/leon/Bureau/ti tp a faire/cameraman.tif');
#transforme image on double
im=double(im);
im/=256;
#on prend les parametre
r=50;
coef=2;
#le centre de image 
centreX=size(im)(1)/2;
centreY=size(im)(2)/2;
%traverser de toute image et la modifier
#on a la loi r^2=(x-a)^2+(y-b)^2
for i=1:size(im)(1)
  for j=1:size(im)(2)
  if(r^2>=(i-centreX)^2+(j-centreY)^2)
  im(i,j)*=2;
  endif
  endfor
endfor
#calcule de histograme
%on use une fonction cette fois
hist=imhist(im(:));
%pour le premier plan 
subplot(2,1,1);
imshow(im);
%pour le dexieme plan
subplot(2,1,2);
stem(hist);




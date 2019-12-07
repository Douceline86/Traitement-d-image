#importe image
im = imread('/home/leon/Bureau/ti tp a faire/cameraman.tif');
%on traite une image noir et blanc
hist=zeros(256,256);
#image transpose
imTrans=im';
#creation de histograme conjoin entre les 2 image
for i=1:size(im)(1)
   for j=1:size(im)(2)
     hist(im(i,j),imTrans(i,j))+=1;
    endfor
endfor
#aff de histograme sachant quil est on double et que si on >1 sa  nou donne du blanc
imshow(hist)


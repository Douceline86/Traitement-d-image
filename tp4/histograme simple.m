#importe image
im = imread('/home/leon/Bureau/ti tp a faire/cameraman.tif');
%on traite une image noir et blanc
hist=zeros(256);
%on se fais toute la matrice
for i=1:size(im)(1)
   for j=1:size(im)(2)
     hist(im(i,j))+=1;
    endfor
endfor  
#on affiche sou forme de baton
stem(hist)
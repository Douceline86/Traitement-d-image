#importe image
im = imread('/home/leon/Bureau/ti tp a faire/cameraman.tif');
%on traite une image noir et blanc
hist=zeros(256);
%varible que on donne a un seuil
seil=127;
#traitment de image en meme temps cration de histograme
for i=1:size(im)(1)
   for j=1:size(im)(2)
     if im(i,j)>=seil
     im(i,j)=255;
     hist(im(i,j))+=1;
     endif
    endfor
endfor  

%choix du plan 1
subplot(2,1,1)
#aff de image
imshow(im)
%choix du plan 2
subplot(2,1,2)
#aff du plan on courbe
plot(im)


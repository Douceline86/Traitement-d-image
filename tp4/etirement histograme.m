#mes function
function [histVec]=imhist(vect)
  #on a une image noir et blanc
  histVec=zeros(256);
  for i=1:size(vect)
     histVec(vect(i))+=1;
  endfor 
endfunction




#importe image
im = imread('/home/leon/Bureau/ti tp a faire/cameraman.tif');
%on traite une image noir et blanc
hist=imhist(im(:));
#pour savoir cb ya de 0 au debut
cont=0;
for i=1:size(hist)
  if(hist(i)==0)
  cont+=1;
  else
  break;
  endif
endfor  
#ramenais histograme au debut
for i=1:size(hist)
  if(i<=size(hist)-cont)
  hist(i)=hist(i+cont);
  else
  hist(i)=0;
  endif
endfor
#pour eclater jai oublier apre a cherche si jai le temps

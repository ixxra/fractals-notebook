function M=mandelbrot(cmin,cmax,hpx,niter)
  vpx=round(hpx*abs(imag(cmax-cmin)/real(cmax-cmin)));
  z=zeros(vpx,hpx);
  [cRe,cIm]=meshgrid(linspace(real(cmin),real(cmax),hpx),
                     linspace(imag(cmin),imag(cmax),vpx));
  c=cRe+i*cIm;
  M=zeros(vpx,hpx);
  for s=1:niter
    mask=abs(z)<2;
    M(mask)=M(mask)+1;
    z(mask)=z(mask).^2+c(mask);
  endfor
  M(mask)=0;
endfunction

Mc=mandelbrot(-2.1+1.05i,0.7-1.05i,640,64);
imagesc(Mc)

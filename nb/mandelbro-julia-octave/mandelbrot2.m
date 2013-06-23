function M=mandelbrot(cmin,cmax,hpx,niter)
  vpx=round(hpx*abs(imag(cmax-cmin)/real(cmax-cmin)));
  z=zeros(vpx,hpx);
  [cRe,cIm]=meshgrid(linspace(real(cmin),real(cmax),hpx),
                     linspace(imag(cmin),imag(cmax),vpx));
  c=cRe+i*cIm;
  M=mjcore(z,c,niter);
endfunction

function M=mjcore(z,c,niter)
  M=zeros(length(z(:,1)),length(z(1,:)));
  for s=1:niter
    mask=abs(z)<2;
    M(mask)=M(mask)+1;
    z(mask)=z(mask).^2+c(mask);
  endfor
  M(mask)=0;
endfunction

function ZCR=zcr(X)
ZCR=0;
 for j=1:length(X)-1
 sgn(j)=sign(X(j)/X(j+1));
 if sgn(j)<0
ZCR=ZCR+1;
 end
 end
end
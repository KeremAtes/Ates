
function B=myzero(y)

nozero=0;
for j=1:length(y)-1
    sgn(j)=sign(y(j)/y(j+1));
    if sgn(j)<0
        nozero=nozero+1;  
    end
end
B=nozero;
function FE=myentropy(Data)

for i=1:size(Data,1);
   
        x=Data;
        tot = 0.0;
        ent = 0.0;
        for m=1:length(x)
        tot = tot + x(m)^2;
        end
        for k=1:length(x)
        quo = x(k)^2 / tot;
        ent = ent + (quo * log10(quo));
        end
        y = -ent;
        FE=y/length(x);  
  
  
end
 
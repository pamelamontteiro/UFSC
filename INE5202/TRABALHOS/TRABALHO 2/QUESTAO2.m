%f1(x(1),x(2),x(3))=sin(x(1))*cos(x(2))+x(3)-1.5=0 
%f2(x(1),x(2),x(3))= x(1)^2+x(2)^2+x(3)^2-3.0=0
%f3(x(1),x(2),x(3))= x(1)+x(2)+x(3)-3.1=0


y1 = @(x) sin(x(1)) * cos(x(2)) + x(3) - 1.5
y2 = @(x) x(1)*x(1) + x(2)*x(2) + x(3)*x(3) - 3.0
y3 = @(x) x(1) + x(2) + x(3) - 3.1


%primeira raiz

wi = [complex(-1,1); complex(1,1); complex(1,1)]
w = newtonsis3(wi, y1, y2, y3)
res_max_w = max(abs([y1(w); y2(w); y3(w)]))

%segunda raiz

zi = [complex(-1,1); complex(0.5,1); complex(0.5,1)]
z = newtonsis3(zi, y1, y2, y3)
res_max_z = max(abs([y1(z); y2(z); y3(z)]))

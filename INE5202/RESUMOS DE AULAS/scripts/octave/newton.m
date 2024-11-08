function x = newton(xi, tol)

dif = 1; 
k = 0;

while (dif > 1.e-15 && k < 100)
    k = k + 1;

    dx = -f1(xi) / df1(xi);
        x = xi + dx;
        dif = abs(dx);
        [k  xi  f1(xi) df1(xi) dx  x dif];

    xi = x;
end

printf("\n %da. iteracao:",k);
printf("\n x: %.16f - raiz encontrada",x);
printf("\n |x-xi|: %.16f",dif);
printf("\n |f(x)|: %.16f",abs(f1(x)));
end
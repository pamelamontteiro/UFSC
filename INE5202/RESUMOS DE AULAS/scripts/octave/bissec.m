function output = bissec (f, lower_limit, upper_limit, tolerance)
    x = (lower_limit + upper_limit) / 2;
    err = (upper_limit - lower_limit);

    while (err > tolerance)
        if (f(lower_limit) * f(x) < 0)
            upper_limit = x;
        else
            lower_limit = x;
        end

        x = (lower_limit + upper_limit) / 2;
        err = (upper_limit - lower_limit);
    endwhile

    output = x;
endfunction

function output = f (x)
    output = cos(x) - x;
endfunction

function output = g (x)
    output = x ** 2 - 2;
endfunction

printf("%.20f\n", bissec(@f, 0, 1, 1e-10));

printf("g(x) = x ** 2 - 2 = 0, para x = %.20f\n", bissec(@g, 0, 2, 1e-10));
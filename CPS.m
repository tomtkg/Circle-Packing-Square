function [X,r] = CPS(n)
% Circle packing in a square

    rng(42);
    lb = [zeros(1, 2*n) 0];
    ub = [ones(1, 2*n) .5];
    options = optimoptions('fmincon', 'Display', 'none', ...
        'Algorithm', 'sqp', 'MaxFunctionEvaluations', 1e6);

    r = -inf;
    for i = 1:200
        x0 = [rand(1, 2*n) 0.1];
        x = fmincon(@(x) -x(end), x0, [], [], [], [], ...
            lb, ub, @(x) constraints(x), options);
        if x(end) > r
            X = reshape(x(1:end-1), 2, [])';
            r = x(end);
        end
    end
end

function [c, ceq] = constraints(x)
    X = reshape(x(1:end-1), 2, [])';
    r = x(end);
    c = [(2*r-pdist(X))'; r-X(:); X(:)+r-1];
    ceq = [];
end

function [X,r] = CPC(n)
% Circle packing in a circle

    if n == 1
        [X,r] = deal([0 0], 1);
        return;
    end

    rng(42);
    lb = [-ones(1, 2*n) 0];
    ub = [ones(1, 2*n) .5];
    options = optimoptions('fmincon', 'Display', 'none', ...
        'Algorithm', 'sqp', 'MaxFunctionEvaluations', 1e6);

    r = -inf;
    for i = 1:200
        rho = sqrt(rand(n, 1));
        theta = 2*pi*rand(n, 1);
        P = [rho.*cos(theta) rho.*sin(theta)];
        x0 = [reshape(P', 1, []) 0.1];
        x = fmincon(@(x) -x(end), x0, [], [], [], [], ...
            lb, ub, @(x) constraints(x), options);
        if x(end) > r
            X = reshape(x(1:end-1), 2, [])';
            r = x(end);
        end
    end
end

function [c, ceq] = constraints(x)
    X = reshape(x(1:end-1), 2, []);
    r = x(end);
    c = [(2*r-pdist(X')) vecnorm(X)+r-1];
    ceq = [];
end

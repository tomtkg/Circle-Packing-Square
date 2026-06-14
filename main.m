function main()
    %% Circle packing in a square
    for n = 1 : 30
        [X,r] = CPS(n);
        fprintf('CPS(%d): L=%.8f, r=%.8f, A=%.8f\n', n, 1/r, r, n*pi*r^2);
        plotBG();
        rectangle('Position', [0 0 1 1]);
        plotCircles(X, r);
        exportgraphics(gcf, sprintf('image/CPS(%d).png',n)); close;
    end

    %% Circle packing in a circle
    for n = 1 : 30
        [X,r] = CPC(n);
        fprintf('CPC(%d): L=%.8f, r=%.8f, A1=%.8f, A2=%.8f\n', ...
            n, 1/r, r, n*pi*r^2, n*r^2);
        plotBG();
        viscircles([.5 .5], .5, 'Color', 'k');
        plotCircles(X/2+.5, r/2);  % Mapping: [-1 1]^2 -> [0 1]^2
        exportgraphics(gcf, sprintf('image/CPC(%d).png',n)); close;
    end
end

function plotBG()
    figure('Position', [200 200 350 350], 'Visible', 'off');
    set(gca,'Fontname','Times New Roman','FontSize',10,'NextPlot','add', ...
        'Color','w','Box','on','LooseInset',get(gca,'TightInset'));
    axis square; grid on;
    xlim([-0.05 1.05]); xticks(0:.1:1);
    ylim([-0.05 1.05]); yticks(0:.1:1);
end

function plotCircles(X, r)
    t = linspace(0,2*pi,200);
    for i = 1:height(X)
        plot(X(i,1)+r*cos(t), X(i,2)+r*sin(t), 'k');
    end
    scatter(X(:,1), X(:,2), 'k', 'filled');
end

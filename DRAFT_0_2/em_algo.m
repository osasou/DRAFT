function em_algo(X)

GMModel = fitgmdist(X,3);

figure
% y = [zeros(1000,1);ones(1000,1)]
% h = gscatter(X(:,1),X(:,2),y);
h = scatter(X(:,1),X(:,2));
hold on
gmPDF = @(x1,x2)reshape(pdf(GMModel,[x1(:) x2(:)]),size(x1));
g = gca;
fcontour(gmPDF,[g.XLim g.YLim])
title('{\bf Scatter Plot and Fitted Gaussian Mixture Contours}')
legend(h,'Model 0','Model1')
hold off


end
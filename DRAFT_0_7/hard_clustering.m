function [cluster1, cluster2, cluster3] = hard_clustering(X, user_num)

figure
scatter(X(:,1),X(:,2),10,'ko') % 10 means plot size, k means black, o means 'o' plot shape

% options = statset('Display','final'); 
% gm = fitgmdist(X,2,'Options',options)

gm = fitgmdist(X,user_num,'Start','plus') % Start, plus means useing K means++ Algo at first

hold on
gmPDF = @(x,y)reshape(pdf(gm,[x(:) y(:)]),size(x)); % GMM(混合ガウスモデル) の確率密度関数 (pdf) , reshape(A,[2,3]) は A を 2 行 3 列の行列に形状変更
g = gca;
fcontour(gmPDF,[g.XLim g.YLim]) % 関数 gmPDF(x,y) の等高線をプロット
title('Scatter Plot and Fitted GMM Contour')
hold off

idx = cluster(gm,X);
cluster1 = (idx == 1); % |1| for cluster 1 membership
cluster2 = (idx == 2); % |2| for cluster 2 membership
cluster3 = (idx == 3);


figure
gscatter(X(:,1),X(:,2),idx,'rgb','+os')
legend('Cluster 1','Cluster 2','Cluster 3','Location','best')

end
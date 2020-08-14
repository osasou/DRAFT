function hard_clustering()

rng('default')  % For reproducibility
mu1 = [1 2];
sigma1 = [3 .2; .2 2];
mu2 = [-1 -5];
sigma2 = [2 0; 0 1];
X = [mvnrnd(mu1,sigma1,200); mvnrnd(mu2,sigma2,100); mvnrnd(mu1,sigma1,200)];
n = size(X,1);

figure
scatter(X(:,1),X(:,2),10,'ko') % 10 means plot size, k means black, o means 'o' plot shape

% options = statset('Display','final'); 
% gm = fitgmdist(X,2,'Options',options)

gm = fitgmdist(X,2,'Start','plus') % Start, plus means useing K means++ Algo at first

hold on
gmPDF = @(x,y)reshape(pdf(gm,[x(:) y(:)]),size(x)); % GMM(混合ガウスモデル) の確率密度関数 (pdf) , reshape(A,[2,3]) は A を 2 行 3 列の行列に形状変更
fcontour(gmPDF,[-8 6]) % 関数 gmPDF(x,y) の等高線をプロット
title('Scatter Plot and Fitted GMM Contour')
hold off

idx = cluster(gm,X);
cluster1 = (idx == 1); % |1| for cluster 1 membership
cluster2 = (idx == 2); % |2| for cluster 2 membership

figure
gscatter(X(:,1),X(:,2),idx,'rb','+o')
legend('Cluster 1','Cluster 2','Location','best')

end
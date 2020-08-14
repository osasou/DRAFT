function sample2_em_algorithm()
rng('shuffle');
mu1 = [1 -5];
Sigma1 = [2 0; 0 0.5];
mu2 = [-3 -5];
Sigma2 = [1 0;0 1];
 rng(1); % For reproducibility
Sigma1 = [0.05 0; 0 2];
Sigma2 = [2 0; 0 0.05];

% mu1 = rand(1,2)*rand(1)*10
% mu2 = rand(1,2)*5
mu3 = [-2, -1]
Sigma3 = [1 0; 0 2];
X = [mvnrnd(mu1,Sigma1,1000);mvnrnd(mu2,Sigma2,1000);mvnrnd(mu3,Sigma2,1000)]

%{
R = mvnrnd(mu,sigma,n) �́A
���σx�N�g�� mu ����ы����U�s�� sigma �����������ϗʐ��K���z����I������
n �̗����x�N�g�����i�[����Ă���s�� R ��Ԃ��܂�
%}


GMModel = fitgmdist(X,3);

figure
y = [zeros(1000,1);ones(1000,1);ones(1000,1)+ones(1000,1)];
h = gscatter(X(:,1),X(:,2),y);
hold on
gmPDF = @(x1,x2)reshape(pdf(GMModel,[x1(:) x2(:)]),size(x1));
g = gca;
fcontour(gmPDF,[g.XLim g.YLim])
title('{\bf Scatter Plot and Fitted Gaussian Mixture Contours}')
legend(h,'Model 0','Model 1','Model 2')
hold off


end
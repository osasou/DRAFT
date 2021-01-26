function [clusters] = k_means_plus(X, user_num)

%     figure
%     scatter(X(:,1),X(:,2),10,'ko') % 10 means plot size, k means black, o means 'o' plot shape
try

clusters = [];
idx = kmeans(X,user_num);
  for i = 1:user_num
      clusters = [clusters,(idx == i)];
  end
% % 
%    figure
%    gscatter(X(:,1),X(:,2),idx,'rgbkm','+os')
%    legend('Cluster 1','Cluster 2','Cluster 3','Location','best')
%  
catch
    disp("悪条件の分散");
%     cluster1 = (rand(size(X,1),1)>0.5);
    cluster1 = ones(size(X,1)/user_num,1);
    cluster2 = [zeros(size(X,1)/user_num,1);ones(size(X,1)/user_num,1)];
    cluster3 = [zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);ones(size(X,1)/user_num,1)];
     cluster4 = [zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);ones(size(X,1)/user_num,1)];
     cluster5 = [zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);zeros(size(X,1)/user_num,1);ones(size(X,1)/user_num,1)];
end


end
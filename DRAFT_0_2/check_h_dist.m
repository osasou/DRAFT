function bool = check_h_dist(h_all)

%h_all のそれぞれの値の大きさが5以上であるかをチェックする関数

    bool = 0;
    for i = 1:length(h_all)
        num = abs(h_all(i));
        if (num > 5)
            bool = 1;
            break;
        end
    end

end 
function [med] = getMed(a,b,mu_a,mu_b)
    a_mu = transpose(mu_a);
    b_mu = transpose(mu_b);
    distance_a = (a - a_mu(1))^2 + (b - a_mu(2))^2;
    distance_b = (a - b_mu(1))^2 + (b - b_mu(2))^2;
    
    % If distance_a is less than distance b, it belongs to class 1
    if (distance_a < distance_b)
    	med = 1;
    % Else, it belongs to class 2
    else 
        med = 2;
    end
end
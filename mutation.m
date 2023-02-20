% function [offspring] = mutation(genotype, mutation_rate, lower_bound, upper_bound)
% dim = size(genotype, 2);
% % disp(["haha:",dim]);
% offspring = zeros(dim, 1);
% 
% 
% for i = 1:dim
%     isMutation = rand < mutation_rate;
%     if isMutation
%         offspring(i) = rand * (upper_bound(i) - lower_bound(i)) + lower_bound(i);
%     else
%         offspring(i) = genotype(i);
%     end
% end
% 
% end

        

 

function [offspring] = mutation(p, mr, lb, ub)
%MUTATION_OPERATOR 
% we implemented a uniform mutation operator here


dim = size(p, 2);
disp([p, dim]);
chosenMat = rand(1, dim);
idx4mut = chosenMat < mr;
randMat = lb + (ub - lb) .* rand(1, dim);
offspring = p;
offspring(idx4mut) = randMat(idx4mut);
end
function [mean_arr,var_arr] = mean_var(img, N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


fun_mean = @(x) mean(x.data,'all');
fun_var = @(x) var(x.data,0,'all');

mean_mat = blockproc(img, [N N], fun_mean);
var_mat = blockproc(img, [N N], fun_var);

mean_arr=reshape(mean_mat,[],1);
var_arr=reshape(var_mat,[],1);

end


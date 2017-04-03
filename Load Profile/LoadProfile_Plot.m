clear;
% This script plots the stimated load profile for ahousehold.
% The power consumed each hours is imported from a text file

% by William Becerra Gonzalez 789146
irradiance = fopen('LoadProfile.txt','r');
A = fscanf(irradiance,'%f');
fclose(irradiance);
A = A/1000; % converting to Kw

x = 1:numel(A);
hours = {'0','1', '2', '3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23'};
figure(1)
bar(A)
title('Estimated Load Profile for one Day')
xlabel('Hours')
xticks(x)
xticklabels(hours)
ylabel('Power (kW)')
grid on;
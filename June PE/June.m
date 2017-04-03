clear;
% This script generates plots of irradiance and temperature
% daily averaged for june 2016

%by William Becerra

% Extracting the Irradiance data daily averaged
irradiance = fopen('june_Irradiance.txt','r');
y = fscanf(irradiance,'%f');
fclose(irradiance);

% Extracting the Temperature data daily averaged
temp = fopen('june_Temperature.txt', 'r');
A = fscanf(temp, '%f');
fclose(temp);

% PLotting Temperature
X = 1:numel(A);
%figure(1)
subplot(2, 1, 1);
bar(A,'r')
xlim([0, numel(X)+1]);
title('Minimum Daily Temperature for June 2016');
xlabel('Days');
ylabel('Temperature (degrees)');
grid on;


% Plotting Irradiance
x = 1:numel(y);
%Daily = {'1', '2', '3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'};
%figure(2)
subplot(2, 1, 2)
bar(y)
title(' Average Daily Irradiance for June 2016');
xlabel('Days');
ylabel('Irradiance (W/m^2)');
xlim([0, (numel(x)+1)]);
grid on;


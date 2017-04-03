% The data is from 1 january 2017  to 22 March 2017
clear;
irradiance = fopen('FullYear.txt','r');
A = fscanf(irradiance,'%f');
fclose(irradiance);

days = numel(A);
y(days) = 0;
total = 0;
monthly(3) = 0;

jj = 1;
for ii = 1:1:days
    y(ii) = A(ii)';
    total = y(ii)+ total;
    if mod(ii,31) == 0
        monthly(jj) = total/31;
        jj = jj + 1;
        total = 0;
    end
end

months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'};

monthly;
x = 1:numel(y);
figure(1)
plot(x, y);
xlim([0, numel(x)]);
title('Average Daily Irradiance for 2016')
xlabel('Days')
ylabel('Irradiance (W/m^2)')
grid on

xaxis = 1:12;
figure(2)
bar(monthly);
title('Average Monthly Irradiance for 2016')
ylabel('Irradiance (W/m^2)')
xlabel('Months')
xticklabels(months);
xlim([0,(numel(monthly)+1)]);
grid on
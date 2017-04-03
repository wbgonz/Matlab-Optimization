% The data is from 1 january 2017  to 22 March 2017
clear;
irradiance = fopen('solarRadianceDaily_winter.txt','r');
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
    if mod(ii,30) == 0
        monthly(jj) = total/30;
        jj = jj + 1;
        total = 0;
    end
end

months = ['Jan', 'Feb', 'March'];

monthly;
x = 1:numel(y);
figure(1)
plot(x, y);
xlim([0, 93]);
title('Irradiance over a 93 Days period')
xlabel('Days')
ylabel('Iradiance (W/m^2)')
grid on


figure(2)
bar(monthly);
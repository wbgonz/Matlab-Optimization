% The data is from 1 january 2017  to 22 March 2017
irradiance = fopen('solarRadiance.txt','r');
A = fscanf(irradiance,'%f');
fclose(irradiance);

for ii = 1:1:numel(A)
    y(ii) = A(ii)';
end

x = 1:numel(y);
figure(1)
subplot(2, 1,1)
plot(x, y);
title('Irradiance over a 78 Days period')
ylabel('Iradiance (W*m^2)')
% xlable('78 Days')
grid on


temperature = fopen('solarRadiance_PE.txt','r');
T = fscanf(temperature, '%f');

for ii = 1:1:numel(T)
    t(ii) = T(ii)';
end

x = 1:numel(t);
figure(1)
subplot(2, 1,2);
plot(x, t);
title('temperature over a 78 Days period')
ylabel('temperature (Degrees)')
% xlable('78 Days')
grid on
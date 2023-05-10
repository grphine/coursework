ds = [
    datetime("21-Jan-2023 19:46:00")
    datetime("21-Jan-2023 22:43:00")
    datetime("22-Jan-2023 13:40:00")
    datetime("22-Jan-2023 16:58:00")
    datetime("22-Jan-2023 18:38:00")
    datetime("22-Jan-2023 21:31:00")
    datetime("22-Jan-2023 22:26:00")
    datetime("23-Jan-2023 11:00:00")
    datetime("23-Jan-2023 14:40:00")
    datetime("23-Jan-2023 19:39:00")
];

con = [
    0
    1
    8
    10
    11
    12
    13
    19
    21
    23
];

dsv = datenum(ds);  % convert to number type for line of best fit calculations

coeff = polyfit(dsv,con,1);     % line of best fit coefficients
lobfx = linspace(min(dsv), max(dsv), 1000); % x data points
lobfy = polyval(coeff, lobfx);  % y data points

lobfx = datetime(lobfx, 'ConvertFrom', 'datenum');  % convert back to date type

figure(1);
plot(ds,con,'.', 'markersize', 15);
grid on;
hold on;
plot(lobfx, lobfy, 'LineWidth', 2, 'Color','#388f58');
ylabel("Consumption (mAh)");
xlabel("Timestamp");
title("Power meter readings");
ylim([-1,25])
hold off;

c1 = i_src(8696:9317);
c2 = i_src(9317:9716);

x= linspace(0,0.35*pi,622);
p1 = polyfit(x,c1,3)

x1= linspace(0,0.2*pi,400);
p2 = polyfit(x1,c2,3)


figure(1); plot(c1); hold on; plot(polyval(p1,x)); hold off;
figure(2); plot(c2); hold on; plot(polyval(p2,x1)); hold off;

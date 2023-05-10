
z_0 = 60;   % characteristic impedance

% s parameters
% s11.phase = [0.7, 30];
% s12.phase = [0, 0];
% s21.phase = [4, 90];
% s22.phase = [0.5, 0];

% s11.phase = [0.4, 162];
% s12.phase = [0.04 60];
% s21.phase = [5.2 63];
% s22.phase = [0.35 -39];

% s11.phase = [0.51068 -131.3];
% s12.phase = [0.14468 36.465];
% s21.phase = [1.6959 79.965];
% s22.phase = [0.47733 -52.087];

s11.phase = [0.58425 -137.28];
s12.phase = [0.1252 29.523];
s21.phase = [1.642 82.141];
s22.phase = [0.43336 -67.296];

s11.rect = rect(s11.phase)
s12.rect = rect(s12.phase)
s21.rect = rect(s21.phase)
s22.rect = rect(s22.phase)

% s11.rect = -0.34483 - j*0.36677;
% s22.rect = 0.40727 - j*0.4538;
% s21.rect = 0.37658 + j*1.8228;
% s12.rect = 0.13037 + j*0.090698;

sDet = s11.rect*s22.rect - s12.rect*s21.rect;
k = (1 + (abs(sDet))^2 - (abs(s11.rect))^2 - (abs(s22.rect))^2)/(2 * abs(s12.rect) * abs(s21.rect));    % rollet stability

b_1 = 1 + abs(s11.rect)^2 - abs(s22.rect)^2 - abs(sDet)^2;
b_2 = 1 + abs(s22.rect)^2 - abs(s11.rect)^2 - abs(sDet)^2;
c_1 = s11.rect - sDet*conj(s22.rect);
c_2 = s22.rect - sDet*conj(s11.rect);

g_s = (b_1 - sqrt(b_1^2 - 4*abs(c_1)^2))/(2*c_1);   % input reflection coefficient
g_l = (b_2 - sqrt(b_2^2 - 4*abs(c_2)^2))/(2*c_2);   % output reflection coefficient

z_source = -(z_0 + z_0*g_s)/(g_s - 1);  
z_load = -(z_0 + z_0*g_l)/(g_l - 1);   

g_0 = abs(s21.rect)^2;

gain_dB = 10 * log10( (1/(1 - abs(s11.rect)^2) ) * abs(s21.rect)^2 * ( 1 / ( 1 - abs(s22.rect)^2 ) ) );
gain_max = 10 * log10( (1/(1 - abs(g_s)^2) ) * abs(s21.rect)^2 * ( (1 - abs(g_l)^2) / ( abs(1 - s22.rect * g_l)^2 ) ) );

z_load
z_source

function r = rect(phasor)
    [x,y] = pol2cart( deg2rad(phasor(2)), phasor(1));
    r = x + 1j*y;
end

function r = phas(rect)
    x = abs(rect);
    y = angle(rect);
    r = [x y];
end
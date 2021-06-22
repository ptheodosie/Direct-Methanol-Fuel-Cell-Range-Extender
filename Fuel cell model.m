clear all
T = 90+273.15;
E = 1.21;
F = 96485;
R = 8.314;
D_m = 10^(-5);
D_ab = 1.8*(10^(-5));
D_cb = 0.9*(10^(-3));
l_m = 0.0206;
l_ab = 0.03;
l_cb = 0.03;
l_at = 0.0015;
l_ct = 0.005;
nd = 4+3.1*(T-363)/(115);
%nd = 2.5;
alfa_a = 0.8;
alfa_c = 0.7;
sigma_at = 0.01;
sigma_ct = 0.01;
sigma_m = 0.1;
i_astar = 1.1*(10^(-2));
i_cstar = 1.1*(10^(-2));
c_aref = 1;
c_cref = 0.032; %??????
y_a = 0.5;
y_c = 1;
c_ah = 1;
c_ch = 0.04;
w_a = 52.62;
c_ah2 = 1.5;
c_ch2 = 0.05;
c_ah3 = 0.5;
c_ch3 = 0.02;
c_ah4 = 0.25;
c_ch4 = 0.015;
c_ah5 = 2;
c_ch5 = 0.065;
c_ah6 = 0.125;
c_ch6 = 0.015;
c_ah7 = 3;
c_ch7 = 0.1;
c_ah8 = 0.75;
c_ch8 = 0.03;

beta = D_m*l_ab/(D_ab*l_m);
j_w = (F*D_ab*w_a/l_ab);
j_alim = (6*F*D_ab*c_ah/l_ab)*10^(-3);
j_clim = (4*F*D_cb*c_ch/l_cb)*10^(-3);
j_alim2 = (6*F*D_ab*c_ah2/l_ab)*10^(-3);
j_clim2 = (4*F*D_cb*c_ch2/l_cb)*10^(-3);
%j_alim3 = (6*F*D_ab*c_ah3/l_ab)*10^(-3);
j_alim3 = 0.19;
j_clim3 = (4*F*D_cb*c_ch3/l_cb)*10^(-3);
j_alim4 = (6*F*D_ab*c_ah4/l_ab)*10^(-3);
j_clim4 = (4*F*D_cb*c_ch4/l_cb)*10^(-3);
j_alim5 = (6*F*D_ab*c_ah5/l_ab)*10^(-3);
j_clim5 = (4*F*D_cb*c_ch5/l_cb)*10^(-3);
j_alim6 = (6*F*D_ab*c_ah6/l_ab)*10^(-3);
j_clim6 = (4*F*D_cb*c_ch6/l_cb)*10^(-3);
j_alim7 = (6*F*D_ab*c_ah7/l_ab)*10^(-3);
j_clim7 = (4*F*D_cb*c_ch7/l_cb)*10^(-3);
j_alim8 = (6*F*D_ab*c_ah8/l_ab)*10^(-3);
j_clim8 = (4*F*D_cb*c_ch8/l_cb)*10^(-3);

j0 = [0:0.0001:j_alim]';
j02 = [0:0.0001:j_alim2]';
j03 = [0:0.0001:j_alim3]';
j04 = [0:0.000015:j_alim4]';
j05 = [0:0.0001:j_alim5]';
j06 = [0:0.00000125:j_alim6]';
j07 = [0:0.0001:j_alim7]';
j08 = [0:0.0001:j_alim8]';

c_at = c_ah.*(1-j0/j_alim).*((1+beta+nd.*j0/j_w).^(-1));
c_at2 = c_ah2.*(1-j02/j_alim2).*((1+beta+nd.*j02/j_w).^(-1));
c_at3 = c_ah3.*(1-j03/j_alim3).*((1+beta+nd.*j03/j_w).^(-1));
c_at4 = c_ah4.*(1-j04/j_alim4).*((1+beta+nd.*j04/j_w).^(-1));
c_at5 = c_ah5.*(1-j05/j_alim5).*((1+beta+nd.*j05/j_w).^(-1));
c_at6 = c_ah6.*(1-j06/j_alim6).*((1+beta+nd.*j06/j_w).^(-1));
c_at7 = c_ah7.*(1-j07/j_alim7).*((1+beta+nd.*j07/j_w).^(-1));
c_at8 = c_ah8.*(1-j08/j_alim8).*((1+beta+nd.*j08/j_w).^(-1));
N_cross = (j_alim/(6*F))*((beta+nd*j0/j_w)/(1+beta+nd*j0/j_w))*(1-j0/j_alim);
r_cross = (j_alim/j_clim)*((beta+nd*j0/j_w)/(1+beta+nd*j0/j_w))*(1-j0/j_alim);
r_cross2 = (j_alim2/j_clim2)*((beta+nd*j02/j_w)/(1+beta+nd*j02/j_w))*(1-j02/j_alim2);
r_cross3 = (j_alim3/j_clim3)*((beta+nd*j03/j_w)/(1+beta+nd*j03/j_w))*(1-j03/j_alim3);
r_cross4 = (j_alim4/j_clim4)*((beta+nd*j04/j_w)/(1+beta+nd*j04/j_w))*(1-j04/j_alim4);
r_cross5 = (j_alim5/j_clim5)*((beta+nd*j05/j_w)/(1+beta+nd*j05/j_w))*(1-j05/j_alim5);
r_cross6 = (j_alim6/j_clim6)*((beta+nd*j06/j_w)/(1+beta+nd*j06/j_w))*(1-j06/j_alim6);
r_cross7 = (j_alim7/j_clim7)*((beta+nd*j07/j_w)/(1+beta+nd*j07/j_w))*(1-j07/j_alim7);
r_cross8 = (j_alim8/j_clim8)*((beta+nd*j08/j_w)/(1+beta+nd*j08/j_w))*(1-j08/j_alim8);
c_ct = c_ch*(1-(j0/j_clim)-r_cross);
c_ct2 = c_ch2*(1-(j02/j_clim2)-r_cross2);
c_ct3 = c_ch3*(1-(j03/j_clim3)-r_cross3);
c_ct4 = c_ch4*(1-(j04/j_clim4)-r_cross4);
c_ct5 = c_ch5*(1-(j05/j_clim5)-r_cross5);
c_ct6 = c_ch6*(1-(j06/j_clim6)-r_cross6);
c_ct7 = c_ch7*(1-(j07/j_clim7)-r_cross7);
c_ct8 = c_ch8*(1-(j08/j_clim8)-r_cross8);

v_astar = R*T/(alfa_a*F);
j_astar = 2*sigma_at*v_astar/l_at;
k_a = (l_at*i_astar/j_astar)*((c_at/c_aref).^(y_a));
k_a2 = (l_at*i_astar/j_astar)*((c_at2/c_aref).^(y_a));
k_a3 = (l_at*i_astar/j_astar)*((c_at3/c_aref).^(y_a));
k_a4 = (l_at*i_astar/j_astar)*((c_at4/c_aref).^(y_a));
k_a5 = (l_at*i_astar/j_astar)*((c_at5/c_aref).^(y_a));
k_a6 = (l_at*i_astar/j_astar)*((c_at6/c_aref).^(y_a));
k_a7 = (l_at*i_astar/j_astar)*((c_at7/c_aref).^(y_a));
k_a8 = (l_at*i_astar/j_astar)*((c_at8/c_aref).^(y_a));
v_cstar = R*T/(alfa_c*F);
j_cstar = 2*sigma_ct*v_cstar/l_ct;
k_c = (l_ct*i_cstar/j_cstar)*((c_ct/c_cref).^(y_c));
k_c2 = (l_ct*i_cstar/j_cstar)*((c_ct2/c_cref).^(y_c));
k_c3 = (l_ct*i_cstar/j_cstar)*((c_ct3/c_cref).^(y_c));
k_c4 = (l_ct*i_cstar/j_cstar)*((c_ct4/c_cref).^(y_c));
k_c5 = (l_ct*i_cstar/j_cstar)*((c_ct5/c_cref).^(y_c));
k_c6 = (l_ct*i_cstar/j_cstar)*((c_ct6/c_cref).^(y_c));
k_c7 = (l_ct*i_cstar/j_cstar)*((c_ct7/c_cref).^(y_c));
k_c8 = (l_ct*i_cstar/j_cstar)*((c_ct8/c_cref).^(y_c));

v_a = v_astar*(1.5*log(j0/j_astar)-log(k_a)-y_a*log(1-j0/j_alim)+y_a*log(1+beta+nd*j0/j_w));%j0<j_astar
v_c = v_cstar*(1.5*log(j0/j_cstar)-log(k_c)-y_c*log(1-(j0/j_clim)-r_cross));%j0<j_cstar
v_a2 = v_astar*(1.5*log(j02/j_astar)-log(k_a2)-y_a*log(1-j02/j_alim2)+y_a*log(1+beta+nd*j02/j_w));%j0<j_astar
v_c2 = v_cstar*(1.5*log(j02/j_cstar)-log(k_c2)-y_c*log(1-(j02/j_clim2)-r_cross2));%j0<j_cstar
v_a3 = v_astar*(1.5*log(j03/j_astar)-log(k_a3)-y_a*log(1-j03/j_alim3)+y_a*log(1+beta+nd*j03/j_w));%j0<j_astar
v_c3 = v_cstar*(1.5*log(j03/j_cstar)-log(k_c3)-y_c*log(1-(j03/j_clim3)-r_cross3));%j0<j_cstar
v_a4 = v_astar*(1.5*log(j04/j_astar)-log(k_a4)-y_a*log(1-j04/j_alim4)+y_a*log(1+beta+nd*j04/j_w));%j0<j_astar
v_c4 = v_cstar*(1.5*log(j04/j_cstar)-log(k_c4)-y_c*log(1-(j04/j_clim4)-r_cross4));%j0<j_cstar
v_a5 = v_astar*(1.5*log(j05/j_astar)-log(k_a5)-y_a*log(1-j05/j_alim5)+y_a*log(1+beta+nd*j05/j_w));%j0<j_astar
v_c5 = v_cstar*(1.5*log(j05/j_cstar)-log(k_c5)-y_c*log(1-(j05/j_clim5)-r_cross5));%j0<j_cstar
v_a6 = v_astar*(1.5*log(j06/j_astar)-log(k_a6)-y_a*log(1-j06/j_alim6)+y_a*log(1+beta+nd*j06/j_w));%j0<j_astar
v_c6 = v_cstar*(1.5*log(j06/j_cstar)-log(k_c6)-y_c*log(1-(j06/j_clim6)-r_cross6));%j0<j_cstar
v_a7 = v_astar*(1.5*log(j07/j_astar)-log(k_a7)-y_a*log(1-j07/j_alim7)+y_a*log(1+beta+nd*j07/j_w));%j0<j_astar
v_c7 = v_cstar*(1.5*log(j07/j_cstar)-log(k_c7)-y_c*log(1-(j07/j_clim7)-r_cross7));%j0<j_cstar
v_a8 = v_astar*(1.5*log(j08/j_astar)-log(k_a8)-y_a*log(1-j08/j_alim8)+y_a*log(1+beta+nd*j08/j_w));%j0<j_astar
v_c8 = v_cstar*(1.5*log(j08/j_cstar)-log(k_c8)-y_c*log(1-(j08/j_clim8)-r_cross8));%j0<j_cstar
%v_a2 = v_astar*(2*log(j02/j_astar)-log(k_a2)-y_a*log(1-j02/j_alim2)+y_a*log(1+beta+nd*j02/j_w));%j0>j_astar
%v_c2 = v_cstar*(2*log(j02/j_cstar)-log(k_c2)-y_c*log(1-(j02/j_clim2)-r_cross2));%j0>j_cstar
%v_a5 = v_astar*(2*log(j05/j_astar)-log(k_a5)-y_a*log(1-j05/j_alim5)+y_a*log(1+beta+nd*j05/j_w));%j0>j_astar
%v_c5 = v_cstar*(2*log(j05/j_cstar)-log(k_c5)-y_c*log(1-(j05/j_clim5)-r_cross5));%j0>j_cstar

V_cell = E - v_a - v_c - j0*l_m/sigma_m;
V_cell2 = E - v_a2 - v_c2 - j02*l_m/sigma_m;
V_cell3 = E - v_a3 - v_c3 - j03*l_m/sigma_m;
V_cell4 = E - v_a4 - v_c4 - j04*l_m/sigma_m;
V_cell5 = E - v_a5 - v_c5 - j05*l_m/sigma_m;
V_cell6 = E - v_a6 - v_c6 - j06*l_m/sigma_m;
V_cell7 = E - v_a7 - v_c7 - j07*l_m/sigma_m;
V_cell8 = E - v_a8 - v_c8 - j08*l_m/sigma_m;

%c_opt = (2/3)*((1+beta)/beta)*(y_a/(y_a+y_c))*D_cb*l_ab*c_ch/(D_ab*l_cb);
c_opt = c_ah*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt2 = c_ah2*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt3 = c_ah3*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt4 = c_ah4*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt5 = c_ah5*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt6 = c_ah6*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt7 = c_ah7*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);
c_opt8 = c_ah8*(3/2)*(beta/(1+beta))*((y_a+y_c)/y_a)*D_ab*l_cb/(D_cb*l_ab);


kuli125 = [0.630000000000000;0.580000000000000;0.520000000000000;0.460000000000000;0.400000000000000;0.380000000000000;0.320000000000000;0.230000000000000;0.160000000000000;0.100000000000000];
j125 = [0.0100000000000000;0.0200000000000000;0.0300000000000000;0.0350000000000000;0.0370000000000000;0.0380000000000000;0.0390000000000000;0.0395000000000000;0.0400000000000000;0.0410000000000000];
kuli250 = [0.640000000000000;0.560000000000000;0.520000000000000;0.490000000000000;0.460000000000000;0.450000000000000;0.440000000000000;0.430000000000000;0.420000000000000;0.410000000000000;0.390000000000000;0.340000000000000;0.270000000000000;0.200000000000000;0.160000000000000;0.0900000000000000;0];
j250 = [0.0100000000000000;0.0300000000000000;0.0500000000000000;0.0600000000000000;0.0700000000000000;0.0710000000000000;0.0750000000000000;0.0760000000000000;0.0780000000000000;0.0800000000000000;0.0830000000000000;0.0870000000000000;0.0900000000000000;0.0920000000000000;0.0930000000000000;0.0940000000000000;0.0950000000000000];
kuli500 = [0.580000000000000;0.540000000000000;0.510000000000000;0.480000000000000;0.450000000000000;0.420000000000000;0.370000000000000;0.330000000000000;0.250000000000000;0.110000000000000;0];
j500 = [0.0200000000000000;0.0400000000000000;0.0600000000000000;0.0800000000000000;0.100000000000000;0.120000000000000;0.140000000000000;0.160000000000000;0.180000000000000;0.200000000000000;0.205000000000000];


plot(j06, V_cell6, j04, V_cell4, j03, V_cell3, j08, V_cell8, j0, V_cell, j02, V_cell2, j05, V_cell5, j07, V_cell7);
axis([0 0.9 0 1.3]);
%plot(j06, V_cell6, 'k', j04, V_cell4, 'b', j03, V_cell3, 'r', j125, kuli125, 'ko', j250, kuli250, 'bs', j500, kuli500, 'rd');
%axis([0 0.22 0 0.65]);
xlabel('Current Density (A/cm^2)');
ylabel('Voltage (V)');
legend('0.125 M; 90 C Temp', '0.25 M', '0.5 M', '0.75 M', '1 M', '1.5 M', '2 M', '3 M');
%legend('0.125 M; 90 C Temp', '0.25 M', '0.5 M', '0.125 M experimental', '0.25 M experimental', '0.5 M experimental');
title('Polarisation Curve');
%%
clear all;clc;close all;
cd('F:\meeting\EPAData\Daliao_imf\paper (improved) ensemble 400 signal')
pm10=load('大寮pm10_allmode.dat');
temp=load('大寮temp_allmode.dat');
prep=load('大寮prep_allmode.dat');
speed=load('大寮wind_speed_allmode.dat');
humidity=load('大寮humidity_allmode.dat');
%original
corre_temp=corrcoef(pm10(1,:),temp(1,:));
corre_prep=corrcoef(pm10(1,:),prep(1,:));
corre_humidity=corrcoef(pm10(1,:),humidity(1,:));
corre_speed=corrcoef(pm10(1,:),speed(1,:));

%%
%annual
clear corre_temp corre_prep corre_humidity corre_speed
corre_temp=corrcoef(pm10(15,:),temp(15,:));
corre_prep=corrcoef(pm10(15,:),prep(15,:));
corre_humidity=corrcoef(pm10(15,:),humidity(15,:));
corre_speed=corrcoef(pm10(16,:),speed(16,:));

%%
%diurnal
clear corre_temp corre_prep corre_humidity corre_speed
corre_temp=corrcoef(pm10(5,:),temp(5,:));
corre_prep=corrcoef(pm10(5,:),prep(5,:));
corre_humidity=corrcoef(pm10(5,:),humidity(5,:));
corre_speed=corrcoef(pm10(5,:),speed(5,:));
%%






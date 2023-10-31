% read .wav and apply low pass filter, where you can change the Fc.
%
% 2023-10-31, Yixuan Li
%

clc;clear;close all;

%% read

% read
[y, Fs] = audioread('YannyLaurel_mono.wav');

% plot
figure;
plot(y);

% sound
sound(y, Fs);
pause(3);

% disp
audioinfo('YannyLaurel_mono.wav');

%% low-pass-filter

% filt
Fc = 500;
filtered_data = low_pass_filter(y,Fs,Fc);

% plot
figure;
subplot(2,1,1);
plot(y);
title('Original Signal');

subplot(2,1,2);
plot(filtered_data);
title('Filtered Signal');

% sound
sound(filtered_data, Fs);

%% high-pass-filter

% filt
Fc = 12000;
filtered_data = high_pass_filter(y,Fs,Fc);

% plot
figure;
subplot(2,1,1);
plot(y);
title('Original Signal');

subplot(2,1,2);
plot(filtered_data);
title('Filtered Signal');

% sound
sound(filtered_data, Fs);
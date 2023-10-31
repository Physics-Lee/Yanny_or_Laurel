function filtered_data = low_pass_filter(y,Fs,Fc)

d = designfilt('lowpassfir', 'FilterOrder', 150, 'CutoffFrequency', Fc, 'SampleRate', Fs);
filtered_data = filtfilt(d, y);

end
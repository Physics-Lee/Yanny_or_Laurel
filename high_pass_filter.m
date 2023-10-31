function filtered_data = high_pass_filter(y,Fs,Fc)

d = designfilt('highpassfir', 'FilterOrder', 150, 'CutoffFrequency', Fc, 'SampleRate', Fs);
filtered_data = filtfilt(d, y);

end
%% Periodogram, Pwelch, Spectrogram
[chan01] = xlsread('channel01.xlsx');
Fs = 200; 
signal1 = chan01;
N = length(signal1);
timevec = (0:N-1)/Fs;  
 
figure (1),clf
subplot(231)
plot(timevec,signal1)
xlabel('time'), ylabel('voltage')

subplot(232)
freq = 1:50;
[Pxx,Freqs] = periodogram(signal1,[],freq,Fs);
plot(Freqs,Pxx)
title('Periodogram') 
xlabel('frequencies'),ylabel('power')

subplot(233)
periodogram(signal1,[],freq,Fs,'power')

subplot(234)
winsize = 2*Fs;
[S,F,T,P] = spectrogram(signal1,winsize,overlap,freq,Fs,'yaxis');
P=10*log10(P);
surf(T,F,P,'edgecolor','none')
view(0,90)
title('Spectogram upper view') 

subplot(235)
[S,F,T,P] = spectrogram(signal1,winsize,overlap,freq,Fs,'yaxis');
P=10*log10(P);
surf(T,F,P,'edgecolor','none')
view(90,0)
title('Spectogram side view') 

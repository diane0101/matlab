%% Periodograma 
%el periodograma es una estimación de la densidad espectral
%de una señal 
% ejemplo periodograma centrado
fs = 1000;
t = 0:0.001:1-0.001;
x = cos(2*pi*100*t)+randn(size(t));
periodogram(x,[],length(x),fs,'centered');

%ejemplo de periodograma para estimar una señal multicanal. 
N = 1024;
n = 0:N-1;

w = pi./[2;3;4];
x = cos(w*n)' + randn(length(n),3);

periodogram(x);

function DSP_Restricted(X,inf,sup)  
    plot(abs(fftshift(fft(xcorr(X(inf:sup))))));
    title('Fourrier Transform');
    xlabel('Hz');
    ylabel('TF[Cx(t)]');
end
function DSP(X)
    plot(abs(fftshift(fft(xcorr(X)))));
    title('Fourrier Transform');
    xlabel('Hz');
    ylabel('TF[Cx(t)]');
end
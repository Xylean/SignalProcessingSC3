function FFTFiltering(X,Inf,Sup)
    TF = abs(fft(X(Inf:Sup)));
    TF_Filtred(1:size(X(Inf:Sup),2)) = 0;

    for i = 1:size(TF,2)
        if TF(i) > 2500 
            TF_Filtred(i) = TF(i);
        end
    end
    
    subplot(2,2,1);
    plot(TF);
    title('Fourrier Transform');
    xlabel('Hz');
    ylabel('TF[x(t)]');

    subplot(2,2,2);
    plot(TF_Filtred);
    title('Filtred Fourrier Transform');
    xlabel('Hz');
    ylabel('TF_{F}[x(t)]');

    subplot(2,2,[3,4]);
    plot(ifft(TF_Filtred));
    title('Filtred Signal');
    xlabel('Time');
    ylabel('x(t)_{F}');
    
    %sound(ifft(TF_Filtred));
end
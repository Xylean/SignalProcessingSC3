% Autocorrelation du Signal sur des intervalles de 999 unitées
function AC = AutoCorrFunction(Signal)
  Interval=1000;
  AC=[];
  for i=1:499
    AC(:,i)=xcorr(Signal(((i-1)*Interval) + 1 : ((i) * Interval)));
  end
end
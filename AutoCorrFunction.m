% Autocorrelation du Signal sur des intervalles de 999 unitées
function AC = AutoCorrFunction(Signal,Resolution)
  AC=[];
  for i=0:((size(Signal,2)/Resolution)-1)
    AC(:,i+1)=xcorr(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
  mesh(AC);
end
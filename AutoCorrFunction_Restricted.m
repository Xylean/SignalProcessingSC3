% Autocorrelation du Signal sur des intervalles de 999 unitées
function AutoCorrFunction_Restricted(Signal,Resolution,Inf,Sup)
  AC=[];
  LowerBound = round(Inf/Resolution);
  UpperBound = round(Sup/Resolution);
  for i=LowerBound:UpperBound-1
    AC(:,i - LowerBound + 1)=xcorr(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
  mesh(AC);
end
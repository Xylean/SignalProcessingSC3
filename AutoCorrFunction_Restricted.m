% Autocorrelation du Signal sur des intervalles de Sup-Inf-1 unitees
function AutoCorrFunction_Restricted(Signal,Resolution,Inf,Sup)
  %Define new martice
  AC=[];
  %Setting up boundaries
  LowerBound = round(Inf/Resolution);
  UpperBound = round(Sup/Resolution);

  for i=LowerBound:UpperBound-1
    AC(:,i - LowerBound + 1)=xcorr(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
  mesh(AC);
end

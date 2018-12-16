% Moyenne du Signal sur des intervalles de Sup-Inf-1 unitees
function [x] = AverageFunction_Restricted(Signal,Resolution,Inf,Sup)
  %Setting up boundaries
  LowerBound = round(Inf/Resolution);
  UpperBound = round(Sup/Resolution);

  for i=LowerBound:UpperBound-1
    x(i - LowerBound + 1)=mean(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
 end

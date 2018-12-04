% Variance du Signal sur des intervalles de 999 unitées
function [x] = VarianceFunction_Restricted(Signal,Resolution,Inf,Sup)
  LowerBound = round(Inf/Resolution);
  UpperBound = round(Sup/Resolution);
  for i=LowerBound:UpperBound-1
    x(i - LowerBound + 1)=var(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
end
% Moyenne du Signal sur des intervalles de Resolution-1 unitées
function [x] = AverageFunction(Signal,Resolution)
  for i=0:((size(Signal,2)/Resolution)-1)
    x(i+1)=mean(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
 end

% Variance du Signal sur des intervalles de Resolution-1 unitees
function [x] = VarianceFunction(Signal,Resolution)
  for i=0:((size(Signal,2)/Resolution)-1)
    x(i+1)=var(Signal((i * Resolution) + 1 : (i+1) * Resolution));
  end
end

% Moyenne du Signal sur des intervalles de 1000 unitées
function [x] = AverageFunction(Signal)
  Interval=1000;
  for i=1:499
    x(i)=mean(Signal(i * Interval : ((i+1) * Interval) - 1));
  end
end
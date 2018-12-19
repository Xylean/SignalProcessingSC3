
function Affichage_SMVC_Restricted(X,t,Resolution,Inf,Sup)
  % Affichage du Signal
  subplot(3,3,[1,2,3]);
  plot(t(Inf:Sup),X(Inf:Sup));
  title('Signal');
  xlabel('Time');
  ylabel('x(t)');

  % Affichage de la Moyenne

  subplot(3,3,4);
  plot(AverageFunction_Restricted(X,Resolution,Inf,Sup));
  title('Moyenne');
  xlabel('Time');
  ylabel('E[x(t)]');

  % Affichage de la Variance

  subplot(3,3,5);
  plot(VarianceFunction_Restricted(X,Resolution,Inf,Sup));
  title('Variance');
  xlabel('Time');
  ylabel('Var[x(t)]');

  % Affichage de l'Autocorrelation

  subplot(3,3,6);
  %AutoCorrFunction(X);
  plot(xcorr(X(Inf:Sup)));
  title('Autocorrelation');
  xlabel('\tau');
  ylabel('C_{x}(\tau)');
end

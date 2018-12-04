
function Affichage_SMVC(X,t,Resolution)
  % Affichage du Signal
  subplot(3,3,[1,2,3]);
  plot(t,X);
  title('Signal');
  xlabel('t');
  ylabel('x(t)');

  % Affichage de la Moyenne

  subplot(3,3,4);
  plot(AverageFunction(X,Resolution));
  title('Moyenne');
  xlabel('t');
  ylabel('E[x(t)]');

  % Affichage de la Variance

  subplot(3,3,5);
  plot(VarianceFunction(X,Resolution));
  title('Variance');
  xlabel('t');
  ylabel('Var[x(t)]');

  % Affichage de l'Autocorrelation

  subplot(3,3,6);
  %AutoCorrFunction(X);
  plot(xcorr(X));
  title('Autocorrelation');
  xlabel('\tau');
  ylabel('C_{x}(\tau)');
end

function Affichage_SMVC(t,X)
  % Affichage du Signal
  subplot(3,3,[1,2,3]);
  plot(t,X);
  title('Signal');

  % Affichage de la Moyenne

  subplot(3,3,4);
  plot(AverageFunction(X));
  title('Moyenne');

  % Affichage de la Variance

  subplot(3,3,5);
  plot(VarianceFunction(X));
  title('Variance');

  % Affichage de l'Autocorrelation

  subplot(3,3,6);
  %AutoCorrFunction(X);
  plot(xcorr(X));
  title('Autocorrelation');
end
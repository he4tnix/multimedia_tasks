%Se carga el archivo de audio
[x, fs] = audioread('audio.wav');

%Se diseña el efecto de reverberancia
reverbEffect = reverberator('PreDelay', 0.05, 'WetDryMix', 0.5);

%Se aplica el efecto de reverberancia
y = reverbEffect(x);

%Se graficó la señal original y la con reverberancia
t = (0:length(x)-1) / fs;
figure;
subplot(2, 1, 1);
plot(t, x);
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal Original');
subplot(2, 1, 2);
plot(t, y);
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal con Reverberancia');

% Reproducir la señal con reverberancia
sound(y, fs);

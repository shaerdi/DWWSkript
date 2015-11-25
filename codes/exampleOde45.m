% Definition der DGL
fun = @(t,x) [x(2)*x(3); -x(1)*x(3); -0.51*x(1)*x(2)];

% Anfangsbedingung
x0 = [0 1 1];

% Zeitspanne
t0 = 0;
tend = 12;

% Loesung:
[t,x] = ode45(fun, [t0,tend], x0);

% Ausgeben der Loesung:
plot(t,x(:,1),'-', t,x(:,2),'-.', t,x(:,3),'.')

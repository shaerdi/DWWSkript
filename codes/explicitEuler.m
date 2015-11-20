t0 = 0;     % Startzeit
tend = 1;   % Simulieren bis
h = 1e-3;   % Schrittweite
x0 = 2;     % Startwert

% DGL in der Form dx/dt = f(t,x)
f = @(t,x) 5x^2-1;

% Schleife 
x = x0;
t = t0;
while t<tend
    t=t+h;
    x = x+h*f(t,x);
end

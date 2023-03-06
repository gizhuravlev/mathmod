model pr5
Real x(start=10);
Real y(start=31);

parameter Real a = 0.28;
parameter Real b = 0.045;
parameter Real c = 0.38;
parameter Real d = 0.035;

equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end pr5;

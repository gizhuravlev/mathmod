model pr6

parameter Real a = 0.13;
parameter Real b = 0.015;

Real S(start=12869);
Real I(start=113);
Real R(start=31);

equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;
end pr6;

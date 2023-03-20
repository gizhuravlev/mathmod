using Plots
using DifferentialEquations

a = 0.88
b = 0.000066
N = 1656

tspan = (0, 5)
t = collect(LinRange(0, 5, 500))
n = 17

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("04.png")

a = 0.000055
b = 0.44
N = 1656

tspan = (0, 0.1)
t = collect(LinRange(0, 0.1, 500))
n = 17

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("05.png")

a = 0.52
b = 0.37
N = 1656

tspan = (0, 0.3)
t = collect(LinRange(0, 0.3, 500))
n = 17

function syst(dy, y, p, t)
    dy[1] = (a*cos(t)+b*sin(t)*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("06.png")



1032206558%70+1

using Plots
using DifferentialEquations

x0 = 0.4
y0 = 0.4
u0 = [x0; y0]

t0 = 0
tmax = 64
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w = 4.4

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("01j.png")

plot(sol, idxs=(1,2))

savefig("02j.png")

w = 0.4
g = 4.4

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2]-w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("03j.png")

plot(sol, idxs=(1,2))

savefig("04j.png")

w = 4
g = 4

function P(t)
    return 0.4*sin(4*t)
end

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2]-w*y[1] + P(t)
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("05j.png")

plot(sol, idxs=(1,2))

savefig("06j.png")



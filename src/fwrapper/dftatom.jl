using Libdl

libDFTATOM = joinpath(@__DIR__, "../../deps/libdftatom.so")
SPEED_OF_LIGHT = 137.035999037

# ODE 1D solver
include("ode1d.jl")
export integrate, rk4_integrate

# Mesh (exponential grid)
include("mesh.jl")
export mesh_exp, mesh_exp_deriv, mesh_exp_deriv2

# radial Schrödinger equation outward and inward integration
include("rschroed.jl")
export schroed_outward_adams

# radial eigen solver
include("reigen.jl")
export solve_radial_eigenproblem

# drivers
include("drivers.jl")
export atom_lda

# dft
include("dft.jl")
export get_Vxc

# rpoisson
include("rpoisson.jl")
export rpoisson_outward_pc
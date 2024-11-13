module MeshCatBenchmarkMechanisms

using Reexport
@reexport using MeshCat

using CoordinateTransformations
using Rotations
using GeometryBasics
using Colors: RGB

# primary color materials
const red = MeshPhongMaterial(color=RGB(1, 0, 0))
const green = MeshPhongMaterial(color=RGB(0, 1, 0))
const blue = MeshPhongMaterial(color=RGB(0, 0, 1))

# benchmark mechanisms
include("quadrotor.jl")

end # module MeshCatBenchmarkMechanisms

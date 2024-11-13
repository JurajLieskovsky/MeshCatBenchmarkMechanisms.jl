# bodies
function set_quadrotor!(vis, a)
    setobject!(vis[:quadrotor][:body], HyperRectangle(Vec(-a, -a, -0.06), Vec(2 * a, 2 * a, 0.12)), green)

    for (i, (x, y)) in enumerate([[a, -a], [a, a], [-a, a], [-a, -a]])
        setobject!(vis[:quadrotor][Symbol("prop$i")], Cylinder(Point(x, y, 0.03), Point(x, y, 0.09), 0.25), blue)
    end
end

set_target!(vis, radius) = setobject!(vis[:target], Sphere(Point(0.0, 0, 0), radius), red)

# transformations
set_quadrotor_state!(vis, state) = settransform!(vis[:quadrotor], Translation(state[1:3]) ∘ LinearMap(QuatRotation(state[4:7])))
set_target_position!(vis, position) = settransform!(vis[:target], Translation(position))


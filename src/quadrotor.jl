# bodies
function set_quadrotor!(vis, width, height, radius)
    setobject!(vis[:quadrotor][:body], HyperRectangle(Vec(-width / 2, -width / 2, -height/2), Vec(width, width, height)), green)

    for (i, (x, y)) in enumerate(width / 2 * [[1, -1], [1, 1], [-1, 1], [-1, -1]])
        setobject!(vis[:quadrotor][Symbol("prop$i")], Cylinder(Point(x, y, height/2), Point(x, y, height), radius), blue)
    end
end

set_target!(vis, radius) = setobject!(vis[:target], Sphere(Point(0.0, 0, 0), radius), red)

# transformations
set_quadrotor_state!(vis, state) = settransform!(vis[:quadrotor], Translation(state[1:3]) ∘ LinearMap(QuatRotation(state[4:7])))
set_target_position!(vis, position) = settransform!(vis[:target], Translation(position))


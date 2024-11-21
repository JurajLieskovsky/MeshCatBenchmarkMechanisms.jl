# bodies
function set_cartpole!(vis, width, height, depth, length, radius)
    setobject!(vis[:cartpole][:cart], HyperRectangle(Vec(-depth / 2, -width / 2, -height / 2), Vec(depth, width, height)), green)
    setobject!(vis[:cartpole][:pole][:rod], Cylinder(Point(0.0, 0, 0), Point(0.0, 0, -length), radius / 3), blue)
    setobject!(vis[:cartpole][:pole][:tip], Sphere(Point(0.0, 0, -length), radius), red)
end

# transformations
function set_cartpole_state!(vis, state)
    settransform!(vis[:cartpole], Translation(0, state[1], 0))
    settransform!(vis[:cartpole][:pole], LinearMap(RotX(state[2])))
end

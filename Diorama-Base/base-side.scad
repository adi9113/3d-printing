$fa = 1;
$fs = 0.4;

diorama_height = 10;    // Height at which the diorama should be placed in cm

side_length = 10;       // Side length of the base plate in cm
base_support = 10;      // Length of base plate bracket minus thickness of covers in cm
base_thickness = 6;     // Height of base plate in cm

cover_thickness = 1;    // Thickness of cover material

drilling_depth = diorama_height/4;

difference() {
    cube(size=[side_length, 10, diorama_height], center=true);
    translate([0, 0, drilling_depth]) {
        cylinder(r=2, h=diorama_height/2, center=true);
    }
}


translate([0, -(base_support/2 - cover_thickness/2), diorama_height/2 + base_thickness/2 - 0.001]) {
    cube(size=[side_length, cover_thickness, base_thickness], center=true);
}

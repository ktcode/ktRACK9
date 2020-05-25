//
// ktRACK9
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

LL = 190;
S = 4.5;
L = 155;
R = 4;
V = R/2;

difference()
{
    union()
    {
        translate([0, -panel_thick, -panel_thick]) cube([LL, 10+panel_thick, panel_thick]);
        translate([0, -panel_thick, -panel_thick]) cube([LL, panel_thick, 10+panel_thick]);
        translate([0, 0, 0]) cube([LL, V, V]);
    }
    translate([-gap1, V, V]) rotate([0, 90, 0]) cylinder(LL+gap2, d=R, $fn=100);
    translate([LL/2-L/2, -panel_thick-gap1, S]) cube([L, panel_thick+gap2, 10+panel_thick+gap1]);
}

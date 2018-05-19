difference(){
  cube(5,120,120);
  cylinder(3, 120, 120, false, $fn=50);
  cylinder(5, 6, 6, false, $fn=50);
//                translate([0,0,180]) cylinder(5, 6.8, 6.8, false, $fn=50);
//                translate([0,0,185]) cylinder(14.8, 5.8, 5.8, false, $fn=6);
            // Cutout at bottom
            union(){
                translate([0,0,0]) cylinder(5, 7, 7, false, $fn=50);
                translate([0,0,5]) cylinder(15, 6, 6, false, $fn=6);
            }
            // Screw hole at top
            translate([0,10,190]) rotate([90,0,0]) cylinder(20,1.6,1.6,false,$fn=30);
            // Screw hole at bottom
            translate([0,10,10])  rotate([90,0,0]) cylinder(20,1.6,1.6,false,$fn=30);
            // Screw indentation
            translate([0,-8,10]) rotate([90,0,0]) cylinder(2,1.5,3,false,$fn=30);
            // zip tie catches
            translate([0,0,30]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
            translate([0,0,90]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
            translate([0,0,150]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
        }
    }
    translate([-61,100,-35]) cube([130,210,70],center=true);
}
// Right half
difference(){
    rotate([0,180,0]) translate([-61,0,0]) rotate([-90,0,0]) {
        difference(){
            //Main Shaft and fins
            union(){
                linear_extrude(height = 180, twist = -720, $fn=2000) square([10, 60]);
                cylinder(180, 10, 10, false, $fn=100);
                translate([0,0,180]) cylinder(5, 6.8, 6.8, false, $fn=50);
                translate([0,0,185]) cylinder(14.8, 5.8, 5.8, false, $fn=6);
            }
            // Cutout at bottom
            union(){
                translate([0,0,0]) cylinder(5, 7, 7, false, $fn=50);
                translate([0,0,5]) cylinder(15, 6, 6, false, $fn=6);
            }
            // Screw hole at top
            translate([0,10,190]) rotate([90,0,0]) cylinder(20,1.6,1.6,false,$fn=30);
            // Screw hole at bottom
            translate([0,10,10])  rotate([90,0,0]) cylinder(20,1.6,1.6,false,$fn=30);
            // nut catch
            translate([0,9,10]) rotate([90,0,0]) cylinder(3,3.1,3.1,false,$fn=6);
            translate([0,9-(3/2),5]) rotate([90,0,0]) cube([6.2,10,3],true);
            // zip ties
            translate([0,0,30]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
            translate([0,0,90]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
            translate([0,0,150]) rotate_extrude(convexity=10, $fn=100) translate([9,0,0]) square(2.5,center=false);
        }
    }
    translate([61,100,-35]) cube([130,210,70],center=true);
}

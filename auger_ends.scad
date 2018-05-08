union() {
  difference(){
    // Frame
    translate([-70,-70,0]) cube([140,140,5], false);
    // Auger inset
    translate([0,0,2]) cylinder(3, 60, 60, false, $fn=50);
    
    // Food Opening
    difference(){
      cylinder(5, 60, 60, false, $fn=50);
      cylinder(5, 16, 16, false, $fn=50);
      rotate([0,0,-30]) cube([60,60,5], false);
      rotate([0,0,60]) cube([60,60,5], false);
      rotate([0,0,120]) cube([60,60,5], false);
    }
    
    // Inner Axel
    cylinder(5, 6, 6, false, $fn=50);
    // Screw holes and nut catches
    translate([65, 65, 2.6]) cylinder(2.4, 3.1, 3.1, false, $fn=6);
    translate([-65, 65, 2.6]) cylinder(2.4, 3.1, 3.1, false, $fn=6);
    translate([65, 65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([65, -65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([-65, -65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([-65, 65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
  }
  // Lower Track
  difference(){
    translate([-60,-60,0]) cube([120,120,50], false);
    cylinder(100, 60, 60, false, $fn=50);
    translate([-60,-25,5]) cube([120,120,50], false);
  }
  }
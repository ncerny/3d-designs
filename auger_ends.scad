union() {
  difference(){
    // Frame
    translate([-70,-70,0]) cube([140,140,2], false);
    // Auger inset
    //translate([0,0,2]) cylinder(3, 60, 60, false, $fn=50);
    
    // Food Opening
    difference(){
      cylinder(5, 60, 60, false, $fn=100);
      cylinder(5, 16, 16, false, $fn=100);
      rotate([0,0,-45]) cube([60,60,5], false);
      rotate([0,0,45]) cube([60,60,5], false);
      rotate([0,0,135]) cube([60,60,5], false);
    }
    
    // Inner Axel
    cylinder(5, 7, 7, false, $fn=50);
    
    // Screw holes and nut catches
    translate([65, 65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([65, -65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([-65, -65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
    translate([-65, 65, 0]) cylinder(5, 1.5, 1.5, false, $fn=30);
  }
  // Lower Track
  difference(){
    translate([-124/2,-70,0]) cube([124,140,10], false);
    cylinder(100, 60, 60, false, $fn=100);
  }
}
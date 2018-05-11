union() {
  difference(){
    // Frame
    translate([-70,-70,0]) cube([140,140,5], false);
    // Auger inset
    //translate([0,0,2]) cylinder(3, 60, 60, false, $fn=50);
    
    // Food Opening
    translate([0,0,0.2]) difference(){
      cylinder(10, 61, 61, false, $fn=100);
      //cylinder(10, 16, 16, false, $fn=100);
      translate([-70,-15,0]) cube([140,140,10], false);
      rotate([0,0,-45]) cube([65,65,10], false);
      rotate([0,0,45]) cube([65,65,10], false);
      rotate([0,0,135]) cube([65,65,10], false);
    }
    
    translate([-22,-20,2.5]) rotate([0,90,0]) cylinder(10,1.3,1.3,true,$fn=30);
    translate([22,-20,2.5]) rotate([0,90,0]) cylinder(10,1.3,1.3,true,$fn=30);
    
    // Inner Axel
    cylinder(10, 7.2, 7.2, false, $fn=50);
    
    // Screw holes and nut catches
    translate([65, 65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([65, -65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([-65, -65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([-65, 65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
  }
  // Lower Track
  difference(){
    translate([-124/2,-70,0]) cube([124,140,10], false);
    cylinder(100, 61, 61, false, $fn=100);
    translate([-122/2,0,2]) cube([122,68,8], false);
  }
  translate([-21.5,-20,2.5]) rotate([0,90,0]) cylinder(10,1.2,1.2,true,$fn=30);
  translate([21.5,-20,2.5]) rotate([0,90,0]) cylinder(10,1.2,1.2,true,$fn=30);
}
difference(){
  cylinder(5, 60, 60, false, $fn=100);
  // cylinder(10, 17, 17, false, $fn=100);
  translate([-70,-17,0]) cube([140,140,10], false);
  translate([-2,0,0]) rotate([0,0,-45]) cube([65,65,10], false);
  translate([2,0,0]) rotate([0,0,135]) cube([65,65,10], false);
}
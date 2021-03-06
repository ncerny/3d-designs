union() {
  difference(){
    // Frame
    translate([-70,-70,0]) cube([140,140,2], false);
    // Auger inset
    //translate([0,0,2]) cylinder(3, 60, 60, false, $fn=50);
    
    // Food Opening
    difference(){
      cylinder(10, 61, 61, false, $fn=100);
      //cylinder(10, 16, 16, false, $fn=100);
      translate([-70,-15,0]) cube([140,140,10], false);
      rotate([0,0,-45]) cube([65,65,10], false);
      rotate([0,0,45]) cube([65,65,10], false);
      rotate([0,0,135]) cube([65,65,10], false);
    }
    
    // Inner Axel
    cylinder(10, 7.2, 7.2, false, $fn=50);
    
    // Screw holes and nut catches
    translate([65, 65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([65, -65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([-65, -65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([-65, 65, 0]) cylinder(10, 1.5, 1.5, false, $fn=30);
    translate([65, 65, 0]) cylinder(1, 3.1, 3.1, false, $fn=6);
    translate([65, -65, 0]) cylinder(1, 3.1, 3.1, false, $fn=6);
    translate([-65, -65, 0]) cylinder(1, 3.1, 3.1, false, $fn=6);
    translate([-65, 65, 0]) cylinder(1, 3.1, 3.1, false, $fn=6);
  }
  // Lower Track
  difference(){
    translate([-124/2,-70,0]) cube([124,140,10], false);
//    cylinder(100, 61, 61, false, $fn=100);
    translate([-122/2,-71,0]) cube([122,140,10], false);
  }
  // Hinges
  translate([-24,-20,5]) rotate([0,-90,0]) difference(){
    union(){
      cylinder(12,4,4,false,$fn=30);
      translate([-4,-4,0]) cube([4,8,12],false);
    }
    cylinder(11,3,3,false,$fn=30);
  }
  translate([24,-20,5]) rotate([0,90,0]) difference(){
    union(){
      cylinder(12,4,4,false,$fn=30);
      translate([0,-4,0]) cube([4,8,12],false);
    }
    cylinder(11,3,3,false,$fn=30);
  }
  translate([0,-20,5]) rotate([0,90,0]) cylinder(68,2.6,2.6,true,$fn=30);
  translate([0,-20,3.4]) cube([30,5.2,2.6],true,$fn=30);
}
difference(){
  cylinder(2, 60, 60, false, $fn=100);
  // cylinder(10, 17, 17, false, $fn=100);
  translate([-70,-17,0]) cube([140,140,10], false);
  translate([-2,0,0]) rotate([0,0,-45]) cube([65,65,10], false);
  translate([2,0,0]) rotate([0,0,135]) cube([65,65,10], false);
}
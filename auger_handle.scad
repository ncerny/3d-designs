
difference(){
  union(){
    cylinder(30, 40, 40, false, $fn=50);
    translate([0,0,30]) cylinder(40, 40, 6.8, false, $fn=50);
    translate([0,0,70]) cylinder(10, 6.8, 6.8, false, $fn=50);
    translate([0,0,80]) cylinder(14.8, 5.8, 5.8, false, $fn=6);
  }
  a=0;
  b=12.36;
  c=23.51;
  d=32.36;
  e=38.04;
  f=40;
  z=0;
  translate([ a,  f, z]) cylinder(50,8,8,false,$fn=50);
  translate([ b,  e, z]) cylinder(50,8,8,false,$fn=50);
  translate([ c,  d, z]) cylinder(50,8,8,false,$fn=50);
  translate([ d,  c, z]) cylinder(50,8,8,false,$fn=50);
  translate([ e,  b, z]) cylinder(50,8,8,false,$fn=50);
  translate([ f,  a, z]) cylinder(50,8,8,false,$fn=50);
  translate([-e,  b, z]) cylinder(50,8,8,false,$fn=50);
  translate([-d,  c, z]) cylinder(50,8,8,false,$fn=50);
  translate([-c,  d, z]) cylinder(50,8,8,false,$fn=50);
  translate([-b,  e, z]) cylinder(50,8,8,false,$fn=50);
  translate([-a, -f, z]) cylinder(50,8,8,false,$fn=50);
  translate([-b, -e, z]) cylinder(50,8,8,false,$fn=50);
  translate([-c, -d, z]) cylinder(50,8,8,false,$fn=50);
  translate([-d, -c, z]) cylinder(50,8,8,false,$fn=50);
  translate([-e, -b, z]) cylinder(50,8,8,false,$fn=50);
  translate([-f, -a, z]) cylinder(50,8,8,false,$fn=50);
  translate([ e, -b, z]) cylinder(50,8,8,false,$fn=50);
  translate([ d, -c, z]) cylinder(50,8,8,false,$fn=50);
  translate([ c, -d, z]) cylinder(50,8,8,false,$fn=50);
  translate([ b, -e, z]) cylinder(50,8,8,false,$fn=50);
  // Screw hole at top
  translate([0,10,85]) rotate([90,0,0]) cylinder(20,1.6,1.6,false,$fn=30);
}
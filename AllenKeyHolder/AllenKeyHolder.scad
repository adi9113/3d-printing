// the sizes of your allen keys (in mm)
// (they should be sorted from lowest to highest)
dias=[2.5,4,5,6,7,8];
// wiggle room for your keys. The lower, the tighter the fit (in mm)
wiggle=0.25;
// how high the keyholder should be (in mm)
height=12;
// wall thickness between the tools (in mm)
minRim=2;
// border width around the tool (in mm)
border=2;
// the basic shape of the tool holder
// can be "cone" or "cuboid"
style = "cone";
// how the keys are oriented inside the holder (in deg)
// 0: keys are facing towards you
// 30: keys are overlapping
// or experiment with anything between
keyOrientation = 0;



// ---
// CALCULATION STARTS HERE
//
// don't change anything below here unless you know what you are doing
// ---

// we were given the diameter of the circle _inside_ the hexagon, but we need to work with the diameter of the circle _around_ the hexagon.
outerDias = [ for (dia = dias) 2/sqrt(3) * (dia+wiggle) ];
Holder();

module HexBore(outerDia) {
    rotate([0,0,keyOrientation]) polygon([
        [outerDia/2*cos(0), outerDia/2*sin(0)],
        [outerDia/2*cos(60), outerDia/2*sin(60)],
        [outerDia/2*cos(120), outerDia/2*sin(120)],
        [outerDia/2*cos(180), outerDia/2*sin(180)],
        [outerDia/2*cos(240), outerDia/2*sin(240)],
        [outerDia/2*cos(300), outerDia/2*sin(300)]
    ]);
}

module HexBores(outerDias=[], xOffset=0) {
    remainder = [for (i=[1:1:len(outerDias)-1]) outerDias[i]];
    dia = outerDias[0];
    xOffset = xOffset + dia/2;
       
    union() {
        translate([xOffset,0,0]) linear_extrude(height=height) HexBore(dia);
        if (len(remainder) > 0) HexBores(remainder, xOffset=xOffset+dia/2+minRim);
    }
}

module Holder($fn=100) {
    difference() {
      linear_extrude(height) offset(border) projection() hull() {
    
        if (style == "cuboid") HexBores([outerDias[len(outerDias)-1]]);
        HexBores(outerDias);
      };
      translate([0,0,-0.1]) scale([1, 1, 2]) HexBores(outerDias);
  }
}

echo(version=version());

include <./YAPPgenerator_v3.scad>

pcbLength = 20;
pcbWidth = 18;
pcbThickness=1.0;

showPCB = false;

//  *** Snap Joins ***
snapJoins   =   
[
    [6, 5, yappLeft, yappRight]
   ,[pcbLength-6, 5, yappLeft, yappRight]
];

lidWallHeight = 4;
baseWallHeight = 25;
paddingFront=15;

pcbStands = 
[
    [2, 2, pcbThickness+0.33, yappDefault, standoffDiameter - 3, yappFrontLeft, yappBackRight, yappHole]
];


// USB connector
cutoutsBack =
[
    [4.5, 0, 9.5, 4, 1, yappRoundedRect, yappCoordPCB]
];

// LED
cutoutsLid =
[
    [pcbLength / 2, pcbWidth / 2, 0, 8, 3.5, yappCircle, yappCenter]
];

// Stereo jack
cutoutsFront =
[
    [5.5, 8, 0, 8, 3.5, yappCircle, yappCoordPCB]
];

module hookBaseInside()
{
  translate([pcbLength+wallThickness, 0, (basePlaneThickness/2)])
  {
    color("blue")
    {
      cube([2,(shellWidth-(wallThickness*2)),((basePlaneThickness/2)+3)]);
    }
  }
}

YAPPgenerate();
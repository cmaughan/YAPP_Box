include <./YAPPgenerator_v3.scad>

pcbLength = 125;
pcbWidth = 25;
pcbThickness=1.5;
baseWallHeight = 10;
lidWallHeight = 32;
roundRadius = 0;

showPCB = false;

pcbStands = 
[
// 11 to the back of the PCB from the display
    // x, y, height, gap, snadoffDiameter, standoffPinDiameter (3)
    [3, 3, 12, yappDefault, 5, 2.5, yappAllCorners, yappCoordPCB, yappHole, yappBaseOnly]
];

// Digial Display
cutoutsBase =
[
    [6, 3, 101, 19, 0, yappRectangle, yappCoordPCB],
    [pcbLength - 11, 7, 0, 0, 1.5, yappCircle, yappCoordPCB],
    [pcbLength - 11, pcbWidth - 8, 0, 0, 1.5, yappCircle, yappCoordPCB]
];

cutoutsLid =
[
    // SMA
    [pcbLength / 4, pcbWidth / 2, 0, 0, 3, yappCircle, yappCenter],
    
    // Powerpole
    [pcbLength - pcbLength / 4, pcbWidth / 2, 21.25, 12.25, 0, yappRectangle, yappCenter],
    
    // From center of rect
    [pcbLength - pcbLength / 4 + 14, pcbWidth / 2, 0, 0, 1.5, yappCircle, yappCenter],
    [pcbLength - pcbLength / 4 - 14, pcbWidth / 2, 0, 0, 1.5, yappCircle, yappCenter]
    //[pcbLength / 3, 23, 0, 0, 3, yappCircle, yappCenter],
    
];

snapJoins   =   
[
    [16, 5, yappLeft, yappRight]
   ,[pcbLength-16, 5, yappLeft, yappRight]
];

//  *** Snap Joins ***
/*
snapJoins   =   
[
    [6, 5, yappLeft, yappRight]
   ,[pcbLength-6, 5, yappLeft, yappRight]
];



paddingFront=15;




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
}*/

YAPPgenerate();
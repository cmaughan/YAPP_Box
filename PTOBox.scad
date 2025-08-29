ppole_height = 12.25;
ppole_width = 21.25;


include <./YAPPgenerator_v3.scad>

pcbLength = 74;
pcbWidth = 74;
pcbThickness=1.5;
baseWallHeight = 48;
lidWallHeight = 5;
roundRadius = 0;
paddingFront=1;
paddingBack=1;
paddingRight=1;
paddingLeft=1;

showPCB = false;

pcbStands = 
[
    // Odd holes
    [6, 6, 5, yappDefault, 5, 2.5, yappBackRight, yappCoordPCB, yappHole, yappBaseOnly],
    [8, 8, 5, yappDefault, 5, 2.5, yappFrontRight, yappCoordPCB, yappHole, yappBaseOnly],
    [15, 4, 5, yappDefault, 5, 2.5, yappFrontLeft, yappCoordPCB, yappHole, yappBaseOnly],
        
     // PTO
    [30, 46, 5, yappDefault, 5, 2.5, yappBackLeft, yappCoordPCB, yappHole, yappBaseOnly],
    [7, 25, 5, yappDefault, 5, 2.5, yappBackLeft, yappCoordPCB, yappHole, yappBaseOnly],
];


cutoutsLeft =
[
    [19, 25, 0, 0, 3.25, yappCircle, yappCoordPCB],
];


cutoutsRight =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [pcbLength - pcbLength / 3.5, baseWallHeight / 1.5 , 0, 0, 3, yappCircle, yappCenter],
    
    // Powerpole standard print, 14 from center holes
    [pcbLength - pcbLength / 3.5, baseWallHeight / 3 + 2, ppole_width, ppole_height, 0, yappRectangle, yappCenter],
    [pcbLength - pcbLength / 3.5 + 14, baseWallHeight / 3 + 2, 0, 0, 1.5, yappCircle, yappCenter],
    [pcbLength - pcbLength / 3.5 - 14, baseWallHeight / 3 + 2, 0, 0, 1.5, yappCircle, yappCenter]
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
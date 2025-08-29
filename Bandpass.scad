ppole_height = 12.25;
ppole_width = 21.25;

include <./YAPPgenerator_v3.scad>

pcbLength = 101;
pcbWidth = 29;
pcbThickness=1.5;
baseWallHeight = 20;
lidWallHeight = 5;


roundRadius = 0;


paddingFront=4;
paddingBack=4;
paddingRight=2;
paddingLeft=2;

showPCB = false;

pcbStands = 
[
    // Odd holes
    [10, 6, yappDefault, yappDefault, yappDefault, 2.5, yappBackLeft, yappCoordPCB],
    [11.5, 6, yappDefault, yappDefault, yappDefault, 2.5, yappFrontRight, yappCoordPCB],
];


cutoutsFront =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [pcbWidth / 2 - 5, 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

cutoutsBack =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [pcbWidth / 2 + 5, 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

snapJoins   =   
[
    [16, 5, yappLeft, yappRight]
   ,[pcbLength-16, 5, yappLeft, yappRight]
];


YAPPgenerate();
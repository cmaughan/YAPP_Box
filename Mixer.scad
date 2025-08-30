include <./YAPPgenerator_v3.scad>

pcbLength = 101;
pcbWidth = 24;
pcbThickness=1.5;
baseWallHeight = 27;
lidWallHeight = 4;


roundRadius = 0;

paddingFront=4;
paddingBack=4;
paddingRight=4;
paddingLeft=4;

showPCB = false;

pcbStands = 
[
    // Odd holes
    [9, 5, yappDefault, yappDefault, yappDefault, 2.5, yappBackRight, yappCoordPCB],
    [7, 4, yappDefault, yappDefault, yappDefault, 2.5, yappFrontLeft, yappCoordPCB],
];


cutoutsFront =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [16, 3 + 2, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
    [16, 3 + 2 + 3 + 2 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

cutoutsBack =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [8, 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
    [8, 3 + 3 + 3 + 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

snapJoins   =   
[
    [16, 5, yappLeft, yappRight]
   ,[pcbLength-16, 5, yappLeft, yappRight]
];


YAPPgenerate();
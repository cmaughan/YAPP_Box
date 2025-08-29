include <./YAPPgenerator_v3.scad>

pcbLength = 101;
pcbWidth = 24;
pcbThickness=1.5;
baseWallHeight = 27;
lidWallHeight = 4;


roundRadius = 0;

paddingFront=3;
paddingBack=3;
paddingRight=3;
paddingLeft=3;

showPCB = false;

pcbStands = 
[
    // Odd holes
    [5, 9, yappDefault, yappDefault, yappDefault, 2.5, yappBackRight, yappCoordPCB],
    [4, 7, yappDefault, yappDefault, yappDefault, 2.5, yappFrontLeft, yappCoordPCB],
];


cutoutsFront =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [20, 3 + 2, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
    [20, 3 + 2 + 3 + 2 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

cutoutsBack =
[
    // SMA
    // Round, no holes, plastic SMA mount
    [5, 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
    [5, 3 + 3 + 3 + 3 + 3, 0, 0, 3, yappCircle, yappCenter, yappCoordPCB],
];

snapJoins   =   
[
    [16, 5, yappLeft, yappRight]
   ,[pcbLength-16, 5, yappLeft, yappRight]
];


YAPPgenerate();
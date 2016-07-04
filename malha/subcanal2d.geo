cl__1 = 1.0;
cl__2 = 50.0;
cl__3 = 5.0;
Point(1) = {-70.14805771, 40.5, 0, cl__3};
Point(2) = {0, 81, 0, cl__3};
Point(3) = {-50, 90, 0, cl__3};
Point(7) = {-80, 138.5640646, 0, cl__3};
//Point(18) = {0, 0, 0, cl__1};
Point(33) = {-15.13864595, 91.89237801, 0, cl__3};
Point(34) = {-16.15137378, 71.675, 0, cl__3};
Point(35) = {-15.49319447, 72.05500000000001, 0, cl__1};
Point(36) = {-14.52173598, 91.44850630000001, 0, cl__1};
Point(37) = {-53.86678012, 49.9, 0, cl__1};
Point(38) = {-72.0273923, 59.20593068, 0, cl__1};
Point(39) = {-54.30845307, 49.645, 0, cl__1};
Point(40) = {-71.97641036, 58.69838527, 0, cl__1};
Point(41) = {-78.1356601, 120.00406397, 0, cl__3};
Point(42) = {-64.86135405, 127.66826799, 0, cl__3};
Point(43) = {-65.47826402, 128.1121397, 0, cl__1};
Point(44) = {-78.21163319999999, 120.76025712, 0, cl__1};
Point(45) = {-75.0815262, 89.604997325, 0, cl__2};
Point(46) = {-35.00907695, 60.78745, 0, cl__2};
Point(47) = {-40.0, 109.780323, 0, cl__2};

// Ponto para aumentar a granulacao do cladding
Point(48) = {-72.00190133, 58.9521579750, 0, cl__1};

Circle(28) = {33, 2, 34};
Circle(29) = {36, 2, 35};
Circle(30) = {38, 1, 37};
Circle(31) = {40, 1, 39};
Circle(32) = {41, 7, 42};
Circle(33) = {44, 7, 43};
Line(34) = {7, 43};
Line(35) = {43, 42};
Line(36) = {42, 47};
Line(51) = {47 ,33};
Line(37) = {33, 36};
Line(38) = {36, 2};
Line(39) = {2, 35};
Line(40) = {35, 34};
Line(41) = {34, 46};
Line(50) = {46, 37};
Line(42) = {37, 39};
Line(43) = {39, 1};
Line(44) = {1, 40};
// A Linha 45 original Line(45) = {40, 38} foi dividida em duas.
// Uma nova linha 45 e outra com o numero final de linhas.
Line(45) = {40, 48};
Line(70) = {48, 38};

Line(46) = {38, 45};
Line(47) = {41, 44};
Line(48) = {44, 7};
Line(49) = {45,41};

//Line Loop(50) = {46, 49, 32, 36, 28, 41, 50, 51, -30};
//Plane Surface(50) = {50};
//Line Loop(52) = {48, 34, -33};
//Plane Surface(52) = {52};
//Line Loop(54) = {38, 39, -29};
//Plane Surface(54) = {54};
//Line Loop(56) = {31, 43, 44};
//Plane Surface(56) = {56};
//Line Loop(58) = {47, 33, 35, -32};
//Plane Surface(58) = {58};
//Line Loop(60) = {28, -40, -29, -37};
//Plane Surface(60) = {60};
//Line Loop(62) = {45, 30, 42, 70, -31};
//Plane Surface(62) = {62};
//Recombine Surface {52, 54, 56, 58, 60, 62};

//Physical Surface("mat3") = {50};
//Physical Surface("mat1") = {52, 56, 54};
//Physical Surface("mat2") = {58, 62, 60};
//Physical Line("parede") = {51, 36, 49, 46, 50, 41};
//Physical Line("extremos") = {48, 34, 47, 35, 37, 38, 39, 40, 43, 42, 44, 45, 70};

// Linhas internas
//Physical Line(71) = {33, 32, 31, 30, 28, 29};

//Mesh.RecombineAll = 1;


Delete {
  Point{3};
}
Line Loop(71) = {48, 34, -33};
Plane Surface(72) = {71};
Line Loop(73) = {38, 39, -29};
Plane Surface(74) = {73};
Line Loop(75) = {43, 44, 31};
Plane Surface(76) = {75};
Line Loop(77) = {33, 35, -32, 47};
Plane Surface(78) = {77};
Line Loop(79) = {29, 40, -28, 37};
Plane Surface(80) = {79};
Line Loop(81) = {31, -42, -30, -70, -45};
Plane Surface(82) = {81};
Line Loop(83) = {49, 32, 36, 51, 28, 41, 50, -30, 46};
Plane Surface(84) = {83};

//Recombine Surface {72, 72, 76};

Physical Surface("mat3") = {84};
Physical Surface("mat1") = {72};
Physical Surface("mat4") = {76};
Physical Surface("mat5") = {74};
Physical Surface("mat2") = {82, 80, 78};

Physical Line("parede") = {47, 48, 34, 35, 36, 51, 37, 38, 39, 40, 41, 50, 42, 43, 44, 45, 70, 46, 49};
//Physical Line(90) = {33, 32, 31, 30, 28, 29};

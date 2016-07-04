cl1 = 0.10;
cl2 = 10.0;
cl3 = 0.50;
Point(1) = {-7.014805771, 4.05, 0, cl3};
Point(2) = {0, 8.1, 0, cl3};
Point(3) = {-5.0, 9.0, 0, cl3};
Point(7) = {-8, 13.85640646, 0, cl3};
//Point(18) = {0, 0, 0, cl1};

// Pontos limitando o cladding inferior direito
// Baseados no ponto{2}
Point(33) = {-1.513864595, 9.189237801, 0, cl1};
Point(34) = {-1.615137378, 7.1675, 0, cl1};
Point(35) = {-1.549319447, 7.205500000000001, 0, cl1};
Point(36) = {-1.452173598, 9.144850630000001, 0, cl1};

// Pontos limitando o cladding inferior esquerdo
// Baseados no ponto{2}
Point(37) = {-5.386678012, 4.99, 0, cl1};
Point(38) = {-7.20273923, 5.920593068, 0, cl1};
Point(39) = {-5.430845307, 4.9645, 0, cl1};
Point(40) = {-7.197641036, 5.869838527, 0, cl1};

// Pontos limitando o cladding superior
// Baseados no ponto{7}
Point(41) = {-7.81356601, 12.000406397, 0, cl1};
Point(42) = {-6.486135405, 12.766826799, 0, cl1};
Point(43) = {-6.547826402, 12.81121397, 0, cl1};
Point(44) = {-7.821163319999999, 12.076025712, 0, cl1};

// Pontos dividindo as linhas laterias
Point(45) = {-7.50815262, 8.9604997325, 0, cl2};
Point(46) = {-3.500907695, 6.078745, 0, cl2};
Point(47) = {-4.0, 10.9780323, 0, cl2};

// Ponto para aumentar a granulacao do cladding
//Point(48) = {-7.200190133, 5.89521579750, 0, cl1};

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
Line(45) = {40, 38};
Line(46) = {38, 45};
Line(47) = {41, 44};
Line(48) = {44, 7};
Line(49) = {45,41};

// Linhas internas
//Physical Line(71) = {33, 32, 31, 30, 28, 29};

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
Line Loop(81) = {31, -42, -30, -45};
Plane Surface(82) = {81};
Line Loop(83) = {49, 32, 36, 51, 28, 41, 50, -30, 46};
Plane Surface(84) = {83};

Recombine Surface {72, 72, 76};

zdir[] = Extrude{0, 0, 35.0} { Surface{72, 74, 76, 78, 80, 82, 84}; Layers{35}; Recombine;};

Physical Volume("mat3") = {7};
Physical Volume("mat2") = {4, 6, 5};
Physical Volume("mat1") = {1, 2, 3};

// Superfícies internas, não usadas pelo milonga

//Mesh.CharacteristicLengthFromCurvature = 1;
//Mesh.CharacteristicLengthMin = 0.001;

Mesh.Algorithm = 8;
Mesh.RecombineAll = 1;

//Physical Surface(307) = {170};
//Physical Surface(308) = {178};
//Physical Surface(309) = {148};
//Physical Surface(310) = {156};

Physical Surface("inlet") = {248};
Physical Surface("outlet") = {84};
Physical Surface("extremos") = {201, 135, 82, 76, 74, 118, 179, 80, 101, 72, 78, 157};
Physical Surface("parede") = {109, 178, 227, 223, 148, 96, 92, 156, 215, 247, 200, 130, 113, 170, 235, 239, 192, 126};

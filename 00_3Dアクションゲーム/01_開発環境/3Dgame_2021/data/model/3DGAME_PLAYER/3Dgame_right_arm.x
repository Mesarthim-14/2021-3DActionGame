xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 30;
 -0.29307;-4.38504;1.44718;,
 -0.25204;4.14833;1.69182;,
 -1.57833;4.31471;1.16198;,
 -1.61935;-4.21867;0.91732;,
 -1.61545;-4.35928;1.06480;,
 -1.71344;4.14626;0.33903;,
 -1.17086;4.27765;-1.19598;,
 -1.21189;-4.25574;-1.44062;,
 -0.24808;4.23768;-1.42480;,
 -0.28915;-4.29569;-1.66946;,
 1.12312;4.09299;-1.06410;,
 1.68890;4.15148;0.08402;,
 1.64791;-4.38191;-0.16061;,
 1.08209;-4.44039;-1.30876;,
 1.19851;4.03914;1.25428;,
 1.15746;-4.49425;1.00961;,
 -0.30664;-5.80204;0.44828;,
 -0.29339;-5.77417;-0.19960;,
 0.42151;-5.80084;-0.15490;,
 0.23753;-5.84297;0.28416;,
 1.19047;5.60943;0.04656;,
 0.78459;5.55889;-0.89516;,
 -1.20270;5.73991;-0.18103;,
 -0.71392;5.73967;-1.02608;,
 -0.11098;5.70127;-1.25533;,
 -0.80422;-5.73958;0.24952;,
 -0.95278;-5.74956;-0.24082;,
 -0.65135;-5.75349;-0.63509;,
 -0.30516;-5.76850;-0.72095;,
 0.20923;-5.82277;-0.58564;;
 
 31;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;6,8,9,7;,
 4;10,11,12,13;,
 4;9,8,10,13;,
 4;14,1,0,15;,
 4;12,11,14,15;,
 4;2,5,4,3;,
 4;16,17,18,19;,
 3;1,14,2;,
 3;14,11,2;,
 3;11,5,2;,
 3;20,21,22;,
 3;22,21,23;,
 3;21,24,23;,
 4;11,10,21,20;,
 4;10,8,24,21;,
 4;8,6,23,24;,
 4;6,5,22,23;,
 4;5,11,20,22;,
 4;0,3,25,16;,
 4;3,4,26,25;,
 4;4,7,27,26;,
 4;7,9,28,27;,
 4;9,13,29,28;,
 4;13,12,18,29;,
 4;12,15,19,18;,
 4;15,0,16,19;,
 4;18,17,28,29;,
 4;16,25,26,17;,
 4;28,17,26,27;;
 
 MeshMaterialList {
  13;
  31;
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7;;
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.385600;0.524000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.627000;0.000000;0.082000;1.000000;;
   4.000000;
   0.460000;0.460000;0.460000;;
   0.300960;0.000000;0.039360;;
  }
  Material {
   0.586400;0.411200;0.244800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.627000;0.000000;0.082000;1.000000;;
   4.000000;
   0.460000;0.460000;0.460000;;
   0.300960;0.000000;0.039360;;
  }
  Material {
   0.627000;0.000000;0.082000;1.000000;;
   4.000000;
   0.460000;0.460000;0.460000;;
   0.300960;0.000000;0.039360;;
  }
  Material {
   0.800000;0.793600;0.078400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.790400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.652800;0.348000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.304000;0.153600;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.426400;0.034400;0.034400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.091200;0.091200;0.091200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.476800;0.382400;0.060000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  48;
  0.669033;-0.024513;0.742828;,
  0.643669;0.115535;-0.756533;,
  -0.793409;0.152883;-0.589176;,
  -0.146470;0.023118;0.988945;,
  0.622360;-0.361295;0.694359;,
  -0.122788;-0.241591;0.962578;,
  -0.765105;-0.360364;-0.533621;,
  0.588103;-0.324515;-0.740827;,
  0.014594;0.088256;-0.995991;,
  -0.012653;-0.270078;-0.962755;,
  -0.071070;-0.316347;0.945978;,
  -0.046021;-0.028407;0.998536;,
  0.980538;0.094211;-0.172246;,
  0.932407;-0.359454;-0.037557;,
  -0.926049;-0.221020;-0.305913;,
  -0.936922;0.126765;-0.325742;,
  0.061853;0.994870;-0.080051;,
  0.095119;0.994837;0.035377;,
  0.108542;0.986799;0.120197;,
  0.111243;0.989439;0.092921;,
  0.088121;0.996083;-0.007260;,
  -0.066283;-0.996942;-0.041402;,
  -0.089691;-0.493290;0.865229;,
  0.199583;-0.408722;0.890569;,
  -0.435197;-0.769791;-0.466933;,
  -0.051259;-0.881100;-0.470144;,
  0.314998;-0.842149;-0.437677;,
  0.376030;-0.925980;-0.034094;,
  0.341942;-0.859433;0.380066;,
  -0.061478;-0.997976;-0.016286;,
  -0.239413;0.028975;-0.970485;,
  0.045436;0.131755;0.990240;,
  0.149091;-0.175114;0.973194;,
  0.096164;0.992827;0.071044;,
  0.094857;0.990199;0.102505;,
  0.058451;0.998287;0.002353;,
  0.039162;0.998703;-0.032535;,
  -0.016338;0.980080;-0.197931;,
  0.647526;0.209509;-0.732677;,
  0.870073;0.265524;-0.415295;,
  0.020198;0.148640;-0.988685;,
  -0.639842;0.228508;-0.733748;,
  -0.881719;0.255902;-0.396340;,
  0.001545;0.193058;0.981186;,
  -0.089748;-0.573270;0.814436;,
  -0.835201;-0.425098;-0.348899;,
  -0.073119;-0.997303;-0.006345;,
  -0.057053;-0.998321;-0.010055;;
  31;
  4;10,11,3,5;,
  4;14,15,2,6;,
  4;30,8,9,30;,
  4;1,12,13,7;,
  4;9,8,1,7;,
  4;0,11,10,4;,
  4;13,12,0,4;,
  4;3,31,32,5;,
  4;21,29,27,28;,
  3;33,34,35;,
  3;34,36,35;,
  3;36,37,35;,
  3;16,17,20;,
  3;20,17,19;,
  3;17,18,19;,
  4;12,1,38,39;,
  4;1,8,40,38;,
  4;8,2,41,40;,
  4;2,15,42,41;,
  4;31,43,43,43;,
  4;10,5,22,44;,
  4;5,32,23,22;,
  4;14,6,24,45;,
  4;6,9,25,24;,
  4;9,7,26,25;,
  4;7,13,27,26;,
  4;13,4,28,27;,
  4;4,10,44,28;,
  4;27,29,25,26;,
  4;21,46,47,29;,
  4;25,29,47,24;;
 }
 MeshTextureCoords {
  30;
  0.375000;0.225440;,
  0.375000;0.225710;,
  0.375000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.225710;,
  0.625000;0.225710;,
  0.625000;0.202060;,
  0.500000;0.202060;,
  0.500000;0.202060;,
  0.625000;0.202060;,
  0.375000;0.202060;,
  0.375000;0.202060;,
  0.375000;0.225440;,
  0.500000;0.227000;,
  0.500000;0.202060;,
  0.375000;0.202060;,
  0.500000;0.202060;,
  0.625000;0.202060;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.225710;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.225710;,
  0.625000;0.202060;;
 }
}

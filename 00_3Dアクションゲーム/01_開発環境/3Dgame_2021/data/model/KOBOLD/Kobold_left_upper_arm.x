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
 70;
 80.12028;-61.04604;-81.32268;,
 40.37928;-32.34924;-77.95585;,
 77.54617;-4.51632;-53.50176;,
 122.92320;-36.03048;-60.36012;,
 90.17749;4.51572;-1.24308;,
 138.47844;-27.65376;-5.96352;,
 78.36540;-4.40916;50.60916;,
 123.66420;-36.02592;48.49128;,
 45.80100;-31.80132;73.02624;,
 81.81492;-60.98436;69.03516;,
 7.39548;-67.69956;50.58828;,
 36.67128;-98.08285;46.15176;,
 -2.17812;-78.52752;0.37476;,
 23.33148;-106.41984;-5.56668;,
 6.62280;-67.81980;-50.82540;,
 36.03744;-98.05884;-57.35376;,
 40.37928;-32.34924;-77.95585;,
 80.12028;-61.04604;-81.32268;,
 123.78469;-106.90992;-79.15848;,
 165.51900;-82.51081;-61.71816;,
 179.29908;-75.15504;-13.36464;,
 166.68577;-82.58772;35.00712;,
 125.37240;-107.08572;52.53600;,
 84.59328;-131.46229;32.56176;,
 71.88840;-138.49225;-13.19448;,
 83.51593;-131.32980;-59.02272;,
 83.51593;-131.32980;-59.02272;,
 36.03744;-98.05884;-57.35376;,
 195.34381;-125.47045;-54.92496;,
 160.78069;-145.77696;-69.94176;,
 207.34968;-118.63332;-13.22832;,
 195.93421;-125.44093;28.50648;,
 161.54389;-145.76725;43.63608;,
 126.83064;-166.14949;26.41368;,
 115.49749;-172.73832;-13.06080;,
 126.36229;-166.18177;-52.58112;,
 160.78069;-145.77696;-69.94176;,
 123.78469;-106.90992;-79.15848;,
 44.98560;32.35512;-57.72636;,
 3.90096;-3.36228;-84.85860;,
 59.16420;44.02896;2.45016;,
 45.91788;32.20284;62.71080;,
 9.93468;-2.25528;82.59996;,
 -20.47560;-44.81400;62.65956;,
 -20.71176;-62.11728;4.72956;,
 -17.93088;-47.14320;-52.11564;,
 3.90096;-3.36228;-84.85860;,
 0.05280;27.39132;25.30512;,
 5.46072;32.22000;0.70164;,
 -14.63904;13.32252;33.42564;,
 -27.05496;-4.05384;25.28424;,
 -0.32832;27.45360;-23.86740;,
 -0.32832;27.45360;-23.86740;,
 -27.15144;-11.11824;1.63236;,
 -17.10264;12.87036;-34.94520;,
 -27.15144;-11.11824;1.63236;,
 -17.10264;12.87036;-34.94520;,
 -26.01612;-5.00448;-21.57672;,
 189.61801;-151.30128;-35.89380;,
 196.13605;-147.58957;-13.25484;,
 170.85217;-162.32665;-44.04708;,
 189.93840;-151.28532;9.40500;,
 170.85217;-162.32665;-44.04708;,
 189.93840;-151.28532;9.40500;,
 152.16493;-173.40541;-34.62132;,
 171.26641;-162.32148;17.61948;,
 152.16493;-173.40541;-34.62132;,
 146.26596;-176.96533;-13.16376;,
 152.41969;-173.38778;8.26860;,
 44.98560;32.35512;-57.72636;;
 
 60;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;15,14,16,17;,
 4;18,0,3,19;,
 4;19,3,5,20;,
 4;20,5,7,21;,
 4;21,7,9,22;,
 4;23,22,9,11;,
 4;24,23,11,13;,
 4;25,24,13,15;,
 4;18,26,27,0;,
 4;28,29,18,19;,
 4;30,28,19,20;,
 4;31,30,20,21;,
 4;32,31,21,22;,
 4;33,32,22,23;,
 4;34,33,23,24;,
 4;35,34,24,25;,
 4;36,35,25,37;,
 4;38,2,1,39;,
 4;40,4,2,38;,
 4;41,6,4,40;,
 4;41,42,8,6;,
 4;42,43,10,8;,
 4;43,44,12,10;,
 4;45,14,12,44;,
 4;45,46,16,14;,
 3;47,48,49;,
 3;49,48,50;,
 3;48,51,50;,
 3;50,52,53;,
 3;51,54,55;,
 3;56,57,53;,
 3;58,59,60;,
 3;59,61,60;,
 3;62,63,64;,
 3;61,65,66;,
 3;64,65,67;,
 3;65,68,67;,
 4;36,62,64,35;,
 4;35,64,67,34;,
 4;34,67,68,33;,
 4;33,68,65,32;,
 4;32,65,61,31;,
 4;31,61,59,30;,
 4;30,59,58,28;,
 4;28,58,60,29;,
 4;38,51,48,40;,
 4;40,48,47,41;,
 4;41,47,49,42;,
 4;42,49,50,43;,
 4;43,50,53,44;,
 4;44,53,57,45;,
 4;45,57,56,46;,
 4;46,56,52,69;;
 
 MeshMaterialList {
  1;
  60;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "pattern.png";
   }
  }
 }
 MeshNormals {
  62;
  -0.351148;-0.679750;0.643922;,
  -0.877027;-0.480400;-0.006373;,
  -0.037209;0.035363;-0.998682;,
  0.469456;0.593081;-0.654115;,
  0.662776;0.748812;-0.002764;,
  0.558337;0.493448;0.666910;,
  0.103621;-0.117790;0.987617;,
  -0.411327;-0.640368;0.648644;,
  -0.644559;-0.764549;0.003003;,
  -0.527826;-0.547101;-0.649678;,
  0.255283;-0.471323;-0.844207;,
  0.590442;0.419853;-0.689276;,
  0.801896;0.597436;-0.005839;,
  0.637656;0.356346;0.682944;,
  0.111154;-0.188048;0.975850;,
  -0.384388;-0.668486;0.636689;,
  -0.581380;-0.813628;0.002357;,
  -0.442545;-0.621377;-0.646564;,
  0.042175;-0.099133;-0.994180;,
  0.788574;-0.091660;-0.608070;,
  0.995731;0.091985;-0.007647;,
  0.794973;-0.091755;0.599666;,
  0.258109;-0.470476;0.843820;,
  -0.205952;-0.813414;0.544006;,
  -0.384335;-0.923188;0.003134;,
  -0.206482;-0.815766;-0.540270;,
  0.609033;0.468555;-0.639949;,
  0.783631;0.621206;-0.005140;,
  0.653527;0.397456;0.644152;,
  0.200297;-0.161660;0.966306;,
  0.067527;-0.112769;-0.991324;,
  -0.815901;-0.341957;-0.466231;,
  0.507196;0.580262;-0.637219;,
  -0.009116;-0.004642;-0.999948;,
  0.678597;0.734503;-0.003181;,
  0.568864;0.505377;0.648836;,
  0.130937;-0.091001;0.987205;,
  -0.546694;-0.564474;-0.618462;,
  -0.681965;-0.731342;0.007937;,
  -0.419132;-0.627125;0.656538;,
  0.485895;-0.837554;-0.249818;,
  0.334775;-0.927276;-0.167587;,
  0.200106;-0.979774;-0.000704;,
  0.199056;-0.940126;0.276659;,
  0.487427;-0.838478;0.243657;,
  0.644843;-0.746842;0.162497;,
  0.759783;-0.650155;-0.005332;,
  0.717642;-0.635485;-0.284866;,
  -0.627284;0.772864;-0.095897;,
  -0.554151;0.832189;-0.019445;,
  -0.480011;0.851888;0.209466;,
  -0.729675;0.646165;0.223706;,
  -0.898409;0.433825;0.068237;,
  -0.953134;0.301203;0.028518;,
  -0.973207;0.176951;-0.146819;,
  -0.802169;0.578357;-0.148417;,
  -0.315793;0.902800;-0.291939;,
  -0.214812;0.976654;0.001578;,
  -0.348685;0.883091;0.313957;,
  -0.653348;0.563900;0.505128;,
  -0.950630;0.111946;0.289430;,
  -0.718474;0.513378;-0.469295;;
  60;
  4;2,33,32,3;,
  4;3,32,34,4;,
  4;4,34,35,5;,
  4;35,36,6,5;,
  4;36,39,7,6;,
  4;39,38,8,7;,
  4;38,37,9,8;,
  4;9,37,33,2;,
  4;18,2,3,11;,
  4;11,3,4,12;,
  4;12,4,5,13;,
  4;13,5,6,14;,
  4;15,14,6,7;,
  4;16,15,7,8;,
  4;17,16,8,9;,
  4;18,17,9,2;,
  4;19,10,18,11;,
  4;20,19,11,12;,
  4;21,20,12,13;,
  4;22,21,13,14;,
  4;23,22,14,15;,
  4;24,23,15,16;,
  4;25,24,16,17;,
  4;10,25,17,18;,
  4;26,32,33,30;,
  4;27,34,32,26;,
  4;28,35,34,27;,
  4;28,29,36,35;,
  4;29,0,39,36;,
  4;0,1,38,39;,
  4;31,37,38,1;,
  4;31,30,33,37;,
  3;50,49,51;,
  3;51,49,52;,
  3;49,48,52;,
  3;52,48,53;,
  3;48,55,53;,
  3;55,54,53;,
  3;47,46,40;,
  3;46,45,40;,
  3;40,45,41;,
  3;45,44,41;,
  3;41,44,42;,
  3;44,43,42;,
  4;10,40,41,25;,
  4;25,41,42,24;,
  4;24,42,43,23;,
  4;23,43,44,22;,
  4;22,44,45,21;,
  4;21,45,46,20;,
  4;20,46,47,19;,
  4;19,47,40,10;,
  4;56,48,49,57;,
  4;57,49,50,58;,
  4;58,50,51,59;,
  4;59,51,52,60;,
  4;60,52,53,1;,
  4;1,53,54,31;,
  4;31,54,55,61;,
  4;61,55,48,56;;
 }
 MeshTextureCoords {
  70;
  0.002946;0.448478;,
  -0.013697;0.316705;,
  0.100816;0.333609;,
  0.109425;0.481634;,
  0.246379;0.340185;,
  0.235773;0.495073;,
  0.393645;0.334966;,
  0.372403;0.483041;,
  0.505391;0.326002;,
  0.493646;0.451597;,
  0.631688;0.322417;,
  0.639516;0.437467;,
  0.749141;0.325179;,
  0.762488;0.428186;,
  0.867773;0.321174;,
  0.877072;0.436209;,
  0.986303;0.316705;,
  1.002946;0.448478;,
  0.001010;0.621139;,
  0.104188;0.653452;,
  0.216397;0.665484;,
  0.350053;0.655832;,
  0.495422;0.624516;,
  0.649733;0.593985;,
  0.785219;0.583375;,
  0.895756;0.591668;,
  -0.104244;0.591668;,
  -0.122928;0.436209;,
  0.097365;0.794013;,
  -0.000803;0.767446;,
  0.210271;0.803662;,
  0.350507;0.795084;,
  0.499276;0.768886;,
  0.654963;0.742180;,
  0.789494;0.733334;,
  0.898035;0.741348;,
  0.999197;0.767446;,
  1.001010;0.621139;,
  0.099948;0.199661;,
  -0.023142;0.190603;,
  0.256473;0.204056;,
  0.405257;0.201739;,
  0.514119;0.199983;,
  0.620035;0.224634;,
  0.739438;0.257837;,
  0.865575;0.234028;,
  0.976858;0.190603;,
  0.460666;0.123433;,
  0.258188;0.124378;,
  0.562947;0.122716;,
  0.650411;0.132781;,
  0.040176;0.122584;,
  1.040176;0.122584;,
  0.743510;0.146337;,
  -0.068448;0.118886;,
  -0.256490;0.146337;,
  0.931552;0.118886;,
  0.838096;0.136616;,
  0.068002;0.833309;,
  0.168536;0.838548;,
  -0.017166;0.818885;,
  0.332110;0.833890;,
  0.982834;0.818885;,
  1.332110;0.833890;,
  0.897887;0.804715;,
  0.539544;0.819667;,
  -0.102113;0.804715;,
  0.811138;0.800364;,
  0.700403;0.805168;,
  1.099948;0.199661;;
 }
}

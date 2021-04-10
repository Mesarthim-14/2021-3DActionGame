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
 194;
 19.19806;-25.34294;18.42806;,
 24.01404;-20.83032;13.19074;,
 24.01404;11.51373;13.19074;,
 19.19806;16.02635;18.42806;,
 18.03725;19.93663;22.32530;,
 25.17485;14.57094;17.08793;,
 25.17485;14.57094;8.68647;,
 18.03725;19.93663;11.57951;,
 18.03724;-4.65827;-25.68796;,
 25.17484;-4.65827;-20.45059;,
 25.17484;-23.88752;-7.29292;,
 18.03725;-29.25322;-8.85879;,
 25.17485;-23.88752;17.08793;,
 18.03725;-29.25322;22.32530;,
 25.17484;-4.65827;-20.45059;,
 25.17485;14.57094;8.68647;,
 25.17484;-23.88752;-7.29292;,
 25.17485;-23.88752;17.08793;,
 18.03725;-29.25322;22.32530;,
 18.03725;-29.25322;-8.85879;,
 18.03725;19.93663;11.57951;,
 18.03724;-4.65827;-25.68796;,
 24.01405;-20.83032;17.08793;,
 19.19806;-25.34294;22.32530;,
 24.01405;11.51373;17.08793;,
 19.19806;16.02635;22.32530;,
 -12.36651;-9.43451;5.91378;,
 12.41673;-9.43451;5.91378;,
 7.93534;0.03177;2.49030;,
 -7.88511;0.03177;2.49030;,
 7.93533;0.03177;-9.59531;,
 -7.88512;0.03177;-9.59531;,
 12.41673;-9.43451;-13.01876;,
 -12.36652;-9.43451;-13.01876;,
 -7.88512;-18.90080;-9.59531;,
 7.93533;-18.90080;-9.59531;,
 7.93534;-18.90080;2.49030;,
 -7.88511;-18.90080;2.49030;,
 12.41673;-9.43451;-13.01876;,
 7.93533;0.03177;-9.59531;,
 -12.36652;-9.43451;-13.01876;,
 -7.88512;0.03177;-9.59531;,
 -7.88511;-18.90080;2.49030;,
 7.93534;-18.90080;2.49030;,
 7.93533;-18.90080;-9.59531;,
 -7.88512;-18.90080;-9.59531;,
 16.30101;-51.51953;16.37810;,
 24.30102;-39.49737;16.37810;,
 16.30105;-35.51951;16.37810;,
 16.30105;-11.51953;16.37810;,
 18.48109;-11.51953;16.37810;,
 -15.69895;-41.67545;-11.67947;,
 -15.69895;-11.50663;-11.73069;,
 -9.07884;-39.61668;-20.86787;,
 -10.40283;-20.77624;-19.09897;,
 -9.07884;-22.24323;-20.94106;,
 -7.32072;-44.43932;-16.97664;,
 7.92277;-44.43932;-16.97664;,
 13.30210;-50.40400;-7.81287;,
 -12.70004;-50.40400;-7.81287;,
 -9.07884;-22.24323;-20.94106;,
 9.68088;-22.24323;-20.94106;,
 9.68088;-39.61668;-20.86787;,
 -9.07884;-39.61668;-20.86787;,
 8.86413;-20.77624;-19.09897;,
 13.10105;-11.50663;-11.73069;,
 16.30105;-11.50663;-11.73069;,
 11.00493;-20.77624;-19.09897;,
 -13.99759;-13.69572;30.04350;,
 14.59966;-13.69572;30.04350;,
 11.80233;18.94601;31.13854;,
 -11.20023;18.94601;31.13854;,
 -7.32072;-40.73216;-17.05889;,
 7.92277;-40.73216;-17.05889;,
 -9.07884;-44.17896;-20.78562;,
 -15.69899;-51.51953;-11.62185;,
 11.80233;18.95211;26.25934;,
 -15.69895;-11.51953;16.37810;,
 -11.20023;18.95211;26.25934;,
 -12.81895;-11.51953;16.37810;,
 13.10105;-11.51953;16.37810;,
 -15.69895;-35.51951;16.37810;,
 -15.69895;-51.51953;16.37810;,
 16.30105;-52.97371;16.77206;,
 -15.69895;-52.97371;16.77206;,
 18.48109;-11.51953;-11.62185;,
 24.30104;-39.49737;-11.62185;,
 16.30101;-51.51953;16.37810;,
 16.30101;-51.51953;-11.62185;,
 24.30102;-39.49737;16.37810;,
 -15.69899;-51.51953;-11.62185;,
 -15.69895;-51.51953;16.37810;,
 9.68088;-44.17896;-20.78562;,
 13.30210;-50.40400;-11.62185;,
 7.92277;-44.43932;-20.78562;,
 -12.70004;-50.40400;-11.62185;,
 -9.07884;-44.17896;-20.78562;,
 -7.32072;-44.43932;-20.78562;,
 7.92277;-40.73216;-20.86787;,
 -7.32072;-40.73216;-20.86787;,
 -10.40283;-20.77624;-19.09897;,
 -8.47616;-20.77624;-19.09897;,
 -8.47616;-22.24453;-16.82383;,
 -12.81895;-16.77411;-10.59393;,
 13.10105;-16.77411;-10.59393;,
 8.86413;-22.24453;-16.82383;,
 -15.69895;-11.50663;-11.73069;,
 -12.81895;-11.50663;-11.73069;,
 -12.81895;-15.17160;16.37641;,
 13.10105;-15.17160;16.37641;,
 8.05561;-67.39042;13.72355;,
 7.80010;-60.19404;13.72355;,
 -13.77039;-58.25912;13.72355;,
 -11.12579;-67.78964;13.72355;,
 8.95378;-48.30860;9.84295;,
 8.95378;-48.30860;5.58830;,
 -3.99040;-48.30856;5.58830;,
 -3.99040;-48.30856;9.84295;,
 7.80010;-60.19404;-3.95647;,
 8.05561;-67.39042;-3.95647;,
 -11.12579;-67.78964;-3.95647;,
 -13.77039;-58.25912;-3.95647;,
 -1.48615;-70.43400;5.58830;,
 -1.48615;-69.64509;9.84295;,
 -5.52599;-69.64509;9.84295;,
 -5.52599;-70.43400;5.58830;,
 -13.77039;-58.25912;9.84295;,
 -13.77039;-58.25912;5.58830;,
 -11.12579;-67.78964;5.58830;,
 -11.12579;-67.78964;9.84295;,
 8.95378;-58.25912;5.58830;,
 8.95378;-58.25912;9.84295;,
 7.27353;-66.22875;9.84295;,
 8.05561;-67.39042;5.58830;,
 -1.48615;-70.43400;13.72355;,
 -5.52599;-70.43400;13.72355;,
 -5.52599;-70.43400;5.58830;,
 -5.52599;-69.64509;9.84295;,
 -1.48615;-70.43400;-3.95647;,
 -5.52599;-70.43400;-3.95647;,
 -1.48615;-69.64509;9.84295;,
 -1.48615;-70.43400;5.58830;,
 -7.13399;-56.41292;-3.95647;,
 -0.10715;-55.41035;-3.95647;,
 7.80010;-56.05251;-3.95647;,
 -3.57591;-58.03199;9.84295;,
 -3.57591;-58.03199;5.58830;,
 7.80010;-56.05251;13.72355;,
 -7.13399;-56.41292;13.72355;,
 8.95378;-54.11760;5.58830;,
 8.95378;-54.11760;9.84295;,
 8.95378;-48.30860;-3.95647;,
 -0.10715;-52.57280;-3.95647;,
 -3.99040;-48.30856;9.84295;,
 -3.99040;-48.30856;5.58830;,
 8.95378;-48.30860;13.72355;,
 -3.99040;-48.30856;13.72355;,
 8.95378;-48.30860;5.58830;,
 8.95378;-48.30860;9.84295;,
 -1.48615;-70.43400;13.72355;,
 -5.52599;-70.43400;13.72355;,
 -1.48615;-69.71904;0.83313;,
 -5.52599;-69.71904;0.83313;,
 -11.12579;-67.78964;0.83313;,
 -5.52599;-69.71904;0.83313;,
 -13.77039;-58.25912;0.83313;,
 -3.57591;-58.03199;0.83313;,
 -3.99040;-48.30856;0.83313;,
 8.95378;-48.30860;0.83313;,
 -3.99040;-48.30856;0.83313;,
 8.95378;-48.30860;0.83313;,
 8.95378;-54.11760;0.83313;,
 8.95378;-58.25912;0.83313;,
 7.27353;-66.22875;0.83313;,
 -1.48615;-69.71904;0.83313;,
 -11.12579;-67.78964;-3.95647;,
 -5.52599;-70.43400;-3.95647;,
 -13.77039;-58.25912;-3.95647;,
 -7.13399;-56.41292;-3.95647;,
 -3.99040;-48.30856;-3.95647;,
 -3.99040;-48.30856;-3.95647;,
 7.80010;-56.05251;-3.95647;,
 8.95378;-48.30860;-3.95647;,
 7.80010;-60.19404;-3.95647;,
 8.05561;-67.39042;-3.95647;,
 -1.48615;-70.43400;-3.95647;,
 -0.10715;-55.41035;-8.75188;,
 -7.13400;-56.41292;-8.75188;,
 -3.99040;-52.57280;-8.75188;,
 -0.10715;-52.57280;-8.75188;,
 -8.77027;-61.92028;-3.95647;,
 -8.77027;-61.92028;-6.69355;,
 -5.58823;-60.91772;-8.75188;,
 -5.58823;-60.91772;-3.95647;;
 
 154;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;11,10,12,13;,
 3;14,15,16;,
 3;16,15,17;,
 3;15,5,17;,
 3;18,4,19;,
 3;4,20,19;,
 3;20,21,19;,
 4;7,6,9,8;,
 4;18,17,22,23;,
 4;17,5,24,22;,
 4;5,4,25,24;,
 4;4,18,23,25;,
 4;23,22,1,0;,
 4;22,24,2,1;,
 4;24,25,3,2;,
 4;25,23,0,3;,
 4;26,27,28,29;,
 4;29,28,30,31;,
 4;31,30,32,33;,
 4;34,35,36,37;,
 4;27,38,39,28;,
 4;40,26,29,41;,
 4;42,43,27,26;,
 4;43,44,38,27;,
 4;33,32,35,34;,
 4;45,42,26,40;,
 3;46,47,48;,
 3;49,48,50;,
 3;48,47,50;,
 3;51,52,53;,
 3;52,54,53;,
 3;54,55,53;,
 4;56,57,58,59;,
 4;60,61,62,63;,
 4;64,65,66,67;,
 4;68,69,70,71;,
 4;72,73,57,56;,
 4;74,75,51,53;,
 3;49,76,48;,
 3;48,76,69;,
 3;76,70,69;,
 3;77,78,79;,
 3;79,78,80;,
 3;78,76,80;,
 3;76,49,80;,
 3;68,71,81;,
 3;71,78,81;,
 3;78,77,81;,
 4;82,46,83,84;,
 4;46,48,69,83;,
 4;81,82,84,68;,
 4;76,78,71,70;,
 4;65,80,49,66;,
 4;85,66,49,50;,
 4;86,85,50,47;,
 4;87,88,86,89;,
 4;90,88,87,91;,
 4;51,75,82,81;,
 4;52,51,81,77;,
 3;61,67,92;,
 3;92,67,88;,
 3;67,66,88;,
 4;85,86,88,66;,
 4;83,69,68,84;,
 4;92,88,93,94;,
 4;88,90,95,93;,
 4;90,96,97,95;,
 4;63,62,98,99;,
 4;62,92,94,98;,
 4;96,63,99,97;,
 4;94,93,58,57;,
 4;93,95,59,58;,
 4;95,97,56,59;,
 4;99,98,73,72;,
 4;98,94,57,73;,
 4;97,99,72,56;,
 3;100,101,60;,
 3;60,101,61;,
 3;101,64,61;,
 3;64,67,61;,
 4;102,103,104,105;,
 4;106,107,101,100;,
 4;77,79,107,106;,
 4;103,108,109,104;,
 4;101,107,103,102;,
 4;65,64,105,104;,
 4;64,101,102,105;,
 4;107,79,108,103;,
 4;79,80,109,108;,
 4;80,65,104,109;,
 4;110,111,112,113;,
 4;114,115,116,117;,
 4;118,119,120,121;,
 4;122,123,124,125;,
 4;126,127,128,129;,
 4;130,131,132,133;,
 4;134,110,113,135;,
 4;129,128,136,137;,
 4;119,138,139,120;,
 4;133,132,140,141;,
 3;121,142,118;,
 3;142,143,118;,
 3;143,144,118;,
 4;145,146,127,126;,
 4;111,147,148,112;,
 4;149,150,131,130;,
 4;151,144,143,152;,
 4;153,154,146,145;,
 4;147,155,156,148;,
 4;157,158,150,149;,
 4;155,114,117,156;,
 4;148,156,153,145;,
 4;112,148,145,126;,
 4;113,112,126,129;,
 4;135,113,129,137;,
 4;123,159,160,124;,
 4;132,110,134,140;,
 4;131,111,110,132;,
 4;150,147,111,131;,
 4;158,155,147,150;,
 4;161,122,125,162;,
 4;128,163,164,136;,
 4;127,165,163,128;,
 4;146,166,165,127;,
 4;154,167,166,146;,
 4;115,168,169,116;,
 4;170,157,149,171;,
 4;171,149,130,172;,
 4;172,130,133,173;,
 4;173,133,141,174;,
 4;138,161,162,139;,
 4;163,175,176,164;,
 4;165,177,175,163;,
 4;166,178,177,165;,
 4;167,179,178,166;,
 3;180,169,152;,
 3;169,168,152;,
 3;168,151,152;,
 4;181,182,170,171;,
 4;183,181,171,172;,
 4;184,183,172,173;,
 4;185,184,173,174;,
 4;186,187,188,189;,
 4;143,186,189,152;,
 4;152,189,188,180;,
 4;180,188,187,142;,
 4;190,191,192,193;,
 4;142,190,193,143;,
 4;143,193,192,186;,
 4;186,192,191,187;,
 4;187,191,190,142;;
 
 MeshMaterialList {
  10;
  154;
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  0,
  0,
  0,
  6,
  9,
  9,
  9,
  9,
  0,
  0,
  0,
  6,
  9,
  9,
  9,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  5,
  0,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  0,
  6,
  6,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  6,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  9,
  5,
  5,
  9,
  5,
  5,
  5,
  0,
  5,
  5,
  9,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  0,
  0,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  0,
  9,
  9,
  0,
  9,
  9,
  9;;
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.008000;0.008000;0.008000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.368000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.008000;0.264000;0.152000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.150400;0.156800;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.536800;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.166400;0.068800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.068800;0.068800;0.068800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  185;
  0.600896;-0.799327;-0.000000;,
  0.948573;-0.228065;0.219535;,
  0.600895;0.799328;0.000000;,
  0.900981;0.312574;0.300883;,
  0.508065;0.819233;-0.265945;,
  0.923287;0.365342;-0.118600;,
  0.607275;-0.696000;-0.383146;,
  0.905252;-0.372205;-0.204897;,
  0.517998;-0.483041;-0.705939;,
  0.871206;-0.277225;-0.405151;,
  0.350652;0.008592;0.936467;,
  0.350652;-0.008592;0.936467;,
  0.931691;0.000000;0.363252;,
  0.736096;0.000000;0.676877;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.340093;0.940392;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;-0.261489;-0.965207;,
  0.000000;-0.000000;1.000000;,
  0.000000;0.308464;-0.951236;,
  -0.244150;0.467864;-0.849408;,
  -0.457815;-0.015186;-0.888918;,
  0.000000;-0.000000;1.000000;,
  0.600841;-0.010200;-0.799304;,
  0.191569;0.550635;-0.812467;,
  -0.995995;0.030011;0.084220;,
  0.002454;-0.008106;-0.999964;,
  -0.520799;-0.005974;-0.853658;,
  0.000000;-0.178723;0.983900;,
  0.000000;-0.033528;0.999438;,
  0.000000;0.308464;-0.951236;,
  0.988796;0.057755;0.137646;,
  -0.913856;-0.001242;-0.406037;,
  0.001077;0.958282;-0.285824;,
  0.002947;0.999996;0.000229;,
  0.981809;-0.189869;0.000000;,
  0.286312;-0.935341;-0.207756;,
  -0.951246;-0.003679;-0.308411;,
  -0.951445;-0.002100;-0.307811;,
  0.052325;-0.489341;-0.870521;,
  -0.052326;-0.489342;-0.870521;,
  -0.056804;-0.480414;-0.875200;,
  0.056803;-0.480414;-0.875201;,
  0.003680;-0.010052;-0.999943;,
  -0.003680;-0.010052;-0.999943;,
  0.000000;-0.486419;-0.873726;,
  -0.420243;-0.853284;-0.308710;,
  0.420243;-0.853284;-0.308710;,
  0.000000;-0.022181;-0.999754;,
  0.000000;0.706785;-0.707429;,
  -0.813238;-0.002513;-0.581926;,
  0.000000;0.733096;-0.680125;,
  0.000000;0.900725;-0.434390;,
  0.000000;0.745837;-0.666129;,
  0.000000;0.208057;-0.978117;,
  0.000000;0.233603;-0.972332;,
  0.000000;0.751424;-0.659819;,
  0.000000;0.924923;-0.380154;,
  0.000000;0.998239;-0.059313;,
  0.000000;0.000000;-1.000000;,
  -0.931842;0.353286;0.082820;,
  0.000003;1.000000;0.000000;,
  -0.085995;0.990861;-0.103922;,
  -0.963590;-0.267384;0.000000;,
  -0.745346;-0.666674;-0.002187;,
  -0.190302;-0.981705;-0.006366;,
  0.168511;-0.985650;-0.009890;,
  0.991542;-0.119312;0.051082;,
  0.993409;-0.060082;0.097615;,
  0.994906;-0.018278;0.099138;,
  0.169520;-0.985387;0.016621;,
  -0.191476;-0.981416;0.012618;,
  -0.746216;-0.665690;0.004329;,
  -0.963590;-0.267384;0.000000;,
  -0.022274;0.999752;0.000000;,
  1.000000;0.000000;0.000000;,
  0.997069;-0.076464;0.002659;,
  0.988236;-0.152847;0.005315;,
  0.170497;-0.985358;-0.000632;,
  -0.192772;-0.981244;-0.000391;,
  -0.747136;-0.664672;-0.000134;,
  -0.085494;0.992630;0.085891;,
  -0.984670;0.067681;0.160763;,
  -0.153902;0.958411;-0.240338;,
  0.996537;-0.018347;-0.081099;,
  0.994827;-0.059953;-0.082003;,
  0.991797;-0.119297;-0.045891;,
  0.138802;0.635499;-0.759523;,
  -0.130336;-0.044723;-0.990461;,
  0.519706;-0.854345;-0.000000;,
  0.300507;-0.953780;-0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;-0.000000;0.000000;,
  -1.000000;-0.000000;0.000000;,
  -1.000000;-0.000000;0.000000;,
  0.374723;0.773812;-0.510683;,
  -0.683750;0.729717;0.000001;,
  -0.917537;0.397649;0.000002;,
  -0.917537;-0.397649;0.000002;,
  -0.683750;-0.729716;0.000001;,
  0.000000;0.340090;-0.940393;,
  1.000000;0.000000;-0.000000;,
  0.903835;0.427881;-0.000000;,
  -1.000000;0.000000;0.000001;,
  -0.903835;0.427882;0.000001;,
  0.000000;-0.340092;0.940392;,
  0.903835;-0.427881;-0.000000;,
  0.000000;-0.340090;-0.940393;,
  -0.903835;-0.427881;0.000001;,
  0.910115;0.000000;0.414356;,
  0.984906;0.031835;0.170138;,
  0.997785;0.059833;0.029056;,
  0.996348;0.085381;0.000107;,
  -0.997963;0.047821;0.042235;,
  -0.996440;0.084053;-0.006454;,
  -0.976313;0.042135;0.212218;,
  -0.977270;0.000000;0.211997;,
  0.957150;-0.285077;0.050940;,
  0.995211;0.009622;0.097272;,
  -0.998802;0.004815;0.048704;,
  -0.995210;0.009615;0.097291;,
  0.000000;0.999999;0.001250;,
  0.000000;1.000000;0.000459;,
  0.001474;0.999999;0.000344;,
  0.979042;0.203660;0.000000;,
  0.051818;-0.959405;-0.277230;,
  0.811932;-0.003052;-0.583744;,
  0.461611;-0.000337;-0.887083;,
  0.468957;0.001255;-0.883220;,
  0.027013;0.003833;-0.999628;,
  0.000000;-0.320106;0.947382;,
  -0.099430;-0.840917;-0.531952;,
  0.099428;-0.840917;-0.531952;,
  -0.933436;-0.358744;0.000000;,
  -0.742606;-0.669729;0.000000;,
  0.742606;-0.669728;-0.000000;,
  0.933436;-0.358743;-0.000000;,
  0.000000;1.000000;0.000459;,
  0.904917;0.249993;0.344426;,
  0.975940;0.128078;0.176459;,
  -0.976955;0.125418;0.172711;,
  -0.908883;0.245055;0.337461;,
  0.000000;0.840220;0.542246;,
  0.000000;0.000463;-1.000000;,
  0.335956;-0.941747;0.015696;,
  0.334302;-0.942403;-0.010896;,
  -0.979898;0.070355;-0.186680;,
  -0.999093;-0.042589;0.000000;,
  0.997855;-0.036362;0.054432;,
  -0.913694;0.179924;-0.364404;,
  -0.148431;0.967167;-0.206291;,
  -0.744429;-0.665768;-0.050785;,
  -0.188317;-0.970907;-0.147904;,
  0.163867;-0.958896;-0.231659;,
  0.323089;-0.910654;-0.257531;,
  0.988699;-0.043534;0.143453;,
  0.996288;-0.086073;-0.001337;,
  0.979579;-0.036455;0.197727;,
  0.991430;-0.072569;0.108631;,
  0.282578;0.924967;-0.254138;,
  0.998347;-0.036565;-0.044348;,
  0.337702;-0.941253;-0.000717;,
  0.167758;-0.969506;0.178650;,
  -0.191608;-0.975346;0.109486;,
  -0.746610;-0.664208;0.037420;,
  -0.963590;-0.267384;0.000000;,
  -0.743634;0.668566;0.005302;,
  -0.147737;0.974167;0.170800;,
  -0.932620;0.175364;0.315383;,
  0.568186;0.809141;-0.149854;,
  0.932568;0.360996;0.000000;,
  -0.425816;0.904810;0.000000;,
  0.986126;-0.036629;-0.161909;,
  0.993392;-0.073010;-0.088549;,
  0.992128;-0.043376;-0.117473;,
  0.996289;-0.086063;0.001097;,
  0.330570;-0.921383;0.204394;,
  0.924337;-0.381578;-0.000000;,
  0.357116;0.888166;-0.289187;,
  -0.851165;0.500917;-0.156845;,
  -0.914394;0.396992;-0.079247;,
  -0.258185;-0.088593;-0.962025;,
  -0.958586;0.284803;0.000001;;
  154;
  4;12,13,13,12;,
  4;2,3,5,4;,
  4;8,9,7,6;,
  4;6,7,1,0;,
  3;9,5,7;,
  3;7,5,1;,
  3;5,3,1;,
  3;93,93,94;,
  3;93,95,94;,
  3;95,96,94;,
  4;4,5,97,97;,
  4;10,1,10,10;,
  4;20,20,11,10;,
  4;3,11,11,11;,
  4;11,10,10,11;,
  4;98,99,99,98;,
  4;99,100,100,99;,
  4;100,101,101,100;,
  4;77,77,12,12;,
  4;17,17,15,15;,
  4;16,16,16,16;,
  4;102,102,18,18;,
  4;14,14,14,14;,
  4;103,103,104,104;,
  4;105,105,106,106;,
  4;107,107,17,17;,
  4;108,108,103,103;,
  4;18,18,109,109;,
  4;110,110,105,105;,
  3;24,20,20;,
  3;20,20,20;,
  3;20,20,20;,
  3;40,34,29;,
  3;34,52,29;,
  3;52,22,29;,
  4;47,47,48,49;,
  4;22,26,28,29;,
  4;53,54,35,51;,
  4;30,30,31,31;,
  4;50,50,47,47;,
  4;23,39,40,29;,
  3;111,33,112;,
  3;112,33,113;,
  3;33,114,113;,
  3;21,32,56;,
  3;56,32,57;,
  3;32,21,57;,
  3;21,21,57;,
  3;115,116,27;,
  3;116,117,27;,
  3;117,118,27;,
  4;19,19,19,19;,
  4;119,112,113,120;,
  4;27,121,122,115;,
  4;123,123,123,123;,
  4;54,124,125,35;,
  4;36,35,125,36;,
  4;37,126,126,37;,
  4;119,38,37,37;,
  4;127,38,14,14;,
  4;40,39,121,27;,
  4;34,40,27,118;,
  3;26,128,25;,
  3;25,128,129;,
  3;128,130,129;,
  4;131,131,129,130;,
  4;132,30,30,132;,
  4;133,38,43,42;,
  4;129,61,44,43;,
  4;127,134,41,44;,
  4;29,28,45,46;,
  4;28,25,42,45;,
  4;23,29,46,41;,
  4;135,136,48,135;,
  4;16,16,16,16;,
  4;137,138,138,49;,
  4;14,14,14,14;,
  4;93,135,135,93;,
  4;138,77,77,138;,
  3;51,55,22;,
  3;22,55,26;,
  3;55,53,26;,
  3;53,51,26;,
  4;58,59,59,58;,
  4;54,54,55,51;,
  4;139,139,54,54;,
  4;59,60,60,59;,
  4;140,141,141,140;,
  4;142,143,143,142;,
  4;144,144,144,144;,
  4;141,77,77,141;,
  4;56,57,145,145;,
  4;93,142,142,93;,
  4;20,20,20,20;,
  4;63,63,63,63;,
  4;61,61,61,61;,
  4;72,68,67,73;,
  4;65,75,74,66;,
  4;78,70,69,79;,
  4;20,20,20,20;,
  4;66,74,73,67;,
  4;61,61,61,61;,
  4;146,147,68,72;,
  3;61,61,61;,
  3;61,61,61;,
  3;61,61,61;,
  4;64,76,76,64;,
  4;20,20,20,20;,
  4;77,71,70,78;,
  4;61,61,61,89;,
  4;148,149,149,148;,
  4;20,20,20,20;,
  4;77,150,71,77;,
  4;63,63,63,63;,
  4;151,151,148,148;,
  4;152,152,64,64;,
  4;153,65,65,66;,
  4;154,153,66,67;,
  4;68,155,154,67;,
  4;147,156,155,68;,
  4;70,157,158,69;,
  4;71,159,157,70;,
  4;150,160,159,71;,
  4;80,72,73,81;,
  4;74,82,81,73;,
  4;75,75,82,74;,
  4;76,83,83,76;,
  4;149,84,84,149;,
  4;63,85,161,63;,
  4;162,77,77,86;,
  4;86,77,78,87;,
  4;87,78,79,88;,
  4;163,146,72,80;,
  4;164,80,81,165;,
  4;82,166,165,81;,
  4;75,167,166,82;,
  4;83,168,169,83;,
  4;84,62,170,84;,
  3;171,161,172;,
  3;161,85,89;,
  3;85,173,173;,
  4;174,175,162,86;,
  4;176,174,86,87;,
  4;177,176,87,88;,
  4;164,178,163,80;,
  4;90,90,61,61;,
  4;179,179,77,172;,
  4;89,180,180,171;,
  4;62,181,182,168;,
  4;92,92,91,91;,
  4;20,20,20,20;,
  4;179,91,91,179;,
  4;90,183,183,90;,
  4;182,184,184,168;;
 }
 MeshTextureCoords {
  194;
  0.375000;0.000000;,
  0.625000;0.000000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.375000;0.625000;,
  0.625000;0.625000;,
  0.625000;0.750000;,
  0.375000;0.750000;,
  0.625000;1.000000;,
  0.375000;1.000000;,
  0.875000;0.125000;,
  0.875000;0.250000;,
  0.875000;0.000000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.125000;0.000000;,
  0.125000;0.250000;,
  0.125000;0.125000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.375000;0.125000;,
  0.625000;0.125000;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.625000;,
  0.375000;0.625000;,
  0.375000;0.750000;,
  0.625000;0.750000;,
  0.625000;1.000000;,
  0.375000;1.000000;,
  0.875000;0.125000;,
  0.875000;0.250000;,
  0.125000;0.125000;,
  0.125000;0.250000;,
  0.375000;0.000000;,
  0.625000;0.000000;,
  0.875000;0.000000;,
  0.125000;0.000000;,
  0.575000;0.000000;,
  0.625000;0.000000;,
  0.575000;0.100000;,
  0.575000;0.250000;,
  0.625000;0.250000;,
  0.199640;0.082030;,
  0.199330;0.253670;,
  0.124490;0.074330;,
  0.139100;0.254930;,
  0.124040;0.255240;,
  0.375000;0.750000;,
  0.575000;0.750000;,
  0.575000;0.825000;,
  0.375000;0.825000;,
  0.375010;0.499890;,
  0.575000;0.502260;,
  0.575000;0.665330;,
  0.375010;0.657050;,
  0.555000;0.486910;,
  0.555000;0.426420;,
  0.575000;0.426580;,
  0.575000;0.487130;,
  0.375000;0.100000;,
  0.575000;0.100000;,
  0.575000;0.250000;,
  0.375000;0.250000;,
  0.375010;0.657050;,
  0.575000;0.665330;,
  0.125000;0.000000;,
  0.200000;0.000000;,
  0.575000;0.250000;,
  0.375000;0.250000;,
  0.375000;0.250000;,
  0.393000;0.250000;,
  0.555000;0.250000;,
  0.375000;0.100000;,
  0.375000;0.000000;,
  0.575000;0.000000;,
  0.375000;0.000000;,
  0.712500;0.337500;,
  0.712500;0.412500;,
  0.575000;1.000000;,
  0.575000;0.825000;,
  0.625000;1.000000;,
  0.375000;0.825000;,
  0.375000;1.000000;,
  0.575000;0.750000;,
  0.575000;0.825000;,
  0.575000;0.750000;,
  0.375000;0.825000;,
  0.375000;0.750000;,
  0.375000;0.750000;,
  0.575000;0.665330;,
  0.375010;0.657050;,
  0.375000;0.484900;,
  0.393000;0.485100;,
  0.393000;0.485100;,
  0.393000;0.425070;,
  0.555000;0.426420;,
  0.555000;0.486910;,
  0.375000;0.424930;,
  0.393000;0.425070;,
  0.393000;0.250000;,
  0.555000;0.250000;,
  0.375000;0.035680;,
  0.375000;0.140530;,
  0.625000;0.140530;,
  0.625000;0.035680;,
  0.375000;0.304870;,
  0.375000;0.365030;,
  0.625000;0.365030;,
  0.625000;0.304870;,
  0.375000;0.609470;,
  0.375000;0.714320;,
  0.625000;0.714320;,
  0.625000;0.609470;,
  0.375000;0.884970;,
  0.375000;0.945130;,
  0.625000;0.945130;,
  0.625000;0.884970;,
  0.679870;0.140530;,
  0.740030;0.140530;,
  0.740030;0.035680;,
  0.679870;0.035680;,
  0.259970;0.140530;,
  0.320130;0.140530;,
  0.320130;0.035680;,
  0.259970;0.035680;,
  0.375000;0.000000;,
  0.625000;0.000000;,
  0.740030;0.000000;,
  0.679870;0.000000;,
  0.375000;0.750000;,
  0.625000;0.750000;,
  0.320130;0.000000;,
  0.259970;0.000000;,
  0.625000;0.563910;,
  0.515810;0.563910;,
  0.375000;0.563910;,
  0.679870;0.186090;,
  0.740030;0.186090;,
  0.375000;0.186090;,
  0.625000;0.186090;,
  0.259970;0.186090;,
  0.320130;0.186090;,
  0.375000;0.500000;,
  0.550000;0.500000;,
  0.679870;0.250000;,
  0.740030;0.250000;,
  0.375000;0.250000;,
  0.625000;0.250000;,
  0.259970;0.250000;,
  0.320130;0.250000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.375000;0.817730;,
  0.625000;0.817730;,
  0.807270;0.035680;,
  0.807270;0.000000;,
  0.807270;0.140530;,
  0.807270;0.186090;,
  0.807270;0.250000;,
  0.375000;0.432270;,
  0.625000;0.432270;,
  0.192730;0.250000;,
  0.192730;0.186090;,
  0.192730;0.140530;,
  0.192730;0.035680;,
  0.192730;0.000000;,
  0.875000;0.035680;,
  0.875000;0.000000;,
  0.875000;0.140530;,
  0.875000;0.186090;,
  0.875000;0.250000;,
  0.625000;0.500000;,
  0.125000;0.186090;,
  0.125000;0.250000;,
  0.125000;0.140530;,
  0.125000;0.035680;,
  0.125000;0.000000;,
  0.515810;0.563910;,
  0.625000;0.563910;,
  0.625000;0.500000;,
  0.550000;0.500000;,
  0.625000;0.563910;,
  0.625000;0.563910;,
  0.515810;0.563910;,
  0.515810;0.563910;;
 }
}

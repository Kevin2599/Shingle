// Surface Geoid Boundary Representation, for project: UK_NorthSea
// 
// Created by:  Shingle 
// 
//    Shingle:  An approach and software library for the generation of
//              boundary representation from arbitrary geophysical fields
//              and initialisation for anisotropic, unstructured meshing.
// 
//              Web: http://www.shingleproject.org
// 
//              Contact: Dr Adam S. Candy, contact@shingleproject.org
//     
// Version: [Not available]
// Mesh tool version: 2.11.0
//                    (on the system where the boundary representation has been created)
// 
// Project name: UK_NorthSea
// Boundary Specification authors: Adam S. Candy (A.S.Candy@tudelft.nl, Technische Universiteit Delft)
// Created at: 2017/04/04 13:05:15 
// Project description:
//   Example simulation domain around the UK and Ireland in the North Sea.
//       In a latitude-longitude WGS84 projection.

// == Source Shingle surface geoid boundnary representation =======
// <?xml version='1.0' encoding='utf-8'?>
// <boundary_representation>
//   <model_name>
//     <string_value lines="1">UK_NorthSea</string_value>
//     <comment>Example simulation domain around the UK and Ireland in the North Sea.
//     In a latitude-longitude WGS84 projection.</comment>
//   </model_name>
//   <reference>
//     <author name="ASCandy">
//       <string_value lines="1">Adam S. Candy</string_value>
//       <email_address>
//         <string_value lines="1">A.S.Candy@tudelft.nl</string_value>
//       </email_address>
//       <institution>
//         <string_value lines="1">Technische Universiteit Delft</string_value>
//       </institution>
//     </author>
//   </reference>
//   <domain_type>
//     <string_value lines="1">oceans</string_value>
//   </domain_type>
//   <global_parameters/>
//   <output>
//     <projection>
//       <string_value>longlat</string_value>
//     </projection>
//     <orientation name="LongLat"/>
//   </output>
//   <dataset name="GEBCO">
//     <form name="Raster">
//       <source file_name="../../dataset/GEBCO_2014_2D.nc" name="Local_file"/>
//     </form>
//     <projection name="Automatic"/>
//   </dataset>
//   <geoid_surface_representation name="NorthSea">
//     <id>
//       <integer_value rank="0">9</integer_value>
//     </id>
//     <brep_component name="NorthSea">
//       <form name="Raster">
//         <source name="GEBCO"/>
//         <box>-14.0:6.0,46.0:64.0<comment/></box>
//         <minimum_area>
//           <real_value rank="0">0.1</real_value>
//         </minimum_area>
//         <contourtype name="gebco10m"/>
//         <boundary>1</boundary>
//       </form>
//       <identification name="Coast"/>
//       <representation_type name="BSplines"/>
//     </brep_component>
//     <boundary name="Coast">
//       <identification_number>
//         <integer_value rank="0">3</integer_value>
//       </identification_number>
//     </boundary>
//     <boundary name="OpenOcean">
//       <identification_number>
//         <integer_value rank="0">4</integer_value>
//       </identification_number>
//     </boundary>
//   </geoid_surface_representation>
//   <geoid_metric>
//     <form name="Proximity">
//       <boundary name="Coast"/>
//       <edge_length_minimum>
//         <real_value rank="0">1.0E-2</real_value>
//       </edge_length_minimum>
//       <edge_length_maximum>
//         <real_value rank="0">2.0</real_value>
//       </edge_length_maximum>
//       <proximity_minimum>
//         <real_value rank="0">5.0E-2</real_value>
//       </proximity_minimum>
//       <proximity_maximum>
//         <real_value rank="0">5.0</real_value>
//       </proximity_maximum>
//     </form>
//   </geoid_metric>
//   <geoid_mesh>
//     <library name="Gmsh"/>
//   </geoid_mesh>
//   <validation>
//     <test file_name="data/UK_NorthSea_valid.geo" name="BrepDescription"/>
//   </validation>
// </boundary_representation>

// == Boundary Representation Specification Parameters ============
// Output to UK_NorthSea.geo
// Projection type longlat
//   1. NorthSea
//       Path:           /geoid_surface_representation::NorthSea/brep_component::NorthSea
//       Form:           Raster
//       Identification: Coast

// == BRep component: NorthSea ====================================
// Reading boundary representation NorthSea
// Boundaries restricted to paths: 1
// Imposing box region: 
//   -14.0:6.0,46.0:64.0
// Region of interest: ((longitude >= -14.0) and (longitude <= 6.0) and (latitude >= 46.0) and (latitude <= 64.0))
// Region defined by ((longitude >= -14.0) and (longitude <= 6.0) and (latitude >= 46.0) and (latitude <= 64.0))
// Open contours closed with a line formed by points spaced 0.1 degrees apart
// Paths found: 1340

// == Boundary Representation description =========================

// == Header ======================================================
// Merged paths that cross the date line: 

// == Ice-Land mass number 1 ======================================
// Path 1: points 11762 (of 11763) area 699931 (required closing in 2 parts of the path)

// == Ice-Land mass number 2 ======================================
// Path 2: points 4660 (of 4661) area 190517 (required closing in 2 parts of the path)

// == Ice-Land mass number 3 ======================================
// Path 3: points 4584 (of 4584) area 101892

// == Ice-Land mass number 4 ======================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 4: points 1941 (of 1941) area 41521

// == Ice-Land mass number 5 ======================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 5: points 1408 (of 1408) area 37344.2

// == Ice-Land mass number 6 ======================================
// Path 6: points 1258 (of 1259) area 16027.8 (required closing in 2 parts of the path)

// == Ice-Land mass number 7 ======================================
// Path 7: points 942 (of 943) area 642.963 (required closing in 2 parts of the path)

// == Ice-Land mass number 8 ======================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 8: points 830 (of 830) area 11171.8

// == Ice-Land mass number 9 ======================================
// Path 9: points 714 (of 715) area 1711.23 (required closing in 2 parts of the path)

// == Ice-Land mass number 10 =====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 10: points 671 (of 671) area 10849.5

// == Ice-Land mass number 11 =====================================
// Path 11: points 602 (of 603) area 2570.7 (required closing in 2 parts of the path)

// == Ice-Land mass number 12 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 13 =====================================
// Path 13: points 504 (of 505) area 2994.7 (required closing in 2 parts of the path)

// == Ice-Land mass number 14 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 15 =====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 15: points 339 (of 339) area 3121.63

// == Ice-Land mass number 16 =====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 16: points 323 (of 323) area 2945.82

// == Ice-Land mass number 17 =====================================
// Path 17: points 284 (of 285) area 350.648 (required closing in 2 parts of the path)

// == Ice-Land mass number 18 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 19 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 20 =====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 20: points 232 (of 232) area 1314.25

// == Ice-Land mass number 21 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 22 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 23 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 24 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 25 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 26 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 27 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 28 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 29 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 30 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 31 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 32 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 33 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 34 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 35 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 36 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 37 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 38 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 39 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 40 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 41 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 42 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 43 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 44 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 45 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 46 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 47 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 48 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 49 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 50 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 51 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 52 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 53 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 54 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 55 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 56 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 57 =====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 58 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 59 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 60 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 61 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 62 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 63 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 64 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 65 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 66 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 67 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 68 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 69 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 70 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 71 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 72 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 73 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 74 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 75 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 76 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 77 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 78 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 79 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 80 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 81 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 82 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 83 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 84 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 85 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 86 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 87 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 88 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 89 =====================================
// Path 89: points 47 (of 47) area 79.4497

// == Ice-Land mass number 90 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 91 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 92 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 93 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 94 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 95 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 96 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 97 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 98 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 99 =====================================
//   Skipped (area too small)

// == Ice-Land mass number 100 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 101 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 102 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 103 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 104 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 105 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 106 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 107 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 108 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 109 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 110 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 111 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 112 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 113 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 114 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 115 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 116 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 117 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 117: points 38 (of 38) area 61.8756

// == Ice-Land mass number 118 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 119 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 120 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 121 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 122 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 123 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 124 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 124: points 37 (of 37) area 55.1378

// == Ice-Land mass number 125 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 126 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 127 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 128 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 129 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 130 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 131 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 132 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 133 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 134 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 135 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 136 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 137 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 138 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 139 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 140 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 141 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 142 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 143 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 144 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 145 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 146 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 147 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 148 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 149 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 150 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 151 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 152 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 153 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 154 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 155 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 156 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 157 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 158 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 159 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 160 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 161 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 162 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 163 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 164 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 165 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 166 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 167 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 168 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 169 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 170 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 171 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 172 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 173 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 174 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 175 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 176 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 177 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 178 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 179 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 180 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 181 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 182 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 183 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 184 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 185 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 186 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 187 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 188 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 189 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 190 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 191 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 192 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 193 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 194 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 195 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 196 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 197 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 198 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 199 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 200 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 201 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
// Path 201: points 25 (of 25) area 22.9986

// == Ice-Land mass number 202 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 203 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 204 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 205 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 206 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 207 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 208 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 209 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 210 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 211 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 212 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 213 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 214 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 215 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 216 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 217 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 218 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 219 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 220 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 221 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 222 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 223 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 224 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 225 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 226 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 227 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 228 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 229 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 230 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 231 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 232 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 233 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 234 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 235 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 236 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 237 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 238 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 239 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 240 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 241 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 242 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 243 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 244 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 245 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 246 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 247 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 248 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 249 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 250 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 251 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 252 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 253 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 254 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 255 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 256 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 257 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 258 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 259 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 260 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 261 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 262 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 263 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 264 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 265 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 266 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 267 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 268 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 269 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 270 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 271 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 272 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 273 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 274 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 275 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 276 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 277 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 278 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 279 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 280 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 281 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 282 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 283 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 284 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 285 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 286 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 287 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 288 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 289 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 290 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 291 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 292 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 293 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 294 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 295 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 296 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 297 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 298 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 299 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 300 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 301 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 302 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 303 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 304 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 305 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 306 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 307 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 308 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 309 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 310 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 311 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 312 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 313 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 314 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 315 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 316 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 317 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 318 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 319 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 320 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 321 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 322 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 323 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 324 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 325 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 326 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 327 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 328 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 329 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 330 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 331 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 332 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 333 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 334 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 335 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 336 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 337 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 338 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 339 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 340 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 341 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 342 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 343 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 344 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 345 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 346 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 347 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 348 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 349 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 350 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 351 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 352 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 353 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 354 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 355 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 356 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 357 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 358 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 359 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 360 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 361 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 362 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 363 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 364 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 365 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 366 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 367 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 368 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 369 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 370 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 371 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 372 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 373 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 374 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 375 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 376 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 377 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 378 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 379 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 380 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 381 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 382 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 383 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 384 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 385 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 386 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 387 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 388 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 389 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 390 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 391 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 392 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 393 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 394 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 395 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 396 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 397 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 398 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 399 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 400 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 401 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 402 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 403 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 404 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 405 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 406 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 407 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 408 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 409 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 410 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 411 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 412 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 413 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 414 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 415 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 416 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 417 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 418 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 419 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 420 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 421 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 422 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 423 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 424 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 425 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 426 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 427 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 428 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 429 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 430 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 431 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 432 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 433 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 434 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 435 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 436 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 437 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 438 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 439 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 440 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 441 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 442 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 443 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 444 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 445 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 446 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 447 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 448 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 449 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 450 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 451 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 452 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 453 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 454 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 455 ====================================
//   Skipped (island crossing meridian - code needs modification to include)
//   Skipped (area too small)

// == Ice-Land mass number 456 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 457 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 458 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 459 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 460 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 461 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 462 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 463 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 464 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 465 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 466 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 467 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 468 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 469 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 470 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 471 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 472 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 473 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 474 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 475 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 476 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 477 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 478 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 479 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 480 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 481 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 482 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 483 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 484 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 485 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 486 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 487 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 488 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 489 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 490 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 491 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 492 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 493 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 494 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 495 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 496 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 497 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 498 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 499 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 500 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 501 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 502 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 503 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 504 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 505 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 506 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 507 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 508 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 509 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 510 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 511 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 512 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 513 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 514 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 515 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 516 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 517 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 518 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 519 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 520 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 521 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 522 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 523 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 524 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 525 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 526 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 527 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 528 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 529 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 530 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 531 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 532 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 533 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 534 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 535 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 536 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 537 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 538 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 539 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 540 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 541 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 542 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 543 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 544 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 545 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 546 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 547 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 548 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 549 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 550 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 551 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 552 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 553 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 554 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 555 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 556 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 557 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 558 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 559 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 560 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 561 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 562 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 563 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 564 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 565 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 566 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 567 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 568 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 569 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 570 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 571 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 572 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 573 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 574 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 575 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 576 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 577 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 578 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 579 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 580 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 581 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 582 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 583 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 584 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 585 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 586 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 587 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 588 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 589 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 590 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 591 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 592 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 593 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 594 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 595 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 596 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 597 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 598 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 599 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 600 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 601 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 602 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 603 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 604 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 605 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 606 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 607 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 608 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 609 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 610 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 611 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 612 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 613 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 614 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 615 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 616 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 617 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 618 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 619 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 620 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 621 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 622 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 623 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 624 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 625 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 626 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 627 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 628 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 629 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 630 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 631 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 632 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 633 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 634 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 635 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 636 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 637 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 638 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 639 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 640 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 641 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 642 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 643 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 644 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 645 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 646 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 647 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 648 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 649 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 650 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 651 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 652 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 653 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 654 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 655 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 656 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 657 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 658 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 659 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 660 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 661 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 662 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 663 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 664 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 665 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 666 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 667 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 668 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 669 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 670 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 671 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 672 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 673 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 674 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 675 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 676 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 677 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 678 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 679 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 680 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 681 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 682 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 683 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 684 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 685 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 686 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 687 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 688 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 689 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 690 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 691 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 692 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 693 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 694 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 695 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 696 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 697 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 698 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 699 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 700 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 701 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 702 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 703 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 704 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 705 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 706 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 707 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 708 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 709 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 710 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 711 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 712 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 713 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 714 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 715 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 716 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 717 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 718 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 719 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 720 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 721 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 722 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 723 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 724 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 725 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 726 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 727 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 728 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 729 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 730 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 731 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 732 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 733 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 734 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 735 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 736 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 737 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 738 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 739 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 740 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 741 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 742 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 743 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 744 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 745 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 746 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 747 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 748 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 749 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 750 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 751 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 752 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 753 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 754 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 755 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 756 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 757 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 758 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 759 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 760 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 761 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 762 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 763 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 764 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 765 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 766 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 767 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 768 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 769 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 770 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 771 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 772 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 773 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 774 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 775 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 776 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 777 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 778 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 779 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 780 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 781 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 782 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 783 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 784 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 785 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 786 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 787 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 788 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 789 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 790 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 791 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 792 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 793 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 794 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 795 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 796 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 797 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 798 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 799 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 800 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 801 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 802 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 803 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 804 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 805 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 806 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 807 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 808 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 809 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 810 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 811 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 812 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 813 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 814 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 815 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 816 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 817 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 818 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 819 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 820 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 821 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 822 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 823 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 824 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 825 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 826 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 827 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 828 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 829 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 830 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 831 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 832 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 833 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 834 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 835 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 836 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 837 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 838 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 839 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 840 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 841 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 842 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 843 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 844 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 845 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 846 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 847 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 848 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 849 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 850 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 851 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 852 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 853 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 854 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 855 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 856 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 857 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 858 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 859 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 860 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 861 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 862 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 863 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 864 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 865 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 866 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 867 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 868 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 869 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 870 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 871 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 872 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 873 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 874 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 875 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 876 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 877 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 878 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 879 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 880 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 881 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 882 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 883 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 884 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 885 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 886 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 887 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 888 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 889 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 890 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 891 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 892 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 893 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 894 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 895 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 896 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 897 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 898 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 899 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 900 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 901 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 902 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 903 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 904 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 905 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 906 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 907 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 908 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 909 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 910 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 911 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 912 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 913 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 914 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 915 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 916 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 917 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 918 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 919 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 920 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 921 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 922 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 923 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 924 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 925 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 926 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 927 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 928 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 929 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 930 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 931 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 932 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 933 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 934 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 935 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 936 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 937 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 938 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 939 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 940 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 941 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 942 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 943 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 944 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 945 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 946 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 947 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 948 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 949 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 950 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 951 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 952 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 953 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 954 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 955 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 956 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 957 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 958 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 959 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 960 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 961 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 962 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 963 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 964 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 965 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 966 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 967 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 968 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 969 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 970 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 971 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 972 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 973 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 974 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 975 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 976 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 977 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 978 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 979 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 980 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 981 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 982 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 983 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 984 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 985 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 986 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 987 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 988 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 989 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 990 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 991 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 992 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 993 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 994 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 995 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 996 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 997 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 998 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 999 ====================================
//   Skipped (area too small)

// == Ice-Land mass number 1000 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1001 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1002 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1003 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1004 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1005 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1006 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1007 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1008 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1009 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1010 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1011 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1012 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1013 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1014 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1015 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1016 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1017 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1018 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1019 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1020 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1021 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1022 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1023 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1024 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1025 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1026 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1027 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1028 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1029 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1030 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1031 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1032 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1033 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1034 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1035 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1036 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1037 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1038 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1039 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1040 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1041 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1042 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1043 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1044 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1045 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1046 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1047 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1048 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1049 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1050 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1051 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1052 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1053 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1054 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1055 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1056 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1057 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1058 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1059 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1060 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1061 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1062 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1063 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1064 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1065 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1066 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1067 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1068 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1069 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1070 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1071 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1072 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1073 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1074 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1075 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1076 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1077 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1078 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1079 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1080 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1081 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1082 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1083 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1084 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1085 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1086 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1087 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1088 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1089 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1090 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1091 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1092 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1093 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1094 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1095 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1096 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1097 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1098 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1099 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1100 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1101 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1102 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1103 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1104 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1105 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1106 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1107 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1108 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1109 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1110 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1111 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1112 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1113 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1114 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1115 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1116 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1117 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1118 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1119 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1120 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1121 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1122 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1123 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1124 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1125 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1126 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1127 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1128 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1129 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1130 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1131 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1132 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1133 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1134 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1135 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1136 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1137 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1138 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1139 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1140 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1141 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1142 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1143 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1144 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1145 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1146 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1147 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1148 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1149 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1150 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1151 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1152 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1153 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1154 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1155 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1156 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1157 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1158 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1159 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1160 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1161 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1162 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1163 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1164 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1165 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1166 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1167 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1168 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1169 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1170 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1171 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1172 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1173 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1174 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1175 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1176 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1177 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1178 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1179 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1180 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1181 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1182 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1183 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1184 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1185 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1186 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1187 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1188 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1189 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1190 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1191 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1192 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1193 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1194 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1195 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1196 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1197 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1198 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1199 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1200 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1201 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1202 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1203 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1204 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1205 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1206 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1207 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1208 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1209 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1210 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1211 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1212 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1213 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1214 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1215 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1216 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1217 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1218 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1219 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1220 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1221 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1222 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1223 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1224 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1225 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1226 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1227 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1228 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1229 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1230 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1231 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1232 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1233 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1234 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1235 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1236 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1237 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1238 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1239 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1240 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1241 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1242 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1243 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1244 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1245 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1246 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1247 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1248 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1249 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1250 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1251 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1252 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1253 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1254 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1255 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1256 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1257 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1258 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1259 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1260 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1261 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1262 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1263 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1264 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1265 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1266 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1267 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1268 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1269 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1270 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1271 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1272 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1273 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1274 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1275 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1276 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1277 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1278 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1279 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1280 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1281 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1282 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1283 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1284 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1285 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1286 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1287 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1288 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1289 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1290 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1291 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1292 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1293 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1294 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1295 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1296 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1297 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1298 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1299 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1300 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1301 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1302 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1303 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1304 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1305 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1306 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1307 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1308 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1309 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1310 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1311 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1312 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1313 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1314 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1315 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1316 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1317 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1318 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1319 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1320 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1321 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1322 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1323 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1324 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1325 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1326 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1327 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1328 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1329 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1330 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1331 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1332 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1333 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1334 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1335 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1336 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1337 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1338 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1339 ===================================
//   Skipped (area too small)

// == Ice-Land mass number 1340 ===================================
//   Skipped (area too small)
// Paths found valid (renumbered order): 1, including 1

// == Ice-Land mass number 1 ======================================
Point ( 2 ) = { -5.22083333, 49.95833333, 0.00000000 };
Point ( 3 ) = { -5.22500000, 49.96250000, 0.00000000 };
Point ( 4 ) = { -5.22916667, 49.96666667, 0.00000000 };
Point ( 5 ) = { -5.23750000, 49.96666667, 0.00000000 };
Point ( 6 ) = { -5.24166667, 49.97083333, 0.00000000 };
Point ( 7 ) = { -5.24583333, 49.97500000, 0.00000000 };
Point ( 8 ) = { -5.25416667, 49.97500000, 0.00000000 };
Point ( 9 ) = { -5.25833333, 49.97916667, 0.00000000 };
Point ( 10 ) = { -5.25833333, 49.98750000, 0.00000000 };
Point ( 11 ) = { -5.26250000, 49.99166667, 0.00000000 };
Point ( 12 ) = { -5.26666667, 49.99583333, 0.00000000 };
Point ( 13 ) = { -5.27083333, 50.00000000, 0.00000000 };
Point ( 14 ) = { -5.27500000, 50.00416667, 0.00000000 };
Point ( 15 ) = { -5.27500000, 50.01250000, 0.00000000 };
Point ( 16 ) = { -5.27083333, 50.01666667, 0.00000000 };
Point ( 17 ) = { -5.26666667, 50.02083333, 0.00000000 };
Point ( 18 ) = { -5.27083333, 50.02500000, 0.00000000 };
Point ( 19 ) = { -5.27500000, 50.02916667, 0.00000000 };
Point ( 20 ) = { -5.27916667, 50.03333333, 0.00000000 };
Point ( 21 ) = { -5.28333333, 50.03750000, 0.00000000 };
Point ( 22 ) = { -5.28750000, 50.04166667, 0.00000000 };
Point ( 23 ) = { -5.29166667, 50.04583333, 0.00000000 };
Point ( 24 ) = { -5.29166667, 50.05416667, 0.00000000 };
Point ( 25 ) = { -5.29583333, 50.05833333, 0.00000000 };
Point ( 26 ) = { -5.30000000, 50.06250000, 0.00000000 };
Point ( 27 ) = { -5.30416667, 50.06666667, 0.00000000 };
Point ( 28 ) = { -5.31250000, 50.06666667, 0.00000000 };
Point ( 29 ) = { -5.31666667, 50.07083333, 0.00000000 };
Point ( 30 ) = { -5.32083333, 50.07500000, 0.00000000 };
Point ( 31 ) = { -5.32916667, 50.07500000, 0.00000000 };
Point ( 32 ) = { -5.33333333, 50.07916667, 0.00000000 };
Point ( 33 ) = { -5.33750000, 50.08333333, 0.00000000 };
Point ( 34 ) = { -5.34583333, 50.08333333, 0.00000000 };
Point ( 35 ) = { -5.35416667, 50.08333333, 0.00000000 };
Point ( 36 ) = { -5.36250000, 50.08333333, 0.00000000 };
Point ( 37 ) = { -5.37083333, 50.08333333, 0.00000000 };
Point ( 38 ) = { -5.37500000, 50.08750000, 0.00000000 };
Point ( 39 ) = { -5.37916667, 50.09166667, 0.00000000 };
Point ( 40 ) = { -5.38750000, 50.09166667, 0.00000000 };
Point ( 41 ) = { -5.39583333, 50.09166667, 0.00000000 };
Point ( 42 ) = { -5.40416667, 50.09166667, 0.00000000 };
Point ( 43 ) = { -5.41250000, 50.09166667, 0.00000000 };
Point ( 44 ) = { -5.42083333, 50.09166667, 0.00000000 };
Point ( 45 ) = { -5.42916667, 50.09166667, 0.00000000 };
Point ( 46 ) = { -5.43333333, 50.09583333, 0.00000000 };
Point ( 47 ) = { -5.43750000, 50.10000000, 0.00000000 };
Point ( 48 ) = { -5.44583333, 50.10000000, 0.00000000 };
Point ( 49 ) = { -5.45000000, 50.10416667, 0.00000000 };
Point ( 50 ) = { -5.45416667, 50.10833333, 0.00000000 };
Point ( 51 ) = { -5.46250000, 50.10833333, 0.00000000 };
Point ( 52 ) = { -5.46666667, 50.11250000, 0.00000000 };
Point ( 53 ) = { -5.47083333, 50.11666667, 0.00000000 };
Point ( 54 ) = { -5.47500000, 50.11250000, 0.00000000 };
Point ( 55 ) = { -5.47916667, 50.10833333, 0.00000000 };
Point ( 56 ) = { -5.48333333, 50.11250000, 0.00000000 };
Point ( 57 ) = { -5.48750000, 50.11666667, 0.00000000 };
Point ( 58 ) = { -5.49583333, 50.11666667, 0.00000000 };
Point ( 59 ) = { -5.50416667, 50.11666667, 0.00000000 };
Point ( 60 ) = { -5.51250000, 50.11666667, 0.00000000 };
Point ( 61 ) = { -5.52083333, 50.11666667, 0.00000000 };
Point ( 62 ) = { -5.52500000, 50.11250000, 0.00000000 };
Point ( 63 ) = { -5.52916667, 50.10833333, 0.00000000 };
Point ( 64 ) = { -5.53333333, 50.10416667, 0.00000000 };
Point ( 65 ) = { -5.53333333, 50.09583333, 0.00000000 };
Point ( 66 ) = { -5.52916667, 50.09166667, 0.00000000 };
Point ( 67 ) = { -5.52500000, 50.08750000, 0.00000000 };
Point ( 68 ) = { -5.52916667, 50.08333333, 0.00000000 };
Point ( 69 ) = { -5.53333333, 50.07916667, 0.00000000 };
Point ( 70 ) = { -5.53750000, 50.07500000, 0.00000000 };
Point ( 71 ) = { -5.54166667, 50.07083333, 0.00000000 };
Point ( 72 ) = { -5.54166667, 50.06250000, 0.00000000 };
Point ( 73 ) = { -5.54583333, 50.05833333, 0.00000000 };
Point ( 74 ) = { -5.55416667, 50.05833333, 0.00000000 };
Point ( 75 ) = { -5.56250000, 50.05833333, 0.00000000 };
Point ( 76 ) = { -5.56666667, 50.05416667, 0.00000000 };
Point ( 77 ) = { -5.57083333, 50.05000000, 0.00000000 };
Point ( 78 ) = { -5.57916667, 50.05000000, 0.00000000 };
Point ( 79 ) = { -5.58750000, 50.05000000, 0.00000000 };
Point ( 80 ) = { -5.59583333, 50.05000000, 0.00000000 };
Point ( 81 ) = { -5.60000000, 50.04583333, 0.00000000 };
Point ( 82 ) = { -5.60416667, 50.04166667, 0.00000000 };
Point ( 83 ) = { -5.61250000, 50.04166667, 0.00000000 };
Point ( 84 ) = { -5.62083333, 50.04166667, 0.00000000 };
Point ( 85 ) = { -5.62916667, 50.04166667, 0.00000000 };
Point ( 86 ) = { -5.63750000, 50.04166667, 0.00000000 };
Point ( 87 ) = { -5.64583333, 50.04166667, 0.00000000 };
Point ( 88 ) = { -5.65000000, 50.03750000, 0.00000000 };
Point ( 89 ) = { -5.65416667, 50.03333333, 0.00000000 };
Point ( 90 ) = { -5.66250000, 50.03333333, 0.00000000 };
Point ( 91 ) = { -5.67083333, 50.03333333, 0.00000000 };
Point ( 92 ) = { -5.67916667, 50.03333333, 0.00000000 };
Point ( 93 ) = { -5.68750000, 50.03333333, 0.00000000 };
Point ( 94 ) = { -5.69166667, 50.03750000, 0.00000000 };
Point ( 95 ) = { -5.69583333, 50.04166667, 0.00000000 };
Point ( 96 ) = { -5.70000000, 50.04583333, 0.00000000 };
Point ( 97 ) = { -5.70416667, 50.05000000, 0.00000000 };
Point ( 98 ) = { -5.70833333, 50.05416667, 0.00000000 };
Point ( 99 ) = { -5.71250000, 50.05833333, 0.00000000 };
Point ( 100 ) = { -5.71666667, 50.06250000, 0.00000000 };
Point ( 101 ) = { -5.71666667, 50.07083333, 0.00000000 };
Point ( 102 ) = { -5.71666667, 50.07916667, 0.00000000 };
Point ( 103 ) = { -5.71250000, 50.08333333, 0.00000000 };
Point ( 104 ) = { -5.70416667, 50.08333333, 0.00000000 };
Point ( 105 ) = { -5.69583333, 50.08333333, 0.00000000 };
Point ( 106 ) = { -5.69166667, 50.08750000, 0.00000000 };
Point ( 107 ) = { -5.69583333, 50.09166667, 0.00000000 };
Point ( 108 ) = { -5.70000000, 50.09583333, 0.00000000 };
Point ( 109 ) = { -5.70000000, 50.10416667, 0.00000000 };
Point ( 110 ) = { -5.70416667, 50.10833333, 0.00000000 };
Point ( 111 ) = { -5.70833333, 50.11250000, 0.00000000 };
Point ( 112 ) = { -5.70833333, 50.12083333, 0.00000000 };
Point ( 113 ) = { -5.70833333, 50.12916667, 0.00000000 };
Point ( 114 ) = { -5.70833333, 50.13750000, 0.00000000 };
Point ( 115 ) = { -5.70416667, 50.14166667, 0.00000000 };
Point ( 116 ) = { -5.70000000, 50.14583333, 0.00000000 };
Point ( 117 ) = { -5.69583333, 50.15000000, 0.00000000 };
Point ( 118 ) = { -5.69166667, 50.15416667, 0.00000000 };
Point ( 119 ) = { -5.68750000, 50.15833333, 0.00000000 };
Point ( 120 ) = { -5.68333333, 50.16250000, 0.00000000 };
Point ( 121 ) = { -5.67916667, 50.16666667, 0.00000000 };
Point ( 122 ) = { -5.67500000, 50.17083333, 0.00000000 };
Point ( 123 ) = { -5.67083333, 50.17500000, 0.00000000 };
Point ( 124 ) = { -5.66250000, 50.17500000, 0.00000000 };
Point ( 125 ) = { -5.65416667, 50.17500000, 0.00000000 };
Point ( 126 ) = { -5.64583333, 50.17500000, 0.00000000 };
Point ( 127 ) = { -5.63750000, 50.17500000, 0.00000000 };
Point ( 128 ) = { -5.63333333, 50.17916667, 0.00000000 };
Point ( 129 ) = { -5.62916667, 50.18333333, 0.00000000 };
Point ( 130 ) = { -5.62083333, 50.18333333, 0.00000000 };
Point ( 131 ) = { -5.61666667, 50.18750000, 0.00000000 };
Point ( 132 ) = { -5.61250000, 50.19166667, 0.00000000 };
Point ( 133 ) = { -5.60833333, 50.19583333, 0.00000000 };
Point ( 134 ) = { -5.60416667, 50.20000000, 0.00000000 };
Point ( 135 ) = { -5.59583333, 50.20000000, 0.00000000 };
Point ( 136 ) = { -5.59166667, 50.20416667, 0.00000000 };
Point ( 137 ) = { -5.58750000, 50.20833333, 0.00000000 };
Point ( 138 ) = { -5.57916667, 50.20833333, 0.00000000 };
Point ( 139 ) = { -5.57083333, 50.20833333, 0.00000000 };
Point ( 140 ) = { -5.56666667, 50.21250000, 0.00000000 };
Point ( 141 ) = { -5.56250000, 50.21666667, 0.00000000 };
Point ( 142 ) = { -5.55833333, 50.22083333, 0.00000000 };
Point ( 143 ) = { -5.55416667, 50.22500000, 0.00000000 };
Point ( 144 ) = { -5.54583333, 50.22500000, 0.00000000 };
Point ( 145 ) = { -5.53750000, 50.22500000, 0.00000000 };
Point ( 146 ) = { -5.52916667, 50.22500000, 0.00000000 };
Point ( 147 ) = { -5.52083333, 50.22500000, 0.00000000 };
Point ( 148 ) = { -5.51250000, 50.22500000, 0.00000000 };
Point ( 149 ) = { -5.50416667, 50.22500000, 0.00000000 };
Point ( 150 ) = { -5.49583333, 50.22500000, 0.00000000 };
Point ( 151 ) = { -5.48750000, 50.22500000, 0.00000000 };
Point ( 152 ) = { -5.47916667, 50.22500000, 0.00000000 };
Point ( 153 ) = { -5.47500000, 50.22083333, 0.00000000 };
Point ( 154 ) = { -5.47083333, 50.21666667, 0.00000000 };
Point ( 155 ) = { -5.46666667, 50.21250000, 0.00000000 };
Point ( 156 ) = { -5.46250000, 50.20833333, 0.00000000 };
Point ( 157 ) = { -5.45416667, 50.20833333, 0.00000000 };
Point ( 158 ) = { -5.44583333, 50.20833333, 0.00000000 };
Point ( 159 ) = { -5.43750000, 50.20833333, 0.00000000 };
Point ( 160 ) = { -5.42916667, 50.20833333, 0.00000000 };
Point ( 161 ) = { -5.42500000, 50.21250000, 0.00000000 };
Point ( 162 ) = { -5.42083333, 50.21666667, 0.00000000 };
Point ( 163 ) = { -5.41250000, 50.21666667, 0.00000000 };
Point ( 164 ) = { -5.40833333, 50.22083333, 0.00000000 };
Point ( 165 ) = { -5.40833333, 50.22916667, 0.00000000 };
Point ( 166 ) = { -5.40416667, 50.23333333, 0.00000000 };
Point ( 167 ) = { -5.40000000, 50.23750000, 0.00000000 };
Point ( 168 ) = { -5.39583333, 50.24166667, 0.00000000 };
Point ( 169 ) = { -5.39166667, 50.24583333, 0.00000000 };
Point ( 170 ) = { -5.38750000, 50.25000000, 0.00000000 };
Point ( 171 ) = { -5.37916667, 50.25000000, 0.00000000 };
Point ( 172 ) = { -5.37083333, 50.25000000, 0.00000000 };
Point ( 173 ) = { -5.36250000, 50.25000000, 0.00000000 };
Point ( 174 ) = { -5.35416667, 50.25000000, 0.00000000 };
Point ( 175 ) = { -5.34583333, 50.25000000, 0.00000000 };
Point ( 176 ) = { -5.33750000, 50.25000000, 0.00000000 };
Point ( 177 ) = { -5.33333333, 50.25416667, 0.00000000 };
Point ( 178 ) = { -5.32916667, 50.25833333, 0.00000000 };
Point ( 179 ) = { -5.32083333, 50.25833333, 0.00000000 };
Point ( 180 ) = { -5.31666667, 50.26250000, 0.00000000 };
Point ( 181 ) = { -5.31250000, 50.26666667, 0.00000000 };
Point ( 182 ) = { -5.30416667, 50.26666667, 0.00000000 };
Point ( 183 ) = { -5.29583333, 50.26666667, 0.00000000 };
Point ( 184 ) = { -5.29166667, 50.27083333, 0.00000000 };
Point ( 185 ) = { -5.28750000, 50.27500000, 0.00000000 };
Point ( 186 ) = { -5.28333333, 50.27916667, 0.00000000 };
Point ( 187 ) = { -5.27916667, 50.28333333, 0.00000000 };
Point ( 188 ) = { -5.27083333, 50.28333333, 0.00000000 };
Point ( 189 ) = { -5.26250000, 50.28333333, 0.00000000 };
Point ( 190 ) = { -5.25833333, 50.28750000, 0.00000000 };
Point ( 191 ) = { -5.25416667, 50.29166667, 0.00000000 };
Point ( 192 ) = { -5.25000000, 50.29583333, 0.00000000 };
Point ( 193 ) = { -5.24583333, 50.30000000, 0.00000000 };
Point ( 194 ) = { -5.24166667, 50.30416667, 0.00000000 };
Point ( 195 ) = { -5.24166667, 50.31250000, 0.00000000 };
Point ( 196 ) = { -5.24166667, 50.32083333, 0.00000000 };
Point ( 197 ) = { -5.23750000, 50.32500000, 0.00000000 };
Point ( 198 ) = { -5.22916667, 50.32500000, 0.00000000 };
Point ( 199 ) = { -5.22500000, 50.32916667, 0.00000000 };
Point ( 200 ) = { -5.22083333, 50.33333333, 0.00000000 };
Point ( 201 ) = { -5.21250000, 50.33333333, 0.00000000 };
Point ( 202 ) = { -5.20416667, 50.33333333, 0.00000000 };
Point ( 203 ) = { -5.19583333, 50.33333333, 0.00000000 };
Point ( 204 ) = { -5.18750000, 50.33333333, 0.00000000 };
Point ( 205 ) = { -5.18333333, 50.33750000, 0.00000000 };
Point ( 206 ) = { -5.18333333, 50.34583333, 0.00000000 };
Point ( 207 ) = { -5.17916667, 50.35000000, 0.00000000 };
Point ( 208 ) = { -5.17083333, 50.35000000, 0.00000000 };
Point ( 209 ) = { -5.16666667, 50.35416667, 0.00000000 };
Point ( 210 ) = { -5.16250000, 50.35833333, 0.00000000 };
Point ( 211 ) = { -5.15833333, 50.36250000, 0.00000000 };
Point ( 212 ) = { -5.15833333, 50.37083333, 0.00000000 };
Point ( 213 ) = { -5.15833333, 50.37916667, 0.00000000 };
Point ( 214 ) = { -5.16250000, 50.38333333, 0.00000000 };
Point ( 215 ) = { -5.16666667, 50.38750000, 0.00000000 };
Point ( 216 ) = { -5.16250000, 50.39166667, 0.00000000 };
Point ( 217 ) = { -5.15833333, 50.39583333, 0.00000000 };
Point ( 218 ) = { -5.15833333, 50.40416667, 0.00000000 };
Point ( 219 ) = { -5.15416667, 50.40833333, 0.00000000 };
Point ( 220 ) = { -5.15000000, 50.41250000, 0.00000000 };
Point ( 221 ) = { -5.14583333, 50.41666667, 0.00000000 };
Point ( 222 ) = { -5.13750000, 50.41666667, 0.00000000 };
Point ( 223 ) = { -5.12916667, 50.41666667, 0.00000000 };
Point ( 224 ) = { -5.12500000, 50.42083333, 0.00000000 };
Point ( 225 ) = { -5.12083333, 50.42500000, 0.00000000 };
Point ( 226 ) = { -5.11250000, 50.42500000, 0.00000000 };
Point ( 227 ) = { -5.10833333, 50.42916667, 0.00000000 };
Point ( 228 ) = { -5.10416667, 50.43333333, 0.00000000 };
Point ( 229 ) = { -5.09583333, 50.43333333, 0.00000000 };
Point ( 230 ) = { -5.08750000, 50.43333333, 0.00000000 };
Point ( 231 ) = { -5.08333333, 50.42916667, 0.00000000 };
Point ( 232 ) = { -5.07916667, 50.42500000, 0.00000000 };
Point ( 233 ) = { -5.07500000, 50.42916667, 0.00000000 };
Point ( 234 ) = { -5.07083333, 50.43333333, 0.00000000 };
Point ( 235 ) = { -5.06666667, 50.43750000, 0.00000000 };
Point ( 236 ) = { -5.06250000, 50.44166667, 0.00000000 };
Point ( 237 ) = { -5.05833333, 50.44583333, 0.00000000 };
Point ( 238 ) = { -5.05416667, 50.45000000, 0.00000000 };
Point ( 239 ) = { -5.05000000, 50.45416667, 0.00000000 };
Point ( 240 ) = { -5.05000000, 50.46250000, 0.00000000 };
Point ( 241 ) = { -5.05000000, 50.47083333, 0.00000000 };
Point ( 242 ) = { -5.05000000, 50.47916667, 0.00000000 };
Point ( 243 ) = { -5.05000000, 50.48750000, 0.00000000 };
Point ( 244 ) = { -5.05000000, 50.49583333, 0.00000000 };
Point ( 245 ) = { -5.05000000, 50.50416667, 0.00000000 };
Point ( 246 ) = { -5.04583333, 50.50833333, 0.00000000 };
Point ( 247 ) = { -5.04166667, 50.51250000, 0.00000000 };
Point ( 248 ) = { -5.03750000, 50.51666667, 0.00000000 };
Point ( 249 ) = { -5.03333333, 50.52083333, 0.00000000 };
Point ( 250 ) = { -5.03333333, 50.52916667, 0.00000000 };
Point ( 251 ) = { -5.03750000, 50.53333333, 0.00000000 };
Point ( 252 ) = { -5.04166667, 50.53750000, 0.00000000 };
Point ( 253 ) = { -5.04166667, 50.54583333, 0.00000000 };
Point ( 254 ) = { -5.04166667, 50.55416667, 0.00000000 };
Point ( 255 ) = { -5.03750000, 50.55833333, 0.00000000 };
Point ( 256 ) = { -5.02916667, 50.55833333, 0.00000000 };
Point ( 257 ) = { -5.02083333, 50.55833333, 0.00000000 };
Point ( 258 ) = { -5.01250000, 50.55833333, 0.00000000 };
Point ( 259 ) = { -5.00833333, 50.55416667, 0.00000000 };
Point ( 260 ) = { -5.00416667, 50.55000000, 0.00000000 };
Point ( 261 ) = { -4.99583333, 50.55000000, 0.00000000 };
Point ( 262 ) = { -4.98750000, 50.55000000, 0.00000000 };
Point ( 263 ) = { -4.98333333, 50.55416667, 0.00000000 };
Point ( 264 ) = { -4.97916667, 50.55833333, 0.00000000 };
Point ( 265 ) = { -4.97500000, 50.56250000, 0.00000000 };
Point ( 266 ) = { -4.97083333, 50.56666667, 0.00000000 };
Point ( 267 ) = { -4.96250000, 50.56666667, 0.00000000 };
Point ( 268 ) = { -4.95833333, 50.57083333, 0.00000000 };
Point ( 269 ) = { -4.95416667, 50.57500000, 0.00000000 };
Point ( 270 ) = { -4.94583333, 50.57500000, 0.00000000 };
Point ( 271 ) = { -4.93750000, 50.57500000, 0.00000000 };
Point ( 272 ) = { -4.93333333, 50.57916667, 0.00000000 };
Point ( 273 ) = { -4.93750000, 50.58333333, 0.00000000 };
Point ( 274 ) = { -4.94166667, 50.58750000, 0.00000000 };
Point ( 275 ) = { -4.93750000, 50.59166667, 0.00000000 };
Point ( 276 ) = { -4.92916667, 50.59166667, 0.00000000 };
Point ( 277 ) = { -4.92500000, 50.59583333, 0.00000000 };
Point ( 278 ) = { -4.92083333, 50.60000000, 0.00000000 };
Point ( 279 ) = { -4.91666667, 50.59583333, 0.00000000 };
Point ( 280 ) = { -4.91250000, 50.59166667, 0.00000000 };
Point ( 281 ) = { -4.90416667, 50.59166667, 0.00000000 };
Point ( 282 ) = { -4.89583333, 50.59166667, 0.00000000 };
Point ( 283 ) = { -4.88750000, 50.59166667, 0.00000000 };
Point ( 284 ) = { -4.87916667, 50.59166667, 0.00000000 };
Point ( 285 ) = { -4.87500000, 50.59583333, 0.00000000 };
Point ( 286 ) = { -4.87083333, 50.60000000, 0.00000000 };
Point ( 287 ) = { -4.86250000, 50.60000000, 0.00000000 };
Point ( 288 ) = { -4.85416667, 50.60000000, 0.00000000 };
Point ( 289 ) = { -4.84583333, 50.60000000, 0.00000000 };
Point ( 290 ) = { -4.83750000, 50.60000000, 0.00000000 };
Point ( 291 ) = { -4.82916667, 50.60000000, 0.00000000 };
Point ( 292 ) = { -4.82083333, 50.60000000, 0.00000000 };
Point ( 293 ) = { -4.81250000, 50.60000000, 0.00000000 };
Point ( 294 ) = { -4.80833333, 50.60416667, 0.00000000 };
Point ( 295 ) = { -4.80416667, 50.60833333, 0.00000000 };
Point ( 296 ) = { -4.79583333, 50.60833333, 0.00000000 };
Point ( 297 ) = { -4.78750000, 50.60833333, 0.00000000 };
Point ( 298 ) = { -4.78333333, 50.61250000, 0.00000000 };
Point ( 299 ) = { -4.78333333, 50.62083333, 0.00000000 };
Point ( 300 ) = { -4.77916667, 50.62500000, 0.00000000 };
Point ( 301 ) = { -4.77500000, 50.62916667, 0.00000000 };
Point ( 302 ) = { -4.77500000, 50.63750000, 0.00000000 };
Point ( 303 ) = { -4.77083333, 50.64166667, 0.00000000 };
Point ( 304 ) = { -4.76666667, 50.64583333, 0.00000000 };
Point ( 305 ) = { -4.76666667, 50.65416667, 0.00000000 };
Point ( 306 ) = { -4.76666667, 50.66250000, 0.00000000 };
Point ( 307 ) = { -4.76666667, 50.67083333, 0.00000000 };
Point ( 308 ) = { -4.76250000, 50.67500000, 0.00000000 };
Point ( 309 ) = { -4.75416667, 50.67500000, 0.00000000 };
Point ( 310 ) = { -4.75000000, 50.67916667, 0.00000000 };
Point ( 311 ) = { -4.74583333, 50.68333333, 0.00000000 };
Point ( 312 ) = { -4.73750000, 50.68333333, 0.00000000 };
Point ( 313 ) = { -4.72916667, 50.68333333, 0.00000000 };
Point ( 314 ) = { -4.72500000, 50.68750000, 0.00000000 };
Point ( 315 ) = { -4.72083333, 50.69166667, 0.00000000 };
Point ( 316 ) = { -4.71250000, 50.69166667, 0.00000000 };
Point ( 317 ) = { -4.70833333, 50.69583333, 0.00000000 };
Point ( 318 ) = { -4.70416667, 50.70000000, 0.00000000 };
Point ( 319 ) = { -4.69583333, 50.70000000, 0.00000000 };
Point ( 320 ) = { -4.69166667, 50.70416667, 0.00000000 };
Point ( 321 ) = { -4.68750000, 50.70833333, 0.00000000 };
Point ( 322 ) = { -4.67916667, 50.70833333, 0.00000000 };
Point ( 323 ) = { -4.67083333, 50.70833333, 0.00000000 };
Point ( 324 ) = { -4.66666667, 50.71250000, 0.00000000 };
Point ( 325 ) = { -4.66666667, 50.72083333, 0.00000000 };
Point ( 326 ) = { -4.66250000, 50.72500000, 0.00000000 };
Point ( 327 ) = { -4.65833333, 50.72916667, 0.00000000 };
Point ( 328 ) = { -4.65833333, 50.73750000, 0.00000000 };
Point ( 329 ) = { -4.65416667, 50.74166667, 0.00000000 };
Point ( 330 ) = { -4.64583333, 50.74166667, 0.00000000 };
Point ( 331 ) = { -4.64166667, 50.74583333, 0.00000000 };
Point ( 332 ) = { -4.63750000, 50.75000000, 0.00000000 };
Point ( 333 ) = { -4.63333333, 50.75416667, 0.00000000 };
Point ( 334 ) = { -4.62916667, 50.75833333, 0.00000000 };
Point ( 335 ) = { -4.62083333, 50.75833333, 0.00000000 };
Point ( 336 ) = { -4.61666667, 50.76250000, 0.00000000 };
Point ( 337 ) = { -4.61250000, 50.76666667, 0.00000000 };
Point ( 338 ) = { -4.60833333, 50.77083333, 0.00000000 };
Point ( 339 ) = { -4.60416667, 50.77500000, 0.00000000 };
Point ( 340 ) = { -4.60000000, 50.77083333, 0.00000000 };
Point ( 341 ) = { -4.59583333, 50.76666667, 0.00000000 };
Point ( 342 ) = { -4.59166667, 50.77083333, 0.00000000 };
Point ( 343 ) = { -4.58750000, 50.77500000, 0.00000000 };
Point ( 344 ) = { -4.58333333, 50.77916667, 0.00000000 };
Point ( 345 ) = { -4.57916667, 50.78333333, 0.00000000 };
Point ( 346 ) = { -4.57083333, 50.78333333, 0.00000000 };
Point ( 347 ) = { -4.56666667, 50.78750000, 0.00000000 };
Point ( 348 ) = { -4.56666667, 50.79583333, 0.00000000 };
Point ( 349 ) = { -4.56666667, 50.80416667, 0.00000000 };
Point ( 350 ) = { -4.56666667, 50.81250000, 0.00000000 };
Point ( 351 ) = { -4.56666667, 50.82083333, 0.00000000 };
Point ( 352 ) = { -4.56666667, 50.82916667, 0.00000000 };
Point ( 353 ) = { -4.56666667, 50.83750000, 0.00000000 };
Point ( 354 ) = { -4.56666667, 50.84583333, 0.00000000 };
Point ( 355 ) = { -4.56666667, 50.85416667, 0.00000000 };
Point ( 356 ) = { -4.56666667, 50.86250000, 0.00000000 };
Point ( 357 ) = { -4.56666667, 50.87083333, 0.00000000 };
Point ( 358 ) = { -4.56666667, 50.87916667, 0.00000000 };
Point ( 359 ) = { -4.57083333, 50.88333333, 0.00000000 };
Point ( 360 ) = { -4.57500000, 50.88750000, 0.00000000 };
Point ( 361 ) = { -4.57500000, 50.89583333, 0.00000000 };
Point ( 362 ) = { -4.57500000, 50.90416667, 0.00000000 };
Point ( 363 ) = { -4.57500000, 50.91250000, 0.00000000 };
Point ( 364 ) = { -4.57500000, 50.92083333, 0.00000000 };
Point ( 365 ) = { -4.57083333, 50.92500000, 0.00000000 };
Point ( 366 ) = { -4.56666667, 50.92916667, 0.00000000 };
Point ( 367 ) = { -4.56250000, 50.93333333, 0.00000000 };
Point ( 368 ) = { -4.55833333, 50.93750000, 0.00000000 };
Point ( 369 ) = { -4.55416667, 50.94166667, 0.00000000 };
Point ( 370 ) = { -4.55000000, 50.94583333, 0.00000000 };
Point ( 371 ) = { -4.55000000, 50.95416667, 0.00000000 };
Point ( 372 ) = { -4.55416667, 50.95833333, 0.00000000 };
Point ( 373 ) = { -4.55833333, 50.96250000, 0.00000000 };
Point ( 374 ) = { -4.55833333, 50.97083333, 0.00000000 };
Point ( 375 ) = { -4.55416667, 50.97500000, 0.00000000 };
Point ( 376 ) = { -4.55000000, 50.97916667, 0.00000000 };
Point ( 377 ) = { -4.54583333, 50.98333333, 0.00000000 };
Point ( 378 ) = { -4.54166667, 50.98750000, 0.00000000 };
Point ( 379 ) = { -4.54166667, 50.99583333, 0.00000000 };
Point ( 380 ) = { -4.54166667, 51.00416667, 0.00000000 };
Point ( 381 ) = { -4.54166667, 51.01250000, 0.00000000 };
Point ( 382 ) = { -4.53750000, 51.01666667, 0.00000000 };
Point ( 383 ) = { -4.53333333, 51.02083333, 0.00000000 };
Point ( 384 ) = { -4.52916667, 51.02500000, 0.00000000 };
Point ( 385 ) = { -4.52083333, 51.02500000, 0.00000000 };
Point ( 386 ) = { -4.51250000, 51.02500000, 0.00000000 };
Point ( 387 ) = { -4.50416667, 51.02500000, 0.00000000 };
Point ( 388 ) = { -4.49583333, 51.02500000, 0.00000000 };
Point ( 389 ) = { -4.48750000, 51.02500000, 0.00000000 };
Point ( 390 ) = { -4.47916667, 51.02500000, 0.00000000 };
Point ( 391 ) = { -4.47083333, 51.02500000, 0.00000000 };
Point ( 392 ) = { -4.46250000, 51.02500000, 0.00000000 };
Point ( 393 ) = { -4.45416667, 51.02500000, 0.00000000 };
Point ( 394 ) = { -4.44583333, 51.02500000, 0.00000000 };
Point ( 395 ) = { -4.43750000, 51.02500000, 0.00000000 };
Point ( 396 ) = { -4.43333333, 51.02083333, 0.00000000 };
Point ( 397 ) = { -4.42916667, 51.01666667, 0.00000000 };
Point ( 398 ) = { -4.42083333, 51.01666667, 0.00000000 };
Point ( 399 ) = { -4.41250000, 51.01666667, 0.00000000 };
Point ( 400 ) = { -4.40416667, 51.01666667, 0.00000000 };
Point ( 401 ) = { -4.40000000, 51.01250000, 0.00000000 };
Point ( 402 ) = { -4.39583333, 51.00833333, 0.00000000 };
Point ( 403 ) = { -4.39166667, 51.00416667, 0.00000000 };
Point ( 404 ) = { -4.38750000, 51.00000000, 0.00000000 };
Point ( 405 ) = { -4.37916667, 51.00000000, 0.00000000 };
Point ( 406 ) = { -4.37083333, 51.00000000, 0.00000000 };
Point ( 407 ) = { -4.36250000, 51.00000000, 0.00000000 };
Point ( 408 ) = { -4.35416667, 51.00000000, 0.00000000 };
Point ( 409 ) = { -4.34583333, 51.00000000, 0.00000000 };
Point ( 410 ) = { -4.33750000, 51.00000000, 0.00000000 };
Point ( 411 ) = { -4.32916667, 51.00000000, 0.00000000 };
Point ( 412 ) = { -4.32083333, 51.00000000, 0.00000000 };
Point ( 413 ) = { -4.31666667, 51.00416667, 0.00000000 };
Point ( 414 ) = { -4.31666667, 51.01250000, 0.00000000 };
Point ( 415 ) = { -4.31250000, 51.01666667, 0.00000000 };
Point ( 416 ) = { -4.30833333, 51.02083333, 0.00000000 };
Point ( 417 ) = { -4.30416667, 51.02500000, 0.00000000 };
Point ( 418 ) = { -4.29583333, 51.02500000, 0.00000000 };
Point ( 419 ) = { -4.29166667, 51.02916667, 0.00000000 };
Point ( 420 ) = { -4.29166667, 51.03750000, 0.00000000 };
Point ( 421 ) = { -4.28750000, 51.04166667, 0.00000000 };
Point ( 422 ) = { -4.28333333, 51.04583333, 0.00000000 };
Point ( 423 ) = { -4.27916667, 51.05000000, 0.00000000 };
Point ( 424 ) = { -4.27500000, 51.05416667, 0.00000000 };
Point ( 425 ) = { -4.27500000, 51.06250000, 0.00000000 };
Point ( 426 ) = { -4.27083333, 51.06666667, 0.00000000 };
Point ( 427 ) = { -4.26666667, 51.07083333, 0.00000000 };
Point ( 428 ) = { -4.26666667, 51.07916667, 0.00000000 };
Point ( 429 ) = { -4.26250000, 51.08333333, 0.00000000 };
Point ( 430 ) = { -4.25833333, 51.08750000, 0.00000000 };
Point ( 431 ) = { -4.25833333, 51.09583333, 0.00000000 };
Point ( 432 ) = { -4.25833333, 51.10416667, 0.00000000 };
Point ( 433 ) = { -4.25833333, 51.11250000, 0.00000000 };
Point ( 434 ) = { -4.25833333, 51.12083333, 0.00000000 };
Point ( 435 ) = { -4.25833333, 51.12916667, 0.00000000 };
Point ( 436 ) = { -4.26250000, 51.13333333, 0.00000000 };
Point ( 437 ) = { -4.26666667, 51.13750000, 0.00000000 };
Point ( 438 ) = { -4.26666667, 51.14583333, 0.00000000 };
Point ( 439 ) = { -4.26250000, 51.15000000, 0.00000000 };
Point ( 440 ) = { -4.25416667, 51.15000000, 0.00000000 };
Point ( 441 ) = { -4.25000000, 51.15416667, 0.00000000 };
Point ( 442 ) = { -4.24583333, 51.15833333, 0.00000000 };
Point ( 443 ) = { -4.23750000, 51.15833333, 0.00000000 };
Point ( 444 ) = { -4.23333333, 51.16250000, 0.00000000 };
Point ( 445 ) = { -4.22916667, 51.16666667, 0.00000000 };
Point ( 446 ) = { -4.22500000, 51.17083333, 0.00000000 };
Point ( 447 ) = { -4.22916667, 51.17500000, 0.00000000 };
Point ( 448 ) = { -4.23333333, 51.17916667, 0.00000000 };
Point ( 449 ) = { -4.23333333, 51.18750000, 0.00000000 };
Point ( 450 ) = { -4.22916667, 51.19166667, 0.00000000 };
Point ( 451 ) = { -4.22500000, 51.19583333, 0.00000000 };
Point ( 452 ) = { -4.22083333, 51.20000000, 0.00000000 };
Point ( 453 ) = { -4.21250000, 51.20000000, 0.00000000 };
Point ( 454 ) = { -4.20416667, 51.20000000, 0.00000000 };
Point ( 455 ) = { -4.20000000, 51.20416667, 0.00000000 };
Point ( 456 ) = { -4.19583333, 51.20833333, 0.00000000 };
Point ( 457 ) = { -4.18750000, 51.20833333, 0.00000000 };
Point ( 458 ) = { -4.17916667, 51.20833333, 0.00000000 };
Point ( 459 ) = { -4.17083333, 51.20833333, 0.00000000 };
Point ( 460 ) = { -4.16250000, 51.20833333, 0.00000000 };
Point ( 461 ) = { -4.15833333, 51.21250000, 0.00000000 };
Point ( 462 ) = { -4.15416667, 51.21666667, 0.00000000 };
Point ( 463 ) = { -4.14583333, 51.21666667, 0.00000000 };
Point ( 464 ) = { -4.14166667, 51.22083333, 0.00000000 };
Point ( 465 ) = { -4.13750000, 51.22500000, 0.00000000 };
Point ( 466 ) = { -4.12916667, 51.22500000, 0.00000000 };
Point ( 467 ) = { -4.12083333, 51.22500000, 0.00000000 };
Point ( 468 ) = { -4.11250000, 51.22500000, 0.00000000 };
Point ( 469 ) = { -4.10416667, 51.22500000, 0.00000000 };
Point ( 470 ) = { -4.09583333, 51.22500000, 0.00000000 };
Point ( 471 ) = { -4.09166667, 51.22916667, 0.00000000 };
Point ( 472 ) = { -4.08750000, 51.23333333, 0.00000000 };
Point ( 473 ) = { -4.07916667, 51.23333333, 0.00000000 };
Point ( 474 ) = { -4.07083333, 51.23333333, 0.00000000 };
Point ( 475 ) = { -4.06250000, 51.23333333, 0.00000000 };
Point ( 476 ) = { -4.05416667, 51.23333333, 0.00000000 };
Point ( 477 ) = { -4.04583333, 51.23333333, 0.00000000 };
Point ( 478 ) = { -4.03750000, 51.23333333, 0.00000000 };
Point ( 479 ) = { -4.02916667, 51.23333333, 0.00000000 };
Point ( 480 ) = { -4.02500000, 51.23750000, 0.00000000 };
Point ( 481 ) = { -4.02083333, 51.24166667, 0.00000000 };
Point ( 482 ) = { -4.01666667, 51.23750000, 0.00000000 };
Point ( 483 ) = { -4.02083333, 51.23333333, 0.00000000 };
Point ( 484 ) = { -4.02500000, 51.22916667, 0.00000000 };
Point ( 485 ) = { -4.02083333, 51.22500000, 0.00000000 };
Point ( 486 ) = { -4.01250000, 51.22500000, 0.00000000 };
Point ( 487 ) = { -4.00416667, 51.22500000, 0.00000000 };
Point ( 488 ) = { -3.99583333, 51.22500000, 0.00000000 };
Point ( 489 ) = { -3.99166667, 51.22916667, 0.00000000 };
Point ( 490 ) = { -3.99583333, 51.23333333, 0.00000000 };
Point ( 491 ) = { -4.00000000, 51.23750000, 0.00000000 };
Point ( 492 ) = { -3.99583333, 51.24166667, 0.00000000 };
Point ( 493 ) = { -3.98750000, 51.24166667, 0.00000000 };
Point ( 494 ) = { -3.97916667, 51.24166667, 0.00000000 };
Point ( 495 ) = { -3.97083333, 51.24166667, 0.00000000 };
Point ( 496 ) = { -3.96250000, 51.24166667, 0.00000000 };
Point ( 497 ) = { -3.95416667, 51.24166667, 0.00000000 };
Point ( 498 ) = { -3.95000000, 51.23750000, 0.00000000 };
Point ( 499 ) = { -3.94583333, 51.23333333, 0.00000000 };
Point ( 500 ) = { -3.94166667, 51.23750000, 0.00000000 };
Point ( 501 ) = { -3.93750000, 51.24166667, 0.00000000 };
Point ( 502 ) = { -3.92916667, 51.24166667, 0.00000000 };
Point ( 503 ) = { -3.92083333, 51.24166667, 0.00000000 };
Point ( 504 ) = { -3.91250000, 51.24166667, 0.00000000 };
Point ( 505 ) = { -3.90833333, 51.24583333, 0.00000000 };
Point ( 506 ) = { -3.90416667, 51.25000000, 0.00000000 };
Point ( 507 ) = { -3.89583333, 51.25000000, 0.00000000 };
Point ( 508 ) = { -3.88750000, 51.25000000, 0.00000000 };
Point ( 509 ) = { -3.87916667, 51.25000000, 0.00000000 };
Point ( 510 ) = { -3.87083333, 51.25000000, 0.00000000 };
Point ( 511 ) = { -3.86250000, 51.25000000, 0.00000000 };
Point ( 512 ) = { -3.85833333, 51.24583333, 0.00000000 };
Point ( 513 ) = { -3.85416667, 51.24166667, 0.00000000 };
Point ( 514 ) = { -3.84583333, 51.24166667, 0.00000000 };
Point ( 515 ) = { -3.83750000, 51.24166667, 0.00000000 };
Point ( 516 ) = { -3.82916667, 51.24166667, 0.00000000 };
Point ( 517 ) = { -3.82083333, 51.24166667, 0.00000000 };
Point ( 518 ) = { -3.81250000, 51.24166667, 0.00000000 };
Point ( 519 ) = { -3.80833333, 51.24583333, 0.00000000 };
Point ( 520 ) = { -3.81250000, 51.25000000, 0.00000000 };
Point ( 521 ) = { -3.81666667, 51.25416667, 0.00000000 };
Point ( 522 ) = { -3.81250000, 51.25833333, 0.00000000 };
Point ( 523 ) = { -3.80416667, 51.25833333, 0.00000000 };
Point ( 524 ) = { -3.79583333, 51.25833333, 0.00000000 };
Point ( 525 ) = { -3.78750000, 51.25833333, 0.00000000 };
Point ( 526 ) = { -3.78333333, 51.25416667, 0.00000000 };
Point ( 527 ) = { -3.77916667, 51.25000000, 0.00000000 };
Point ( 528 ) = { -3.77083333, 51.25000000, 0.00000000 };
Point ( 529 ) = { -3.76666667, 51.25416667, 0.00000000 };
Point ( 530 ) = { -3.76250000, 51.25833333, 0.00000000 };
Point ( 531 ) = { -3.75416667, 51.25833333, 0.00000000 };
Point ( 532 ) = { -3.74583333, 51.25833333, 0.00000000 };
Point ( 533 ) = { -3.74166667, 51.25416667, 0.00000000 };
Point ( 534 ) = { -3.74583333, 51.25000000, 0.00000000 };
Point ( 535 ) = { -3.75000000, 51.24583333, 0.00000000 };
Point ( 536 ) = { -3.74583333, 51.24166667, 0.00000000 };
Point ( 537 ) = { -3.73750000, 51.24166667, 0.00000000 };
Point ( 538 ) = { -3.72916667, 51.24166667, 0.00000000 };
Point ( 539 ) = { -3.72083333, 51.24166667, 0.00000000 };
Point ( 540 ) = { -3.71250000, 51.24166667, 0.00000000 };
Point ( 541 ) = { -3.70416667, 51.24166667, 0.00000000 };
Point ( 542 ) = { -3.70000000, 51.24583333, 0.00000000 };
Point ( 543 ) = { -3.70416667, 51.25000000, 0.00000000 };
Point ( 544 ) = { -3.71250000, 51.25000000, 0.00000000 };
Point ( 545 ) = { -3.71666667, 51.25416667, 0.00000000 };
Point ( 546 ) = { -3.71250000, 51.25833333, 0.00000000 };
Point ( 547 ) = { -3.70416667, 51.25833333, 0.00000000 };
Point ( 548 ) = { -3.69583333, 51.25833333, 0.00000000 };
Point ( 549 ) = { -3.68750000, 51.25833333, 0.00000000 };
Point ( 550 ) = { -3.68333333, 51.25416667, 0.00000000 };
Point ( 551 ) = { -3.67916667, 51.25000000, 0.00000000 };
Point ( 552 ) = { -3.67500000, 51.24583333, 0.00000000 };
Point ( 553 ) = { -3.67916667, 51.24166667, 0.00000000 };
Point ( 554 ) = { -3.68333333, 51.23750000, 0.00000000 };
Point ( 555 ) = { -3.67916667, 51.23333333, 0.00000000 };
Point ( 556 ) = { -3.67083333, 51.23333333, 0.00000000 };
Point ( 557 ) = { -3.66250000, 51.23333333, 0.00000000 };
Point ( 558 ) = { -3.65416667, 51.23333333, 0.00000000 };
Point ( 559 ) = { -3.64583333, 51.23333333, 0.00000000 };
Point ( 560 ) = { -3.63750000, 51.23333333, 0.00000000 };
Point ( 561 ) = { -3.63333333, 51.23750000, 0.00000000 };
Point ( 562 ) = { -3.62916667, 51.24166667, 0.00000000 };
Point ( 563 ) = { -3.62083333, 51.24166667, 0.00000000 };
Point ( 564 ) = { -3.61250000, 51.24166667, 0.00000000 };
Point ( 565 ) = { -3.60416667, 51.24166667, 0.00000000 };
Point ( 566 ) = { -3.59583333, 51.24166667, 0.00000000 };
Point ( 567 ) = { -3.58750000, 51.24166667, 0.00000000 };
Point ( 568 ) = { -3.57916667, 51.24166667, 0.00000000 };
Point ( 569 ) = { -3.57083333, 51.24166667, 0.00000000 };
Point ( 570 ) = { -3.56250000, 51.24166667, 0.00000000 };
Point ( 571 ) = { -3.55416667, 51.24166667, 0.00000000 };
Point ( 572 ) = { -3.54583333, 51.24166667, 0.00000000 };
Point ( 573 ) = { -3.53750000, 51.24166667, 0.00000000 };
Point ( 574 ) = { -3.53333333, 51.24583333, 0.00000000 };
Point ( 575 ) = { -3.52916667, 51.25000000, 0.00000000 };
Point ( 576 ) = { -3.52083333, 51.25000000, 0.00000000 };
Point ( 577 ) = { -3.51666667, 51.24583333, 0.00000000 };
Point ( 578 ) = { -3.52083333, 51.24166667, 0.00000000 };
Point ( 579 ) = { -3.52500000, 51.23750000, 0.00000000 };
Point ( 580 ) = { -3.52083333, 51.23333333, 0.00000000 };
Point ( 581 ) = { -3.51250000, 51.23333333, 0.00000000 };
Point ( 582 ) = { -3.50416667, 51.23333333, 0.00000000 };
Point ( 583 ) = { -3.49583333, 51.23333333, 0.00000000 };
Point ( 584 ) = { -3.49166667, 51.23750000, 0.00000000 };
Point ( 585 ) = { -3.48750000, 51.24166667, 0.00000000 };
Point ( 586 ) = { -3.47916667, 51.24166667, 0.00000000 };
Point ( 587 ) = { -3.47083333, 51.24166667, 0.00000000 };
Point ( 588 ) = { -3.46666667, 51.23750000, 0.00000000 };
Point ( 589 ) = { -3.46250000, 51.23333333, 0.00000000 };
Point ( 590 ) = { -3.45833333, 51.22916667, 0.00000000 };
Point ( 591 ) = { -3.45416667, 51.22500000, 0.00000000 };
Point ( 592 ) = { -3.44583333, 51.22500000, 0.00000000 };
Point ( 593 ) = { -3.44166667, 51.22083333, 0.00000000 };
Point ( 594 ) = { -3.43750000, 51.21666667, 0.00000000 };
Point ( 595 ) = { -3.42916667, 51.21666667, 0.00000000 };
Point ( 596 ) = { -3.42500000, 51.21250000, 0.00000000 };
Point ( 597 ) = { -3.42083333, 51.20833333, 0.00000000 };
Point ( 598 ) = { -3.41666667, 51.20416667, 0.00000000 };
Point ( 599 ) = { -3.41250000, 51.20000000, 0.00000000 };
Point ( 600 ) = { -3.40416667, 51.20000000, 0.00000000 };
Point ( 601 ) = { -3.39583333, 51.20000000, 0.00000000 };
Point ( 602 ) = { -3.38750000, 51.20000000, 0.00000000 };
Point ( 603 ) = { -3.37916667, 51.20000000, 0.00000000 };
Point ( 604 ) = { -3.37083333, 51.20000000, 0.00000000 };
Point ( 605 ) = { -3.36666667, 51.20416667, 0.00000000 };
Point ( 606 ) = { -3.36250000, 51.20833333, 0.00000000 };
Point ( 607 ) = { -3.35416667, 51.20833333, 0.00000000 };
Point ( 608 ) = { -3.34583333, 51.20833333, 0.00000000 };
Point ( 609 ) = { -3.34166667, 51.20416667, 0.00000000 };
Point ( 610 ) = { -3.33750000, 51.20000000, 0.00000000 };
Point ( 611 ) = { -3.32916667, 51.20000000, 0.00000000 };
Point ( 612 ) = { -3.32083333, 51.20000000, 0.00000000 };
Point ( 613 ) = { -3.31666667, 51.19583333, 0.00000000 };
Point ( 614 ) = { -3.31250000, 51.19166667, 0.00000000 };
Point ( 615 ) = { -3.30416667, 51.19166667, 0.00000000 };
Point ( 616 ) = { -3.30000000, 51.19583333, 0.00000000 };
Point ( 617 ) = { -3.30000000, 51.20416667, 0.00000000 };
Point ( 618 ) = { -3.29583333, 51.20833333, 0.00000000 };
Point ( 619 ) = { -3.29166667, 51.21250000, 0.00000000 };
Point ( 620 ) = { -3.28750000, 51.21666667, 0.00000000 };
Point ( 621 ) = { -3.27916667, 51.21666667, 0.00000000 };
Point ( 622 ) = { -3.27083333, 51.21666667, 0.00000000 };
Point ( 623 ) = { -3.26250000, 51.21666667, 0.00000000 };
Point ( 624 ) = { -3.25833333, 51.22083333, 0.00000000 };
Point ( 625 ) = { -3.25416667, 51.22500000, 0.00000000 };
Point ( 626 ) = { -3.24583333, 51.22500000, 0.00000000 };
Point ( 627 ) = { -3.24166667, 51.22916667, 0.00000000 };
Point ( 628 ) = { -3.23750000, 51.23333333, 0.00000000 };
Point ( 629 ) = { -3.22916667, 51.23333333, 0.00000000 };
Point ( 630 ) = { -3.22083333, 51.23333333, 0.00000000 };
Point ( 631 ) = { -3.21250000, 51.23333333, 0.00000000 };
Point ( 632 ) = { -3.20416667, 51.23333333, 0.00000000 };
Point ( 633 ) = { -3.20000000, 51.23750000, 0.00000000 };
Point ( 634 ) = { -3.19583333, 51.24166667, 0.00000000 };
Point ( 635 ) = { -3.18750000, 51.24166667, 0.00000000 };
Point ( 636 ) = { -3.18333333, 51.24583333, 0.00000000 };
Point ( 637 ) = { -3.17916667, 51.25000000, 0.00000000 };
Point ( 638 ) = { -3.17083333, 51.25000000, 0.00000000 };
Point ( 639 ) = { -3.16666667, 51.25416667, 0.00000000 };
Point ( 640 ) = { -3.16250000, 51.25833333, 0.00000000 };
Point ( 641 ) = { -3.15833333, 51.26250000, 0.00000000 };
Point ( 642 ) = { -3.15416667, 51.26666667, 0.00000000 };
Point ( 643 ) = { -3.15000000, 51.27083333, 0.00000000 };
Point ( 644 ) = { -3.14583333, 51.27500000, 0.00000000 };
Point ( 645 ) = { -3.13750000, 51.27500000, 0.00000000 };
Point ( 646 ) = { -3.13333333, 51.27916667, 0.00000000 };
Point ( 647 ) = { -3.12916667, 51.28333333, 0.00000000 };
Point ( 648 ) = { -3.12500000, 51.28750000, 0.00000000 };
Point ( 649 ) = { -3.12083333, 51.29166667, 0.00000000 };
Point ( 650 ) = { -3.11666667, 51.29583333, 0.00000000 };
Point ( 651 ) = { -3.11666667, 51.30416667, 0.00000000 };
Point ( 652 ) = { -3.11666667, 51.31250000, 0.00000000 };
Point ( 653 ) = { -3.11666667, 51.32083333, 0.00000000 };
Point ( 654 ) = { -3.11666667, 51.32916667, 0.00000000 };
Point ( 655 ) = { -3.11666667, 51.33750000, 0.00000000 };
Point ( 656 ) = { -3.11666667, 51.34583333, 0.00000000 };
Point ( 657 ) = { -3.11250000, 51.35000000, 0.00000000 };
Point ( 658 ) = { -3.10416667, 51.35000000, 0.00000000 };
Point ( 659 ) = { -3.10000000, 51.34583333, 0.00000000 };
Point ( 660 ) = { -3.09583333, 51.34166667, 0.00000000 };
Point ( 661 ) = { -3.09166667, 51.33750000, 0.00000000 };
Point ( 662 ) = { -3.08750000, 51.33333333, 0.00000000 };
Point ( 663 ) = { -3.08333333, 51.33750000, 0.00000000 };
Point ( 664 ) = { -3.07916667, 51.34166667, 0.00000000 };
Point ( 665 ) = { -3.07500000, 51.34583333, 0.00000000 };
Point ( 666 ) = { -3.07083333, 51.35000000, 0.00000000 };
Point ( 667 ) = { -3.06666667, 51.35416667, 0.00000000 };
Point ( 668 ) = { -3.06250000, 51.35833333, 0.00000000 };
Point ( 669 ) = { -3.05416667, 51.35833333, 0.00000000 };
Point ( 670 ) = { -3.05000000, 51.36250000, 0.00000000 };
Point ( 671 ) = { -3.04583333, 51.36666667, 0.00000000 };
Point ( 672 ) = { -3.04166667, 51.37083333, 0.00000000 };
Point ( 673 ) = { -3.03750000, 51.37500000, 0.00000000 };
Point ( 674 ) = { -3.02916667, 51.37500000, 0.00000000 };
Point ( 675 ) = { -3.02500000, 51.37916667, 0.00000000 };
Point ( 676 ) = { -3.02083333, 51.38333333, 0.00000000 };
Point ( 677 ) = { -3.01666667, 51.38750000, 0.00000000 };
Point ( 678 ) = { -3.01250000, 51.39166667, 0.00000000 };
Point ( 679 ) = { -3.00833333, 51.39583333, 0.00000000 };
Point ( 680 ) = { -3.00416667, 51.40000000, 0.00000000 };
Point ( 681 ) = { -3.00000000, 51.40416667, 0.00000000 };
Point ( 682 ) = { -2.99583333, 51.40833333, 0.00000000 };
Point ( 683 ) = { -2.99166667, 51.41250000, 0.00000000 };
Point ( 684 ) = { -2.99166667, 51.42083333, 0.00000000 };
Point ( 685 ) = { -2.98750000, 51.42500000, 0.00000000 };
Point ( 686 ) = { -2.98333333, 51.42916667, 0.00000000 };
Point ( 687 ) = { -2.97916667, 51.43333333, 0.00000000 };
Point ( 688 ) = { -2.97500000, 51.43750000, 0.00000000 };
Point ( 689 ) = { -2.97083333, 51.44166667, 0.00000000 };
Point ( 690 ) = { -2.96250000, 51.44166667, 0.00000000 };
Point ( 691 ) = { -2.95416667, 51.44166667, 0.00000000 };
Point ( 692 ) = { -2.94583333, 51.44166667, 0.00000000 };
Point ( 693 ) = { -2.94166667, 51.44583333, 0.00000000 };
Point ( 694 ) = { -2.93750000, 51.45000000, 0.00000000 };
Point ( 695 ) = { -2.92916667, 51.45000000, 0.00000000 };
Point ( 696 ) = { -2.92500000, 51.45416667, 0.00000000 };
Point ( 697 ) = { -2.92083333, 51.45833333, 0.00000000 };
Point ( 698 ) = { -2.91666667, 51.46250000, 0.00000000 };
Point ( 699 ) = { -2.91666667, 51.47083333, 0.00000000 };
Point ( 700 ) = { -2.92083333, 51.47500000, 0.00000000 };
Point ( 701 ) = { -2.92500000, 51.47916667, 0.00000000 };
Point ( 702 ) = { -2.92916667, 51.48333333, 0.00000000 };
Point ( 703 ) = { -2.93750000, 51.48333333, 0.00000000 };
Point ( 704 ) = { -2.94583333, 51.48333333, 0.00000000 };
Point ( 705 ) = { -2.95416667, 51.48333333, 0.00000000 };
Point ( 706 ) = { -2.96250000, 51.48333333, 0.00000000 };
Point ( 707 ) = { -2.97083333, 51.48333333, 0.00000000 };
Point ( 708 ) = { -2.97916667, 51.48333333, 0.00000000 };
Point ( 709 ) = { -2.98750000, 51.48333333, 0.00000000 };
Point ( 710 ) = { -2.99166667, 51.47916667, 0.00000000 };
Point ( 711 ) = { -2.99583333, 51.47500000, 0.00000000 };
Point ( 712 ) = { -3.00416667, 51.47500000, 0.00000000 };
Point ( 713 ) = { -3.01250000, 51.47500000, 0.00000000 };
Point ( 714 ) = { -3.01666667, 51.47083333, 0.00000000 };
Point ( 715 ) = { -3.02083333, 51.46666667, 0.00000000 };
Point ( 716 ) = { -3.02916667, 51.46666667, 0.00000000 };
Point ( 717 ) = { -3.03333333, 51.46250000, 0.00000000 };
Point ( 718 ) = { -3.03333333, 51.45416667, 0.00000000 };
Point ( 719 ) = { -3.03750000, 51.45000000, 0.00000000 };
Point ( 720 ) = { -3.04166667, 51.44583333, 0.00000000 };
Point ( 721 ) = { -3.04166667, 51.43750000, 0.00000000 };
Point ( 722 ) = { -3.04583333, 51.43333333, 0.00000000 };
Point ( 723 ) = { -3.05000000, 51.42916667, 0.00000000 };
Point ( 724 ) = { -3.05416667, 51.42500000, 0.00000000 };
Point ( 725 ) = { -3.06250000, 51.42500000, 0.00000000 };
Point ( 726 ) = { -3.06666667, 51.42083333, 0.00000000 };
Point ( 727 ) = { -3.06666667, 51.41250000, 0.00000000 };
Point ( 728 ) = { -3.07083333, 51.40833333, 0.00000000 };
Point ( 729 ) = { -3.07500000, 51.40416667, 0.00000000 };
Point ( 730 ) = { -3.07916667, 51.40000000, 0.00000000 };
Point ( 731 ) = { -3.08750000, 51.40000000, 0.00000000 };
Point ( 732 ) = { -3.09166667, 51.39583333, 0.00000000 };
Point ( 733 ) = { -3.09583333, 51.39166667, 0.00000000 };
Point ( 734 ) = { -3.10000000, 51.38750000, 0.00000000 };
Point ( 735 ) = { -3.10416667, 51.38333333, 0.00000000 };
Point ( 736 ) = { -3.10833333, 51.38750000, 0.00000000 };
Point ( 737 ) = { -3.10833333, 51.39583333, 0.00000000 };
Point ( 738 ) = { -3.10416667, 51.40000000, 0.00000000 };
Point ( 739 ) = { -3.10000000, 51.40416667, 0.00000000 };
Point ( 740 ) = { -3.10000000, 51.41250000, 0.00000000 };
Point ( 741 ) = { -3.10000000, 51.42083333, 0.00000000 };
Point ( 742 ) = { -3.10416667, 51.42500000, 0.00000000 };
Point ( 743 ) = { -3.10833333, 51.42083333, 0.00000000 };
Point ( 744 ) = { -3.11250000, 51.41666667, 0.00000000 };
Point ( 745 ) = { -3.12083333, 51.41666667, 0.00000000 };
Point ( 746 ) = { -3.12500000, 51.41250000, 0.00000000 };
Point ( 747 ) = { -3.12916667, 51.40833333, 0.00000000 };
Point ( 748 ) = { -3.13750000, 51.40833333, 0.00000000 };
Point ( 749 ) = { -3.14166667, 51.40416667, 0.00000000 };
Point ( 750 ) = { -3.14583333, 51.40000000, 0.00000000 };
Point ( 751 ) = { -3.15416667, 51.40000000, 0.00000000 };
Point ( 752 ) = { -3.15833333, 51.39583333, 0.00000000 };
Point ( 753 ) = { -3.16250000, 51.39166667, 0.00000000 };
Point ( 754 ) = { -3.17083333, 51.39166667, 0.00000000 };
Point ( 755 ) = { -3.17916667, 51.39166667, 0.00000000 };
Point ( 756 ) = { -3.18333333, 51.38750000, 0.00000000 };
Point ( 757 ) = { -3.18750000, 51.38333333, 0.00000000 };
Point ( 758 ) = { -3.19166667, 51.37916667, 0.00000000 };
Point ( 759 ) = { -3.19583333, 51.37500000, 0.00000000 };
Point ( 760 ) = { -3.20416667, 51.37500000, 0.00000000 };
Point ( 761 ) = { -3.20833333, 51.37916667, 0.00000000 };
Point ( 762 ) = { -3.21250000, 51.38333333, 0.00000000 };
Point ( 763 ) = { -3.22083333, 51.38333333, 0.00000000 };
Point ( 764 ) = { -3.22916667, 51.38333333, 0.00000000 };
Point ( 765 ) = { -3.23750000, 51.38333333, 0.00000000 };
Point ( 766 ) = { -3.24583333, 51.38333333, 0.00000000 };
Point ( 767 ) = { -3.25000000, 51.37916667, 0.00000000 };
Point ( 768 ) = { -3.25416667, 51.37500000, 0.00000000 };
Point ( 769 ) = { -3.26250000, 51.37500000, 0.00000000 };
Point ( 770 ) = { -3.27083333, 51.37500000, 0.00000000 };
Point ( 771 ) = { -3.27916667, 51.37500000, 0.00000000 };
Point ( 772 ) = { -3.28333333, 51.37083333, 0.00000000 };
Point ( 773 ) = { -3.28750000, 51.36666667, 0.00000000 };
Point ( 774 ) = { -3.29583333, 51.36666667, 0.00000000 };
Point ( 775 ) = { -3.30416667, 51.36666667, 0.00000000 };
Point ( 776 ) = { -3.31250000, 51.36666667, 0.00000000 };
Point ( 777 ) = { -3.31666667, 51.37083333, 0.00000000 };
Point ( 778 ) = { -3.32083333, 51.37500000, 0.00000000 };
Point ( 779 ) = { -3.32500000, 51.37083333, 0.00000000 };
Point ( 780 ) = { -3.32916667, 51.36666667, 0.00000000 };
Point ( 781 ) = { -3.33750000, 51.36666667, 0.00000000 };
Point ( 782 ) = { -3.34583333, 51.36666667, 0.00000000 };
Point ( 783 ) = { -3.35416667, 51.36666667, 0.00000000 };
Point ( 784 ) = { -3.35833333, 51.37083333, 0.00000000 };
Point ( 785 ) = { -3.36250000, 51.37500000, 0.00000000 };
Point ( 786 ) = { -3.37083333, 51.37500000, 0.00000000 };
Point ( 787 ) = { -3.37916667, 51.37500000, 0.00000000 };
Point ( 788 ) = { -3.38750000, 51.37500000, 0.00000000 };
Point ( 789 ) = { -3.39583333, 51.37500000, 0.00000000 };
Point ( 790 ) = { -3.40416667, 51.37500000, 0.00000000 };
Point ( 791 ) = { -3.41250000, 51.37500000, 0.00000000 };
Point ( 792 ) = { -3.42083333, 51.37500000, 0.00000000 };
Point ( 793 ) = { -3.42916667, 51.37500000, 0.00000000 };
Point ( 794 ) = { -3.43750000, 51.37500000, 0.00000000 };
Point ( 795 ) = { -3.44583333, 51.37500000, 0.00000000 };
Point ( 796 ) = { -3.45416667, 51.37500000, 0.00000000 };
Point ( 797 ) = { -3.46250000, 51.37500000, 0.00000000 };
Point ( 798 ) = { -3.46666667, 51.37916667, 0.00000000 };
Point ( 799 ) = { -3.47083333, 51.38333333, 0.00000000 };
Point ( 800 ) = { -3.47916667, 51.38333333, 0.00000000 };
Point ( 801 ) = { -3.48750000, 51.38333333, 0.00000000 };
Point ( 802 ) = { -3.49166667, 51.37916667, 0.00000000 };
Point ( 803 ) = { -3.49583333, 51.37500000, 0.00000000 };
Point ( 804 ) = { -3.50000000, 51.37916667, 0.00000000 };
Point ( 805 ) = { -3.50416667, 51.38333333, 0.00000000 };
Point ( 806 ) = { -3.51250000, 51.38333333, 0.00000000 };
Point ( 807 ) = { -3.52083333, 51.38333333, 0.00000000 };
Point ( 808 ) = { -3.52916667, 51.38333333, 0.00000000 };
Point ( 809 ) = { -3.53750000, 51.38333333, 0.00000000 };
Point ( 810 ) = { -3.54583333, 51.38333333, 0.00000000 };
Point ( 811 ) = { -3.55416667, 51.38333333, 0.00000000 };
Point ( 812 ) = { -3.55833333, 51.38750000, 0.00000000 };
Point ( 813 ) = { -3.56250000, 51.39166667, 0.00000000 };
Point ( 814 ) = { -3.57083333, 51.39166667, 0.00000000 };
Point ( 815 ) = { -3.57500000, 51.39583333, 0.00000000 };
Point ( 816 ) = { -3.57500000, 51.40416667, 0.00000000 };
Point ( 817 ) = { -3.57916667, 51.40833333, 0.00000000 };
Point ( 818 ) = { -3.58333333, 51.40416667, 0.00000000 };
Point ( 819 ) = { -3.58750000, 51.40000000, 0.00000000 };
Point ( 820 ) = { -3.59166667, 51.40416667, 0.00000000 };
Point ( 821 ) = { -3.59583333, 51.40833333, 0.00000000 };
Point ( 822 ) = { -3.60416667, 51.40833333, 0.00000000 };
Point ( 823 ) = { -3.60833333, 51.41250000, 0.00000000 };
Point ( 824 ) = { -3.61250000, 51.41666667, 0.00000000 };
Point ( 825 ) = { -3.61666667, 51.42083333, 0.00000000 };
Point ( 826 ) = { -3.62083333, 51.42500000, 0.00000000 };
Point ( 827 ) = { -3.62916667, 51.42500000, 0.00000000 };
Point ( 828 ) = { -3.63750000, 51.42500000, 0.00000000 };
Point ( 829 ) = { -3.64166667, 51.42916667, 0.00000000 };
Point ( 830 ) = { -3.64583333, 51.43333333, 0.00000000 };
Point ( 831 ) = { -3.65416667, 51.43333333, 0.00000000 };
Point ( 832 ) = { -3.66250000, 51.43333333, 0.00000000 };
Point ( 833 ) = { -3.66666667, 51.42916667, 0.00000000 };
Point ( 834 ) = { -3.67083333, 51.42500000, 0.00000000 };
Point ( 835 ) = { -3.67916667, 51.42500000, 0.00000000 };
Point ( 836 ) = { -3.68750000, 51.42500000, 0.00000000 };
Point ( 837 ) = { -3.69583333, 51.42500000, 0.00000000 };
Point ( 838 ) = { -3.70000000, 51.42916667, 0.00000000 };
Point ( 839 ) = { -3.70000000, 51.43750000, 0.00000000 };
Point ( 840 ) = { -3.70000000, 51.44583333, 0.00000000 };
Point ( 841 ) = { -3.70416667, 51.45000000, 0.00000000 };
Point ( 842 ) = { -3.71250000, 51.45000000, 0.00000000 };
Point ( 843 ) = { -3.71666667, 51.45416667, 0.00000000 };
Point ( 844 ) = { -3.72083333, 51.45833333, 0.00000000 };
Point ( 845 ) = { -3.72500000, 51.46250000, 0.00000000 };
Point ( 846 ) = { -3.72916667, 51.46666667, 0.00000000 };
Point ( 847 ) = { -3.73750000, 51.46666667, 0.00000000 };
Point ( 848 ) = { -3.74583333, 51.46666667, 0.00000000 };
Point ( 849 ) = { -3.75416667, 51.46666667, 0.00000000 };
Point ( 850 ) = { -3.76250000, 51.46666667, 0.00000000 };
Point ( 851 ) = { -3.77083333, 51.46666667, 0.00000000 };
Point ( 852 ) = { -3.77916667, 51.46666667, 0.00000000 };
Point ( 853 ) = { -3.78750000, 51.46666667, 0.00000000 };
Point ( 854 ) = { -3.79583333, 51.46666667, 0.00000000 };
Point ( 855 ) = { -3.80416667, 51.46666667, 0.00000000 };
Point ( 856 ) = { -3.81250000, 51.46666667, 0.00000000 };
Point ( 857 ) = { -3.82083333, 51.46666667, 0.00000000 };
Point ( 858 ) = { -3.82500000, 51.46250000, 0.00000000 };
Point ( 859 ) = { -3.82916667, 51.45833333, 0.00000000 };
Point ( 860 ) = { -3.83750000, 51.45833333, 0.00000000 };
Point ( 861 ) = { -3.84166667, 51.46250000, 0.00000000 };
Point ( 862 ) = { -3.84583333, 51.46666667, 0.00000000 };
Point ( 863 ) = { -3.85416667, 51.46666667, 0.00000000 };
Point ( 864 ) = { -3.86250000, 51.46666667, 0.00000000 };
Point ( 865 ) = { -3.87083333, 51.46666667, 0.00000000 };
Point ( 866 ) = { -3.87916667, 51.46666667, 0.00000000 };
Point ( 867 ) = { -3.88750000, 51.46666667, 0.00000000 };
Point ( 868 ) = { -3.89166667, 51.47083333, 0.00000000 };
Point ( 869 ) = { -3.89166667, 51.47916667, 0.00000000 };
Point ( 870 ) = { -3.88750000, 51.48333333, 0.00000000 };
Point ( 871 ) = { -3.87916667, 51.48333333, 0.00000000 };
Point ( 872 ) = { -3.87083333, 51.48333333, 0.00000000 };
Point ( 873 ) = { -3.86666667, 51.48750000, 0.00000000 };
Point ( 874 ) = { -3.86250000, 51.49166667, 0.00000000 };
Point ( 875 ) = { -3.85416667, 51.49166667, 0.00000000 };
Point ( 876 ) = { -3.85000000, 51.49583333, 0.00000000 };
Point ( 877 ) = { -3.84583333, 51.50000000, 0.00000000 };
Point ( 878 ) = { -3.83750000, 51.50000000, 0.00000000 };
Point ( 879 ) = { -3.83333333, 51.50416667, 0.00000000 };
Point ( 880 ) = { -3.83333333, 51.51250000, 0.00000000 };
Point ( 881 ) = { -3.83333333, 51.52083333, 0.00000000 };
Point ( 882 ) = { -3.83750000, 51.52500000, 0.00000000 };
Point ( 883 ) = { -3.84166667, 51.52916667, 0.00000000 };
Point ( 884 ) = { -3.84583333, 51.53333333, 0.00000000 };
Point ( 885 ) = { -3.85416667, 51.53333333, 0.00000000 };
Point ( 886 ) = { -3.85833333, 51.53750000, 0.00000000 };
Point ( 887 ) = { -3.86250000, 51.54166667, 0.00000000 };
Point ( 888 ) = { -3.86666667, 51.54583333, 0.00000000 };
Point ( 889 ) = { -3.87083333, 51.55000000, 0.00000000 };
Point ( 890 ) = { -3.87916667, 51.55000000, 0.00000000 };
Point ( 891 ) = { -3.88750000, 51.55000000, 0.00000000 };
Point ( 892 ) = { -3.89583333, 51.55000000, 0.00000000 };
Point ( 893 ) = { -3.90416667, 51.55000000, 0.00000000 };
Point ( 894 ) = { -3.91250000, 51.55000000, 0.00000000 };
Point ( 895 ) = { -3.91666667, 51.55416667, 0.00000000 };
Point ( 896 ) = { -3.92083333, 51.55833333, 0.00000000 };
Point ( 897 ) = { -3.92916667, 51.55833333, 0.00000000 };
Point ( 898 ) = { -3.93333333, 51.56250000, 0.00000000 };
Point ( 899 ) = { -3.93750000, 51.56666667, 0.00000000 };
Point ( 900 ) = { -3.94583333, 51.56666667, 0.00000000 };
Point ( 901 ) = { -3.95416667, 51.56666667, 0.00000000 };
Point ( 902 ) = { -3.96250000, 51.56666667, 0.00000000 };
Point ( 903 ) = { -3.97083333, 51.56666667, 0.00000000 };
Point ( 904 ) = { -3.97916667, 51.56666667, 0.00000000 };
Point ( 905 ) = { -3.98333333, 51.56250000, 0.00000000 };
Point ( 906 ) = { -3.98750000, 51.55833333, 0.00000000 };
Point ( 907 ) = { -3.99583333, 51.55833333, 0.00000000 };
Point ( 908 ) = { -4.00416667, 51.55833333, 0.00000000 };
Point ( 909 ) = { -4.01250000, 51.55833333, 0.00000000 };
Point ( 910 ) = { -4.01666667, 51.55416667, 0.00000000 };
Point ( 911 ) = { -4.02083333, 51.55000000, 0.00000000 };
Point ( 912 ) = { -4.02916667, 51.55000000, 0.00000000 };
Point ( 913 ) = { -4.03750000, 51.55000000, 0.00000000 };
Point ( 914 ) = { -4.04166667, 51.54583333, 0.00000000 };
Point ( 915 ) = { -4.04583333, 51.54166667, 0.00000000 };
Point ( 916 ) = { -4.05416667, 51.54166667, 0.00000000 };
Point ( 917 ) = { -4.06250000, 51.54166667, 0.00000000 };
Point ( 918 ) = { -4.07083333, 51.54166667, 0.00000000 };
Point ( 919 ) = { -4.07916667, 51.54166667, 0.00000000 };
Point ( 920 ) = { -4.08750000, 51.54166667, 0.00000000 };
Point ( 921 ) = { -4.09583333, 51.54166667, 0.00000000 };
Point ( 922 ) = { -4.10416667, 51.54166667, 0.00000000 };
Point ( 923 ) = { -4.10833333, 51.54583333, 0.00000000 };
Point ( 924 ) = { -4.11250000, 51.55000000, 0.00000000 };
Point ( 925 ) = { -4.12083333, 51.55000000, 0.00000000 };
Point ( 926 ) = { -4.12500000, 51.54583333, 0.00000000 };
Point ( 927 ) = { -4.12916667, 51.54166667, 0.00000000 };
Point ( 928 ) = { -4.13750000, 51.54166667, 0.00000000 };
Point ( 929 ) = { -4.14166667, 51.53750000, 0.00000000 };
Point ( 930 ) = { -4.14583333, 51.53333333, 0.00000000 };
Point ( 931 ) = { -4.15416667, 51.53333333, 0.00000000 };
Point ( 932 ) = { -4.16250000, 51.53333333, 0.00000000 };
Point ( 933 ) = { -4.17083333, 51.53333333, 0.00000000 };
Point ( 934 ) = { -4.17916667, 51.53333333, 0.00000000 };
Point ( 935 ) = { -4.18750000, 51.53333333, 0.00000000 };
Point ( 936 ) = { -4.19166667, 51.52916667, 0.00000000 };
Point ( 937 ) = { -4.19583333, 51.52500000, 0.00000000 };
Point ( 938 ) = { -4.20416667, 51.52500000, 0.00000000 };
Point ( 939 ) = { -4.20833333, 51.52916667, 0.00000000 };
Point ( 940 ) = { -4.21250000, 51.53333333, 0.00000000 };
Point ( 941 ) = { -4.22083333, 51.53333333, 0.00000000 };
Point ( 942 ) = { -4.22916667, 51.53333333, 0.00000000 };
Point ( 943 ) = { -4.23750000, 51.53333333, 0.00000000 };
Point ( 944 ) = { -4.24583333, 51.53333333, 0.00000000 };
Point ( 945 ) = { -4.25416667, 51.53333333, 0.00000000 };
Point ( 946 ) = { -4.26250000, 51.53333333, 0.00000000 };
Point ( 947 ) = { -4.27083333, 51.53333333, 0.00000000 };
Point ( 948 ) = { -4.27500000, 51.53750000, 0.00000000 };
Point ( 949 ) = { -4.27916667, 51.54166667, 0.00000000 };
Point ( 950 ) = { -4.28750000, 51.54166667, 0.00000000 };
Point ( 951 ) = { -4.29583333, 51.54166667, 0.00000000 };
Point ( 952 ) = { -4.30000000, 51.54583333, 0.00000000 };
Point ( 953 ) = { -4.30416667, 51.55000000, 0.00000000 };
Point ( 954 ) = { -4.31250000, 51.55000000, 0.00000000 };
Point ( 955 ) = { -4.31666667, 51.55416667, 0.00000000 };
Point ( 956 ) = { -4.32083333, 51.55833333, 0.00000000 };
Point ( 957 ) = { -4.32500000, 51.56250000, 0.00000000 };
Point ( 958 ) = { -4.32500000, 51.57083333, 0.00000000 };
Point ( 959 ) = { -4.32500000, 51.57916667, 0.00000000 };
Point ( 960 ) = { -4.32916667, 51.58333333, 0.00000000 };
Point ( 961 ) = { -4.33333333, 51.58750000, 0.00000000 };
Point ( 962 ) = { -4.33750000, 51.59166667, 0.00000000 };
Point ( 963 ) = { -4.34166667, 51.59583333, 0.00000000 };
Point ( 964 ) = { -4.34583333, 51.60000000, 0.00000000 };
Point ( 965 ) = { -4.35416667, 51.60000000, 0.00000000 };
Point ( 966 ) = { -4.35833333, 51.60416667, 0.00000000 };
Point ( 967 ) = { -4.36250000, 51.60833333, 0.00000000 };
Point ( 968 ) = { -4.36666667, 51.61250000, 0.00000000 };
Point ( 969 ) = { -4.37083333, 51.61666667, 0.00000000 };
Point ( 970 ) = { -4.37500000, 51.62083333, 0.00000000 };
Point ( 971 ) = { -4.37500000, 51.62916667, 0.00000000 };
Point ( 972 ) = { -4.37916667, 51.63333333, 0.00000000 };
Point ( 973 ) = { -4.38333333, 51.63750000, 0.00000000 };
Point ( 974 ) = { -4.38750000, 51.64166667, 0.00000000 };
Point ( 975 ) = { -4.39166667, 51.64583333, 0.00000000 };
Point ( 976 ) = { -4.39583333, 51.65000000, 0.00000000 };
Point ( 977 ) = { -4.40416667, 51.65000000, 0.00000000 };
Point ( 978 ) = { -4.40833333, 51.65416667, 0.00000000 };
Point ( 979 ) = { -4.41250000, 51.65833333, 0.00000000 };
Point ( 980 ) = { -4.41666667, 51.66250000, 0.00000000 };
Point ( 981 ) = { -4.42083333, 51.66666667, 0.00000000 };
Point ( 982 ) = { -4.42916667, 51.66666667, 0.00000000 };
Point ( 983 ) = { -4.43333333, 51.67083333, 0.00000000 };
Point ( 984 ) = { -4.43750000, 51.67500000, 0.00000000 };
Point ( 985 ) = { -4.44583333, 51.67500000, 0.00000000 };
Point ( 986 ) = { -4.45000000, 51.67916667, 0.00000000 };
Point ( 987 ) = { -4.45416667, 51.68333333, 0.00000000 };
Point ( 988 ) = { -4.46250000, 51.68333333, 0.00000000 };
Point ( 989 ) = { -4.46666667, 51.68750000, 0.00000000 };
Point ( 990 ) = { -4.47083333, 51.69166667, 0.00000000 };
Point ( 991 ) = { -4.47916667, 51.69166667, 0.00000000 };
Point ( 992 ) = { -4.48333333, 51.68750000, 0.00000000 };
Point ( 993 ) = { -4.48750000, 51.68333333, 0.00000000 };
Point ( 994 ) = { -4.49583333, 51.68333333, 0.00000000 };
Point ( 995 ) = { -4.50000000, 51.68750000, 0.00000000 };
Point ( 996 ) = { -4.50416667, 51.69166667, 0.00000000 };
Point ( 997 ) = { -4.51250000, 51.69166667, 0.00000000 };
Point ( 998 ) = { -4.51666667, 51.68750000, 0.00000000 };
Point ( 999 ) = { -4.52083333, 51.68333333, 0.00000000 };
Point ( 1000 ) = { -4.52916667, 51.68333333, 0.00000000 };
Point ( 1001 ) = { -4.53750000, 51.68333333, 0.00000000 };
Point ( 1002 ) = { -4.54166667, 51.68750000, 0.00000000 };
Point ( 1003 ) = { -4.54583333, 51.69166667, 0.00000000 };
Point ( 1004 ) = { -4.55416667, 51.69166667, 0.00000000 };
Point ( 1005 ) = { -4.55833333, 51.68750000, 0.00000000 };
Point ( 1006 ) = { -4.56250000, 51.68333333, 0.00000000 };
Point ( 1007 ) = { -4.57083333, 51.68333333, 0.00000000 };
Point ( 1008 ) = { -4.57916667, 51.68333333, 0.00000000 };
Point ( 1009 ) = { -4.58750000, 51.68333333, 0.00000000 };
Point ( 1010 ) = { -4.59583333, 51.68333333, 0.00000000 };
Point ( 1011 ) = { -4.60416667, 51.68333333, 0.00000000 };
Point ( 1012 ) = { -4.60833333, 51.67916667, 0.00000000 };
Point ( 1013 ) = { -4.61250000, 51.67500000, 0.00000000 };
Point ( 1014 ) = { -4.62083333, 51.67500000, 0.00000000 };
Point ( 1015 ) = { -4.62916667, 51.67500000, 0.00000000 };
Point ( 1016 ) = { -4.63750000, 51.67500000, 0.00000000 };
Point ( 1017 ) = { -4.64166667, 51.67083333, 0.00000000 };
Point ( 1018 ) = { -4.64583333, 51.66666667, 0.00000000 };
Point ( 1019 ) = { -4.65000000, 51.66250000, 0.00000000 };
Point ( 1020 ) = { -4.65416667, 51.65833333, 0.00000000 };
Point ( 1021 ) = { -4.66250000, 51.65833333, 0.00000000 };
Point ( 1022 ) = { -4.66666667, 51.65416667, 0.00000000 };
Point ( 1023 ) = { -4.66666667, 51.64583333, 0.00000000 };
Point ( 1024 ) = { -4.66666667, 51.63750000, 0.00000000 };
Point ( 1025 ) = { -4.67083333, 51.63333333, 0.00000000 };
Point ( 1026 ) = { -4.67500000, 51.62916667, 0.00000000 };
Point ( 1027 ) = { -4.67916667, 51.62500000, 0.00000000 };
Point ( 1028 ) = { -4.68750000, 51.62500000, 0.00000000 };
Point ( 1029 ) = { -4.69583333, 51.62500000, 0.00000000 };
Point ( 1030 ) = { -4.70416667, 51.62500000, 0.00000000 };
Point ( 1031 ) = { -4.70833333, 51.62916667, 0.00000000 };
Point ( 1032 ) = { -4.71250000, 51.63333333, 0.00000000 };
Point ( 1033 ) = { -4.71666667, 51.63750000, 0.00000000 };
Point ( 1034 ) = { -4.72083333, 51.64166667, 0.00000000 };
Point ( 1035 ) = { -4.72916667, 51.64166667, 0.00000000 };
Point ( 1036 ) = { -4.73750000, 51.64166667, 0.00000000 };
Point ( 1037 ) = { -4.74583333, 51.64166667, 0.00000000 };
Point ( 1038 ) = { -4.75000000, 51.63750000, 0.00000000 };
Point ( 1039 ) = { -4.75416667, 51.63333333, 0.00000000 };
Point ( 1040 ) = { -4.76250000, 51.63333333, 0.00000000 };
Point ( 1041 ) = { -4.77083333, 51.63333333, 0.00000000 };
Point ( 1042 ) = { -4.77916667, 51.63333333, 0.00000000 };
Point ( 1043 ) = { -4.78333333, 51.62916667, 0.00000000 };
Point ( 1044 ) = { -4.78750000, 51.62500000, 0.00000000 };
Point ( 1045 ) = { -4.79583333, 51.62500000, 0.00000000 };
Point ( 1046 ) = { -4.80416667, 51.62500000, 0.00000000 };
Point ( 1047 ) = { -4.80833333, 51.62916667, 0.00000000 };
Point ( 1048 ) = { -4.81250000, 51.63333333, 0.00000000 };
Point ( 1049 ) = { -4.82083333, 51.63333333, 0.00000000 };
Point ( 1050 ) = { -4.82916667, 51.63333333, 0.00000000 };
Point ( 1051 ) = { -4.83750000, 51.63333333, 0.00000000 };
Point ( 1052 ) = { -4.84583333, 51.63333333, 0.00000000 };
Point ( 1053 ) = { -4.85416667, 51.63333333, 0.00000000 };
Point ( 1054 ) = { -4.86250000, 51.63333333, 0.00000000 };
Point ( 1055 ) = { -4.86666667, 51.62916667, 0.00000000 };
Point ( 1056 ) = { -4.87083333, 51.62500000, 0.00000000 };
Point ( 1057 ) = { -4.87916667, 51.62500000, 0.00000000 };
Point ( 1058 ) = { -4.88333333, 51.62083333, 0.00000000 };
Point ( 1059 ) = { -4.88750000, 51.61666667, 0.00000000 };
Point ( 1060 ) = { -4.89166667, 51.61250000, 0.00000000 };
Point ( 1061 ) = { -4.89583333, 51.60833333, 0.00000000 };
Point ( 1062 ) = { -4.90000000, 51.60416667, 0.00000000 };
Point ( 1063 ) = { -4.90416667, 51.60000000, 0.00000000 };
Point ( 1064 ) = { -4.91250000, 51.60000000, 0.00000000 };
Point ( 1065 ) = { -4.91666667, 51.59583333, 0.00000000 };
Point ( 1066 ) = { -4.92083333, 51.59166667, 0.00000000 };
Point ( 1067 ) = { -4.92916667, 51.59166667, 0.00000000 };
Point ( 1068 ) = { -4.93750000, 51.59166667, 0.00000000 };
Point ( 1069 ) = { -4.94583333, 51.59166667, 0.00000000 };
Point ( 1070 ) = { -4.95416667, 51.59166667, 0.00000000 };
Point ( 1071 ) = { -4.95833333, 51.59583333, 0.00000000 };
Point ( 1072 ) = { -4.96250000, 51.60000000, 0.00000000 };
Point ( 1073 ) = { -4.97083333, 51.60000000, 0.00000000 };
Point ( 1074 ) = { -4.97916667, 51.60000000, 0.00000000 };
Point ( 1075 ) = { -4.98750000, 51.60000000, 0.00000000 };
Point ( 1076 ) = { -4.99583333, 51.60000000, 0.00000000 };
Point ( 1077 ) = { -5.00416667, 51.60000000, 0.00000000 };
Point ( 1078 ) = { -5.01250000, 51.60000000, 0.00000000 };
Point ( 1079 ) = { -5.01666667, 51.60416667, 0.00000000 };
Point ( 1080 ) = { -5.02083333, 51.60833333, 0.00000000 };
Point ( 1081 ) = { -5.02916667, 51.60833333, 0.00000000 };
Point ( 1082 ) = { -5.03750000, 51.60833333, 0.00000000 };
Point ( 1083 ) = { -5.04166667, 51.61250000, 0.00000000 };
Point ( 1084 ) = { -5.04583333, 51.61666667, 0.00000000 };
Point ( 1085 ) = { -5.05416667, 51.61666667, 0.00000000 };
Point ( 1086 ) = { -5.06250000, 51.61666667, 0.00000000 };
Point ( 1087 ) = { -5.06666667, 51.62083333, 0.00000000 };
Point ( 1088 ) = { -5.06666667, 51.62916667, 0.00000000 };
Point ( 1089 ) = { -5.06666667, 51.63750000, 0.00000000 };
Point ( 1090 ) = { -5.06250000, 51.64166667, 0.00000000 };
Point ( 1091 ) = { -5.05833333, 51.64583333, 0.00000000 };
Point ( 1092 ) = { -5.06250000, 51.65000000, 0.00000000 };
Point ( 1093 ) = { -5.07083333, 51.65000000, 0.00000000 };
Point ( 1094 ) = { -5.07500000, 51.65416667, 0.00000000 };
Point ( 1095 ) = { -5.07916667, 51.65833333, 0.00000000 };
Point ( 1096 ) = { -5.08750000, 51.65833333, 0.00000000 };
Point ( 1097 ) = { -5.09583333, 51.65833333, 0.00000000 };
Point ( 1098 ) = { -5.10416667, 51.65833333, 0.00000000 };
Point ( 1099 ) = { -5.10833333, 51.66250000, 0.00000000 };
Point ( 1100 ) = { -5.11250000, 51.66666667, 0.00000000 };
Point ( 1101 ) = { -5.11666667, 51.67083333, 0.00000000 };
Point ( 1102 ) = { -5.12083333, 51.67500000, 0.00000000 };
Point ( 1103 ) = { -5.12500000, 51.67916667, 0.00000000 };
Point ( 1104 ) = { -5.12500000, 51.68750000, 0.00000000 };
Point ( 1105 ) = { -5.12083333, 51.69166667, 0.00000000 };
Point ( 1106 ) = { -5.11250000, 51.69166667, 0.00000000 };
Point ( 1107 ) = { -5.10416667, 51.69166667, 0.00000000 };
Point ( 1108 ) = { -5.09583333, 51.69166667, 0.00000000 };
Point ( 1109 ) = { -5.08750000, 51.69166667, 0.00000000 };
Point ( 1110 ) = { -5.07916667, 51.69166667, 0.00000000 };
Point ( 1111 ) = { -5.07500000, 51.68750000, 0.00000000 };
Point ( 1112 ) = { -5.07083333, 51.68333333, 0.00000000 };
Point ( 1113 ) = { -5.06250000, 51.68333333, 0.00000000 };
Point ( 1114 ) = { -5.05833333, 51.68750000, 0.00000000 };
Point ( 1115 ) = { -5.05416667, 51.69166667, 0.00000000 };
Point ( 1116 ) = { -5.05000000, 51.69583333, 0.00000000 };
Point ( 1117 ) = { -5.05416667, 51.70000000, 0.00000000 };
Point ( 1118 ) = { -5.05833333, 51.70416667, 0.00000000 };
Point ( 1119 ) = { -5.06250000, 51.70833333, 0.00000000 };
Point ( 1120 ) = { -5.06666667, 51.70416667, 0.00000000 };
Point ( 1121 ) = { -5.07083333, 51.70000000, 0.00000000 };
Point ( 1122 ) = { -5.07916667, 51.70000000, 0.00000000 };
Point ( 1123 ) = { -5.08750000, 51.70000000, 0.00000000 };
Point ( 1124 ) = { -5.09166667, 51.70416667, 0.00000000 };
Point ( 1125 ) = { -5.09583333, 51.70833333, 0.00000000 };
Point ( 1126 ) = { -5.10416667, 51.70833333, 0.00000000 };
Point ( 1127 ) = { -5.11250000, 51.70833333, 0.00000000 };
Point ( 1128 ) = { -5.12083333, 51.70833333, 0.00000000 };
Point ( 1129 ) = { -5.12916667, 51.70833333, 0.00000000 };
Point ( 1130 ) = { -5.13750000, 51.70833333, 0.00000000 };
Point ( 1131 ) = { -5.14583333, 51.70833333, 0.00000000 };
Point ( 1132 ) = { -5.15000000, 51.70416667, 0.00000000 };
Point ( 1133 ) = { -5.15000000, 51.69583333, 0.00000000 };
Point ( 1134 ) = { -5.15000000, 51.68750000, 0.00000000 };
Point ( 1135 ) = { -5.15416667, 51.68333333, 0.00000000 };
Point ( 1136 ) = { -5.16250000, 51.68333333, 0.00000000 };
Point ( 1137 ) = { -5.16666667, 51.67916667, 0.00000000 };
Point ( 1138 ) = { -5.17083333, 51.67500000, 0.00000000 };
Point ( 1139 ) = { -5.17916667, 51.67500000, 0.00000000 };
Point ( 1140 ) = { -5.18333333, 51.67916667, 0.00000000 };
Point ( 1141 ) = { -5.18750000, 51.68333333, 0.00000000 };
Point ( 1142 ) = { -5.19166667, 51.68750000, 0.00000000 };
Point ( 1143 ) = { -5.19583333, 51.69166667, 0.00000000 };
Point ( 1144 ) = { -5.20000000, 51.69583333, 0.00000000 };
Point ( 1145 ) = { -5.20416667, 51.70000000, 0.00000000 };
Point ( 1146 ) = { -5.20833333, 51.70416667, 0.00000000 };
Point ( 1147 ) = { -5.20833333, 51.71250000, 0.00000000 };
Point ( 1148 ) = { -5.21250000, 51.71666667, 0.00000000 };
Point ( 1149 ) = { -5.22083333, 51.71666667, 0.00000000 };
Point ( 1150 ) = { -5.22916667, 51.71666667, 0.00000000 };
Point ( 1151 ) = { -5.23750000, 51.71666667, 0.00000000 };
Point ( 1152 ) = { -5.24583333, 51.71666667, 0.00000000 };
Point ( 1153 ) = { -5.25000000, 51.72083333, 0.00000000 };
Point ( 1154 ) = { -5.25416667, 51.72500000, 0.00000000 };
Point ( 1155 ) = { -5.25833333, 51.72916667, 0.00000000 };
Point ( 1156 ) = { -5.26250000, 51.73333333, 0.00000000 };
Point ( 1157 ) = { -5.26666667, 51.72916667, 0.00000000 };
Point ( 1158 ) = { -5.27083333, 51.72500000, 0.00000000 };
Point ( 1159 ) = { -5.27916667, 51.72500000, 0.00000000 };
Point ( 1160 ) = { -5.28333333, 51.72083333, 0.00000000 };
Point ( 1161 ) = { -5.28750000, 51.71666667, 0.00000000 };
Point ( 1162 ) = { -5.29166667, 51.72083333, 0.00000000 };
Point ( 1163 ) = { -5.29583333, 51.72500000, 0.00000000 };
Point ( 1164 ) = { -5.30416667, 51.72500000, 0.00000000 };
Point ( 1165 ) = { -5.30833333, 51.72916667, 0.00000000 };
Point ( 1166 ) = { -5.31250000, 51.73333333, 0.00000000 };
Point ( 1167 ) = { -5.31666667, 51.73750000, 0.00000000 };
Point ( 1168 ) = { -5.31250000, 51.74166667, 0.00000000 };
Point ( 1169 ) = { -5.30833333, 51.74583333, 0.00000000 };
Point ( 1170 ) = { -5.30416667, 51.75000000, 0.00000000 };
Point ( 1171 ) = { -5.29583333, 51.75000000, 0.00000000 };
Point ( 1172 ) = { -5.28750000, 51.75000000, 0.00000000 };
Point ( 1173 ) = { -5.27916667, 51.75000000, 0.00000000 };
Point ( 1174 ) = { -5.27500000, 51.74583333, 0.00000000 };
Point ( 1175 ) = { -5.27083333, 51.74166667, 0.00000000 };
Point ( 1176 ) = { -5.26250000, 51.74166667, 0.00000000 };
Point ( 1177 ) = { -5.25416667, 51.74166667, 0.00000000 };
Point ( 1178 ) = { -5.24583333, 51.74166667, 0.00000000 };
Point ( 1179 ) = { -5.23750000, 51.74166667, 0.00000000 };
Point ( 1180 ) = { -5.23333333, 51.74583333, 0.00000000 };
Point ( 1181 ) = { -5.22916667, 51.75000000, 0.00000000 };
Point ( 1182 ) = { -5.22083333, 51.75000000, 0.00000000 };
Point ( 1183 ) = { -5.21250000, 51.75000000, 0.00000000 };
Point ( 1184 ) = { -5.20833333, 51.75416667, 0.00000000 };
Point ( 1185 ) = { -5.20416667, 51.75833333, 0.00000000 };
Point ( 1186 ) = { -5.20000000, 51.76250000, 0.00000000 };
Point ( 1187 ) = { -5.19583333, 51.76666667, 0.00000000 };
Point ( 1188 ) = { -5.18750000, 51.76666667, 0.00000000 };
Point ( 1189 ) = { -5.17916667, 51.76666667, 0.00000000 };
Point ( 1190 ) = { -5.17500000, 51.77083333, 0.00000000 };
Point ( 1191 ) = { -5.17083333, 51.77500000, 0.00000000 };
Point ( 1192 ) = { -5.16666667, 51.77916667, 0.00000000 };
Point ( 1193 ) = { -5.16250000, 51.78333333, 0.00000000 };
Point ( 1194 ) = { -5.15416667, 51.78333333, 0.00000000 };
Point ( 1195 ) = { -5.14583333, 51.78333333, 0.00000000 };
Point ( 1196 ) = { -5.13750000, 51.78333333, 0.00000000 };
Point ( 1197 ) = { -5.12916667, 51.78333333, 0.00000000 };
Point ( 1198 ) = { -5.12083333, 51.78333333, 0.00000000 };
Point ( 1199 ) = { -5.11666667, 51.78750000, 0.00000000 };
Point ( 1200 ) = { -5.11666667, 51.79583333, 0.00000000 };
Point ( 1201 ) = { -5.11666667, 51.80416667, 0.00000000 };
Point ( 1202 ) = { -5.11666667, 51.81250000, 0.00000000 };
Point ( 1203 ) = { -5.12083333, 51.81666667, 0.00000000 };
Point ( 1204 ) = { -5.12500000, 51.82083333, 0.00000000 };
Point ( 1205 ) = { -5.12500000, 51.82916667, 0.00000000 };
Point ( 1206 ) = { -5.12916667, 51.83333333, 0.00000000 };
Point ( 1207 ) = { -5.13750000, 51.83333333, 0.00000000 };
Point ( 1208 ) = { -5.14166667, 51.83750000, 0.00000000 };
Point ( 1209 ) = { -5.13750000, 51.84166667, 0.00000000 };
Point ( 1210 ) = { -5.12916667, 51.84166667, 0.00000000 };
Point ( 1211 ) = { -5.12500000, 51.84583333, 0.00000000 };
Point ( 1212 ) = { -5.12916667, 51.85000000, 0.00000000 };
Point ( 1213 ) = { -5.13750000, 51.85000000, 0.00000000 };
Point ( 1214 ) = { -5.14583333, 51.85000000, 0.00000000 };
Point ( 1215 ) = { -5.15416667, 51.85000000, 0.00000000 };
Point ( 1216 ) = { -5.16250000, 51.85000000, 0.00000000 };
Point ( 1217 ) = { -5.17083333, 51.85000000, 0.00000000 };
Point ( 1218 ) = { -5.17500000, 51.85416667, 0.00000000 };
Point ( 1219 ) = { -5.17916667, 51.85833333, 0.00000000 };
Point ( 1220 ) = { -5.18750000, 51.85833333, 0.00000000 };
Point ( 1221 ) = { -5.19583333, 51.85833333, 0.00000000 };
Point ( 1222 ) = { -5.20416667, 51.85833333, 0.00000000 };
Point ( 1223 ) = { -5.21250000, 51.85833333, 0.00000000 };
Point ( 1224 ) = { -5.22083333, 51.85833333, 0.00000000 };
Point ( 1225 ) = { -5.22916667, 51.85833333, 0.00000000 };
Point ( 1226 ) = { -5.23750000, 51.85833333, 0.00000000 };
Point ( 1227 ) = { -5.24583333, 51.85833333, 0.00000000 };
Point ( 1228 ) = { -5.25416667, 51.85833333, 0.00000000 };
Point ( 1229 ) = { -5.26250000, 51.85833333, 0.00000000 };
Point ( 1230 ) = { -5.27083333, 51.85833333, 0.00000000 };
Point ( 1231 ) = { -5.27916667, 51.85833333, 0.00000000 };
Point ( 1232 ) = { -5.28750000, 51.85833333, 0.00000000 };
Point ( 1233 ) = { -5.29583333, 51.85833333, 0.00000000 };
Point ( 1234 ) = { -5.30000000, 51.85416667, 0.00000000 };
Point ( 1235 ) = { -5.30416667, 51.85000000, 0.00000000 };
Point ( 1236 ) = { -5.31250000, 51.85000000, 0.00000000 };
Point ( 1237 ) = { -5.31666667, 51.85416667, 0.00000000 };
Point ( 1238 ) = { -5.32083333, 51.85833333, 0.00000000 };
Point ( 1239 ) = { -5.32500000, 51.85416667, 0.00000000 };
Point ( 1240 ) = { -5.32916667, 51.85000000, 0.00000000 };
Point ( 1241 ) = { -5.33333333, 51.84583333, 0.00000000 };
Point ( 1242 ) = { -5.33750000, 51.84166667, 0.00000000 };
Point ( 1243 ) = { -5.34166667, 51.84583333, 0.00000000 };
Point ( 1244 ) = { -5.34583333, 51.85000000, 0.00000000 };
Point ( 1245 ) = { -5.35000000, 51.85416667, 0.00000000 };
Point ( 1246 ) = { -5.35416667, 51.85833333, 0.00000000 };
Point ( 1247 ) = { -5.35833333, 51.86250000, 0.00000000 };
Point ( 1248 ) = { -5.35833333, 51.87083333, 0.00000000 };
Point ( 1249 ) = { -5.35416667, 51.87500000, 0.00000000 };
Point ( 1250 ) = { -5.35000000, 51.87916667, 0.00000000 };
Point ( 1251 ) = { -5.34583333, 51.88333333, 0.00000000 };
Point ( 1252 ) = { -5.33750000, 51.88333333, 0.00000000 };
Point ( 1253 ) = { -5.32916667, 51.88333333, 0.00000000 };
Point ( 1254 ) = { -5.32083333, 51.88333333, 0.00000000 };
Point ( 1255 ) = { -5.31666667, 51.88750000, 0.00000000 };
Point ( 1256 ) = { -5.31666667, 51.89583333, 0.00000000 };
Point ( 1257 ) = { -5.31666667, 51.90416667, 0.00000000 };
Point ( 1258 ) = { -5.31250000, 51.90833333, 0.00000000 };
Point ( 1259 ) = { -5.30833333, 51.91250000, 0.00000000 };
Point ( 1260 ) = { -5.30416667, 51.91666667, 0.00000000 };
Point ( 1261 ) = { -5.29583333, 51.91666667, 0.00000000 };
Point ( 1262 ) = { -5.28750000, 51.91666667, 0.00000000 };
Point ( 1263 ) = { -5.28333333, 51.92083333, 0.00000000 };
Point ( 1264 ) = { -5.27916667, 51.92500000, 0.00000000 };
Point ( 1265 ) = { -5.27083333, 51.92500000, 0.00000000 };
Point ( 1266 ) = { -5.26250000, 51.92500000, 0.00000000 };
Point ( 1267 ) = { -5.25416667, 51.92500000, 0.00000000 };
Point ( 1268 ) = { -5.25000000, 51.92916667, 0.00000000 };
Point ( 1269 ) = { -5.24583333, 51.93333333, 0.00000000 };
Point ( 1270 ) = { -5.23750000, 51.93333333, 0.00000000 };
Point ( 1271 ) = { -5.23333333, 51.93750000, 0.00000000 };
Point ( 1272 ) = { -5.22916667, 51.94166667, 0.00000000 };
Point ( 1273 ) = { -5.22083333, 51.94166667, 0.00000000 };
Point ( 1274 ) = { -5.21250000, 51.94166667, 0.00000000 };
Point ( 1275 ) = { -5.20833333, 51.94583333, 0.00000000 };
Point ( 1276 ) = { -5.20416667, 51.95000000, 0.00000000 };
Point ( 1277 ) = { -5.19583333, 51.95000000, 0.00000000 };
Point ( 1278 ) = { -5.19166667, 51.95416667, 0.00000000 };
Point ( 1279 ) = { -5.18750000, 51.95833333, 0.00000000 };
Point ( 1280 ) = { -5.17916667, 51.95833333, 0.00000000 };
Point ( 1281 ) = { -5.17083333, 51.95833333, 0.00000000 };
Point ( 1282 ) = { -5.16250000, 51.95833333, 0.00000000 };
Point ( 1283 ) = { -5.15416667, 51.95833333, 0.00000000 };
Point ( 1284 ) = { -5.15000000, 51.96250000, 0.00000000 };
Point ( 1285 ) = { -5.14583333, 51.96666667, 0.00000000 };
Point ( 1286 ) = { -5.13750000, 51.96666667, 0.00000000 };
Point ( 1287 ) = { -5.12916667, 51.96666667, 0.00000000 };
Point ( 1288 ) = { -5.12083333, 51.96666667, 0.00000000 };
Point ( 1289 ) = { -5.11666667, 51.97083333, 0.00000000 };
Point ( 1290 ) = { -5.11250000, 51.97500000, 0.00000000 };
Point ( 1291 ) = { -5.10416667, 51.97500000, 0.00000000 };
Point ( 1292 ) = { -5.10000000, 51.97916667, 0.00000000 };
Point ( 1293 ) = { -5.10000000, 51.98750000, 0.00000000 };
Point ( 1294 ) = { -5.10000000, 51.99583333, 0.00000000 };
Point ( 1295 ) = { -5.09583333, 52.00000000, 0.00000000 };
Point ( 1296 ) = { -5.09166667, 52.00416667, 0.00000000 };
Point ( 1297 ) = { -5.09166667, 52.01250000, 0.00000000 };
Point ( 1298 ) = { -5.09166667, 52.02083333, 0.00000000 };
Point ( 1299 ) = { -5.08750000, 52.02500000, 0.00000000 };
Point ( 1300 ) = { -5.08333333, 52.02916667, 0.00000000 };
Point ( 1301 ) = { -5.07916667, 52.03333333, 0.00000000 };
Point ( 1302 ) = { -5.07083333, 52.03333333, 0.00000000 };
Point ( 1303 ) = { -5.06250000, 52.03333333, 0.00000000 };
Point ( 1304 ) = { -5.05416667, 52.03333333, 0.00000000 };
Point ( 1305 ) = { -5.04583333, 52.03333333, 0.00000000 };
Point ( 1306 ) = { -5.03750000, 52.03333333, 0.00000000 };
Point ( 1307 ) = { -5.02916667, 52.03333333, 0.00000000 };
Point ( 1308 ) = { -5.02083333, 52.03333333, 0.00000000 };
Point ( 1309 ) = { -5.01250000, 52.03333333, 0.00000000 };
Point ( 1310 ) = { -5.00416667, 52.03333333, 0.00000000 };
Point ( 1311 ) = { -4.99583333, 52.03333333, 0.00000000 };
Point ( 1312 ) = { -4.98750000, 52.03333333, 0.00000000 };
Point ( 1313 ) = { -4.98333333, 52.02916667, 0.00000000 };
Point ( 1314 ) = { -4.97916667, 52.02500000, 0.00000000 };
Point ( 1315 ) = { -4.97500000, 52.02083333, 0.00000000 };
Point ( 1316 ) = { -4.97500000, 52.01250000, 0.00000000 };
Point ( 1317 ) = { -4.97083333, 52.00833333, 0.00000000 };
Point ( 1318 ) = { -4.96250000, 52.00833333, 0.00000000 };
Point ( 1319 ) = { -4.95833333, 52.01250000, 0.00000000 };
Point ( 1320 ) = { -4.95416667, 52.01666667, 0.00000000 };
Point ( 1321 ) = { -4.94583333, 52.01666667, 0.00000000 };
Point ( 1322 ) = { -4.93750000, 52.01666667, 0.00000000 };
Point ( 1323 ) = { -4.92916667, 52.01666667, 0.00000000 };
Point ( 1324 ) = { -4.92500000, 52.02083333, 0.00000000 };
Point ( 1325 ) = { -4.92500000, 52.02916667, 0.00000000 };
Point ( 1326 ) = { -4.92083333, 52.03333333, 0.00000000 };
Point ( 1327 ) = { -4.91666667, 52.03750000, 0.00000000 };
Point ( 1328 ) = { -4.91250000, 52.04166667, 0.00000000 };
Point ( 1329 ) = { -4.90416667, 52.04166667, 0.00000000 };
Point ( 1330 ) = { -4.89583333, 52.04166667, 0.00000000 };
Point ( 1331 ) = { -4.89166667, 52.03750000, 0.00000000 };
Point ( 1332 ) = { -4.88750000, 52.03333333, 0.00000000 };
Point ( 1333 ) = { -4.87916667, 52.03333333, 0.00000000 };
Point ( 1334 ) = { -4.87083333, 52.03333333, 0.00000000 };
Point ( 1335 ) = { -4.86250000, 52.03333333, 0.00000000 };
Point ( 1336 ) = { -4.85833333, 52.03750000, 0.00000000 };
Point ( 1337 ) = { -4.85416667, 52.04166667, 0.00000000 };
Point ( 1338 ) = { -4.85000000, 52.04583333, 0.00000000 };
Point ( 1339 ) = { -4.85000000, 52.05416667, 0.00000000 };
Point ( 1340 ) = { -4.84583333, 52.05833333, 0.00000000 };
Point ( 1341 ) = { -4.83750000, 52.05833333, 0.00000000 };
Point ( 1342 ) = { -4.83333333, 52.06250000, 0.00000000 };
Point ( 1343 ) = { -4.82916667, 52.06666667, 0.00000000 };
Point ( 1344 ) = { -4.82083333, 52.06666667, 0.00000000 };
Point ( 1345 ) = { -4.81250000, 52.06666667, 0.00000000 };
Point ( 1346 ) = { -4.80416667, 52.06666667, 0.00000000 };
Point ( 1347 ) = { -4.79583333, 52.06666667, 0.00000000 };
Point ( 1348 ) = { -4.79166667, 52.07083333, 0.00000000 };
Point ( 1349 ) = { -4.78750000, 52.07500000, 0.00000000 };
Point ( 1350 ) = { -4.77916667, 52.07500000, 0.00000000 };
Point ( 1351 ) = { -4.77500000, 52.07916667, 0.00000000 };
Point ( 1352 ) = { -4.77083333, 52.08333333, 0.00000000 };
Point ( 1353 ) = { -4.76666667, 52.08750000, 0.00000000 };
Point ( 1354 ) = { -4.76666667, 52.09583333, 0.00000000 };
Point ( 1355 ) = { -4.76250000, 52.10000000, 0.00000000 };
Point ( 1356 ) = { -4.75833333, 52.10416667, 0.00000000 };
Point ( 1357 ) = { -4.75416667, 52.10833333, 0.00000000 };
Point ( 1358 ) = { -4.75000000, 52.11250000, 0.00000000 };
Point ( 1359 ) = { -4.74583333, 52.11666667, 0.00000000 };
Point ( 1360 ) = { -4.74166667, 52.12083333, 0.00000000 };
Point ( 1361 ) = { -4.73750000, 52.12500000, 0.00000000 };
Point ( 1362 ) = { -4.72916667, 52.12500000, 0.00000000 };
Point ( 1363 ) = { -4.72083333, 52.12500000, 0.00000000 };
Point ( 1364 ) = { -4.71666667, 52.12083333, 0.00000000 };
Point ( 1365 ) = { -4.71250000, 52.11666667, 0.00000000 };
Point ( 1366 ) = { -4.70833333, 52.12083333, 0.00000000 };
Point ( 1367 ) = { -4.70833333, 52.12916667, 0.00000000 };
Point ( 1368 ) = { -4.70416667, 52.13333333, 0.00000000 };
Point ( 1369 ) = { -4.69583333, 52.13333333, 0.00000000 };
Point ( 1370 ) = { -4.68750000, 52.13333333, 0.00000000 };
Point ( 1371 ) = { -4.68333333, 52.13750000, 0.00000000 };
Point ( 1372 ) = { -4.67916667, 52.14166667, 0.00000000 };
Point ( 1373 ) = { -4.67083333, 52.14166667, 0.00000000 };
Point ( 1374 ) = { -4.66250000, 52.14166667, 0.00000000 };
Point ( 1375 ) = { -4.65416667, 52.14166667, 0.00000000 };
Point ( 1376 ) = { -4.64583333, 52.14166667, 0.00000000 };
Point ( 1377 ) = { -4.63750000, 52.14166667, 0.00000000 };
Point ( 1378 ) = { -4.63333333, 52.14583333, 0.00000000 };
Point ( 1379 ) = { -4.62916667, 52.15000000, 0.00000000 };
Point ( 1380 ) = { -4.62083333, 52.15000000, 0.00000000 };
Point ( 1381 ) = { -4.61250000, 52.15000000, 0.00000000 };
Point ( 1382 ) = { -4.60416667, 52.15000000, 0.00000000 };
Point ( 1383 ) = { -4.59583333, 52.15000000, 0.00000000 };
Point ( 1384 ) = { -4.58750000, 52.15000000, 0.00000000 };
Point ( 1385 ) = { -4.57916667, 52.15000000, 0.00000000 };
Point ( 1386 ) = { -4.57083333, 52.15000000, 0.00000000 };
Point ( 1387 ) = { -4.56250000, 52.15000000, 0.00000000 };
Point ( 1388 ) = { -4.55416667, 52.15000000, 0.00000000 };
Point ( 1389 ) = { -4.54583333, 52.15000000, 0.00000000 };
Point ( 1390 ) = { -4.54166667, 52.14583333, 0.00000000 };
Point ( 1391 ) = { -4.53750000, 52.14166667, 0.00000000 };
Point ( 1392 ) = { -4.52916667, 52.14166667, 0.00000000 };
Point ( 1393 ) = { -4.52083333, 52.14166667, 0.00000000 };
Point ( 1394 ) = { -4.51666667, 52.14583333, 0.00000000 };
Point ( 1395 ) = { -4.51666667, 52.15416667, 0.00000000 };
Point ( 1396 ) = { -4.51666667, 52.16250000, 0.00000000 };
Point ( 1397 ) = { -4.51666667, 52.17083333, 0.00000000 };
Point ( 1398 ) = { -4.51250000, 52.17500000, 0.00000000 };
Point ( 1399 ) = { -4.50416667, 52.17500000, 0.00000000 };
Point ( 1400 ) = { -4.50000000, 52.17916667, 0.00000000 };
Point ( 1401 ) = { -4.49583333, 52.18333333, 0.00000000 };
Point ( 1402 ) = { -4.48750000, 52.18333333, 0.00000000 };
Point ( 1403 ) = { -4.47916667, 52.18333333, 0.00000000 };
Point ( 1404 ) = { -4.47083333, 52.18333333, 0.00000000 };
Point ( 1405 ) = { -4.46666667, 52.17916667, 0.00000000 };
Point ( 1406 ) = { -4.46250000, 52.17500000, 0.00000000 };
Point ( 1407 ) = { -4.45416667, 52.17500000, 0.00000000 };
Point ( 1408 ) = { -4.45000000, 52.17916667, 0.00000000 };
Point ( 1409 ) = { -4.44583333, 52.18333333, 0.00000000 };
Point ( 1410 ) = { -4.43750000, 52.18333333, 0.00000000 };
Point ( 1411 ) = { -4.43333333, 52.18750000, 0.00000000 };
Point ( 1412 ) = { -4.42916667, 52.19166667, 0.00000000 };
Point ( 1413 ) = { -4.42083333, 52.19166667, 0.00000000 };
Point ( 1414 ) = { -4.41666667, 52.19583333, 0.00000000 };
Point ( 1415 ) = { -4.41250000, 52.20000000, 0.00000000 };
Point ( 1416 ) = { -4.40416667, 52.20000000, 0.00000000 };
Point ( 1417 ) = { -4.40000000, 52.20416667, 0.00000000 };
Point ( 1418 ) = { -4.39583333, 52.20833333, 0.00000000 };
Point ( 1419 ) = { -4.39166667, 52.21250000, 0.00000000 };
Point ( 1420 ) = { -4.38750000, 52.21666667, 0.00000000 };
Point ( 1421 ) = { -4.38333333, 52.22083333, 0.00000000 };
Point ( 1422 ) = { -4.37916667, 52.22500000, 0.00000000 };
Point ( 1423 ) = { -4.37500000, 52.22916667, 0.00000000 };
Point ( 1424 ) = { -4.37083333, 52.23333333, 0.00000000 };
Point ( 1425 ) = { -4.36666667, 52.22916667, 0.00000000 };
Point ( 1426 ) = { -4.36250000, 52.22500000, 0.00000000 };
Point ( 1427 ) = { -4.35833333, 52.22083333, 0.00000000 };
Point ( 1428 ) = { -4.35416667, 52.21666667, 0.00000000 };
Point ( 1429 ) = { -4.34583333, 52.21666667, 0.00000000 };
Point ( 1430 ) = { -4.33750000, 52.21666667, 0.00000000 };
Point ( 1431 ) = { -4.33333333, 52.22083333, 0.00000000 };
Point ( 1432 ) = { -4.32916667, 52.22500000, 0.00000000 };
Point ( 1433 ) = { -4.32083333, 52.22500000, 0.00000000 };
Point ( 1434 ) = { -4.31666667, 52.22916667, 0.00000000 };
Point ( 1435 ) = { -4.31250000, 52.23333333, 0.00000000 };
Point ( 1436 ) = { -4.30833333, 52.23750000, 0.00000000 };
Point ( 1437 ) = { -4.30416667, 52.24166667, 0.00000000 };
Point ( 1438 ) = { -4.29583333, 52.24166667, 0.00000000 };
Point ( 1439 ) = { -4.28750000, 52.24166667, 0.00000000 };
Point ( 1440 ) = { -4.28333333, 52.24583333, 0.00000000 };
Point ( 1441 ) = { -4.27916667, 52.25000000, 0.00000000 };
Point ( 1442 ) = { -4.27083333, 52.25000000, 0.00000000 };
Point ( 1443 ) = { -4.26666667, 52.25416667, 0.00000000 };
Point ( 1444 ) = { -4.26250000, 52.25833333, 0.00000000 };
Point ( 1445 ) = { -4.25833333, 52.26250000, 0.00000000 };
Point ( 1446 ) = { -4.25416667, 52.26666667, 0.00000000 };
Point ( 1447 ) = { -4.25000000, 52.27083333, 0.00000000 };
Point ( 1448 ) = { -4.24583333, 52.27500000, 0.00000000 };
Point ( 1449 ) = { -4.23750000, 52.27500000, 0.00000000 };
Point ( 1450 ) = { -4.22916667, 52.27500000, 0.00000000 };
Point ( 1451 ) = { -4.22500000, 52.27916667, 0.00000000 };
Point ( 1452 ) = { -4.22083333, 52.28333333, 0.00000000 };
Point ( 1453 ) = { -4.21666667, 52.28750000, 0.00000000 };
Point ( 1454 ) = { -4.21250000, 52.29166667, 0.00000000 };
Point ( 1455 ) = { -4.20833333, 52.29583333, 0.00000000 };
Point ( 1456 ) = { -4.20833333, 52.30416667, 0.00000000 };
Point ( 1457 ) = { -4.20416667, 52.30833333, 0.00000000 };
Point ( 1458 ) = { -4.20000000, 52.31250000, 0.00000000 };
Point ( 1459 ) = { -4.19583333, 52.31666667, 0.00000000 };
Point ( 1460 ) = { -4.19166667, 52.32083333, 0.00000000 };
Point ( 1461 ) = { -4.18750000, 52.32500000, 0.00000000 };
Point ( 1462 ) = { -4.17916667, 52.32500000, 0.00000000 };
Point ( 1463 ) = { -4.17083333, 52.32500000, 0.00000000 };
Point ( 1464 ) = { -4.16666667, 52.32916667, 0.00000000 };
Point ( 1465 ) = { -4.16250000, 52.33333333, 0.00000000 };
Point ( 1466 ) = { -4.15833333, 52.32916667, 0.00000000 };
Point ( 1467 ) = { -4.15416667, 52.32500000, 0.00000000 };
Point ( 1468 ) = { -4.15000000, 52.32916667, 0.00000000 };
Point ( 1469 ) = { -4.14583333, 52.33333333, 0.00000000 };
Point ( 1470 ) = { -4.14166667, 52.33750000, 0.00000000 };
Point ( 1471 ) = { -4.13750000, 52.34166667, 0.00000000 };
Point ( 1472 ) = { -4.13333333, 52.34583333, 0.00000000 };
Point ( 1473 ) = { -4.13333333, 52.35416667, 0.00000000 };
Point ( 1474 ) = { -4.13333333, 52.36250000, 0.00000000 };
Point ( 1475 ) = { -4.12916667, 52.36666667, 0.00000000 };
Point ( 1476 ) = { -4.12500000, 52.37083333, 0.00000000 };
Point ( 1477 ) = { -4.12083333, 52.37500000, 0.00000000 };
Point ( 1478 ) = { -4.11666667, 52.37916667, 0.00000000 };
Point ( 1479 ) = { -4.11250000, 52.38333333, 0.00000000 };
Point ( 1480 ) = { -4.10833333, 52.38750000, 0.00000000 };
Point ( 1481 ) = { -4.10416667, 52.39166667, 0.00000000 };
Point ( 1482 ) = { -4.10000000, 52.39583333, 0.00000000 };
Point ( 1483 ) = { -4.09583333, 52.40000000, 0.00000000 };
Point ( 1484 ) = { -4.09166667, 52.40416667, 0.00000000 };
Point ( 1485 ) = { -4.09583333, 52.40833333, 0.00000000 };
Point ( 1486 ) = { -4.10000000, 52.41250000, 0.00000000 };
Point ( 1487 ) = { -4.10000000, 52.42083333, 0.00000000 };
Point ( 1488 ) = { -4.10416667, 52.42500000, 0.00000000 };
Point ( 1489 ) = { -4.10833333, 52.42916667, 0.00000000 };
Point ( 1490 ) = { -4.11250000, 52.43333333, 0.00000000 };
Point ( 1491 ) = { -4.12083333, 52.43333333, 0.00000000 };
Point ( 1492 ) = { -4.12500000, 52.43750000, 0.00000000 };
Point ( 1493 ) = { -4.12916667, 52.44166667, 0.00000000 };
Point ( 1494 ) = { -4.13750000, 52.44166667, 0.00000000 };
Point ( 1495 ) = { -4.14166667, 52.43750000, 0.00000000 };
Point ( 1496 ) = { -4.14166667, 52.42916667, 0.00000000 };
Point ( 1497 ) = { -4.14583333, 52.42500000, 0.00000000 };
Point ( 1498 ) = { -4.15416667, 52.42500000, 0.00000000 };
Point ( 1499 ) = { -4.16250000, 52.42500000, 0.00000000 };
Point ( 1500 ) = { -4.16666667, 52.42083333, 0.00000000 };
Point ( 1501 ) = { -4.17083333, 52.41666667, 0.00000000 };
Point ( 1502 ) = { -4.17500000, 52.41250000, 0.00000000 };
Point ( 1503 ) = { -4.17916667, 52.40833333, 0.00000000 };
Point ( 1504 ) = { -4.18333333, 52.40416667, 0.00000000 };
Point ( 1505 ) = { -4.18750000, 52.40000000, 0.00000000 };
Point ( 1506 ) = { -4.19166667, 52.40416667, 0.00000000 };
Point ( 1507 ) = { -4.19166667, 52.41250000, 0.00000000 };
Point ( 1508 ) = { -4.18750000, 52.41666667, 0.00000000 };
Point ( 1509 ) = { -4.18333333, 52.42083333, 0.00000000 };
Point ( 1510 ) = { -4.18750000, 52.42500000, 0.00000000 };
Point ( 1511 ) = { -4.19583333, 52.42500000, 0.00000000 };
Point ( 1512 ) = { -4.20000000, 52.42083333, 0.00000000 };
Point ( 1513 ) = { -4.20000000, 52.41250000, 0.00000000 };
Point ( 1514 ) = { -4.20416667, 52.40833333, 0.00000000 };
Point ( 1515 ) = { -4.21250000, 52.40833333, 0.00000000 };
Point ( 1516 ) = { -4.22083333, 52.40833333, 0.00000000 };
Point ( 1517 ) = { -4.22500000, 52.41250000, 0.00000000 };
Point ( 1518 ) = { -4.22916667, 52.41666667, 0.00000000 };
Point ( 1519 ) = { -4.23750000, 52.41666667, 0.00000000 };
Point ( 1520 ) = { -4.24166667, 52.42083333, 0.00000000 };
Point ( 1521 ) = { -4.24583333, 52.42500000, 0.00000000 };
Point ( 1522 ) = { -4.25000000, 52.42916667, 0.00000000 };
Point ( 1523 ) = { -4.25000000, 52.43750000, 0.00000000 };
Point ( 1524 ) = { -4.24583333, 52.44166667, 0.00000000 };
Point ( 1525 ) = { -4.23750000, 52.44166667, 0.00000000 };
Point ( 1526 ) = { -4.22916667, 52.44166667, 0.00000000 };
Point ( 1527 ) = { -4.22083333, 52.44166667, 0.00000000 };
Point ( 1528 ) = { -4.21250000, 52.44166667, 0.00000000 };
Point ( 1529 ) = { -4.20416667, 52.44166667, 0.00000000 };
Point ( 1530 ) = { -4.19583333, 52.44166667, 0.00000000 };
Point ( 1531 ) = { -4.19166667, 52.44583333, 0.00000000 };
Point ( 1532 ) = { -4.18750000, 52.45000000, 0.00000000 };
Point ( 1533 ) = { -4.18333333, 52.45416667, 0.00000000 };
Point ( 1534 ) = { -4.17916667, 52.45833333, 0.00000000 };
Point ( 1535 ) = { -4.17083333, 52.45833333, 0.00000000 };
Point ( 1536 ) = { -4.16250000, 52.45833333, 0.00000000 };
Point ( 1537 ) = { -4.15416667, 52.45833333, 0.00000000 };
Point ( 1538 ) = { -4.14583333, 52.45833333, 0.00000000 };
Point ( 1539 ) = { -4.13750000, 52.45833333, 0.00000000 };
Point ( 1540 ) = { -4.13333333, 52.46250000, 0.00000000 };
Point ( 1541 ) = { -4.13333333, 52.47083333, 0.00000000 };
Point ( 1542 ) = { -4.12916667, 52.47500000, 0.00000000 };
Point ( 1543 ) = { -4.12500000, 52.47916667, 0.00000000 };
Point ( 1544 ) = { -4.12500000, 52.48750000, 0.00000000 };
Point ( 1545 ) = { -4.12500000, 52.49583333, 0.00000000 };
Point ( 1546 ) = { -4.12083333, 52.50000000, 0.00000000 };
Point ( 1547 ) = { -4.11666667, 52.50416667, 0.00000000 };
Point ( 1548 ) = { -4.11250000, 52.50833333, 0.00000000 };
Point ( 1549 ) = { -4.10416667, 52.50833333, 0.00000000 };
Point ( 1550 ) = { -4.10000000, 52.51250000, 0.00000000 };
Point ( 1551 ) = { -4.10416667, 52.51666667, 0.00000000 };
Point ( 1552 ) = { -4.10833333, 52.52083333, 0.00000000 };
Point ( 1553 ) = { -4.10416667, 52.52500000, 0.00000000 };
Point ( 1554 ) = { -4.10000000, 52.52083333, 0.00000000 };
Point ( 1555 ) = { -4.09583333, 52.51666667, 0.00000000 };
Point ( 1556 ) = { -4.08750000, 52.51666667, 0.00000000 };
Point ( 1557 ) = { -4.07916667, 52.51666667, 0.00000000 };
Point ( 1558 ) = { -4.07500000, 52.52083333, 0.00000000 };
Point ( 1559 ) = { -4.07083333, 52.52500000, 0.00000000 };
Point ( 1560 ) = { -4.06250000, 52.52500000, 0.00000000 };
Point ( 1561 ) = { -4.05833333, 52.52916667, 0.00000000 };
Point ( 1562 ) = { -4.06250000, 52.53333333, 0.00000000 };
Point ( 1563 ) = { -4.07083333, 52.53333333, 0.00000000 };
Point ( 1564 ) = { -4.07916667, 52.53333333, 0.00000000 };
Point ( 1565 ) = { -4.08333333, 52.53750000, 0.00000000 };
Point ( 1566 ) = { -4.08333333, 52.54583333, 0.00000000 };
Point ( 1567 ) = { -4.08750000, 52.55000000, 0.00000000 };
Point ( 1568 ) = { -4.09166667, 52.55416667, 0.00000000 };
Point ( 1569 ) = { -4.09166667, 52.56250000, 0.00000000 };
Point ( 1570 ) = { -4.09583333, 52.56666667, 0.00000000 };
Point ( 1571 ) = { -4.10416667, 52.56666667, 0.00000000 };
Point ( 1572 ) = { -4.10833333, 52.57083333, 0.00000000 };
Point ( 1573 ) = { -4.11250000, 52.57500000, 0.00000000 };
Point ( 1574 ) = { -4.11666667, 52.57916667, 0.00000000 };
Point ( 1575 ) = { -4.11666667, 52.58750000, 0.00000000 };
Point ( 1576 ) = { -4.12083333, 52.59166667, 0.00000000 };
Point ( 1577 ) = { -4.12916667, 52.59166667, 0.00000000 };
Point ( 1578 ) = { -4.13333333, 52.59583333, 0.00000000 };
Point ( 1579 ) = { -4.13750000, 52.60000000, 0.00000000 };
Point ( 1580 ) = { -4.14166667, 52.60416667, 0.00000000 };
Point ( 1581 ) = { -4.14166667, 52.61250000, 0.00000000 };
Point ( 1582 ) = { -4.14583333, 52.61666667, 0.00000000 };
Point ( 1583 ) = { -4.15416667, 52.61666667, 0.00000000 };
Point ( 1584 ) = { -4.15833333, 52.61250000, 0.00000000 };
Point ( 1585 ) = { -4.15416667, 52.60833333, 0.00000000 };
Point ( 1586 ) = { -4.15000000, 52.60416667, 0.00000000 };
Point ( 1587 ) = { -4.15000000, 52.59583333, 0.00000000 };
Point ( 1588 ) = { -4.15416667, 52.59166667, 0.00000000 };
Point ( 1589 ) = { -4.16250000, 52.59166667, 0.00000000 };
Point ( 1590 ) = { -4.16666667, 52.58750000, 0.00000000 };
Point ( 1591 ) = { -4.17083333, 52.58333333, 0.00000000 };
Point ( 1592 ) = { -4.17916667, 52.58333333, 0.00000000 };
Point ( 1593 ) = { -4.18750000, 52.58333333, 0.00000000 };
Point ( 1594 ) = { -4.19583333, 52.58333333, 0.00000000 };
Point ( 1595 ) = { -4.20416667, 52.58333333, 0.00000000 };
Point ( 1596 ) = { -4.21250000, 52.58333333, 0.00000000 };
Point ( 1597 ) = { -4.21666667, 52.58750000, 0.00000000 };
Point ( 1598 ) = { -4.21666667, 52.59583333, 0.00000000 };
Point ( 1599 ) = { -4.21250000, 52.60000000, 0.00000000 };
Point ( 1600 ) = { -4.20416667, 52.60000000, 0.00000000 };
Point ( 1601 ) = { -4.19583333, 52.60000000, 0.00000000 };
Point ( 1602 ) = { -4.18750000, 52.60000000, 0.00000000 };
Point ( 1603 ) = { -4.18333333, 52.60416667, 0.00000000 };
Point ( 1604 ) = { -4.17916667, 52.60833333, 0.00000000 };
Point ( 1605 ) = { -4.17500000, 52.61250000, 0.00000000 };
Point ( 1606 ) = { -4.17083333, 52.61666667, 0.00000000 };
Point ( 1607 ) = { -4.16666667, 52.62083333, 0.00000000 };
Point ( 1608 ) = { -4.16666667, 52.62916667, 0.00000000 };
Point ( 1609 ) = { -4.16250000, 52.63333333, 0.00000000 };
Point ( 1610 ) = { -4.15833333, 52.63750000, 0.00000000 };
Point ( 1611 ) = { -4.15833333, 52.64583333, 0.00000000 };
Point ( 1612 ) = { -4.15416667, 52.65000000, 0.00000000 };
Point ( 1613 ) = { -4.14583333, 52.65000000, 0.00000000 };
Point ( 1614 ) = { -4.14166667, 52.65416667, 0.00000000 };
Point ( 1615 ) = { -4.14166667, 52.66250000, 0.00000000 };
Point ( 1616 ) = { -4.13750000, 52.66666667, 0.00000000 };
Point ( 1617 ) = { -4.13333333, 52.67083333, 0.00000000 };
Point ( 1618 ) = { -4.12916667, 52.67500000, 0.00000000 };
Point ( 1619 ) = { -4.12500000, 52.67916667, 0.00000000 };
Point ( 1620 ) = { -4.12083333, 52.68333333, 0.00000000 };
Point ( 1621 ) = { -4.11666667, 52.67916667, 0.00000000 };
Point ( 1622 ) = { -4.11250000, 52.67500000, 0.00000000 };
Point ( 1623 ) = { -4.10416667, 52.67500000, 0.00000000 };
Point ( 1624 ) = { -4.10000000, 52.67916667, 0.00000000 };
Point ( 1625 ) = { -4.10000000, 52.68750000, 0.00000000 };
Point ( 1626 ) = { -4.10416667, 52.69166667, 0.00000000 };
Point ( 1627 ) = { -4.10833333, 52.69583333, 0.00000000 };
Point ( 1628 ) = { -4.11250000, 52.70000000, 0.00000000 };
Point ( 1629 ) = { -4.11666667, 52.69583333, 0.00000000 };
Point ( 1630 ) = { -4.12083333, 52.69166667, 0.00000000 };
Point ( 1631 ) = { -4.12500000, 52.69583333, 0.00000000 };
Point ( 1632 ) = { -4.12500000, 52.70416667, 0.00000000 };
Point ( 1633 ) = { -4.12500000, 52.71250000, 0.00000000 };
Point ( 1634 ) = { -4.12083333, 52.71666667, 0.00000000 };
Point ( 1635 ) = { -4.11666667, 52.72083333, 0.00000000 };
Point ( 1636 ) = { -4.11250000, 52.72500000, 0.00000000 };
Point ( 1637 ) = { -4.10833333, 52.72916667, 0.00000000 };
Point ( 1638 ) = { -4.10833333, 52.73750000, 0.00000000 };
Point ( 1639 ) = { -4.10416667, 52.74166667, 0.00000000 };
Point ( 1640 ) = { -4.10000000, 52.74583333, 0.00000000 };
Point ( 1641 ) = { -4.10416667, 52.75000000, 0.00000000 };
Point ( 1642 ) = { -4.11250000, 52.75000000, 0.00000000 };
Point ( 1643 ) = { -4.12083333, 52.75000000, 0.00000000 };
Point ( 1644 ) = { -4.12916667, 52.75000000, 0.00000000 };
Point ( 1645 ) = { -4.13750000, 52.75000000, 0.00000000 };
Point ( 1646 ) = { -4.14166667, 52.74583333, 0.00000000 };
Point ( 1647 ) = { -4.14166667, 52.73750000, 0.00000000 };
Point ( 1648 ) = { -4.14166667, 52.72916667, 0.00000000 };
Point ( 1649 ) = { -4.14166667, 52.72083333, 0.00000000 };
Point ( 1650 ) = { -4.14583333, 52.71666667, 0.00000000 };
Point ( 1651 ) = { -4.15416667, 52.71666667, 0.00000000 };
Point ( 1652 ) = { -4.16250000, 52.71666667, 0.00000000 };
Point ( 1653 ) = { -4.17083333, 52.71666667, 0.00000000 };
Point ( 1654 ) = { -4.17916667, 52.71666667, 0.00000000 };
Point ( 1655 ) = { -4.18750000, 52.71666667, 0.00000000 };
Point ( 1656 ) = { -4.19583333, 52.71666667, 0.00000000 };
Point ( 1657 ) = { -4.20416667, 52.71666667, 0.00000000 };
Point ( 1658 ) = { -4.21250000, 52.71666667, 0.00000000 };
Point ( 1659 ) = { -4.21666667, 52.71250000, 0.00000000 };
Point ( 1660 ) = { -4.22083333, 52.70833333, 0.00000000 };
Point ( 1661 ) = { -4.22500000, 52.70416667, 0.00000000 };
Point ( 1662 ) = { -4.22916667, 52.70000000, 0.00000000 };
Point ( 1663 ) = { -4.23333333, 52.69583333, 0.00000000 };
Point ( 1664 ) = { -4.23750000, 52.69166667, 0.00000000 };
Point ( 1665 ) = { -4.24583333, 52.69166667, 0.00000000 };
Point ( 1666 ) = { -4.25000000, 52.69583333, 0.00000000 };
Point ( 1667 ) = { -4.25416667, 52.70000000, 0.00000000 };
Point ( 1668 ) = { -4.26250000, 52.70000000, 0.00000000 };
Point ( 1669 ) = { -4.27083333, 52.70000000, 0.00000000 };
Point ( 1670 ) = { -4.27916667, 52.70000000, 0.00000000 };
Point ( 1671 ) = { -4.28750000, 52.70000000, 0.00000000 };
Point ( 1672 ) = { -4.29583333, 52.70000000, 0.00000000 };
Point ( 1673 ) = { -4.30000000, 52.69583333, 0.00000000 };
Point ( 1674 ) = { -4.30416667, 52.69166667, 0.00000000 };
Point ( 1675 ) = { -4.31250000, 52.69166667, 0.00000000 };
Point ( 1676 ) = { -4.31666667, 52.68750000, 0.00000000 };
Point ( 1677 ) = { -4.32083333, 52.68333333, 0.00000000 };
Point ( 1678 ) = { -4.32916667, 52.68333333, 0.00000000 };
Point ( 1679 ) = { -4.33750000, 52.68333333, 0.00000000 };
Point ( 1680 ) = { -4.34583333, 52.68333333, 0.00000000 };
Point ( 1681 ) = { -4.35416667, 52.68333333, 0.00000000 };
Point ( 1682 ) = { -4.36250000, 52.68333333, 0.00000000 };
Point ( 1683 ) = { -4.36666667, 52.68750000, 0.00000000 };
Point ( 1684 ) = { -4.37083333, 52.69166667, 0.00000000 };
Point ( 1685 ) = { -4.37500000, 52.69583333, 0.00000000 };
Point ( 1686 ) = { -4.37500000, 52.70416667, 0.00000000 };
Point ( 1687 ) = { -4.37500000, 52.71250000, 0.00000000 };
Point ( 1688 ) = { -4.37083333, 52.71666667, 0.00000000 };
Point ( 1689 ) = { -4.36666667, 52.72083333, 0.00000000 };
Point ( 1690 ) = { -4.36250000, 52.72500000, 0.00000000 };
Point ( 1691 ) = { -4.35416667, 52.72500000, 0.00000000 };
Point ( 1692 ) = { -4.34583333, 52.72500000, 0.00000000 };
Point ( 1693 ) = { -4.34166667, 52.72916667, 0.00000000 };
Point ( 1694 ) = { -4.33750000, 52.73333333, 0.00000000 };
Point ( 1695 ) = { -4.33333333, 52.73750000, 0.00000000 };
Point ( 1696 ) = { -4.32916667, 52.74166667, 0.00000000 };
Point ( 1697 ) = { -4.32083333, 52.74166667, 0.00000000 };
Point ( 1698 ) = { -4.31250000, 52.74166667, 0.00000000 };
Point ( 1699 ) = { -4.30833333, 52.74583333, 0.00000000 };
Point ( 1700 ) = { -4.30833333, 52.75416667, 0.00000000 };
Point ( 1701 ) = { -4.30416667, 52.75833333, 0.00000000 };
Point ( 1702 ) = { -4.30000000, 52.76250000, 0.00000000 };
Point ( 1703 ) = { -4.29583333, 52.76666667, 0.00000000 };
Point ( 1704 ) = { -4.29166667, 52.77083333, 0.00000000 };
Point ( 1705 ) = { -4.28750000, 52.77500000, 0.00000000 };
Point ( 1706 ) = { -4.28333333, 52.77916667, 0.00000000 };
Point ( 1707 ) = { -4.27916667, 52.78333333, 0.00000000 };
Point ( 1708 ) = { -4.27500000, 52.78750000, 0.00000000 };
Point ( 1709 ) = { -4.27083333, 52.79166667, 0.00000000 };
Point ( 1710 ) = { -4.26250000, 52.79166667, 0.00000000 };
Point ( 1711 ) = { -4.25833333, 52.79583333, 0.00000000 };
Point ( 1712 ) = { -4.25416667, 52.80000000, 0.00000000 };
Point ( 1713 ) = { -4.24583333, 52.80000000, 0.00000000 };
Point ( 1714 ) = { -4.24166667, 52.80416667, 0.00000000 };
Point ( 1715 ) = { -4.23750000, 52.80833333, 0.00000000 };
Point ( 1716 ) = { -4.22916667, 52.80833333, 0.00000000 };
Point ( 1717 ) = { -4.22500000, 52.81250000, 0.00000000 };
Point ( 1718 ) = { -4.22083333, 52.81666667, 0.00000000 };
Point ( 1719 ) = { -4.21250000, 52.81666667, 0.00000000 };
Point ( 1720 ) = { -4.20833333, 52.82083333, 0.00000000 };
Point ( 1721 ) = { -4.20416667, 52.82500000, 0.00000000 };
Point ( 1722 ) = { -4.20000000, 52.82916667, 0.00000000 };
Point ( 1723 ) = { -4.19583333, 52.83333333, 0.00000000 };
Point ( 1724 ) = { -4.19166667, 52.83750000, 0.00000000 };
Point ( 1725 ) = { -4.18750000, 52.84166667, 0.00000000 };
Point ( 1726 ) = { -4.18333333, 52.84583333, 0.00000000 };
Point ( 1727 ) = { -4.17916667, 52.85000000, 0.00000000 };
Point ( 1728 ) = { -4.17083333, 52.85000000, 0.00000000 };
Point ( 1729 ) = { -4.16666667, 52.85416667, 0.00000000 };
Point ( 1730 ) = { -4.16666667, 52.86250000, 0.00000000 };
Point ( 1731 ) = { -4.16666667, 52.87083333, 0.00000000 };
Point ( 1732 ) = { -4.17083333, 52.87500000, 0.00000000 };
Point ( 1733 ) = { -4.17500000, 52.87916667, 0.00000000 };
Point ( 1734 ) = { -4.17916667, 52.88333333, 0.00000000 };
Point ( 1735 ) = { -4.18333333, 52.88750000, 0.00000000 };
Point ( 1736 ) = { -4.18750000, 52.89166667, 0.00000000 };
Point ( 1737 ) = { -4.19166667, 52.89583333, 0.00000000 };
Point ( 1738 ) = { -4.19583333, 52.90000000, 0.00000000 };
Point ( 1739 ) = { -4.20416667, 52.90000000, 0.00000000 };
Point ( 1740 ) = { -4.20833333, 52.90416667, 0.00000000 };
Point ( 1741 ) = { -4.21250000, 52.90833333, 0.00000000 };
Point ( 1742 ) = { -4.22083333, 52.90833333, 0.00000000 };
Point ( 1743 ) = { -4.22916667, 52.90833333, 0.00000000 };
Point ( 1744 ) = { -4.23333333, 52.90416667, 0.00000000 };
Point ( 1745 ) = { -4.23750000, 52.90000000, 0.00000000 };
Point ( 1746 ) = { -4.24166667, 52.90416667, 0.00000000 };
Point ( 1747 ) = { -4.24583333, 52.90833333, 0.00000000 };
Point ( 1748 ) = { -4.25000000, 52.90416667, 0.00000000 };
Point ( 1749 ) = { -4.25416667, 52.90000000, 0.00000000 };
Point ( 1750 ) = { -4.26250000, 52.90000000, 0.00000000 };
Point ( 1751 ) = { -4.26666667, 52.89583333, 0.00000000 };
Point ( 1752 ) = { -4.27083333, 52.89166667, 0.00000000 };
Point ( 1753 ) = { -4.27916667, 52.89166667, 0.00000000 };
Point ( 1754 ) = { -4.28750000, 52.89166667, 0.00000000 };
Point ( 1755 ) = { -4.29583333, 52.89166667, 0.00000000 };
Point ( 1756 ) = { -4.30000000, 52.88750000, 0.00000000 };
Point ( 1757 ) = { -4.30416667, 52.88333333, 0.00000000 };
Point ( 1758 ) = { -4.30833333, 52.87916667, 0.00000000 };
Point ( 1759 ) = { -4.30833333, 52.87083333, 0.00000000 };
Point ( 1760 ) = { -4.31250000, 52.86666667, 0.00000000 };
Point ( 1761 ) = { -4.31666667, 52.87083333, 0.00000000 };
Point ( 1762 ) = { -4.32083333, 52.87500000, 0.00000000 };
Point ( 1763 ) = { -4.32916667, 52.87500000, 0.00000000 };
Point ( 1764 ) = { -4.33750000, 52.87500000, 0.00000000 };
Point ( 1765 ) = { -4.34583333, 52.87500000, 0.00000000 };
Point ( 1766 ) = { -4.35000000, 52.87083333, 0.00000000 };
Point ( 1767 ) = { -4.35416667, 52.86666667, 0.00000000 };
Point ( 1768 ) = { -4.35833333, 52.86250000, 0.00000000 };
Point ( 1769 ) = { -4.36250000, 52.85833333, 0.00000000 };
Point ( 1770 ) = { -4.36666667, 52.85416667, 0.00000000 };
Point ( 1771 ) = { -4.37083333, 52.85000000, 0.00000000 };
Point ( 1772 ) = { -4.37500000, 52.84583333, 0.00000000 };
Point ( 1773 ) = { -4.37916667, 52.84166667, 0.00000000 };
Point ( 1774 ) = { -4.38750000, 52.84166667, 0.00000000 };
Point ( 1775 ) = { -4.39166667, 52.83750000, 0.00000000 };
Point ( 1776 ) = { -4.39166667, 52.82916667, 0.00000000 };
Point ( 1777 ) = { -4.39583333, 52.82500000, 0.00000000 };
Point ( 1778 ) = { -4.40000000, 52.82916667, 0.00000000 };
Point ( 1779 ) = { -4.40416667, 52.83333333, 0.00000000 };
Point ( 1780 ) = { -4.41250000, 52.83333333, 0.00000000 };
Point ( 1781 ) = { -4.42083333, 52.83333333, 0.00000000 };
Point ( 1782 ) = { -4.42916667, 52.83333333, 0.00000000 };
Point ( 1783 ) = { -4.43333333, 52.82916667, 0.00000000 };
Point ( 1784 ) = { -4.43750000, 52.82500000, 0.00000000 };
Point ( 1785 ) = { -4.44583333, 52.82500000, 0.00000000 };
Point ( 1786 ) = { -4.45000000, 52.82083333, 0.00000000 };
Point ( 1787 ) = { -4.45416667, 52.81666667, 0.00000000 };
Point ( 1788 ) = { -4.46250000, 52.81666667, 0.00000000 };
Point ( 1789 ) = { -4.47083333, 52.81666667, 0.00000000 };
Point ( 1790 ) = { -4.47500000, 52.81250000, 0.00000000 };
Point ( 1791 ) = { -4.47500000, 52.80416667, 0.00000000 };
Point ( 1792 ) = { -4.47083333, 52.80000000, 0.00000000 };
Point ( 1793 ) = { -4.46666667, 52.80416667, 0.00000000 };
Point ( 1794 ) = { -4.46250000, 52.80833333, 0.00000000 };
Point ( 1795 ) = { -4.45833333, 52.80416667, 0.00000000 };
Point ( 1796 ) = { -4.46250000, 52.80000000, 0.00000000 };
Point ( 1797 ) = { -4.46666667, 52.79583333, 0.00000000 };
Point ( 1798 ) = { -4.47083333, 52.79166667, 0.00000000 };
Point ( 1799 ) = { -4.47916667, 52.79166667, 0.00000000 };
Point ( 1800 ) = { -4.48333333, 52.78750000, 0.00000000 };
Point ( 1801 ) = { -4.48750000, 52.78333333, 0.00000000 };
Point ( 1802 ) = { -4.49583333, 52.78333333, 0.00000000 };
Point ( 1803 ) = { -4.50416667, 52.78333333, 0.00000000 };
Point ( 1804 ) = { -4.50833333, 52.77916667, 0.00000000 };
Point ( 1805 ) = { -4.51250000, 52.77500000, 0.00000000 };
Point ( 1806 ) = { -4.51666667, 52.77083333, 0.00000000 };
Point ( 1807 ) = { -4.52083333, 52.76666667, 0.00000000 };
Point ( 1808 ) = { -4.52916667, 52.76666667, 0.00000000 };
Point ( 1809 ) = { -4.53333333, 52.77083333, 0.00000000 };
Point ( 1810 ) = { -4.53750000, 52.77500000, 0.00000000 };
Point ( 1811 ) = { -4.54583333, 52.77500000, 0.00000000 };
Point ( 1812 ) = { -4.55000000, 52.77916667, 0.00000000 };
Point ( 1813 ) = { -4.55000000, 52.78750000, 0.00000000 };
Point ( 1814 ) = { -4.55000000, 52.79583333, 0.00000000 };
Point ( 1815 ) = { -4.55416667, 52.80000000, 0.00000000 };
Point ( 1816 ) = { -4.55833333, 52.80416667, 0.00000000 };
Point ( 1817 ) = { -4.56250000, 52.80833333, 0.00000000 };
Point ( 1818 ) = { -4.57083333, 52.80833333, 0.00000000 };
Point ( 1819 ) = { -4.57916667, 52.80833333, 0.00000000 };
Point ( 1820 ) = { -4.58750000, 52.80833333, 0.00000000 };
Point ( 1821 ) = { -4.59583333, 52.80833333, 0.00000000 };
Point ( 1822 ) = { -4.60000000, 52.81250000, 0.00000000 };
Point ( 1823 ) = { -4.60416667, 52.81666667, 0.00000000 };
Point ( 1824 ) = { -4.60833333, 52.81250000, 0.00000000 };
Point ( 1825 ) = { -4.61250000, 52.80833333, 0.00000000 };
Point ( 1826 ) = { -4.61666667, 52.80416667, 0.00000000 };
Point ( 1827 ) = { -4.62083333, 52.80000000, 0.00000000 };
Point ( 1828 ) = { -4.62916667, 52.80000000, 0.00000000 };
Point ( 1829 ) = { -4.63333333, 52.79583333, 0.00000000 };
Point ( 1830 ) = { -4.63750000, 52.79166667, 0.00000000 };
Point ( 1831 ) = { -4.64583333, 52.79166667, 0.00000000 };
Point ( 1832 ) = { -4.65416667, 52.79166667, 0.00000000 };
Point ( 1833 ) = { -4.66250000, 52.79166667, 0.00000000 };
Point ( 1834 ) = { -4.67083333, 52.79166667, 0.00000000 };
Point ( 1835 ) = { -4.67916667, 52.79166667, 0.00000000 };
Point ( 1836 ) = { -4.68750000, 52.79166667, 0.00000000 };
Point ( 1837 ) = { -4.69166667, 52.78750000, 0.00000000 };
Point ( 1838 ) = { -4.69583333, 52.78333333, 0.00000000 };
Point ( 1839 ) = { -4.70416667, 52.78333333, 0.00000000 };
Point ( 1840 ) = { -4.70833333, 52.77916667, 0.00000000 };
Point ( 1841 ) = { -4.71250000, 52.77500000, 0.00000000 };
Point ( 1842 ) = { -4.72083333, 52.77500000, 0.00000000 };
Point ( 1843 ) = { -4.72500000, 52.77083333, 0.00000000 };
Point ( 1844 ) = { -4.72916667, 52.76666667, 0.00000000 };
Point ( 1845 ) = { -4.73750000, 52.76666667, 0.00000000 };
Point ( 1846 ) = { -4.74166667, 52.77083333, 0.00000000 };
Point ( 1847 ) = { -4.74583333, 52.77500000, 0.00000000 };
Point ( 1848 ) = { -4.75416667, 52.77500000, 0.00000000 };
Point ( 1849 ) = { -4.75833333, 52.77916667, 0.00000000 };
Point ( 1850 ) = { -4.76250000, 52.78333333, 0.00000000 };
Point ( 1851 ) = { -4.76666667, 52.78750000, 0.00000000 };
Point ( 1852 ) = { -4.77083333, 52.79166667, 0.00000000 };
Point ( 1853 ) = { -4.77500000, 52.79583333, 0.00000000 };
Point ( 1854 ) = { -4.77500000, 52.80416667, 0.00000000 };
Point ( 1855 ) = { -4.77083333, 52.80833333, 0.00000000 };
Point ( 1856 ) = { -4.76250000, 52.80833333, 0.00000000 };
Point ( 1857 ) = { -4.75833333, 52.81250000, 0.00000000 };
Point ( 1858 ) = { -4.76250000, 52.81666667, 0.00000000 };
Point ( 1859 ) = { -4.76666667, 52.82083333, 0.00000000 };
Point ( 1860 ) = { -4.76250000, 52.82500000, 0.00000000 };
Point ( 1861 ) = { -4.75833333, 52.82916667, 0.00000000 };
Point ( 1862 ) = { -4.75416667, 52.83333333, 0.00000000 };
Point ( 1863 ) = { -4.74583333, 52.83333333, 0.00000000 };
Point ( 1864 ) = { -4.74166667, 52.83750000, 0.00000000 };
Point ( 1865 ) = { -4.73750000, 52.84166667, 0.00000000 };
Point ( 1866 ) = { -4.73333333, 52.84583333, 0.00000000 };
Point ( 1867 ) = { -4.73333333, 52.85416667, 0.00000000 };
Point ( 1868 ) = { -4.72916667, 52.85833333, 0.00000000 };
Point ( 1869 ) = { -4.72500000, 52.86250000, 0.00000000 };
Point ( 1870 ) = { -4.72083333, 52.86666667, 0.00000000 };
Point ( 1871 ) = { -4.71250000, 52.86666667, 0.00000000 };
Point ( 1872 ) = { -4.70833333, 52.87083333, 0.00000000 };
Point ( 1873 ) = { -4.70416667, 52.87500000, 0.00000000 };
Point ( 1874 ) = { -4.69583333, 52.87500000, 0.00000000 };
Point ( 1875 ) = { -4.69166667, 52.87916667, 0.00000000 };
Point ( 1876 ) = { -4.68750000, 52.88333333, 0.00000000 };
Point ( 1877 ) = { -4.67916667, 52.88333333, 0.00000000 };
Point ( 1878 ) = { -4.67500000, 52.88750000, 0.00000000 };
Point ( 1879 ) = { -4.67083333, 52.89166667, 0.00000000 };
Point ( 1880 ) = { -4.66666667, 52.89583333, 0.00000000 };
Point ( 1881 ) = { -4.66250000, 52.90000000, 0.00000000 };
Point ( 1882 ) = { -4.65833333, 52.90416667, 0.00000000 };
Point ( 1883 ) = { -4.65416667, 52.90833333, 0.00000000 };
Point ( 1884 ) = { -4.64583333, 52.90833333, 0.00000000 };
Point ( 1885 ) = { -4.64166667, 52.91250000, 0.00000000 };
Point ( 1886 ) = { -4.63750000, 52.91666667, 0.00000000 };
Point ( 1887 ) = { -4.63333333, 52.92083333, 0.00000000 };
Point ( 1888 ) = { -4.62916667, 52.92500000, 0.00000000 };
Point ( 1889 ) = { -4.62083333, 52.92500000, 0.00000000 };
Point ( 1890 ) = { -4.61666667, 52.92916667, 0.00000000 };
Point ( 1891 ) = { -4.61250000, 52.93333333, 0.00000000 };
Point ( 1892 ) = { -4.60416667, 52.93333333, 0.00000000 };
Point ( 1893 ) = { -4.59583333, 52.93333333, 0.00000000 };
Point ( 1894 ) = { -4.59166667, 52.93750000, 0.00000000 };
Point ( 1895 ) = { -4.58750000, 52.94166667, 0.00000000 };
Point ( 1896 ) = { -4.58333333, 52.94583333, 0.00000000 };
Point ( 1897 ) = { -4.57916667, 52.95000000, 0.00000000 };
Point ( 1898 ) = { -4.57083333, 52.95000000, 0.00000000 };
Point ( 1899 ) = { -4.56666667, 52.95416667, 0.00000000 };
Point ( 1900 ) = { -4.56250000, 52.95833333, 0.00000000 };
Point ( 1901 ) = { -4.55416667, 52.95833333, 0.00000000 };
Point ( 1902 ) = { -4.55000000, 52.96250000, 0.00000000 };
Point ( 1903 ) = { -4.54583333, 52.96666667, 0.00000000 };
Point ( 1904 ) = { -4.53750000, 52.96666667, 0.00000000 };
Point ( 1905 ) = { -4.52916667, 52.96666667, 0.00000000 };
Point ( 1906 ) = { -4.52500000, 52.97083333, 0.00000000 };
Point ( 1907 ) = { -4.52083333, 52.97500000, 0.00000000 };
Point ( 1908 ) = { -4.51250000, 52.97500000, 0.00000000 };
Point ( 1909 ) = { -4.50416667, 52.97500000, 0.00000000 };
Point ( 1910 ) = { -4.49583333, 52.97500000, 0.00000000 };
Point ( 1911 ) = { -4.49166667, 52.97916667, 0.00000000 };
Point ( 1912 ) = { -4.48750000, 52.98333333, 0.00000000 };
Point ( 1913 ) = { -4.48333333, 52.98750000, 0.00000000 };
Point ( 1914 ) = { -4.47916667, 52.99166667, 0.00000000 };
Point ( 1915 ) = { -4.47500000, 52.99583333, 0.00000000 };
Point ( 1916 ) = { -4.47083333, 53.00000000, 0.00000000 };
Point ( 1917 ) = { -4.46666667, 53.00416667, 0.00000000 };
Point ( 1918 ) = { -4.46250000, 53.00833333, 0.00000000 };
Point ( 1919 ) = { -4.45833333, 53.01250000, 0.00000000 };
Point ( 1920 ) = { -4.45416667, 53.01666667, 0.00000000 };
Point ( 1921 ) = { -4.45000000, 53.02083333, 0.00000000 };
Point ( 1922 ) = { -4.44583333, 53.02500000, 0.00000000 };
Point ( 1923 ) = { -4.43750000, 53.02500000, 0.00000000 };
Point ( 1924 ) = { -4.42916667, 53.02500000, 0.00000000 };
Point ( 1925 ) = { -4.42083333, 53.02500000, 0.00000000 };
Point ( 1926 ) = { -4.41666667, 53.02083333, 0.00000000 };
Point ( 1927 ) = { -4.41666667, 53.01250000, 0.00000000 };
Point ( 1928 ) = { -4.41250000, 53.00833333, 0.00000000 };
Point ( 1929 ) = { -4.40416667, 53.00833333, 0.00000000 };
Point ( 1930 ) = { -4.40000000, 53.01250000, 0.00000000 };
Point ( 1931 ) = { -4.39583333, 53.01666667, 0.00000000 };
Point ( 1932 ) = { -4.39166667, 53.02083333, 0.00000000 };
Point ( 1933 ) = { -4.39166667, 53.02916667, 0.00000000 };
Point ( 1934 ) = { -4.39166667, 53.03750000, 0.00000000 };
Point ( 1935 ) = { -4.38750000, 53.04166667, 0.00000000 };
Point ( 1936 ) = { -4.38333333, 53.04583333, 0.00000000 };
Point ( 1937 ) = { -4.38333333, 53.05416667, 0.00000000 };
Point ( 1938 ) = { -4.38333333, 53.06250000, 0.00000000 };
Point ( 1939 ) = { -4.38333333, 53.07083333, 0.00000000 };
Point ( 1940 ) = { -4.38333333, 53.07916667, 0.00000000 };
Point ( 1941 ) = { -4.38333333, 53.08750000, 0.00000000 };
Point ( 1942 ) = { -4.38750000, 53.09166667, 0.00000000 };
Point ( 1943 ) = { -4.39166667, 53.09583333, 0.00000000 };
Point ( 1944 ) = { -4.39166667, 53.10416667, 0.00000000 };
Point ( 1945 ) = { -4.39583333, 53.10833333, 0.00000000 };
Point ( 1946 ) = { -4.40416667, 53.10833333, 0.00000000 };
Point ( 1947 ) = { -4.41250000, 53.10833333, 0.00000000 };
Point ( 1948 ) = { -4.41666667, 53.11250000, 0.00000000 };
Point ( 1949 ) = { -4.42083333, 53.11666667, 0.00000000 };
Point ( 1950 ) = { -4.42916667, 53.11666667, 0.00000000 };
Point ( 1951 ) = { -4.43333333, 53.12083333, 0.00000000 };
Point ( 1952 ) = { -4.43333333, 53.12916667, 0.00000000 };
Point ( 1953 ) = { -4.43750000, 53.13333333, 0.00000000 };
Point ( 1954 ) = { -4.44166667, 53.13750000, 0.00000000 };
Point ( 1955 ) = { -4.44583333, 53.14166667, 0.00000000 };
Point ( 1956 ) = { -4.45000000, 53.14583333, 0.00000000 };
Point ( 1957 ) = { -4.45416667, 53.15000000, 0.00000000 };
Point ( 1958 ) = { -4.46250000, 53.15000000, 0.00000000 };
Point ( 1959 ) = { -4.46666667, 53.15416667, 0.00000000 };
Point ( 1960 ) = { -4.47083333, 53.15833333, 0.00000000 };
Point ( 1961 ) = { -4.47916667, 53.15833333, 0.00000000 };
Point ( 1962 ) = { -4.48333333, 53.16250000, 0.00000000 };
Point ( 1963 ) = { -4.48750000, 53.16666667, 0.00000000 };
Point ( 1964 ) = { -4.49583333, 53.16666667, 0.00000000 };
Point ( 1965 ) = { -4.50000000, 53.17083333, 0.00000000 };
Point ( 1966 ) = { -4.50416667, 53.17500000, 0.00000000 };
Point ( 1967 ) = { -4.50833333, 53.17916667, 0.00000000 };
Point ( 1968 ) = { -4.51250000, 53.18333333, 0.00000000 };
Point ( 1969 ) = { -4.51666667, 53.18750000, 0.00000000 };
Point ( 1970 ) = { -4.51666667, 53.19583333, 0.00000000 };
Point ( 1971 ) = { -4.51666667, 53.20416667, 0.00000000 };
Point ( 1972 ) = { -4.51666667, 53.21250000, 0.00000000 };
Point ( 1973 ) = { -4.52083333, 53.21666667, 0.00000000 };
Point ( 1974 ) = { -4.52500000, 53.22083333, 0.00000000 };
Point ( 1975 ) = { -4.52916667, 53.22500000, 0.00000000 };
Point ( 1976 ) = { -4.53333333, 53.22916667, 0.00000000 };
Point ( 1977 ) = { -4.53750000, 53.23333333, 0.00000000 };
Point ( 1978 ) = { -4.54583333, 53.23333333, 0.00000000 };
Point ( 1979 ) = { -4.55000000, 53.23750000, 0.00000000 };
Point ( 1980 ) = { -4.55416667, 53.24166667, 0.00000000 };
Point ( 1981 ) = { -4.55833333, 53.23750000, 0.00000000 };
Point ( 1982 ) = { -4.56250000, 53.23333333, 0.00000000 };
Point ( 1983 ) = { -4.57083333, 53.23333333, 0.00000000 };
Point ( 1984 ) = { -4.57916667, 53.23333333, 0.00000000 };
Point ( 1985 ) = { -4.58750000, 53.23333333, 0.00000000 };
Point ( 1986 ) = { -4.59583333, 53.23333333, 0.00000000 };
Point ( 1987 ) = { -4.60416667, 53.23333333, 0.00000000 };
Point ( 1988 ) = { -4.61250000, 53.23333333, 0.00000000 };
Point ( 1989 ) = { -4.61666667, 53.23750000, 0.00000000 };
Point ( 1990 ) = { -4.61666667, 53.24583333, 0.00000000 };
Point ( 1991 ) = { -4.61666667, 53.25416667, 0.00000000 };
Point ( 1992 ) = { -4.62083333, 53.25833333, 0.00000000 };
Point ( 1993 ) = { -4.62500000, 53.26250000, 0.00000000 };
Point ( 1994 ) = { -4.62916667, 53.26666667, 0.00000000 };
Point ( 1995 ) = { -4.63333333, 53.27083333, 0.00000000 };
Point ( 1996 ) = { -4.63750000, 53.27500000, 0.00000000 };
Point ( 1997 ) = { -4.64583333, 53.27500000, 0.00000000 };
Point ( 1998 ) = { -4.65416667, 53.27500000, 0.00000000 };
Point ( 1999 ) = { -4.66250000, 53.27500000, 0.00000000 };
Point ( 2000 ) = { -4.67083333, 53.27500000, 0.00000000 };
Point ( 2001 ) = { -4.67500000, 53.27916667, 0.00000000 };
Point ( 2002 ) = { -4.67916667, 53.28333333, 0.00000000 };
Point ( 2003 ) = { -4.68750000, 53.28333333, 0.00000000 };
Point ( 2004 ) = { -4.69166667, 53.28750000, 0.00000000 };
Point ( 2005 ) = { -4.69166667, 53.29583333, 0.00000000 };
Point ( 2006 ) = { -4.69583333, 53.30000000, 0.00000000 };
Point ( 2007 ) = { -4.70000000, 53.30416667, 0.00000000 };
Point ( 2008 ) = { -4.70000000, 53.31250000, 0.00000000 };
Point ( 2009 ) = { -4.69583333, 53.31666667, 0.00000000 };
Point ( 2010 ) = { -4.68750000, 53.31666667, 0.00000000 };
Point ( 2011 ) = { -4.68333333, 53.32083333, 0.00000000 };
Point ( 2012 ) = { -4.67916667, 53.32500000, 0.00000000 };
Point ( 2013 ) = { -4.67083333, 53.32500000, 0.00000000 };
Point ( 2014 ) = { -4.66250000, 53.32500000, 0.00000000 };
Point ( 2015 ) = { -4.65416667, 53.32500000, 0.00000000 };
Point ( 2016 ) = { -4.64583333, 53.32500000, 0.00000000 };
Point ( 2017 ) = { -4.63750000, 53.32500000, 0.00000000 };
Point ( 2018 ) = { -4.63333333, 53.32083333, 0.00000000 };
Point ( 2019 ) = { -4.62916667, 53.31666667, 0.00000000 };
Point ( 2020 ) = { -4.62500000, 53.32083333, 0.00000000 };
Point ( 2021 ) = { -4.62083333, 53.32500000, 0.00000000 };
Point ( 2022 ) = { -4.61250000, 53.32500000, 0.00000000 };
Point ( 2023 ) = { -4.60416667, 53.32500000, 0.00000000 };
Point ( 2024 ) = { -4.59583333, 53.32500000, 0.00000000 };
Point ( 2025 ) = { -4.59166667, 53.32916667, 0.00000000 };
Point ( 2026 ) = { -4.58750000, 53.33333333, 0.00000000 };
Point ( 2027 ) = { -4.58333333, 53.33750000, 0.00000000 };
Point ( 2028 ) = { -4.58333333, 53.34583333, 0.00000000 };
Point ( 2029 ) = { -4.57916667, 53.35000000, 0.00000000 };
Point ( 2030 ) = { -4.57500000, 53.35416667, 0.00000000 };
Point ( 2031 ) = { -4.57500000, 53.36250000, 0.00000000 };
Point ( 2032 ) = { -4.57500000, 53.37083333, 0.00000000 };
Point ( 2033 ) = { -4.57500000, 53.37916667, 0.00000000 };
Point ( 2034 ) = { -4.57500000, 53.38750000, 0.00000000 };
Point ( 2035 ) = { -4.57500000, 53.39583333, 0.00000000 };
Point ( 2036 ) = { -4.57500000, 53.40416667, 0.00000000 };
Point ( 2037 ) = { -4.57083333, 53.40833333, 0.00000000 };
Point ( 2038 ) = { -4.56250000, 53.40833333, 0.00000000 };
Point ( 2039 ) = { -4.55416667, 53.40833333, 0.00000000 };
Point ( 2040 ) = { -4.54583333, 53.40833333, 0.00000000 };
Point ( 2041 ) = { -4.54166667, 53.41250000, 0.00000000 };
Point ( 2042 ) = { -4.53750000, 53.41666667, 0.00000000 };
Point ( 2043 ) = { -4.52916667, 53.41666667, 0.00000000 };
Point ( 2044 ) = { -4.52083333, 53.41666667, 0.00000000 };
Point ( 2045 ) = { -4.51250000, 53.41666667, 0.00000000 };
Point ( 2046 ) = { -4.50416667, 53.41666667, 0.00000000 };
Point ( 2047 ) = { -4.49583333, 53.41666667, 0.00000000 };
Point ( 2048 ) = { -4.49166667, 53.42083333, 0.00000000 };
Point ( 2049 ) = { -4.48750000, 53.42500000, 0.00000000 };
Point ( 2050 ) = { -4.47916667, 53.42500000, 0.00000000 };
Point ( 2051 ) = { -4.47083333, 53.42500000, 0.00000000 };
Point ( 2052 ) = { -4.46666667, 53.42083333, 0.00000000 };
Point ( 2053 ) = { -4.46250000, 53.41666667, 0.00000000 };
Point ( 2054 ) = { -4.45416667, 53.41666667, 0.00000000 };
Point ( 2055 ) = { -4.45000000, 53.42083333, 0.00000000 };
Point ( 2056 ) = { -4.44583333, 53.42500000, 0.00000000 };
Point ( 2057 ) = { -4.44166667, 53.42916667, 0.00000000 };
Point ( 2058 ) = { -4.43750000, 53.43333333, 0.00000000 };
Point ( 2059 ) = { -4.42916667, 53.43333333, 0.00000000 };
Point ( 2060 ) = { -4.42083333, 53.43333333, 0.00000000 };
Point ( 2061 ) = { -4.41250000, 53.43333333, 0.00000000 };
Point ( 2062 ) = { -4.40416667, 53.43333333, 0.00000000 };
Point ( 2063 ) = { -4.40000000, 53.42916667, 0.00000000 };
Point ( 2064 ) = { -4.39583333, 53.42500000, 0.00000000 };
Point ( 2065 ) = { -4.38750000, 53.42500000, 0.00000000 };
Point ( 2066 ) = { -4.37916667, 53.42500000, 0.00000000 };
Point ( 2067 ) = { -4.37083333, 53.42500000, 0.00000000 };
Point ( 2068 ) = { -4.36250000, 53.42500000, 0.00000000 };
Point ( 2069 ) = { -4.35833333, 53.42083333, 0.00000000 };
Point ( 2070 ) = { -4.35416667, 53.41666667, 0.00000000 };
Point ( 2071 ) = { -4.34583333, 53.41666667, 0.00000000 };
Point ( 2072 ) = { -4.34166667, 53.42083333, 0.00000000 };
Point ( 2073 ) = { -4.33750000, 53.42500000, 0.00000000 };
Point ( 2074 ) = { -4.33333333, 53.42083333, 0.00000000 };
Point ( 2075 ) = { -4.32916667, 53.41666667, 0.00000000 };
Point ( 2076 ) = { -4.32083333, 53.41666667, 0.00000000 };
Point ( 2077 ) = { -4.31250000, 53.41666667, 0.00000000 };
Point ( 2078 ) = { -4.30416667, 53.41666667, 0.00000000 };
Point ( 2079 ) = { -4.29583333, 53.41666667, 0.00000000 };
Point ( 2080 ) = { -4.28750000, 53.41666667, 0.00000000 };
Point ( 2081 ) = { -4.28333333, 53.41250000, 0.00000000 };
Point ( 2082 ) = { -4.27916667, 53.40833333, 0.00000000 };
Point ( 2083 ) = { -4.27500000, 53.40416667, 0.00000000 };
Point ( 2084 ) = { -4.27083333, 53.40000000, 0.00000000 };
Point ( 2085 ) = { -4.26666667, 53.39583333, 0.00000000 };
Point ( 2086 ) = { -4.26666667, 53.38750000, 0.00000000 };
Point ( 2087 ) = { -4.26666667, 53.37916667, 0.00000000 };
Point ( 2088 ) = { -4.26250000, 53.37500000, 0.00000000 };
Point ( 2089 ) = { -4.25416667, 53.37500000, 0.00000000 };
Point ( 2090 ) = { -4.24583333, 53.37500000, 0.00000000 };
Point ( 2091 ) = { -4.23750000, 53.37500000, 0.00000000 };
Point ( 2092 ) = { -4.22916667, 53.37500000, 0.00000000 };
Point ( 2093 ) = { -4.22500000, 53.37083333, 0.00000000 };
Point ( 2094 ) = { -4.22083333, 53.36666667, 0.00000000 };
Point ( 2095 ) = { -4.21250000, 53.36666667, 0.00000000 };
Point ( 2096 ) = { -4.20833333, 53.36250000, 0.00000000 };
Point ( 2097 ) = { -4.20416667, 53.35833333, 0.00000000 };
Point ( 2098 ) = { -4.20000000, 53.35416667, 0.00000000 };
Point ( 2099 ) = { -4.19583333, 53.35000000, 0.00000000 };
Point ( 2100 ) = { -4.18750000, 53.35000000, 0.00000000 };
Point ( 2101 ) = { -4.17916667, 53.35000000, 0.00000000 };
Point ( 2102 ) = { -4.17083333, 53.35000000, 0.00000000 };
Point ( 2103 ) = { -4.16666667, 53.34583333, 0.00000000 };
Point ( 2104 ) = { -4.16250000, 53.34166667, 0.00000000 };
Point ( 2105 ) = { -4.15416667, 53.34166667, 0.00000000 };
Point ( 2106 ) = { -4.14583333, 53.34166667, 0.00000000 };
Point ( 2107 ) = { -4.13750000, 53.34166667, 0.00000000 };
Point ( 2108 ) = { -4.12916667, 53.34166667, 0.00000000 };
Point ( 2109 ) = { -4.12500000, 53.33750000, 0.00000000 };
Point ( 2110 ) = { -4.12083333, 53.33333333, 0.00000000 };
Point ( 2111 ) = { -4.11250000, 53.33333333, 0.00000000 };
Point ( 2112 ) = { -4.10416667, 53.33333333, 0.00000000 };
Point ( 2113 ) = { -4.09583333, 53.33333333, 0.00000000 };
Point ( 2114 ) = { -4.09166667, 53.33750000, 0.00000000 };
Point ( 2115 ) = { -4.08750000, 53.34166667, 0.00000000 };
Point ( 2116 ) = { -4.07916667, 53.34166667, 0.00000000 };
Point ( 2117 ) = { -4.07083333, 53.34166667, 0.00000000 };
Point ( 2118 ) = { -4.06666667, 53.33750000, 0.00000000 };
Point ( 2119 ) = { -4.06250000, 53.33333333, 0.00000000 };
Point ( 2120 ) = { -4.05416667, 53.33333333, 0.00000000 };
Point ( 2121 ) = { -4.04583333, 53.33333333, 0.00000000 };
Point ( 2122 ) = { -4.04166667, 53.32916667, 0.00000000 };
Point ( 2123 ) = { -4.03750000, 53.32500000, 0.00000000 };
Point ( 2124 ) = { -4.02916667, 53.32500000, 0.00000000 };
Point ( 2125 ) = { -4.02083333, 53.32500000, 0.00000000 };
Point ( 2126 ) = { -4.01250000, 53.32500000, 0.00000000 };
Point ( 2127 ) = { -4.00416667, 53.32500000, 0.00000000 };
Point ( 2128 ) = { -4.00000000, 53.32083333, 0.00000000 };
Point ( 2129 ) = { -4.00000000, 53.31250000, 0.00000000 };
Point ( 2130 ) = { -3.99583333, 53.30833333, 0.00000000 };
Point ( 2131 ) = { -3.98750000, 53.30833333, 0.00000000 };
Point ( 2132 ) = { -3.98333333, 53.30416667, 0.00000000 };
Point ( 2133 ) = { -3.97916667, 53.30000000, 0.00000000 };
Point ( 2134 ) = { -3.97083333, 53.30000000, 0.00000000 };
Point ( 2135 ) = { -3.96250000, 53.30000000, 0.00000000 };
Point ( 2136 ) = { -3.95416667, 53.30000000, 0.00000000 };
Point ( 2137 ) = { -3.95000000, 53.30416667, 0.00000000 };
Point ( 2138 ) = { -3.94583333, 53.30833333, 0.00000000 };
Point ( 2139 ) = { -3.93750000, 53.30833333, 0.00000000 };
Point ( 2140 ) = { -3.93333333, 53.31250000, 0.00000000 };
Point ( 2141 ) = { -3.93333333, 53.32083333, 0.00000000 };
Point ( 2142 ) = { -3.93750000, 53.32500000, 0.00000000 };
Point ( 2143 ) = { -3.94166667, 53.32916667, 0.00000000 };
Point ( 2144 ) = { -3.94166667, 53.33750000, 0.00000000 };
Point ( 2145 ) = { -3.94583333, 53.34166667, 0.00000000 };
Point ( 2146 ) = { -3.95000000, 53.34583333, 0.00000000 };
Point ( 2147 ) = { -3.94583333, 53.35000000, 0.00000000 };
Point ( 2148 ) = { -3.93750000, 53.35000000, 0.00000000 };
Point ( 2149 ) = { -3.92916667, 53.35000000, 0.00000000 };
Point ( 2150 ) = { -3.92083333, 53.35000000, 0.00000000 };
Point ( 2151 ) = { -3.91250000, 53.35000000, 0.00000000 };
Point ( 2152 ) = { -3.90416667, 53.35000000, 0.00000000 };
Point ( 2153 ) = { -3.89583333, 53.35000000, 0.00000000 };
Point ( 2154 ) = { -3.89166667, 53.34583333, 0.00000000 };
Point ( 2155 ) = { -3.88750000, 53.34166667, 0.00000000 };
Point ( 2156 ) = { -3.88333333, 53.34583333, 0.00000000 };
Point ( 2157 ) = { -3.87916667, 53.35000000, 0.00000000 };
Point ( 2158 ) = { -3.87083333, 53.35000000, 0.00000000 };
Point ( 2159 ) = { -3.86250000, 53.35000000, 0.00000000 };
Point ( 2160 ) = { -3.85416667, 53.35000000, 0.00000000 };
Point ( 2161 ) = { -3.84583333, 53.35000000, 0.00000000 };
Point ( 2162 ) = { -3.83750000, 53.35000000, 0.00000000 };
Point ( 2163 ) = { -3.83333333, 53.34583333, 0.00000000 };
Point ( 2164 ) = { -3.82916667, 53.34166667, 0.00000000 };
Point ( 2165 ) = { -3.82083333, 53.34166667, 0.00000000 };
Point ( 2166 ) = { -3.81250000, 53.34166667, 0.00000000 };
Point ( 2167 ) = { -3.80416667, 53.34166667, 0.00000000 };
Point ( 2168 ) = { -3.79583333, 53.34166667, 0.00000000 };
Point ( 2169 ) = { -3.79166667, 53.33750000, 0.00000000 };
Point ( 2170 ) = { -3.78750000, 53.33333333, 0.00000000 };
Point ( 2171 ) = { -3.78333333, 53.33750000, 0.00000000 };
Point ( 2172 ) = { -3.77916667, 53.34166667, 0.00000000 };
Point ( 2173 ) = { -3.77500000, 53.33750000, 0.00000000 };
Point ( 2174 ) = { -3.77083333, 53.33333333, 0.00000000 };
Point ( 2175 ) = { -3.76250000, 53.33333333, 0.00000000 };
Point ( 2176 ) = { -3.75416667, 53.33333333, 0.00000000 };
Point ( 2177 ) = { -3.74583333, 53.33333333, 0.00000000 };
Point ( 2178 ) = { -3.73750000, 53.33333333, 0.00000000 };
Point ( 2179 ) = { -3.72916667, 53.33333333, 0.00000000 };
Point ( 2180 ) = { -3.72083333, 53.33333333, 0.00000000 };
Point ( 2181 ) = { -3.71250000, 53.33333333, 0.00000000 };
Point ( 2182 ) = { -3.70416667, 53.33333333, 0.00000000 };
Point ( 2183 ) = { -3.70000000, 53.33750000, 0.00000000 };
Point ( 2184 ) = { -3.69583333, 53.34166667, 0.00000000 };
Point ( 2185 ) = { -3.68750000, 53.34166667, 0.00000000 };
Point ( 2186 ) = { -3.67916667, 53.34166667, 0.00000000 };
Point ( 2187 ) = { -3.67500000, 53.34583333, 0.00000000 };
Point ( 2188 ) = { -3.67083333, 53.35000000, 0.00000000 };
Point ( 2189 ) = { -3.66250000, 53.35000000, 0.00000000 };
Point ( 2190 ) = { -3.65833333, 53.35416667, 0.00000000 };
Point ( 2191 ) = { -3.65416667, 53.35833333, 0.00000000 };
Point ( 2192 ) = { -3.64583333, 53.35833333, 0.00000000 };
Point ( 2193 ) = { -3.64166667, 53.36250000, 0.00000000 };
Point ( 2194 ) = { -3.64583333, 53.36666667, 0.00000000 };
Point ( 2195 ) = { -3.65416667, 53.36666667, 0.00000000 };
Point ( 2196 ) = { -3.66250000, 53.36666667, 0.00000000 };
Point ( 2197 ) = { -3.67083333, 53.36666667, 0.00000000 };
Point ( 2198 ) = { -3.67916667, 53.36666667, 0.00000000 };
Point ( 2199 ) = { -3.68750000, 53.36666667, 0.00000000 };
Point ( 2200 ) = { -3.69583333, 53.36666667, 0.00000000 };
Point ( 2201 ) = { -3.70000000, 53.37083333, 0.00000000 };
Point ( 2202 ) = { -3.69583333, 53.37500000, 0.00000000 };
Point ( 2203 ) = { -3.68750000, 53.37500000, 0.00000000 };
Point ( 2204 ) = { -3.67916667, 53.37500000, 0.00000000 };
Point ( 2205 ) = { -3.67500000, 53.37916667, 0.00000000 };
Point ( 2206 ) = { -3.67083333, 53.38333333, 0.00000000 };
Point ( 2207 ) = { -3.66250000, 53.38333333, 0.00000000 };
Point ( 2208 ) = { -3.65416667, 53.38333333, 0.00000000 };
Point ( 2209 ) = { -3.64583333, 53.38333333, 0.00000000 };
Point ( 2210 ) = { -3.63750000, 53.38333333, 0.00000000 };
Point ( 2211 ) = { -3.62916667, 53.38333333, 0.00000000 };
Point ( 2212 ) = { -3.62083333, 53.38333333, 0.00000000 };
Point ( 2213 ) = { -3.61250000, 53.38333333, 0.00000000 };
Point ( 2214 ) = { -3.60416667, 53.38333333, 0.00000000 };
Point ( 2215 ) = { -3.59583333, 53.38333333, 0.00000000 };
Point ( 2216 ) = { -3.58750000, 53.38333333, 0.00000000 };
Point ( 2217 ) = { -3.57916667, 53.38333333, 0.00000000 };
Point ( 2218 ) = { -3.57083333, 53.38333333, 0.00000000 };
Point ( 2219 ) = { -3.56250000, 53.38333333, 0.00000000 };
Point ( 2220 ) = { -3.55416667, 53.38333333, 0.00000000 };
Point ( 2221 ) = { -3.54583333, 53.38333333, 0.00000000 };
Point ( 2222 ) = { -3.53750000, 53.38333333, 0.00000000 };
Point ( 2223 ) = { -3.52916667, 53.38333333, 0.00000000 };
Point ( 2224 ) = { -3.52500000, 53.38750000, 0.00000000 };
Point ( 2225 ) = { -3.52083333, 53.39166667, 0.00000000 };
Point ( 2226 ) = { -3.51666667, 53.39583333, 0.00000000 };
Point ( 2227 ) = { -3.51250000, 53.40000000, 0.00000000 };
Point ( 2228 ) = { -3.50416667, 53.40000000, 0.00000000 };
Point ( 2229 ) = { -3.50000000, 53.40416667, 0.00000000 };
Point ( 2230 ) = { -3.49583333, 53.40833333, 0.00000000 };
Point ( 2231 ) = { -3.48750000, 53.40833333, 0.00000000 };
Point ( 2232 ) = { -3.47916667, 53.40833333, 0.00000000 };
Point ( 2233 ) = { -3.47500000, 53.41250000, 0.00000000 };
Point ( 2234 ) = { -3.47083333, 53.41666667, 0.00000000 };
Point ( 2235 ) = { -3.46250000, 53.41666667, 0.00000000 };
Point ( 2236 ) = { -3.45416667, 53.41666667, 0.00000000 };
Point ( 2237 ) = { -3.44583333, 53.41666667, 0.00000000 };
Point ( 2238 ) = { -3.43750000, 53.41666667, 0.00000000 };
Point ( 2239 ) = { -3.43333333, 53.42083333, 0.00000000 };
Point ( 2240 ) = { -3.42916667, 53.42500000, 0.00000000 };
Point ( 2241 ) = { -3.42083333, 53.42500000, 0.00000000 };
Point ( 2242 ) = { -3.41250000, 53.42500000, 0.00000000 };
Point ( 2243 ) = { -3.40416667, 53.42500000, 0.00000000 };
Point ( 2244 ) = { -3.39583333, 53.42500000, 0.00000000 };
Point ( 2245 ) = { -3.38750000, 53.42500000, 0.00000000 };
Point ( 2246 ) = { -3.37916667, 53.42500000, 0.00000000 };
Point ( 2247 ) = { -3.37500000, 53.42916667, 0.00000000 };
Point ( 2248 ) = { -3.37083333, 53.43333333, 0.00000000 };
Point ( 2249 ) = { -3.36250000, 53.43333333, 0.00000000 };
Point ( 2250 ) = { -3.35416667, 53.43333333, 0.00000000 };
Point ( 2251 ) = { -3.35000000, 53.42916667, 0.00000000 };
Point ( 2252 ) = { -3.34583333, 53.42500000, 0.00000000 };
Point ( 2253 ) = { -3.33750000, 53.42500000, 0.00000000 };
Point ( 2254 ) = { -3.33333333, 53.42916667, 0.00000000 };
Point ( 2255 ) = { -3.32916667, 53.43333333, 0.00000000 };
Point ( 2256 ) = { -3.32500000, 53.43750000, 0.00000000 };
Point ( 2257 ) = { -3.32083333, 53.44166667, 0.00000000 };
Point ( 2258 ) = { -3.31250000, 53.44166667, 0.00000000 };
Point ( 2259 ) = { -3.30416667, 53.44166667, 0.00000000 };
Point ( 2260 ) = { -3.29583333, 53.44166667, 0.00000000 };
Point ( 2261 ) = { -3.28750000, 53.44166667, 0.00000000 };
Point ( 2262 ) = { -3.27916667, 53.44166667, 0.00000000 };
Point ( 2263 ) = { -3.27500000, 53.44583333, 0.00000000 };
Point ( 2264 ) = { -3.27083333, 53.45000000, 0.00000000 };
Point ( 2265 ) = { -3.26666667, 53.45416667, 0.00000000 };
Point ( 2266 ) = { -3.26250000, 53.45833333, 0.00000000 };
Point ( 2267 ) = { -3.25416667, 53.45833333, 0.00000000 };
Point ( 2268 ) = { -3.24583333, 53.45833333, 0.00000000 };
Point ( 2269 ) = { -3.23750000, 53.45833333, 0.00000000 };
Point ( 2270 ) = { -3.22916667, 53.45833333, 0.00000000 };
Point ( 2271 ) = { -3.22500000, 53.46250000, 0.00000000 };
Point ( 2272 ) = { -3.22500000, 53.47083333, 0.00000000 };
Point ( 2273 ) = { -3.22916667, 53.47500000, 0.00000000 };
Point ( 2274 ) = { -3.23333333, 53.47916667, 0.00000000 };
Point ( 2275 ) = { -3.23750000, 53.48333333, 0.00000000 };
Point ( 2276 ) = { -3.24166667, 53.48750000, 0.00000000 };
Point ( 2277 ) = { -3.24583333, 53.49166667, 0.00000000 };
Point ( 2278 ) = { -3.25416667, 53.49166667, 0.00000000 };
Point ( 2279 ) = { -3.26250000, 53.49166667, 0.00000000 };
Point ( 2280 ) = { -3.27083333, 53.49166667, 0.00000000 };
Point ( 2281 ) = { -3.27500000, 53.48750000, 0.00000000 };
Point ( 2282 ) = { -3.27916667, 53.48333333, 0.00000000 };
Point ( 2283 ) = { -3.28333333, 53.48750000, 0.00000000 };
Point ( 2284 ) = { -3.28750000, 53.49166667, 0.00000000 };
Point ( 2285 ) = { -3.29583333, 53.49166667, 0.00000000 };
Point ( 2286 ) = { -3.30000000, 53.48750000, 0.00000000 };
Point ( 2287 ) = { -3.30416667, 53.48333333, 0.00000000 };
Point ( 2288 ) = { -3.30833333, 53.48750000, 0.00000000 };
Point ( 2289 ) = { -3.31250000, 53.49166667, 0.00000000 };
Point ( 2290 ) = { -3.32083333, 53.49166667, 0.00000000 };
Point ( 2291 ) = { -3.32500000, 53.49583333, 0.00000000 };
Point ( 2292 ) = { -3.32083333, 53.50000000, 0.00000000 };
Point ( 2293 ) = { -3.31666667, 53.50416667, 0.00000000 };
Point ( 2294 ) = { -3.31250000, 53.50833333, 0.00000000 };
Point ( 2295 ) = { -3.30416667, 53.50833333, 0.00000000 };
Point ( 2296 ) = { -3.29583333, 53.50833333, 0.00000000 };
Point ( 2297 ) = { -3.29166667, 53.51250000, 0.00000000 };
Point ( 2298 ) = { -3.28750000, 53.51666667, 0.00000000 };
Point ( 2299 ) = { -3.27916667, 53.51666667, 0.00000000 };
Point ( 2300 ) = { -3.27500000, 53.52083333, 0.00000000 };
Point ( 2301 ) = { -3.27500000, 53.52916667, 0.00000000 };
Point ( 2302 ) = { -3.27916667, 53.53333333, 0.00000000 };
Point ( 2303 ) = { -3.28333333, 53.53750000, 0.00000000 };
Point ( 2304 ) = { -3.28750000, 53.54166667, 0.00000000 };
Point ( 2305 ) = { -3.29166667, 53.54583333, 0.00000000 };
Point ( 2306 ) = { -3.28750000, 53.55000000, 0.00000000 };
Point ( 2307 ) = { -3.27916667, 53.55000000, 0.00000000 };
Point ( 2308 ) = { -3.27500000, 53.55416667, 0.00000000 };
Point ( 2309 ) = { -3.27083333, 53.55833333, 0.00000000 };
Point ( 2310 ) = { -3.26666667, 53.56250000, 0.00000000 };
Point ( 2311 ) = { -3.26666667, 53.57083333, 0.00000000 };
Point ( 2312 ) = { -3.26250000, 53.57500000, 0.00000000 };
Point ( 2313 ) = { -3.25416667, 53.57500000, 0.00000000 };
Point ( 2314 ) = { -3.25000000, 53.57916667, 0.00000000 };
Point ( 2315 ) = { -3.24583333, 53.58333333, 0.00000000 };
Point ( 2316 ) = { -3.23750000, 53.58333333, 0.00000000 };
Point ( 2317 ) = { -3.22916667, 53.58333333, 0.00000000 };
Point ( 2318 ) = { -3.22500000, 53.57916667, 0.00000000 };
Point ( 2319 ) = { -3.22083333, 53.57500000, 0.00000000 };
Point ( 2320 ) = { -3.21250000, 53.57500000, 0.00000000 };
Point ( 2321 ) = { -3.20833333, 53.57083333, 0.00000000 };
Point ( 2322 ) = { -3.20416667, 53.56666667, 0.00000000 };
Point ( 2323 ) = { -3.20000000, 53.56250000, 0.00000000 };
Point ( 2324 ) = { -3.20000000, 53.55416667, 0.00000000 };
Point ( 2325 ) = { -3.20000000, 53.54583333, 0.00000000 };
Point ( 2326 ) = { -3.20000000, 53.53750000, 0.00000000 };
Point ( 2327 ) = { -3.19583333, 53.53333333, 0.00000000 };
Point ( 2328 ) = { -3.18750000, 53.53333333, 0.00000000 };
Point ( 2329 ) = { -3.18333333, 53.52916667, 0.00000000 };
Point ( 2330 ) = { -3.17916667, 53.52500000, 0.00000000 };
Point ( 2331 ) = { -3.17083333, 53.52500000, 0.00000000 };
Point ( 2332 ) = { -3.16250000, 53.52500000, 0.00000000 };
Point ( 2333 ) = { -3.15416667, 53.52500000, 0.00000000 };
Point ( 2334 ) = { -3.14583333, 53.52500000, 0.00000000 };
Point ( 2335 ) = { -3.13750000, 53.52500000, 0.00000000 };
Point ( 2336 ) = { -3.13333333, 53.52083333, 0.00000000 };
Point ( 2337 ) = { -3.12916667, 53.51666667, 0.00000000 };
Point ( 2338 ) = { -3.12083333, 53.51666667, 0.00000000 };
Point ( 2339 ) = { -3.11250000, 53.51666667, 0.00000000 };
Point ( 2340 ) = { -3.10416667, 53.51666667, 0.00000000 };
Point ( 2341 ) = { -3.09583333, 53.51666667, 0.00000000 };
Point ( 2342 ) = { -3.08750000, 53.51666667, 0.00000000 };
Point ( 2343 ) = { -3.08333333, 53.52083333, 0.00000000 };
Point ( 2344 ) = { -3.08750000, 53.52500000, 0.00000000 };
Point ( 2345 ) = { -3.09166667, 53.52916667, 0.00000000 };
Point ( 2346 ) = { -3.09583333, 53.53333333, 0.00000000 };
Point ( 2347 ) = { -3.10416667, 53.53333333, 0.00000000 };
Point ( 2348 ) = { -3.10833333, 53.53750000, 0.00000000 };
Point ( 2349 ) = { -3.11250000, 53.54166667, 0.00000000 };
Point ( 2350 ) = { -3.11666667, 53.54583333, 0.00000000 };
Point ( 2351 ) = { -3.11666667, 53.55416667, 0.00000000 };
Point ( 2352 ) = { -3.11666667, 53.56250000, 0.00000000 };
Point ( 2353 ) = { -3.11666667, 53.57083333, 0.00000000 };
Point ( 2354 ) = { -3.11250000, 53.57500000, 0.00000000 };
Point ( 2355 ) = { -3.10416667, 53.57500000, 0.00000000 };
Point ( 2356 ) = { -3.10000000, 53.57916667, 0.00000000 };
Point ( 2357 ) = { -3.09583333, 53.58333333, 0.00000000 };
Point ( 2358 ) = { -3.09166667, 53.58750000, 0.00000000 };
Point ( 2359 ) = { -3.08750000, 53.59166667, 0.00000000 };
Point ( 2360 ) = { -3.08333333, 53.59583333, 0.00000000 };
Point ( 2361 ) = { -3.08333333, 53.60416667, 0.00000000 };
Point ( 2362 ) = { -3.07916667, 53.60833333, 0.00000000 };
Point ( 2363 ) = { -3.07500000, 53.61250000, 0.00000000 };
Point ( 2364 ) = { -3.07916667, 53.61666667, 0.00000000 };
Point ( 2365 ) = { -3.08750000, 53.61666667, 0.00000000 };
Point ( 2366 ) = { -3.09166667, 53.61250000, 0.00000000 };
Point ( 2367 ) = { -3.09583333, 53.60833333, 0.00000000 };
Point ( 2368 ) = { -3.10416667, 53.60833333, 0.00000000 };
Point ( 2369 ) = { -3.11250000, 53.60833333, 0.00000000 };
Point ( 2370 ) = { -3.11666667, 53.61250000, 0.00000000 };
Point ( 2371 ) = { -3.12083333, 53.61666667, 0.00000000 };
Point ( 2372 ) = { -3.12500000, 53.62083333, 0.00000000 };
Point ( 2373 ) = { -3.12916667, 53.62500000, 0.00000000 };
Point ( 2374 ) = { -3.13333333, 53.62916667, 0.00000000 };
Point ( 2375 ) = { -3.13750000, 53.63333333, 0.00000000 };
Point ( 2376 ) = { -3.14583333, 53.63333333, 0.00000000 };
Point ( 2377 ) = { -3.15416667, 53.63333333, 0.00000000 };
Point ( 2378 ) = { -3.16250000, 53.63333333, 0.00000000 };
Point ( 2379 ) = { -3.17083333, 53.63333333, 0.00000000 };
Point ( 2380 ) = { -3.17500000, 53.62916667, 0.00000000 };
Point ( 2381 ) = { -3.17916667, 53.62500000, 0.00000000 };
Point ( 2382 ) = { -3.18750000, 53.62500000, 0.00000000 };
Point ( 2383 ) = { -3.19583333, 53.62500000, 0.00000000 };
Point ( 2384 ) = { -3.20000000, 53.62916667, 0.00000000 };
Point ( 2385 ) = { -3.20416667, 53.63333333, 0.00000000 };
Point ( 2386 ) = { -3.20833333, 53.63750000, 0.00000000 };
Point ( 2387 ) = { -3.20416667, 53.64166667, 0.00000000 };
Point ( 2388 ) = { -3.20000000, 53.64583333, 0.00000000 };
Point ( 2389 ) = { -3.19583333, 53.65000000, 0.00000000 };
Point ( 2390 ) = { -3.19166667, 53.65416667, 0.00000000 };
Point ( 2391 ) = { -3.19166667, 53.66250000, 0.00000000 };
Point ( 2392 ) = { -3.19166667, 53.67083333, 0.00000000 };
Point ( 2393 ) = { -3.19166667, 53.67916667, 0.00000000 };
Point ( 2394 ) = { -3.19166667, 53.68750000, 0.00000000 };
Point ( 2395 ) = { -3.18750000, 53.69166667, 0.00000000 };
Point ( 2396 ) = { -3.18333333, 53.69583333, 0.00000000 };
Point ( 2397 ) = { -3.18750000, 53.70000000, 0.00000000 };
Point ( 2398 ) = { -3.19166667, 53.70416667, 0.00000000 };
Point ( 2399 ) = { -3.19166667, 53.71250000, 0.00000000 };
Point ( 2400 ) = { -3.18750000, 53.71666667, 0.00000000 };
Point ( 2401 ) = { -3.18333333, 53.72083333, 0.00000000 };
Point ( 2402 ) = { -3.18333333, 53.72916667, 0.00000000 };
Point ( 2403 ) = { -3.18333333, 53.73750000, 0.00000000 };
Point ( 2404 ) = { -3.18333333, 53.74583333, 0.00000000 };
Point ( 2405 ) = { -3.17916667, 53.75000000, 0.00000000 };
Point ( 2406 ) = { -3.17083333, 53.75000000, 0.00000000 };
Point ( 2407 ) = { -3.16666667, 53.74583333, 0.00000000 };
Point ( 2408 ) = { -3.16250000, 53.74166667, 0.00000000 };
Point ( 2409 ) = { -3.15416667, 53.74166667, 0.00000000 };
Point ( 2410 ) = { -3.14583333, 53.74166667, 0.00000000 };
Point ( 2411 ) = { -3.14166667, 53.74583333, 0.00000000 };
Point ( 2412 ) = { -3.14166667, 53.75416667, 0.00000000 };
Point ( 2413 ) = { -3.14166667, 53.76250000, 0.00000000 };
Point ( 2414 ) = { -3.14166667, 53.77083333, 0.00000000 };
Point ( 2415 ) = { -3.14166667, 53.77916667, 0.00000000 };
Point ( 2416 ) = { -3.14166667, 53.78750000, 0.00000000 };
Point ( 2417 ) = { -3.14166667, 53.79583333, 0.00000000 };
Point ( 2418 ) = { -3.14166667, 53.80416667, 0.00000000 };
Point ( 2419 ) = { -3.14166667, 53.81250000, 0.00000000 };
Point ( 2420 ) = { -3.14166667, 53.82083333, 0.00000000 };
Point ( 2421 ) = { -3.14166667, 53.82916667, 0.00000000 };
Point ( 2422 ) = { -3.14583333, 53.83333333, 0.00000000 };
Point ( 2423 ) = { -3.15416667, 53.83333333, 0.00000000 };
Point ( 2424 ) = { -3.15833333, 53.82916667, 0.00000000 };
Point ( 2425 ) = { -3.16250000, 53.82500000, 0.00000000 };
Point ( 2426 ) = { -3.17083333, 53.82500000, 0.00000000 };
Point ( 2427 ) = { -3.17916667, 53.82500000, 0.00000000 };
Point ( 2428 ) = { -3.18750000, 53.82500000, 0.00000000 };
Point ( 2429 ) = { -3.19583333, 53.82500000, 0.00000000 };
Point ( 2430 ) = { -3.20416667, 53.82500000, 0.00000000 };
Point ( 2431 ) = { -3.21250000, 53.82500000, 0.00000000 };
Point ( 2432 ) = { -3.22083333, 53.82500000, 0.00000000 };
Point ( 2433 ) = { -3.22916667, 53.82500000, 0.00000000 };
Point ( 2434 ) = { -3.23750000, 53.82500000, 0.00000000 };
Point ( 2435 ) = { -3.24583333, 53.82500000, 0.00000000 };
Point ( 2436 ) = { -3.25416667, 53.82500000, 0.00000000 };
Point ( 2437 ) = { -3.26250000, 53.82500000, 0.00000000 };
Point ( 2438 ) = { -3.27083333, 53.82500000, 0.00000000 };
Point ( 2439 ) = { -3.27500000, 53.82916667, 0.00000000 };
Point ( 2440 ) = { -3.27916667, 53.83333333, 0.00000000 };
Point ( 2441 ) = { -3.28750000, 53.83333333, 0.00000000 };
Point ( 2442 ) = { -3.29583333, 53.83333333, 0.00000000 };
Point ( 2443 ) = { -3.30416667, 53.83333333, 0.00000000 };
Point ( 2444 ) = { -3.30833333, 53.83750000, 0.00000000 };
Point ( 2445 ) = { -3.31250000, 53.84166667, 0.00000000 };
Point ( 2446 ) = { -3.32083333, 53.84166667, 0.00000000 };
Point ( 2447 ) = { -3.32916667, 53.84166667, 0.00000000 };
Point ( 2448 ) = { -3.33333333, 53.84583333, 0.00000000 };
Point ( 2449 ) = { -3.33750000, 53.85000000, 0.00000000 };
Point ( 2450 ) = { -3.34583333, 53.85000000, 0.00000000 };
Point ( 2451 ) = { -3.35000000, 53.85416667, 0.00000000 };
Point ( 2452 ) = { -3.35000000, 53.86250000, 0.00000000 };
Point ( 2453 ) = { -3.34583333, 53.86666667, 0.00000000 };
Point ( 2454 ) = { -3.33750000, 53.86666667, 0.00000000 };
Point ( 2455 ) = { -3.32916667, 53.86666667, 0.00000000 };
Point ( 2456 ) = { -3.32083333, 53.86666667, 0.00000000 };
Point ( 2457 ) = { -3.31250000, 53.86666667, 0.00000000 };
Point ( 2458 ) = { -3.30416667, 53.86666667, 0.00000000 };
Point ( 2459 ) = { -3.29583333, 53.86666667, 0.00000000 };
Point ( 2460 ) = { -3.28750000, 53.86666667, 0.00000000 };
Point ( 2461 ) = { -3.27916667, 53.86666667, 0.00000000 };
Point ( 2462 ) = { -3.27500000, 53.87083333, 0.00000000 };
Point ( 2463 ) = { -3.27083333, 53.87500000, 0.00000000 };
Point ( 2464 ) = { -3.26250000, 53.87500000, 0.00000000 };
Point ( 2465 ) = { -3.25416667, 53.87500000, 0.00000000 };
Point ( 2466 ) = { -3.24583333, 53.87500000, 0.00000000 };
Point ( 2467 ) = { -3.23750000, 53.87500000, 0.00000000 };
Point ( 2468 ) = { -3.23333333, 53.87916667, 0.00000000 };
Point ( 2469 ) = { -3.22916667, 53.88333333, 0.00000000 };
Point ( 2470 ) = { -3.22083333, 53.88333333, 0.00000000 };
Point ( 2471 ) = { -3.21250000, 53.88333333, 0.00000000 };
Point ( 2472 ) = { -3.20833333, 53.88750000, 0.00000000 };
Point ( 2473 ) = { -3.20416667, 53.89166667, 0.00000000 };
Point ( 2474 ) = { -3.19583333, 53.89166667, 0.00000000 };
Point ( 2475 ) = { -3.19166667, 53.89583333, 0.00000000 };
Point ( 2476 ) = { -3.18750000, 53.90000000, 0.00000000 };
Point ( 2477 ) = { -3.17916667, 53.90000000, 0.00000000 };
Point ( 2478 ) = { -3.17500000, 53.90416667, 0.00000000 };
Point ( 2479 ) = { -3.17083333, 53.90833333, 0.00000000 };
Point ( 2480 ) = { -3.16250000, 53.90833333, 0.00000000 };
Point ( 2481 ) = { -3.15416667, 53.90833333, 0.00000000 };
Point ( 2482 ) = { -3.15000000, 53.91250000, 0.00000000 };
Point ( 2483 ) = { -3.14583333, 53.91666667, 0.00000000 };
Point ( 2484 ) = { -3.13750000, 53.91666667, 0.00000000 };
Point ( 2485 ) = { -3.12916667, 53.91666667, 0.00000000 };
Point ( 2486 ) = { -3.12500000, 53.92083333, 0.00000000 };
Point ( 2487 ) = { -3.12083333, 53.92500000, 0.00000000 };
Point ( 2488 ) = { -3.11250000, 53.92500000, 0.00000000 };
Point ( 2489 ) = { -3.10416667, 53.92500000, 0.00000000 };
Point ( 2490 ) = { -3.09583333, 53.92500000, 0.00000000 };
Point ( 2491 ) = { -3.09166667, 53.92083333, 0.00000000 };
Point ( 2492 ) = { -3.08750000, 53.91666667, 0.00000000 };
Point ( 2493 ) = { -3.08333333, 53.92083333, 0.00000000 };
Point ( 2494 ) = { -3.07916667, 53.92500000, 0.00000000 };
Point ( 2495 ) = { -3.07500000, 53.92916667, 0.00000000 };
Point ( 2496 ) = { -3.07500000, 53.93750000, 0.00000000 };
Point ( 2497 ) = { -3.07083333, 53.94166667, 0.00000000 };
Point ( 2498 ) = { -3.06666667, 53.94583333, 0.00000000 };
Point ( 2499 ) = { -3.06250000, 53.95000000, 0.00000000 };
Point ( 2500 ) = { -3.05416667, 53.95000000, 0.00000000 };
Point ( 2501 ) = { -3.05000000, 53.95416667, 0.00000000 };
Point ( 2502 ) = { -3.04583333, 53.95833333, 0.00000000 };
Point ( 2503 ) = { -3.03750000, 53.95833333, 0.00000000 };
Point ( 2504 ) = { -3.03333333, 53.96250000, 0.00000000 };
Point ( 2505 ) = { -3.02916667, 53.96666667, 0.00000000 };
Point ( 2506 ) = { -3.02083333, 53.96666667, 0.00000000 };
Point ( 2507 ) = { -3.01250000, 53.96666667, 0.00000000 };
Point ( 2508 ) = { -3.00833333, 53.97083333, 0.00000000 };
Point ( 2509 ) = { -3.00416667, 53.97500000, 0.00000000 };
Point ( 2510 ) = { -3.00000000, 53.97916667, 0.00000000 };
Point ( 2511 ) = { -2.99583333, 53.98333333, 0.00000000 };
Point ( 2512 ) = { -2.99166667, 53.98750000, 0.00000000 };
Point ( 2513 ) = { -2.98750000, 53.99166667, 0.00000000 };
Point ( 2514 ) = { -2.98333333, 53.99583333, 0.00000000 };
Point ( 2515 ) = { -2.98750000, 54.00000000, 0.00000000 };
Point ( 2516 ) = { -2.99583333, 54.00000000, 0.00000000 };
Point ( 2517 ) = { -3.00000000, 54.00416667, 0.00000000 };
Point ( 2518 ) = { -3.00416667, 54.00833333, 0.00000000 };
Point ( 2519 ) = { -3.00833333, 54.00416667, 0.00000000 };
Point ( 2520 ) = { -3.01250000, 54.00000000, 0.00000000 };
Point ( 2521 ) = { -3.02083333, 54.00000000, 0.00000000 };
Point ( 2522 ) = { -3.02916667, 54.00000000, 0.00000000 };
Point ( 2523 ) = { -3.03333333, 53.99583333, 0.00000000 };
Point ( 2524 ) = { -3.03750000, 53.99166667, 0.00000000 };
Point ( 2525 ) = { -3.04583333, 53.99166667, 0.00000000 };
Point ( 2526 ) = { -3.05000000, 53.99583333, 0.00000000 };
Point ( 2527 ) = { -3.05416667, 54.00000000, 0.00000000 };
Point ( 2528 ) = { -3.05833333, 53.99583333, 0.00000000 };
Point ( 2529 ) = { -3.05833333, 53.98750000, 0.00000000 };
Point ( 2530 ) = { -3.06250000, 53.98333333, 0.00000000 };
Point ( 2531 ) = { -3.06666667, 53.97916667, 0.00000000 };
Point ( 2532 ) = { -3.07083333, 53.97500000, 0.00000000 };
Point ( 2533 ) = { -3.07916667, 53.97500000, 0.00000000 };
Point ( 2534 ) = { -3.08333333, 53.97083333, 0.00000000 };
Point ( 2535 ) = { -3.08750000, 53.96666667, 0.00000000 };
Point ( 2536 ) = { -3.09583333, 53.96666667, 0.00000000 };
Point ( 2537 ) = { -3.10000000, 53.96250000, 0.00000000 };
Point ( 2538 ) = { -3.10416667, 53.95833333, 0.00000000 };
Point ( 2539 ) = { -3.11250000, 53.95833333, 0.00000000 };
Point ( 2540 ) = { -3.12083333, 53.95833333, 0.00000000 };
Point ( 2541 ) = { -3.12500000, 53.95416667, 0.00000000 };
Point ( 2542 ) = { -3.12916667, 53.95000000, 0.00000000 };
Point ( 2543 ) = { -3.13750000, 53.95000000, 0.00000000 };
Point ( 2544 ) = { -3.14583333, 53.95000000, 0.00000000 };
Point ( 2545 ) = { -3.15416667, 53.95000000, 0.00000000 };
Point ( 2546 ) = { -3.16250000, 53.95000000, 0.00000000 };
Point ( 2547 ) = { -3.17083333, 53.95000000, 0.00000000 };
Point ( 2548 ) = { -3.17500000, 53.95416667, 0.00000000 };
Point ( 2549 ) = { -3.17916667, 53.95833333, 0.00000000 };
Point ( 2550 ) = { -3.18750000, 53.95833333, 0.00000000 };
Point ( 2551 ) = { -3.19583333, 53.95833333, 0.00000000 };
Point ( 2552 ) = { -3.20000000, 53.96250000, 0.00000000 };
Point ( 2553 ) = { -3.19583333, 53.96666667, 0.00000000 };
Point ( 2554 ) = { -3.19166667, 53.97083333, 0.00000000 };
Point ( 2555 ) = { -3.19583333, 53.97500000, 0.00000000 };
Point ( 2556 ) = { -3.20416667, 53.97500000, 0.00000000 };
Point ( 2557 ) = { -3.20833333, 53.97916667, 0.00000000 };
Point ( 2558 ) = { -3.21250000, 53.98333333, 0.00000000 };
Point ( 2559 ) = { -3.21666667, 53.98750000, 0.00000000 };
Point ( 2560 ) = { -3.22083333, 53.99166667, 0.00000000 };
Point ( 2561 ) = { -3.22916667, 53.99166667, 0.00000000 };
Point ( 2562 ) = { -3.23750000, 53.99166667, 0.00000000 };
Point ( 2563 ) = { -3.24166667, 53.99583333, 0.00000000 };
Point ( 2564 ) = { -3.24583333, 54.00000000, 0.00000000 };
Point ( 2565 ) = { -3.25416667, 54.00000000, 0.00000000 };
Point ( 2566 ) = { -3.26250000, 54.00000000, 0.00000000 };
Point ( 2567 ) = { -3.27083333, 54.00000000, 0.00000000 };
Point ( 2568 ) = { -3.27500000, 54.00416667, 0.00000000 };
Point ( 2569 ) = { -3.27916667, 54.00833333, 0.00000000 };
Point ( 2570 ) = { -3.28333333, 54.01250000, 0.00000000 };
Point ( 2571 ) = { -3.28333333, 54.02083333, 0.00000000 };
Point ( 2572 ) = { -3.28750000, 54.02500000, 0.00000000 };
Point ( 2573 ) = { -3.29583333, 54.02500000, 0.00000000 };
Point ( 2574 ) = { -3.30000000, 54.02916667, 0.00000000 };
Point ( 2575 ) = { -3.30000000, 54.03750000, 0.00000000 };
Point ( 2576 ) = { -3.30416667, 54.04166667, 0.00000000 };
Point ( 2577 ) = { -3.31250000, 54.04166667, 0.00000000 };
Point ( 2578 ) = { -3.31666667, 54.04583333, 0.00000000 };
Point ( 2579 ) = { -3.32083333, 54.05000000, 0.00000000 };
Point ( 2580 ) = { -3.32500000, 54.05416667, 0.00000000 };
Point ( 2581 ) = { -3.32500000, 54.06250000, 0.00000000 };
Point ( 2582 ) = { -3.32500000, 54.07083333, 0.00000000 };
Point ( 2583 ) = { -3.32916667, 54.07500000, 0.00000000 };
Point ( 2584 ) = { -3.33333333, 54.07916667, 0.00000000 };
Point ( 2585 ) = { -3.33333333, 54.08750000, 0.00000000 };
Point ( 2586 ) = { -3.33333333, 54.09583333, 0.00000000 };
Point ( 2587 ) = { -3.33750000, 54.10000000, 0.00000000 };
Point ( 2588 ) = { -3.34166667, 54.10416667, 0.00000000 };
Point ( 2589 ) = { -3.34166667, 54.11250000, 0.00000000 };
Point ( 2590 ) = { -3.34583333, 54.11666667, 0.00000000 };
Point ( 2591 ) = { -3.35000000, 54.12083333, 0.00000000 };
Point ( 2592 ) = { -3.35000000, 54.12916667, 0.00000000 };
Point ( 2593 ) = { -3.35000000, 54.13750000, 0.00000000 };
Point ( 2594 ) = { -3.35000000, 54.14583333, 0.00000000 };
Point ( 2595 ) = { -3.35000000, 54.15416667, 0.00000000 };
Point ( 2596 ) = { -3.35000000, 54.16250000, 0.00000000 };
Point ( 2597 ) = { -3.35000000, 54.17083333, 0.00000000 };
Point ( 2598 ) = { -3.35416667, 54.17500000, 0.00000000 };
Point ( 2599 ) = { -3.35833333, 54.17916667, 0.00000000 };
Point ( 2600 ) = { -3.35833333, 54.18750000, 0.00000000 };
Point ( 2601 ) = { -3.36250000, 54.19166667, 0.00000000 };
Point ( 2602 ) = { -3.37083333, 54.19166667, 0.00000000 };
Point ( 2603 ) = { -3.37916667, 54.19166667, 0.00000000 };
Point ( 2604 ) = { -3.38750000, 54.19166667, 0.00000000 };
Point ( 2605 ) = { -3.39166667, 54.19583333, 0.00000000 };
Point ( 2606 ) = { -3.39583333, 54.20000000, 0.00000000 };
Point ( 2607 ) = { -3.40000000, 54.20416667, 0.00000000 };
Point ( 2608 ) = { -3.40416667, 54.20833333, 0.00000000 };
Point ( 2609 ) = { -3.41250000, 54.20833333, 0.00000000 };
Point ( 2610 ) = { -3.41666667, 54.21250000, 0.00000000 };
Point ( 2611 ) = { -3.42083333, 54.21666667, 0.00000000 };
Point ( 2612 ) = { -3.42500000, 54.22083333, 0.00000000 };
Point ( 2613 ) = { -3.42083333, 54.22500000, 0.00000000 };
Point ( 2614 ) = { -3.41666667, 54.22916667, 0.00000000 };
Point ( 2615 ) = { -3.41250000, 54.23333333, 0.00000000 };
Point ( 2616 ) = { -3.40833333, 54.23750000, 0.00000000 };
Point ( 2617 ) = { -3.40416667, 54.24166667, 0.00000000 };
Point ( 2618 ) = { -3.40000000, 54.24583333, 0.00000000 };
Point ( 2619 ) = { -3.40000000, 54.25416667, 0.00000000 };
Point ( 2620 ) = { -3.40416667, 54.25833333, 0.00000000 };
Point ( 2621 ) = { -3.40833333, 54.26250000, 0.00000000 };
Point ( 2622 ) = { -3.41250000, 54.26666667, 0.00000000 };
Point ( 2623 ) = { -3.42083333, 54.26666667, 0.00000000 };
Point ( 2624 ) = { -3.42500000, 54.27083333, 0.00000000 };
Point ( 2625 ) = { -3.42916667, 54.27500000, 0.00000000 };
Point ( 2626 ) = { -3.43333333, 54.27916667, 0.00000000 };
Point ( 2627 ) = { -3.43333333, 54.28750000, 0.00000000 };
Point ( 2628 ) = { -3.42916667, 54.29166667, 0.00000000 };
Point ( 2629 ) = { -3.42500000, 54.29583333, 0.00000000 };
Point ( 2630 ) = { -3.42083333, 54.30000000, 0.00000000 };
Point ( 2631 ) = { -3.41666667, 54.30416667, 0.00000000 };
Point ( 2632 ) = { -3.42083333, 54.30833333, 0.00000000 };
Point ( 2633 ) = { -3.42916667, 54.30833333, 0.00000000 };
Point ( 2634 ) = { -3.43750000, 54.30833333, 0.00000000 };
Point ( 2635 ) = { -3.44583333, 54.30833333, 0.00000000 };
Point ( 2636 ) = { -3.45416667, 54.30833333, 0.00000000 };
Point ( 2637 ) = { -3.45833333, 54.31250000, 0.00000000 };
Point ( 2638 ) = { -3.45833333, 54.32083333, 0.00000000 };
Point ( 2639 ) = { -3.45833333, 54.32916667, 0.00000000 };
Point ( 2640 ) = { -3.46250000, 54.33333333, 0.00000000 };
Point ( 2641 ) = { -3.46666667, 54.33750000, 0.00000000 };
Point ( 2642 ) = { -3.46666667, 54.34583333, 0.00000000 };
Point ( 2643 ) = { -3.47083333, 54.35000000, 0.00000000 };
Point ( 2644 ) = { -3.47500000, 54.35416667, 0.00000000 };
Point ( 2645 ) = { -3.47916667, 54.35833333, 0.00000000 };
Point ( 2646 ) = { -3.48333333, 54.36250000, 0.00000000 };
Point ( 2647 ) = { -3.48750000, 54.36666667, 0.00000000 };
Point ( 2648 ) = { -3.49166667, 54.37083333, 0.00000000 };
Point ( 2649 ) = { -3.49583333, 54.37500000, 0.00000000 };
Point ( 2650 ) = { -3.50416667, 54.37500000, 0.00000000 };
Point ( 2651 ) = { -3.51250000, 54.37500000, 0.00000000 };
Point ( 2652 ) = { -3.51666667, 54.37916667, 0.00000000 };
Point ( 2653 ) = { -3.52083333, 54.38333333, 0.00000000 };
Point ( 2654 ) = { -3.52916667, 54.38333333, 0.00000000 };
Point ( 2655 ) = { -3.53750000, 54.38333333, 0.00000000 };
Point ( 2656 ) = { -3.54166667, 54.38750000, 0.00000000 };
Point ( 2657 ) = { -3.54166667, 54.39583333, 0.00000000 };
Point ( 2658 ) = { -3.54583333, 54.40000000, 0.00000000 };
Point ( 2659 ) = { -3.55000000, 54.40416667, 0.00000000 };
Point ( 2660 ) = { -3.55416667, 54.40833333, 0.00000000 };
Point ( 2661 ) = { -3.55833333, 54.41250000, 0.00000000 };
Point ( 2662 ) = { -3.56250000, 54.41666667, 0.00000000 };
Point ( 2663 ) = { -3.56666667, 54.42083333, 0.00000000 };
Point ( 2664 ) = { -3.57083333, 54.42500000, 0.00000000 };
Point ( 2665 ) = { -3.57500000, 54.42916667, 0.00000000 };
Point ( 2666 ) = { -3.57500000, 54.43750000, 0.00000000 };
Point ( 2667 ) = { -3.57500000, 54.44583333, 0.00000000 };
Point ( 2668 ) = { -3.57916667, 54.45000000, 0.00000000 };
Point ( 2669 ) = { -3.58333333, 54.45416667, 0.00000000 };
Point ( 2670 ) = { -3.58750000, 54.45833333, 0.00000000 };
Point ( 2671 ) = { -3.59583333, 54.45833333, 0.00000000 };
Point ( 2672 ) = { -3.60416667, 54.45833333, 0.00000000 };
Point ( 2673 ) = { -3.60833333, 54.45416667, 0.00000000 };
Point ( 2674 ) = { -3.60416667, 54.45000000, 0.00000000 };
Point ( 2675 ) = { -3.60000000, 54.44583333, 0.00000000 };
Point ( 2676 ) = { -3.60416667, 54.44166667, 0.00000000 };
Point ( 2677 ) = { -3.61250000, 54.44166667, 0.00000000 };
Point ( 2678 ) = { -3.61666667, 54.44583333, 0.00000000 };
Point ( 2679 ) = { -3.61666667, 54.45416667, 0.00000000 };
Point ( 2680 ) = { -3.62083333, 54.45833333, 0.00000000 };
Point ( 2681 ) = { -3.62500000, 54.46250000, 0.00000000 };
Point ( 2682 ) = { -3.62916667, 54.46666667, 0.00000000 };
Point ( 2683 ) = { -3.63333333, 54.47083333, 0.00000000 };
Point ( 2684 ) = { -3.63750000, 54.47500000, 0.00000000 };
Point ( 2685 ) = { -3.64583333, 54.47500000, 0.00000000 };
Point ( 2686 ) = { -3.65000000, 54.47916667, 0.00000000 };
Point ( 2687 ) = { -3.65000000, 54.48750000, 0.00000000 };
Point ( 2688 ) = { -3.65416667, 54.49166667, 0.00000000 };
Point ( 2689 ) = { -3.65833333, 54.49583333, 0.00000000 };
Point ( 2690 ) = { -3.65833333, 54.50416667, 0.00000000 };
Point ( 2691 ) = { -3.65416667, 54.50833333, 0.00000000 };
Point ( 2692 ) = { -3.65000000, 54.51250000, 0.00000000 };
Point ( 2693 ) = { -3.65000000, 54.52083333, 0.00000000 };
Point ( 2694 ) = { -3.64583333, 54.52500000, 0.00000000 };
Point ( 2695 ) = { -3.64166667, 54.52916667, 0.00000000 };
Point ( 2696 ) = { -3.63750000, 54.53333333, 0.00000000 };
Point ( 2697 ) = { -3.62916667, 54.53333333, 0.00000000 };
Point ( 2698 ) = { -3.62500000, 54.53750000, 0.00000000 };
Point ( 2699 ) = { -3.62916667, 54.54166667, 0.00000000 };
Point ( 2700 ) = { -3.63333333, 54.54583333, 0.00000000 };
Point ( 2701 ) = { -3.62916667, 54.55000000, 0.00000000 };
Point ( 2702 ) = { -3.62500000, 54.55416667, 0.00000000 };
Point ( 2703 ) = { -3.62500000, 54.56250000, 0.00000000 };
Point ( 2704 ) = { -3.62500000, 54.57083333, 0.00000000 };
Point ( 2705 ) = { -3.62500000, 54.57916667, 0.00000000 };
Point ( 2706 ) = { -3.62916667, 54.58333333, 0.00000000 };
Point ( 2707 ) = { -3.63333333, 54.58750000, 0.00000000 };
Point ( 2708 ) = { -3.63333333, 54.59583333, 0.00000000 };
Point ( 2709 ) = { -3.62916667, 54.60000000, 0.00000000 };
Point ( 2710 ) = { -3.62500000, 54.60416667, 0.00000000 };
Point ( 2711 ) = { -3.62083333, 54.60833333, 0.00000000 };
Point ( 2712 ) = { -3.61250000, 54.60833333, 0.00000000 };
Point ( 2713 ) = { -3.60416667, 54.60833333, 0.00000000 };
Point ( 2714 ) = { -3.60000000, 54.61250000, 0.00000000 };
Point ( 2715 ) = { -3.60000000, 54.62083333, 0.00000000 };
Point ( 2716 ) = { -3.60000000, 54.62916667, 0.00000000 };
Point ( 2717 ) = { -3.60000000, 54.63750000, 0.00000000 };
Point ( 2718 ) = { -3.60000000, 54.64583333, 0.00000000 };
Point ( 2719 ) = { -3.60000000, 54.65416667, 0.00000000 };
Point ( 2720 ) = { -3.59583333, 54.65833333, 0.00000000 };
Point ( 2721 ) = { -3.59166667, 54.66250000, 0.00000000 };
Point ( 2722 ) = { -3.59166667, 54.67083333, 0.00000000 };
Point ( 2723 ) = { -3.59166667, 54.67916667, 0.00000000 };
Point ( 2724 ) = { -3.59166667, 54.68750000, 0.00000000 };
Point ( 2725 ) = { -3.58750000, 54.69166667, 0.00000000 };
Point ( 2726 ) = { -3.58333333, 54.69583333, 0.00000000 };
Point ( 2727 ) = { -3.58333333, 54.70416667, 0.00000000 };
Point ( 2728 ) = { -3.57916667, 54.70833333, 0.00000000 };
Point ( 2729 ) = { -3.57500000, 54.71250000, 0.00000000 };
Point ( 2730 ) = { -3.57500000, 54.72083333, 0.00000000 };
Point ( 2731 ) = { -3.57083333, 54.72500000, 0.00000000 };
Point ( 2732 ) = { -3.56666667, 54.72916667, 0.00000000 };
Point ( 2733 ) = { -3.56666667, 54.73750000, 0.00000000 };
Point ( 2734 ) = { -3.57083333, 54.74166667, 0.00000000 };
Point ( 2735 ) = { -3.57916667, 54.74166667, 0.00000000 };
Point ( 2736 ) = { -3.58333333, 54.73750000, 0.00000000 };
Point ( 2737 ) = { -3.58750000, 54.73333333, 0.00000000 };
Point ( 2738 ) = { -3.59583333, 54.73333333, 0.00000000 };
Point ( 2739 ) = { -3.60000000, 54.73750000, 0.00000000 };
Point ( 2740 ) = { -3.60416667, 54.74166667, 0.00000000 };
Point ( 2741 ) = { -3.60833333, 54.73750000, 0.00000000 };
Point ( 2742 ) = { -3.61250000, 54.73333333, 0.00000000 };
Point ( 2743 ) = { -3.61666667, 54.72916667, 0.00000000 };
Point ( 2744 ) = { -3.62083333, 54.72500000, 0.00000000 };
Point ( 2745 ) = { -3.62500000, 54.72083333, 0.00000000 };
Point ( 2746 ) = { -3.62916667, 54.71666667, 0.00000000 };
Point ( 2747 ) = { -3.63333333, 54.71250000, 0.00000000 };
Point ( 2748 ) = { -3.63750000, 54.70833333, 0.00000000 };
Point ( 2749 ) = { -3.64166667, 54.70416667, 0.00000000 };
Point ( 2750 ) = { -3.64166667, 54.69583333, 0.00000000 };
Point ( 2751 ) = { -3.64583333, 54.69166667, 0.00000000 };
Point ( 2752 ) = { -3.65000000, 54.68750000, 0.00000000 };
Point ( 2753 ) = { -3.65416667, 54.68333333, 0.00000000 };
Point ( 2754 ) = { -3.65833333, 54.67916667, 0.00000000 };
Point ( 2755 ) = { -3.66250000, 54.67500000, 0.00000000 };
Point ( 2756 ) = { -3.66666667, 54.67083333, 0.00000000 };
Point ( 2757 ) = { -3.67083333, 54.66666667, 0.00000000 };
Point ( 2758 ) = { -3.67500000, 54.66250000, 0.00000000 };
Point ( 2759 ) = { -3.67916667, 54.65833333, 0.00000000 };
Point ( 2760 ) = { -3.68750000, 54.65833333, 0.00000000 };
Point ( 2761 ) = { -3.69166667, 54.65416667, 0.00000000 };
Point ( 2762 ) = { -3.69166667, 54.64583333, 0.00000000 };
Point ( 2763 ) = { -3.69583333, 54.64166667, 0.00000000 };
Point ( 2764 ) = { -3.70000000, 54.64583333, 0.00000000 };
Point ( 2765 ) = { -3.70416667, 54.65000000, 0.00000000 };
Point ( 2766 ) = { -3.70833333, 54.65416667, 0.00000000 };
Point ( 2767 ) = { -3.70416667, 54.65833333, 0.00000000 };
Point ( 2768 ) = { -3.70000000, 54.66250000, 0.00000000 };
Point ( 2769 ) = { -3.69583333, 54.66666667, 0.00000000 };
Point ( 2770 ) = { -3.69166667, 54.67083333, 0.00000000 };
Point ( 2771 ) = { -3.68750000, 54.67500000, 0.00000000 };
Point ( 2772 ) = { -3.68333333, 54.67916667, 0.00000000 };
Point ( 2773 ) = { -3.67916667, 54.68333333, 0.00000000 };
Point ( 2774 ) = { -3.67500000, 54.68750000, 0.00000000 };
Point ( 2775 ) = { -3.67500000, 54.69583333, 0.00000000 };
Point ( 2776 ) = { -3.67083333, 54.70000000, 0.00000000 };
Point ( 2777 ) = { -3.66250000, 54.70000000, 0.00000000 };
Point ( 2778 ) = { -3.65833333, 54.70416667, 0.00000000 };
Point ( 2779 ) = { -3.65416667, 54.70833333, 0.00000000 };
Point ( 2780 ) = { -3.65000000, 54.71250000, 0.00000000 };
Point ( 2781 ) = { -3.65416667, 54.71666667, 0.00000000 };
Point ( 2782 ) = { -3.66250000, 54.71666667, 0.00000000 };
Point ( 2783 ) = { -3.67083333, 54.71666667, 0.00000000 };
Point ( 2784 ) = { -3.67916667, 54.71666667, 0.00000000 };
Point ( 2785 ) = { -3.68333333, 54.71250000, 0.00000000 };
Point ( 2786 ) = { -3.68750000, 54.70833333, 0.00000000 };
Point ( 2787 ) = { -3.69583333, 54.70833333, 0.00000000 };
Point ( 2788 ) = { -3.70416667, 54.70833333, 0.00000000 };
Point ( 2789 ) = { -3.71250000, 54.70833333, 0.00000000 };
Point ( 2790 ) = { -3.72083333, 54.70833333, 0.00000000 };
Point ( 2791 ) = { -3.72916667, 54.70833333, 0.00000000 };
Point ( 2792 ) = { -3.73750000, 54.70833333, 0.00000000 };
Point ( 2793 ) = { -3.74583333, 54.70833333, 0.00000000 };
Point ( 2794 ) = { -3.75416667, 54.70833333, 0.00000000 };
Point ( 2795 ) = { -3.76250000, 54.70833333, 0.00000000 };
Point ( 2796 ) = { -3.77083333, 54.70833333, 0.00000000 };
Point ( 2797 ) = { -3.77500000, 54.71250000, 0.00000000 };
Point ( 2798 ) = { -3.77916667, 54.71666667, 0.00000000 };
Point ( 2799 ) = { -3.78333333, 54.72083333, 0.00000000 };
Point ( 2800 ) = { -3.78333333, 54.72916667, 0.00000000 };
Point ( 2801 ) = { -3.77916667, 54.73333333, 0.00000000 };
Point ( 2802 ) = { -3.77500000, 54.73750000, 0.00000000 };
Point ( 2803 ) = { -3.77500000, 54.74583333, 0.00000000 };
Point ( 2804 ) = { -3.77500000, 54.75416667, 0.00000000 };
Point ( 2805 ) = { -3.77916667, 54.75833333, 0.00000000 };
Point ( 2806 ) = { -3.78333333, 54.76250000, 0.00000000 };
Point ( 2807 ) = { -3.78750000, 54.76666667, 0.00000000 };
Point ( 2808 ) = { -3.79583333, 54.76666667, 0.00000000 };
Point ( 2809 ) = { -3.80000000, 54.77083333, 0.00000000 };
Point ( 2810 ) = { -3.80416667, 54.77500000, 0.00000000 };
Point ( 2811 ) = { -3.80833333, 54.77916667, 0.00000000 };
Point ( 2812 ) = { -3.81250000, 54.78333333, 0.00000000 };
Point ( 2813 ) = { -3.82083333, 54.78333333, 0.00000000 };
Point ( 2814 ) = { -3.82500000, 54.77916667, 0.00000000 };
Point ( 2815 ) = { -3.82916667, 54.77500000, 0.00000000 };
Point ( 2816 ) = { -3.83750000, 54.77500000, 0.00000000 };
Point ( 2817 ) = { -3.84583333, 54.77500000, 0.00000000 };
Point ( 2818 ) = { -3.85416667, 54.77500000, 0.00000000 };
Point ( 2819 ) = { -3.86250000, 54.77500000, 0.00000000 };
Point ( 2820 ) = { -3.86666667, 54.77916667, 0.00000000 };
Point ( 2821 ) = { -3.87083333, 54.78333333, 0.00000000 };
Point ( 2822 ) = { -3.87500000, 54.77916667, 0.00000000 };
Point ( 2823 ) = { -3.87500000, 54.77083333, 0.00000000 };
Point ( 2824 ) = { -3.87500000, 54.76250000, 0.00000000 };
Point ( 2825 ) = { -3.87916667, 54.75833333, 0.00000000 };
Point ( 2826 ) = { -3.88750000, 54.75833333, 0.00000000 };
Point ( 2827 ) = { -3.89166667, 54.76250000, 0.00000000 };
Point ( 2828 ) = { -3.89583333, 54.76666667, 0.00000000 };
Point ( 2829 ) = { -3.90000000, 54.77083333, 0.00000000 };
Point ( 2830 ) = { -3.90416667, 54.77500000, 0.00000000 };
Point ( 2831 ) = { -3.90833333, 54.77916667, 0.00000000 };
Point ( 2832 ) = { -3.91250000, 54.78333333, 0.00000000 };
Point ( 2833 ) = { -3.92083333, 54.78333333, 0.00000000 };
Point ( 2834 ) = { -3.92916667, 54.78333333, 0.00000000 };
Point ( 2835 ) = { -3.93750000, 54.78333333, 0.00000000 };
Point ( 2836 ) = { -3.94166667, 54.77916667, 0.00000000 };
Point ( 2837 ) = { -3.94583333, 54.77500000, 0.00000000 };
Point ( 2838 ) = { -3.95000000, 54.77083333, 0.00000000 };
Point ( 2839 ) = { -3.95416667, 54.76666667, 0.00000000 };
Point ( 2840 ) = { -3.96250000, 54.76666667, 0.00000000 };
Point ( 2841 ) = { -3.97083333, 54.76666667, 0.00000000 };
Point ( 2842 ) = { -3.97500000, 54.76250000, 0.00000000 };
Point ( 2843 ) = { -3.97916667, 54.75833333, 0.00000000 };
Point ( 2844 ) = { -3.98750000, 54.75833333, 0.00000000 };
Point ( 2845 ) = { -3.99583333, 54.75833333, 0.00000000 };
Point ( 2846 ) = { -4.00416667, 54.75833333, 0.00000000 };
Point ( 2847 ) = { -4.01250000, 54.75833333, 0.00000000 };
Point ( 2848 ) = { -4.02083333, 54.75833333, 0.00000000 };
Point ( 2849 ) = { -4.02500000, 54.76250000, 0.00000000 };
Point ( 2850 ) = { -4.02916667, 54.76666667, 0.00000000 };
Point ( 2851 ) = { -4.03750000, 54.76666667, 0.00000000 };
Point ( 2852 ) = { -4.04166667, 54.76250000, 0.00000000 };
Point ( 2853 ) = { -4.04583333, 54.75833333, 0.00000000 };
Point ( 2854 ) = { -4.05000000, 54.76250000, 0.00000000 };
Point ( 2855 ) = { -4.05416667, 54.76666667, 0.00000000 };
Point ( 2856 ) = { -4.06250000, 54.76666667, 0.00000000 };
Point ( 2857 ) = { -4.06666667, 54.77083333, 0.00000000 };
Point ( 2858 ) = { -4.06666667, 54.77916667, 0.00000000 };
Point ( 2859 ) = { -4.06666667, 54.78750000, 0.00000000 };
Point ( 2860 ) = { -4.06666667, 54.79583333, 0.00000000 };
Point ( 2861 ) = { -4.06250000, 54.80000000, 0.00000000 };
Point ( 2862 ) = { -4.05833333, 54.80416667, 0.00000000 };
Point ( 2863 ) = { -4.05833333, 54.81250000, 0.00000000 };
Point ( 2864 ) = { -4.06250000, 54.81666667, 0.00000000 };
Point ( 2865 ) = { -4.06666667, 54.81250000, 0.00000000 };
Point ( 2866 ) = { -4.07083333, 54.80833333, 0.00000000 };
Point ( 2867 ) = { -4.07916667, 54.80833333, 0.00000000 };
Point ( 2868 ) = { -4.08333333, 54.80416667, 0.00000000 };
Point ( 2869 ) = { -4.08333333, 54.79583333, 0.00000000 };
Point ( 2870 ) = { -4.08333333, 54.78750000, 0.00000000 };
Point ( 2871 ) = { -4.08333333, 54.77916667, 0.00000000 };
Point ( 2872 ) = { -4.08333333, 54.77083333, 0.00000000 };
Point ( 2873 ) = { -4.08333333, 54.76250000, 0.00000000 };
Point ( 2874 ) = { -4.08750000, 54.75833333, 0.00000000 };
Point ( 2875 ) = { -4.09583333, 54.75833333, 0.00000000 };
Point ( 2876 ) = { -4.10416667, 54.75833333, 0.00000000 };
Point ( 2877 ) = { -4.10833333, 54.76250000, 0.00000000 };
Point ( 2878 ) = { -4.11250000, 54.76666667, 0.00000000 };
Point ( 2879 ) = { -4.12083333, 54.76666667, 0.00000000 };
Point ( 2880 ) = { -4.12916667, 54.76666667, 0.00000000 };
Point ( 2881 ) = { -4.13750000, 54.76666667, 0.00000000 };
Point ( 2882 ) = { -4.14583333, 54.76666667, 0.00000000 };
Point ( 2883 ) = { -4.15416667, 54.76666667, 0.00000000 };
Point ( 2884 ) = { -4.15833333, 54.77083333, 0.00000000 };
Point ( 2885 ) = { -4.16250000, 54.77500000, 0.00000000 };
Point ( 2886 ) = { -4.16666667, 54.77916667, 0.00000000 };
Point ( 2887 ) = { -4.17083333, 54.78333333, 0.00000000 };
Point ( 2888 ) = { -4.17500000, 54.78750000, 0.00000000 };
Point ( 2889 ) = { -4.17916667, 54.79166667, 0.00000000 };
Point ( 2890 ) = { -4.18333333, 54.79583333, 0.00000000 };
Point ( 2891 ) = { -4.18750000, 54.80000000, 0.00000000 };
Point ( 2892 ) = { -4.19583333, 54.80000000, 0.00000000 };
Point ( 2893 ) = { -4.20000000, 54.80416667, 0.00000000 };
Point ( 2894 ) = { -4.20416667, 54.80833333, 0.00000000 };
Point ( 2895 ) = { -4.21250000, 54.80833333, 0.00000000 };
Point ( 2896 ) = { -4.22083333, 54.80833333, 0.00000000 };
Point ( 2897 ) = { -4.22500000, 54.80416667, 0.00000000 };
Point ( 2898 ) = { -4.22916667, 54.80000000, 0.00000000 };
Point ( 2899 ) = { -4.23750000, 54.80000000, 0.00000000 };
Point ( 2900 ) = { -4.24583333, 54.80000000, 0.00000000 };
Point ( 2901 ) = { -4.25416667, 54.80000000, 0.00000000 };
Point ( 2902 ) = { -4.25833333, 54.80416667, 0.00000000 };
Point ( 2903 ) = { -4.26250000, 54.80833333, 0.00000000 };
Point ( 2904 ) = { -4.27083333, 54.80833333, 0.00000000 };
Point ( 2905 ) = { -4.27500000, 54.81250000, 0.00000000 };
Point ( 2906 ) = { -4.27500000, 54.82083333, 0.00000000 };
Point ( 2907 ) = { -4.27916667, 54.82500000, 0.00000000 };
Point ( 2908 ) = { -4.28333333, 54.82916667, 0.00000000 };
Point ( 2909 ) = { -4.28750000, 54.83333333, 0.00000000 };
Point ( 2910 ) = { -4.29583333, 54.83333333, 0.00000000 };
Point ( 2911 ) = { -4.30416667, 54.83333333, 0.00000000 };
Point ( 2912 ) = { -4.31250000, 54.83333333, 0.00000000 };
Point ( 2913 ) = { -4.32083333, 54.83333333, 0.00000000 };
Point ( 2914 ) = { -4.32500000, 54.82916667, 0.00000000 };
Point ( 2915 ) = { -4.32083333, 54.82500000, 0.00000000 };
Point ( 2916 ) = { -4.31666667, 54.82083333, 0.00000000 };
Point ( 2917 ) = { -4.31250000, 54.81666667, 0.00000000 };
Point ( 2918 ) = { -4.30833333, 54.81250000, 0.00000000 };
Point ( 2919 ) = { -4.30416667, 54.80833333, 0.00000000 };
Point ( 2920 ) = { -4.30000000, 54.80416667, 0.00000000 };
Point ( 2921 ) = { -4.30000000, 54.79583333, 0.00000000 };
Point ( 2922 ) = { -4.30416667, 54.79166667, 0.00000000 };
Point ( 2923 ) = { -4.30833333, 54.78750000, 0.00000000 };
Point ( 2924 ) = { -4.31250000, 54.78333333, 0.00000000 };
Point ( 2925 ) = { -4.32083333, 54.78333333, 0.00000000 };
Point ( 2926 ) = { -4.32916667, 54.78333333, 0.00000000 };
Point ( 2927 ) = { -4.33750000, 54.78333333, 0.00000000 };
Point ( 2928 ) = { -4.34583333, 54.78333333, 0.00000000 };
Point ( 2929 ) = { -4.35000000, 54.77916667, 0.00000000 };
Point ( 2930 ) = { -4.34583333, 54.77500000, 0.00000000 };
Point ( 2931 ) = { -4.34166667, 54.77083333, 0.00000000 };
Point ( 2932 ) = { -4.34166667, 54.76250000, 0.00000000 };
Point ( 2933 ) = { -4.34583333, 54.75833333, 0.00000000 };
Point ( 2934 ) = { -4.35000000, 54.75416667, 0.00000000 };
Point ( 2935 ) = { -4.35000000, 54.74583333, 0.00000000 };
Point ( 2936 ) = { -4.35416667, 54.74166667, 0.00000000 };
Point ( 2937 ) = { -4.35833333, 54.73750000, 0.00000000 };
Point ( 2938 ) = { -4.35833333, 54.72916667, 0.00000000 };
Point ( 2939 ) = { -4.35833333, 54.72083333, 0.00000000 };
Point ( 2940 ) = { -4.35416667, 54.71666667, 0.00000000 };
Point ( 2941 ) = { -4.35000000, 54.71250000, 0.00000000 };
Point ( 2942 ) = { -4.35000000, 54.70416667, 0.00000000 };
Point ( 2943 ) = { -4.35416667, 54.70000000, 0.00000000 };
Point ( 2944 ) = { -4.35833333, 54.69583333, 0.00000000 };
Point ( 2945 ) = { -4.36250000, 54.69166667, 0.00000000 };
Point ( 2946 ) = { -4.36666667, 54.68750000, 0.00000000 };
Point ( 2947 ) = { -4.37083333, 54.68333333, 0.00000000 };
Point ( 2948 ) = { -4.37500000, 54.67916667, 0.00000000 };
Point ( 2949 ) = { -4.37916667, 54.67500000, 0.00000000 };
Point ( 2950 ) = { -4.38750000, 54.67500000, 0.00000000 };
Point ( 2951 ) = { -4.39583333, 54.67500000, 0.00000000 };
Point ( 2952 ) = { -4.40416667, 54.67500000, 0.00000000 };
Point ( 2953 ) = { -4.41250000, 54.67500000, 0.00000000 };
Point ( 2954 ) = { -4.42083333, 54.67500000, 0.00000000 };
Point ( 2955 ) = { -4.42916667, 54.67500000, 0.00000000 };
Point ( 2956 ) = { -4.43333333, 54.67916667, 0.00000000 };
Point ( 2957 ) = { -4.43750000, 54.68333333, 0.00000000 };
Point ( 2958 ) = { -4.44583333, 54.68333333, 0.00000000 };
Point ( 2959 ) = { -4.45416667, 54.68333333, 0.00000000 };
Point ( 2960 ) = { -4.46250000, 54.68333333, 0.00000000 };
Point ( 2961 ) = { -4.46666667, 54.68750000, 0.00000000 };
Point ( 2962 ) = { -4.47083333, 54.69166667, 0.00000000 };
Point ( 2963 ) = { -4.47916667, 54.69166667, 0.00000000 };
Point ( 2964 ) = { -4.48333333, 54.69583333, 0.00000000 };
Point ( 2965 ) = { -4.48750000, 54.70000000, 0.00000000 };
Point ( 2966 ) = { -4.49166667, 54.69583333, 0.00000000 };
Point ( 2967 ) = { -4.49583333, 54.69166667, 0.00000000 };
Point ( 2968 ) = { -4.50000000, 54.69583333, 0.00000000 };
Point ( 2969 ) = { -4.50416667, 54.70000000, 0.00000000 };
Point ( 2970 ) = { -4.51250000, 54.70000000, 0.00000000 };
Point ( 2971 ) = { -4.51666667, 54.70416667, 0.00000000 };
Point ( 2972 ) = { -4.52083333, 54.70833333, 0.00000000 };
Point ( 2973 ) = { -4.52916667, 54.70833333, 0.00000000 };
Point ( 2974 ) = { -4.53333333, 54.71250000, 0.00000000 };
Point ( 2975 ) = { -4.53750000, 54.71666667, 0.00000000 };
Point ( 2976 ) = { -4.54583333, 54.71666667, 0.00000000 };
Point ( 2977 ) = { -4.55000000, 54.72083333, 0.00000000 };
Point ( 2978 ) = { -4.55416667, 54.72500000, 0.00000000 };
Point ( 2979 ) = { -4.55833333, 54.72916667, 0.00000000 };
Point ( 2980 ) = { -4.56250000, 54.73333333, 0.00000000 };
Point ( 2981 ) = { -4.57083333, 54.73333333, 0.00000000 };
Point ( 2982 ) = { -4.57916667, 54.73333333, 0.00000000 };
Point ( 2983 ) = { -4.58333333, 54.73750000, 0.00000000 };
Point ( 2984 ) = { -4.58333333, 54.74583333, 0.00000000 };
Point ( 2985 ) = { -4.58333333, 54.75416667, 0.00000000 };
Point ( 2986 ) = { -4.58750000, 54.75833333, 0.00000000 };
Point ( 2987 ) = { -4.59166667, 54.76250000, 0.00000000 };
Point ( 2988 ) = { -4.59583333, 54.76666667, 0.00000000 };
Point ( 2989 ) = { -4.60000000, 54.77083333, 0.00000000 };
Point ( 2990 ) = { -4.60416667, 54.77500000, 0.00000000 };
Point ( 2991 ) = { -4.61250000, 54.77500000, 0.00000000 };
Point ( 2992 ) = { -4.62083333, 54.77500000, 0.00000000 };
Point ( 2993 ) = { -4.62916667, 54.77500000, 0.00000000 };
Point ( 2994 ) = { -4.63333333, 54.77916667, 0.00000000 };
Point ( 2995 ) = { -4.63750000, 54.78333333, 0.00000000 };
Point ( 2996 ) = { -4.64583333, 54.78333333, 0.00000000 };
Point ( 2997 ) = { -4.65000000, 54.78750000, 0.00000000 };
Point ( 2998 ) = { -4.65416667, 54.79166667, 0.00000000 };
Point ( 2999 ) = { -4.66250000, 54.79166667, 0.00000000 };
Point ( 3000 ) = { -4.67083333, 54.79166667, 0.00000000 };
Point ( 3001 ) = { -4.67500000, 54.79583333, 0.00000000 };
Point ( 3002 ) = { -4.67916667, 54.80000000, 0.00000000 };
Point ( 3003 ) = { -4.68333333, 54.80416667, 0.00000000 };
Point ( 3004 ) = { -4.68750000, 54.80833333, 0.00000000 };
Point ( 3005 ) = { -4.69583333, 54.80833333, 0.00000000 };
Point ( 3006 ) = { -4.70000000, 54.81250000, 0.00000000 };
Point ( 3007 ) = { -4.70416667, 54.81666667, 0.00000000 };
Point ( 3008 ) = { -4.71250000, 54.81666667, 0.00000000 };
Point ( 3009 ) = { -4.72083333, 54.81666667, 0.00000000 };
Point ( 3010 ) = { -4.72916667, 54.81666667, 0.00000000 };
Point ( 3011 ) = { -4.73750000, 54.81666667, 0.00000000 };
Point ( 3012 ) = { -4.74583333, 54.81666667, 0.00000000 };
Point ( 3013 ) = { -4.75416667, 54.81666667, 0.00000000 };
Point ( 3014 ) = { -4.76250000, 54.81666667, 0.00000000 };
Point ( 3015 ) = { -4.77083333, 54.81666667, 0.00000000 };
Point ( 3016 ) = { -4.77500000, 54.82083333, 0.00000000 };
Point ( 3017 ) = { -4.77916667, 54.82500000, 0.00000000 };
Point ( 3018 ) = { -4.78333333, 54.82916667, 0.00000000 };
Point ( 3019 ) = { -4.78750000, 54.83333333, 0.00000000 };
Point ( 3020 ) = { -4.79166667, 54.83750000, 0.00000000 };
Point ( 3021 ) = { -4.79583333, 54.84166667, 0.00000000 };
Point ( 3022 ) = { -4.80000000, 54.84583333, 0.00000000 };
Point ( 3023 ) = { -4.80416667, 54.85000000, 0.00000000 };
Point ( 3024 ) = { -4.80833333, 54.85416667, 0.00000000 };
Point ( 3025 ) = { -4.81250000, 54.85833333, 0.00000000 };
Point ( 3026 ) = { -4.82083333, 54.85833333, 0.00000000 };
Point ( 3027 ) = { -4.82916667, 54.85833333, 0.00000000 };
Point ( 3028 ) = { -4.83750000, 54.85833333, 0.00000000 };
Point ( 3029 ) = { -4.84166667, 54.86250000, 0.00000000 };
Point ( 3030 ) = { -4.84583333, 54.86666667, 0.00000000 };
Point ( 3031 ) = { -4.85000000, 54.86250000, 0.00000000 };
Point ( 3032 ) = { -4.85416667, 54.85833333, 0.00000000 };
Point ( 3033 ) = { -4.85833333, 54.85416667, 0.00000000 };
Point ( 3034 ) = { -4.86250000, 54.85000000, 0.00000000 };
Point ( 3035 ) = { -4.87083333, 54.85000000, 0.00000000 };
Point ( 3036 ) = { -4.87916667, 54.85000000, 0.00000000 };
Point ( 3037 ) = { -4.88333333, 54.84583333, 0.00000000 };
Point ( 3038 ) = { -4.88750000, 54.84166667, 0.00000000 };
Point ( 3039 ) = { -4.89583333, 54.84166667, 0.00000000 };
Point ( 3040 ) = { -4.90416667, 54.84166667, 0.00000000 };
Point ( 3041 ) = { -4.90833333, 54.83750000, 0.00000000 };
Point ( 3042 ) = { -4.91250000, 54.83333333, 0.00000000 };
Point ( 3043 ) = { -4.92083333, 54.83333333, 0.00000000 };
Point ( 3044 ) = { -4.92916667, 54.83333333, 0.00000000 };
Point ( 3045 ) = { -4.93333333, 54.82916667, 0.00000000 };
Point ( 3046 ) = { -4.93750000, 54.82500000, 0.00000000 };
Point ( 3047 ) = { -4.94166667, 54.82083333, 0.00000000 };
Point ( 3048 ) = { -4.94583333, 54.81666667, 0.00000000 };
Point ( 3049 ) = { -4.95000000, 54.81250000, 0.00000000 };
Point ( 3050 ) = { -4.95000000, 54.80416667, 0.00000000 };
Point ( 3051 ) = { -4.94583333, 54.80000000, 0.00000000 };
Point ( 3052 ) = { -4.94166667, 54.79583333, 0.00000000 };
Point ( 3053 ) = { -4.94166667, 54.78750000, 0.00000000 };
Point ( 3054 ) = { -4.94166667, 54.77916667, 0.00000000 };
Point ( 3055 ) = { -4.93750000, 54.77500000, 0.00000000 };
Point ( 3056 ) = { -4.93333333, 54.77083333, 0.00000000 };
Point ( 3057 ) = { -4.92916667, 54.76666667, 0.00000000 };
Point ( 3058 ) = { -4.92500000, 54.76250000, 0.00000000 };
Point ( 3059 ) = { -4.92500000, 54.75416667, 0.00000000 };
Point ( 3060 ) = { -4.92083333, 54.75000000, 0.00000000 };
Point ( 3061 ) = { -4.91666667, 54.74583333, 0.00000000 };
Point ( 3062 ) = { -4.91666667, 54.73750000, 0.00000000 };
Point ( 3063 ) = { -4.91250000, 54.73333333, 0.00000000 };
Point ( 3064 ) = { -4.90833333, 54.72916667, 0.00000000 };
Point ( 3065 ) = { -4.90416667, 54.72500000, 0.00000000 };
Point ( 3066 ) = { -4.90000000, 54.72083333, 0.00000000 };
Point ( 3067 ) = { -4.90000000, 54.71250000, 0.00000000 };
Point ( 3068 ) = { -4.90000000, 54.70416667, 0.00000000 };
Point ( 3069 ) = { -4.89583333, 54.70000000, 0.00000000 };
Point ( 3070 ) = { -4.89166667, 54.69583333, 0.00000000 };
Point ( 3071 ) = { -4.88750000, 54.69166667, 0.00000000 };
Point ( 3072 ) = { -4.87916667, 54.69166667, 0.00000000 };
Point ( 3073 ) = { -4.87500000, 54.68750000, 0.00000000 };
Point ( 3074 ) = { -4.87083333, 54.68333333, 0.00000000 };
Point ( 3075 ) = { -4.86666667, 54.67916667, 0.00000000 };
Point ( 3076 ) = { -4.87083333, 54.67500000, 0.00000000 };
Point ( 3077 ) = { -4.87500000, 54.67083333, 0.00000000 };
Point ( 3078 ) = { -4.87500000, 54.66250000, 0.00000000 };
Point ( 3079 ) = { -4.87500000, 54.65416667, 0.00000000 };
Point ( 3080 ) = { -4.87083333, 54.65000000, 0.00000000 };
Point ( 3081 ) = { -4.86666667, 54.64583333, 0.00000000 };
Point ( 3082 ) = { -4.86250000, 54.64166667, 0.00000000 };
Point ( 3083 ) = { -4.85416667, 54.64166667, 0.00000000 };
Point ( 3084 ) = { -4.85000000, 54.63750000, 0.00000000 };
Point ( 3085 ) = { -4.85416667, 54.63333333, 0.00000000 };
Point ( 3086 ) = { -4.86250000, 54.63333333, 0.00000000 };
Point ( 3087 ) = { -4.87083333, 54.63333333, 0.00000000 };
Point ( 3088 ) = { -4.87916667, 54.63333333, 0.00000000 };
Point ( 3089 ) = { -4.88750000, 54.63333333, 0.00000000 };
Point ( 3090 ) = { -4.89583333, 54.63333333, 0.00000000 };
Point ( 3091 ) = { -4.90416667, 54.63333333, 0.00000000 };
Point ( 3092 ) = { -4.91250000, 54.63333333, 0.00000000 };
Point ( 3093 ) = { -4.91666667, 54.63750000, 0.00000000 };
Point ( 3094 ) = { -4.92083333, 54.64166667, 0.00000000 };
Point ( 3095 ) = { -4.92916667, 54.64166667, 0.00000000 };
Point ( 3096 ) = { -4.93750000, 54.64166667, 0.00000000 };
Point ( 3097 ) = { -4.94166667, 54.64583333, 0.00000000 };
Point ( 3098 ) = { -4.94583333, 54.65000000, 0.00000000 };
Point ( 3099 ) = { -4.95416667, 54.65000000, 0.00000000 };
Point ( 3100 ) = { -4.95833333, 54.65416667, 0.00000000 };
Point ( 3101 ) = { -4.96250000, 54.65833333, 0.00000000 };
Point ( 3102 ) = { -4.96666667, 54.66250000, 0.00000000 };
Point ( 3103 ) = { -4.96666667, 54.67083333, 0.00000000 };
Point ( 3104 ) = { -4.97083333, 54.67500000, 0.00000000 };
Point ( 3105 ) = { -4.97500000, 54.67916667, 0.00000000 };
Point ( 3106 ) = { -4.97500000, 54.68750000, 0.00000000 };
Point ( 3107 ) = { -4.97083333, 54.69166667, 0.00000000 };
Point ( 3108 ) = { -4.96666667, 54.69583333, 0.00000000 };
Point ( 3109 ) = { -4.96666667, 54.70416667, 0.00000000 };
Point ( 3110 ) = { -4.96666667, 54.71250000, 0.00000000 };
Point ( 3111 ) = { -4.96666667, 54.72083333, 0.00000000 };
Point ( 3112 ) = { -4.97083333, 54.72500000, 0.00000000 };
Point ( 3113 ) = { -4.97916667, 54.72500000, 0.00000000 };
Point ( 3114 ) = { -4.98750000, 54.72500000, 0.00000000 };
Point ( 3115 ) = { -4.99166667, 54.72916667, 0.00000000 };
Point ( 3116 ) = { -4.99166667, 54.73750000, 0.00000000 };
Point ( 3117 ) = { -4.99166667, 54.74583333, 0.00000000 };
Point ( 3118 ) = { -4.99583333, 54.75000000, 0.00000000 };
Point ( 3119 ) = { -5.00416667, 54.75000000, 0.00000000 };
Point ( 3120 ) = { -5.00833333, 54.75416667, 0.00000000 };
Point ( 3121 ) = { -5.00833333, 54.76250000, 0.00000000 };
Point ( 3122 ) = { -5.00833333, 54.77083333, 0.00000000 };
Point ( 3123 ) = { -5.01250000, 54.77500000, 0.00000000 };
Point ( 3124 ) = { -5.02083333, 54.77500000, 0.00000000 };
Point ( 3125 ) = { -5.02500000, 54.77916667, 0.00000000 };
Point ( 3126 ) = { -5.02916667, 54.78333333, 0.00000000 };
Point ( 3127 ) = { -5.03750000, 54.78333333, 0.00000000 };
Point ( 3128 ) = { -5.04166667, 54.78750000, 0.00000000 };
Point ( 3129 ) = { -5.04583333, 54.79166667, 0.00000000 };
Point ( 3130 ) = { -5.05000000, 54.79583333, 0.00000000 };
Point ( 3131 ) = { -5.05416667, 54.80000000, 0.00000000 };
Point ( 3132 ) = { -5.05833333, 54.80416667, 0.00000000 };
Point ( 3133 ) = { -5.06250000, 54.80833333, 0.00000000 };
Point ( 3134 ) = { -5.07083333, 54.80833333, 0.00000000 };
Point ( 3135 ) = { -5.07916667, 54.80833333, 0.00000000 };
Point ( 3136 ) = { -5.08333333, 54.81250000, 0.00000000 };
Point ( 3137 ) = { -5.08750000, 54.81666667, 0.00000000 };
Point ( 3138 ) = { -5.09166667, 54.82083333, 0.00000000 };
Point ( 3139 ) = { -5.09583333, 54.82500000, 0.00000000 };
Point ( 3140 ) = { -5.10416667, 54.82500000, 0.00000000 };
Point ( 3141 ) = { -5.10833333, 54.82916667, 0.00000000 };
Point ( 3142 ) = { -5.11250000, 54.83333333, 0.00000000 };
Point ( 3143 ) = { -5.12083333, 54.83333333, 0.00000000 };
Point ( 3144 ) = { -5.12500000, 54.83750000, 0.00000000 };
Point ( 3145 ) = { -5.12916667, 54.84166667, 0.00000000 };
Point ( 3146 ) = { -5.13333333, 54.84583333, 0.00000000 };
Point ( 3147 ) = { -5.13750000, 54.85000000, 0.00000000 };
Point ( 3148 ) = { -5.14583333, 54.85000000, 0.00000000 };
Point ( 3149 ) = { -5.15000000, 54.85416667, 0.00000000 };
Point ( 3150 ) = { -5.15000000, 54.86250000, 0.00000000 };
Point ( 3151 ) = { -5.15000000, 54.87083333, 0.00000000 };
Point ( 3152 ) = { -5.15416667, 54.87500000, 0.00000000 };
Point ( 3153 ) = { -5.15833333, 54.87916667, 0.00000000 };
Point ( 3154 ) = { -5.16250000, 54.88333333, 0.00000000 };
Point ( 3155 ) = { -5.16666667, 54.88750000, 0.00000000 };
Point ( 3156 ) = { -5.17083333, 54.89166667, 0.00000000 };
Point ( 3157 ) = { -5.17500000, 54.89583333, 0.00000000 };
Point ( 3158 ) = { -5.17916667, 54.90000000, 0.00000000 };
Point ( 3159 ) = { -5.18333333, 54.90416667, 0.00000000 };
Point ( 3160 ) = { -5.18333333, 54.91250000, 0.00000000 };
Point ( 3161 ) = { -5.18750000, 54.91666667, 0.00000000 };
Point ( 3162 ) = { -5.19166667, 54.92083333, 0.00000000 };
Point ( 3163 ) = { -5.19166667, 54.92916667, 0.00000000 };
Point ( 3164 ) = { -5.19166667, 54.93750000, 0.00000000 };
Point ( 3165 ) = { -5.19166667, 54.94583333, 0.00000000 };
Point ( 3166 ) = { -5.19166667, 54.95416667, 0.00000000 };
Point ( 3167 ) = { -5.18750000, 54.95833333, 0.00000000 };
Point ( 3168 ) = { -5.18333333, 54.96250000, 0.00000000 };
Point ( 3169 ) = { -5.18333333, 54.97083333, 0.00000000 };
Point ( 3170 ) = { -5.18750000, 54.97500000, 0.00000000 };
Point ( 3171 ) = { -5.19166667, 54.97916667, 0.00000000 };
Point ( 3172 ) = { -5.18750000, 54.98333333, 0.00000000 };
Point ( 3173 ) = { -5.18333333, 54.98750000, 0.00000000 };
Point ( 3174 ) = { -5.17916667, 54.99166667, 0.00000000 };
Point ( 3175 ) = { -5.17500000, 54.99583333, 0.00000000 };
Point ( 3176 ) = { -5.17083333, 55.00000000, 0.00000000 };
Point ( 3177 ) = { -5.16666667, 55.00416667, 0.00000000 };
Point ( 3178 ) = { -5.16250000, 55.00833333, 0.00000000 };
Point ( 3179 ) = { -5.15833333, 55.01250000, 0.00000000 };
Point ( 3180 ) = { -5.15416667, 55.01666667, 0.00000000 };
Point ( 3181 ) = { -5.14583333, 55.01666667, 0.00000000 };
Point ( 3182 ) = { -5.13750000, 55.01666667, 0.00000000 };
Point ( 3183 ) = { -5.12916667, 55.01666667, 0.00000000 };
Point ( 3184 ) = { -5.12500000, 55.02083333, 0.00000000 };
Point ( 3185 ) = { -5.12083333, 55.02500000, 0.00000000 };
Point ( 3186 ) = { -5.11250000, 55.02500000, 0.00000000 };
Point ( 3187 ) = { -5.10416667, 55.02500000, 0.00000000 };
Point ( 3188 ) = { -5.09583333, 55.02500000, 0.00000000 };
Point ( 3189 ) = { -5.09166667, 55.02083333, 0.00000000 };
Point ( 3190 ) = { -5.08750000, 55.01666667, 0.00000000 };
Point ( 3191 ) = { -5.08333333, 55.01250000, 0.00000000 };
Point ( 3192 ) = { -5.08333333, 55.00416667, 0.00000000 };
Point ( 3193 ) = { -5.07916667, 55.00000000, 0.00000000 };
Point ( 3194 ) = { -5.07083333, 55.00000000, 0.00000000 };
Point ( 3195 ) = { -5.06666667, 54.99583333, 0.00000000 };
Point ( 3196 ) = { -5.06666667, 54.98750000, 0.00000000 };
Point ( 3197 ) = { -5.06666667, 54.97916667, 0.00000000 };
Point ( 3198 ) = { -5.06666667, 54.97083333, 0.00000000 };
Point ( 3199 ) = { -5.06666667, 54.96250000, 0.00000000 };
Point ( 3200 ) = { -5.06666667, 54.95416667, 0.00000000 };
Point ( 3201 ) = { -5.06666667, 54.94583333, 0.00000000 };
Point ( 3202 ) = { -5.06666667, 54.93750000, 0.00000000 };
Point ( 3203 ) = { -5.06250000, 54.93333333, 0.00000000 };
Point ( 3204 ) = { -5.05833333, 54.92916667, 0.00000000 };
Point ( 3205 ) = { -5.05416667, 54.92500000, 0.00000000 };
Point ( 3206 ) = { -5.05000000, 54.92083333, 0.00000000 };
Point ( 3207 ) = { -5.04583333, 54.91666667, 0.00000000 };
Point ( 3208 ) = { -5.03750000, 54.91666667, 0.00000000 };
Point ( 3209 ) = { -5.03333333, 54.91250000, 0.00000000 };
Point ( 3210 ) = { -5.02916667, 54.90833333, 0.00000000 };
Point ( 3211 ) = { -5.02083333, 54.90833333, 0.00000000 };
Point ( 3212 ) = { -5.01250000, 54.90833333, 0.00000000 };
Point ( 3213 ) = { -5.00416667, 54.90833333, 0.00000000 };
Point ( 3214 ) = { -5.00000000, 54.91250000, 0.00000000 };
Point ( 3215 ) = { -5.00000000, 54.92083333, 0.00000000 };
Point ( 3216 ) = { -5.00000000, 54.92916667, 0.00000000 };
Point ( 3217 ) = { -5.00416667, 54.93333333, 0.00000000 };
Point ( 3218 ) = { -5.00833333, 54.93750000, 0.00000000 };
Point ( 3219 ) = { -5.00833333, 54.94583333, 0.00000000 };
Point ( 3220 ) = { -5.00833333, 54.95416667, 0.00000000 };
Point ( 3221 ) = { -5.01250000, 54.95833333, 0.00000000 };
Point ( 3222 ) = { -5.01666667, 54.96250000, 0.00000000 };
Point ( 3223 ) = { -5.02083333, 54.96666667, 0.00000000 };
Point ( 3224 ) = { -5.02500000, 54.97083333, 0.00000000 };
Point ( 3225 ) = { -5.02916667, 54.97500000, 0.00000000 };
Point ( 3226 ) = { -5.03750000, 54.97500000, 0.00000000 };
Point ( 3227 ) = { -5.04166667, 54.97916667, 0.00000000 };
Point ( 3228 ) = { -5.04166667, 54.98750000, 0.00000000 };
Point ( 3229 ) = { -5.04583333, 54.99166667, 0.00000000 };
Point ( 3230 ) = { -5.05000000, 54.99583333, 0.00000000 };
Point ( 3231 ) = { -5.05000000, 55.00416667, 0.00000000 };
Point ( 3232 ) = { -5.05416667, 55.00833333, 0.00000000 };
Point ( 3233 ) = { -5.06250000, 55.00833333, 0.00000000 };
Point ( 3234 ) = { -5.06666667, 55.01250000, 0.00000000 };
Point ( 3235 ) = { -5.06666667, 55.02083333, 0.00000000 };
Point ( 3236 ) = { -5.06666667, 55.02916667, 0.00000000 };
Point ( 3237 ) = { -5.06666667, 55.03750000, 0.00000000 };
Point ( 3238 ) = { -5.06250000, 55.04166667, 0.00000000 };
Point ( 3239 ) = { -5.05833333, 55.04583333, 0.00000000 };
Point ( 3240 ) = { -5.05833333, 55.05416667, 0.00000000 };
Point ( 3241 ) = { -5.05416667, 55.05833333, 0.00000000 };
Point ( 3242 ) = { -5.05000000, 55.06250000, 0.00000000 };
Point ( 3243 ) = { -5.04583333, 55.06666667, 0.00000000 };
Point ( 3244 ) = { -5.04166667, 55.07083333, 0.00000000 };
Point ( 3245 ) = { -5.04166667, 55.07916667, 0.00000000 };
Point ( 3246 ) = { -5.03750000, 55.08333333, 0.00000000 };
Point ( 3247 ) = { -5.02916667, 55.08333333, 0.00000000 };
Point ( 3248 ) = { -5.02500000, 55.08750000, 0.00000000 };
Point ( 3249 ) = { -5.02083333, 55.09166667, 0.00000000 };
Point ( 3250 ) = { -5.01666667, 55.09583333, 0.00000000 };
Point ( 3251 ) = { -5.01250000, 55.10000000, 0.00000000 };
Point ( 3252 ) = { -5.00833333, 55.10416667, 0.00000000 };
Point ( 3253 ) = { -5.00833333, 55.11250000, 0.00000000 };
Point ( 3254 ) = { -5.00416667, 55.11666667, 0.00000000 };
Point ( 3255 ) = { -5.00000000, 55.12083333, 0.00000000 };
Point ( 3256 ) = { -5.00000000, 55.12916667, 0.00000000 };
Point ( 3257 ) = { -5.00000000, 55.13750000, 0.00000000 };
Point ( 3258 ) = { -5.00000000, 55.14583333, 0.00000000 };
Point ( 3259 ) = { -4.99583333, 55.15000000, 0.00000000 };
Point ( 3260 ) = { -4.98750000, 55.15000000, 0.00000000 };
Point ( 3261 ) = { -4.97916667, 55.15000000, 0.00000000 };
Point ( 3262 ) = { -4.97500000, 55.15416667, 0.00000000 };
Point ( 3263 ) = { -4.97083333, 55.15833333, 0.00000000 };
Point ( 3264 ) = { -4.96666667, 55.16250000, 0.00000000 };
Point ( 3265 ) = { -4.96250000, 55.16666667, 0.00000000 };
Point ( 3266 ) = { -4.95416667, 55.16666667, 0.00000000 };
Point ( 3267 ) = { -4.95000000, 55.17083333, 0.00000000 };
Point ( 3268 ) = { -4.94583333, 55.17500000, 0.00000000 };
Point ( 3269 ) = { -4.93750000, 55.17500000, 0.00000000 };
Point ( 3270 ) = { -4.93333333, 55.17916667, 0.00000000 };
Point ( 3271 ) = { -4.93333333, 55.18750000, 0.00000000 };
Point ( 3272 ) = { -4.92916667, 55.19166667, 0.00000000 };
Point ( 3273 ) = { -4.92500000, 55.19583333, 0.00000000 };
Point ( 3274 ) = { -4.92083333, 55.20000000, 0.00000000 };
Point ( 3275 ) = { -4.91666667, 55.20416667, 0.00000000 };
Point ( 3276 ) = { -4.91250000, 55.20833333, 0.00000000 };
Point ( 3277 ) = { -4.90416667, 55.20833333, 0.00000000 };
Point ( 3278 ) = { -4.90000000, 55.21250000, 0.00000000 };
Point ( 3279 ) = { -4.89583333, 55.21666667, 0.00000000 };
Point ( 3280 ) = { -4.88750000, 55.21666667, 0.00000000 };
Point ( 3281 ) = { -4.87916667, 55.21666667, 0.00000000 };
Point ( 3282 ) = { -4.87500000, 55.22083333, 0.00000000 };
Point ( 3283 ) = { -4.87083333, 55.22500000, 0.00000000 };
Point ( 3284 ) = { -4.86666667, 55.22916667, 0.00000000 };
Point ( 3285 ) = { -4.86666667, 55.23750000, 0.00000000 };
Point ( 3286 ) = { -4.86666667, 55.24583333, 0.00000000 };
Point ( 3287 ) = { -4.86666667, 55.25416667, 0.00000000 };
Point ( 3288 ) = { -4.86250000, 55.25833333, 0.00000000 };
Point ( 3289 ) = { -4.85833333, 55.26250000, 0.00000000 };
Point ( 3290 ) = { -4.85416667, 55.26666667, 0.00000000 };
Point ( 3291 ) = { -4.85000000, 55.27083333, 0.00000000 };
Point ( 3292 ) = { -4.85000000, 55.27916667, 0.00000000 };
Point ( 3293 ) = { -4.84583333, 55.28333333, 0.00000000 };
Point ( 3294 ) = { -4.84166667, 55.28750000, 0.00000000 };
Point ( 3295 ) = { -4.84583333, 55.29166667, 0.00000000 };
Point ( 3296 ) = { -4.85000000, 55.29583333, 0.00000000 };
Point ( 3297 ) = { -4.85000000, 55.30416667, 0.00000000 };
Point ( 3298 ) = { -4.85000000, 55.31250000, 0.00000000 };
Point ( 3299 ) = { -4.85000000, 55.32083333, 0.00000000 };
Point ( 3300 ) = { -4.84583333, 55.32500000, 0.00000000 };
Point ( 3301 ) = { -4.84166667, 55.32916667, 0.00000000 };
Point ( 3302 ) = { -4.83750000, 55.33333333, 0.00000000 };
Point ( 3303 ) = { -4.83333333, 55.33750000, 0.00000000 };
Point ( 3304 ) = { -4.82916667, 55.34166667, 0.00000000 };
Point ( 3305 ) = { -4.82083333, 55.34166667, 0.00000000 };
Point ( 3306 ) = { -4.81666667, 55.34583333, 0.00000000 };
Point ( 3307 ) = { -4.81250000, 55.35000000, 0.00000000 };
Point ( 3308 ) = { -4.80833333, 55.35416667, 0.00000000 };
Point ( 3309 ) = { -4.80416667, 55.35833333, 0.00000000 };
Point ( 3310 ) = { -4.80000000, 55.36250000, 0.00000000 };
Point ( 3311 ) = { -4.79583333, 55.36666667, 0.00000000 };
Point ( 3312 ) = { -4.78750000, 55.36666667, 0.00000000 };
Point ( 3313 ) = { -4.77916667, 55.36666667, 0.00000000 };
Point ( 3314 ) = { -4.77500000, 55.37083333, 0.00000000 };
Point ( 3315 ) = { -4.77500000, 55.37916667, 0.00000000 };
Point ( 3316 ) = { -4.77500000, 55.38750000, 0.00000000 };
Point ( 3317 ) = { -4.77500000, 55.39583333, 0.00000000 };
Point ( 3318 ) = { -4.77500000, 55.40416667, 0.00000000 };
Point ( 3319 ) = { -4.77083333, 55.40833333, 0.00000000 };
Point ( 3320 ) = { -4.76666667, 55.41250000, 0.00000000 };
Point ( 3321 ) = { -4.76250000, 55.41666667, 0.00000000 };
Point ( 3322 ) = { -4.75833333, 55.42083333, 0.00000000 };
Point ( 3323 ) = { -4.75416667, 55.42500000, 0.00000000 };
Point ( 3324 ) = { -4.74583333, 55.42500000, 0.00000000 };
Point ( 3325 ) = { -4.74166667, 55.42916667, 0.00000000 };
Point ( 3326 ) = { -4.73750000, 55.43333333, 0.00000000 };
Point ( 3327 ) = { -4.72916667, 55.43333333, 0.00000000 };
Point ( 3328 ) = { -4.72500000, 55.43750000, 0.00000000 };
Point ( 3329 ) = { -4.72083333, 55.44166667, 0.00000000 };
Point ( 3330 ) = { -4.71250000, 55.44166667, 0.00000000 };
Point ( 3331 ) = { -4.70416667, 55.44166667, 0.00000000 };
Point ( 3332 ) = { -4.70000000, 55.44583333, 0.00000000 };
Point ( 3333 ) = { -4.69583333, 55.45000000, 0.00000000 };
Point ( 3334 ) = { -4.68750000, 55.45000000, 0.00000000 };
Point ( 3335 ) = { -4.67916667, 55.45000000, 0.00000000 };
Point ( 3336 ) = { -4.67500000, 55.45416667, 0.00000000 };
Point ( 3337 ) = { -4.67083333, 55.45833333, 0.00000000 };
Point ( 3338 ) = { -4.66666667, 55.45416667, 0.00000000 };
Point ( 3339 ) = { -4.66250000, 55.45000000, 0.00000000 };
Point ( 3340 ) = { -4.65833333, 55.44583333, 0.00000000 };
Point ( 3341 ) = { -4.65416667, 55.44166667, 0.00000000 };
Point ( 3342 ) = { -4.65000000, 55.44583333, 0.00000000 };
Point ( 3343 ) = { -4.65000000, 55.45416667, 0.00000000 };
Point ( 3344 ) = { -4.65416667, 55.45833333, 0.00000000 };
Point ( 3345 ) = { -4.65833333, 55.46250000, 0.00000000 };
Point ( 3346 ) = { -4.65833333, 55.47083333, 0.00000000 };
Point ( 3347 ) = { -4.65416667, 55.47500000, 0.00000000 };
Point ( 3348 ) = { -4.65000000, 55.47916667, 0.00000000 };
Point ( 3349 ) = { -4.64583333, 55.48333333, 0.00000000 };
Point ( 3350 ) = { -4.64166667, 55.48750000, 0.00000000 };
Point ( 3351 ) = { -4.64166667, 55.49583333, 0.00000000 };
Point ( 3352 ) = { -4.64166667, 55.50416667, 0.00000000 };
Point ( 3353 ) = { -4.64583333, 55.50833333, 0.00000000 };
Point ( 3354 ) = { -4.65000000, 55.51250000, 0.00000000 };
Point ( 3355 ) = { -4.65416667, 55.51666667, 0.00000000 };
Point ( 3356 ) = { -4.65833333, 55.52083333, 0.00000000 };
Point ( 3357 ) = { -4.65833333, 55.52916667, 0.00000000 };
Point ( 3358 ) = { -4.66250000, 55.53333333, 0.00000000 };
Point ( 3359 ) = { -4.66666667, 55.53750000, 0.00000000 };
Point ( 3360 ) = { -4.67083333, 55.54166667, 0.00000000 };
Point ( 3361 ) = { -4.67916667, 55.54166667, 0.00000000 };
Point ( 3362 ) = { -4.68750000, 55.54166667, 0.00000000 };
Point ( 3363 ) = { -4.69166667, 55.54583333, 0.00000000 };
Point ( 3364 ) = { -4.69166667, 55.55416667, 0.00000000 };
Point ( 3365 ) = { -4.68750000, 55.55833333, 0.00000000 };
Point ( 3366 ) = { -4.67916667, 55.55833333, 0.00000000 };
Point ( 3367 ) = { -4.67500000, 55.55416667, 0.00000000 };
Point ( 3368 ) = { -4.67083333, 55.55000000, 0.00000000 };
Point ( 3369 ) = { -4.66250000, 55.55000000, 0.00000000 };
Point ( 3370 ) = { -4.65833333, 55.55416667, 0.00000000 };
Point ( 3371 ) = { -4.65833333, 55.56250000, 0.00000000 };
Point ( 3372 ) = { -4.66250000, 55.56666667, 0.00000000 };
Point ( 3373 ) = { -4.66666667, 55.57083333, 0.00000000 };
Point ( 3374 ) = { -4.67083333, 55.57500000, 0.00000000 };
Point ( 3375 ) = { -4.67916667, 55.57500000, 0.00000000 };
Point ( 3376 ) = { -4.68333333, 55.57916667, 0.00000000 };
Point ( 3377 ) = { -4.68333333, 55.58750000, 0.00000000 };
Point ( 3378 ) = { -4.68750000, 55.59166667, 0.00000000 };
Point ( 3379 ) = { -4.69166667, 55.59583333, 0.00000000 };
Point ( 3380 ) = { -4.69583333, 55.60000000, 0.00000000 };
Point ( 3381 ) = { -4.70416667, 55.60000000, 0.00000000 };
Point ( 3382 ) = { -4.70833333, 55.60416667, 0.00000000 };
Point ( 3383 ) = { -4.71250000, 55.60833333, 0.00000000 };
Point ( 3384 ) = { -4.72083333, 55.60833333, 0.00000000 };
Point ( 3385 ) = { -4.72916667, 55.60833333, 0.00000000 };
Point ( 3386 ) = { -4.73333333, 55.61250000, 0.00000000 };
Point ( 3387 ) = { -4.73750000, 55.61666667, 0.00000000 };
Point ( 3388 ) = { -4.74583333, 55.61666667, 0.00000000 };
Point ( 3389 ) = { -4.75000000, 55.62083333, 0.00000000 };
Point ( 3390 ) = { -4.75416667, 55.62500000, 0.00000000 };
Point ( 3391 ) = { -4.76250000, 55.62500000, 0.00000000 };
Point ( 3392 ) = { -4.77083333, 55.62500000, 0.00000000 };
Point ( 3393 ) = { -4.77916667, 55.62500000, 0.00000000 };
Point ( 3394 ) = { -4.78750000, 55.62500000, 0.00000000 };
Point ( 3395 ) = { -4.79166667, 55.62916667, 0.00000000 };
Point ( 3396 ) = { -4.79583333, 55.63333333, 0.00000000 };
Point ( 3397 ) = { -4.80416667, 55.63333333, 0.00000000 };
Point ( 3398 ) = { -4.81250000, 55.63333333, 0.00000000 };
Point ( 3399 ) = { -4.81666667, 55.62916667, 0.00000000 };
Point ( 3400 ) = { -4.82083333, 55.62500000, 0.00000000 };
Point ( 3401 ) = { -4.82500000, 55.62916667, 0.00000000 };
Point ( 3402 ) = { -4.82916667, 55.63333333, 0.00000000 };
Point ( 3403 ) = { -4.83333333, 55.63750000, 0.00000000 };
Point ( 3404 ) = { -4.83750000, 55.64166667, 0.00000000 };
Point ( 3405 ) = { -4.84166667, 55.64583333, 0.00000000 };
Point ( 3406 ) = { -4.84583333, 55.65000000, 0.00000000 };
Point ( 3407 ) = { -4.85000000, 55.65416667, 0.00000000 };
Point ( 3408 ) = { -4.85416667, 55.65833333, 0.00000000 };
Point ( 3409 ) = { -4.85833333, 55.66250000, 0.00000000 };
Point ( 3410 ) = { -4.86250000, 55.66666667, 0.00000000 };
Point ( 3411 ) = { -4.86666667, 55.67083333, 0.00000000 };
Point ( 3412 ) = { -4.87083333, 55.67500000, 0.00000000 };
Point ( 3413 ) = { -4.87500000, 55.67916667, 0.00000000 };
Point ( 3414 ) = { -4.87916667, 55.68333333, 0.00000000 };
Point ( 3415 ) = { -4.88750000, 55.68333333, 0.00000000 };
Point ( 3416 ) = { -4.89166667, 55.68750000, 0.00000000 };
Point ( 3417 ) = { -4.89583333, 55.69166667, 0.00000000 };
Point ( 3418 ) = { -4.90416667, 55.69166667, 0.00000000 };
Point ( 3419 ) = { -4.90833333, 55.69583333, 0.00000000 };
Point ( 3420 ) = { -4.90833333, 55.70416667, 0.00000000 };
Point ( 3421 ) = { -4.90833333, 55.71250000, 0.00000000 };
Point ( 3422 ) = { -4.90833333, 55.72083333, 0.00000000 };
Point ( 3423 ) = { -4.90416667, 55.72500000, 0.00000000 };
Point ( 3424 ) = { -4.90000000, 55.72916667, 0.00000000 };
Point ( 3425 ) = { -4.89583333, 55.73333333, 0.00000000 };
Point ( 3426 ) = { -4.88750000, 55.73333333, 0.00000000 };
Point ( 3427 ) = { -4.88333333, 55.73750000, 0.00000000 };
Point ( 3428 ) = { -4.88333333, 55.74583333, 0.00000000 };
Point ( 3429 ) = { -4.88333333, 55.75416667, 0.00000000 };
Point ( 3430 ) = { -4.87916667, 55.75833333, 0.00000000 };
Point ( 3431 ) = { -4.87500000, 55.75416667, 0.00000000 };
Point ( 3432 ) = { -4.87083333, 55.75000000, 0.00000000 };
Point ( 3433 ) = { -4.86666667, 55.75416667, 0.00000000 };
Point ( 3434 ) = { -4.86666667, 55.76250000, 0.00000000 };
Point ( 3435 ) = { -4.86666667, 55.77083333, 0.00000000 };
Point ( 3436 ) = { -4.86666667, 55.77916667, 0.00000000 };
Point ( 3437 ) = { -4.87083333, 55.78333333, 0.00000000 };
Point ( 3438 ) = { -4.87916667, 55.78333333, 0.00000000 };
Point ( 3439 ) = { -4.88333333, 55.78750000, 0.00000000 };
Point ( 3440 ) = { -4.88333333, 55.79583333, 0.00000000 };
Point ( 3441 ) = { -4.88333333, 55.80416667, 0.00000000 };
Point ( 3442 ) = { -4.88750000, 55.80833333, 0.00000000 };
Point ( 3443 ) = { -4.89166667, 55.81250000, 0.00000000 };
Point ( 3444 ) = { -4.89166667, 55.82083333, 0.00000000 };
Point ( 3445 ) = { -4.89166667, 55.82916667, 0.00000000 };
Point ( 3446 ) = { -4.89166667, 55.83750000, 0.00000000 };
Point ( 3447 ) = { -4.89166667, 55.84583333, 0.00000000 };
Point ( 3448 ) = { -4.89166667, 55.85416667, 0.00000000 };
Point ( 3449 ) = { -4.89166667, 55.86250000, 0.00000000 };
Point ( 3450 ) = { -4.89166667, 55.87083333, 0.00000000 };
Point ( 3451 ) = { -4.89166667, 55.87916667, 0.00000000 };
Point ( 3452 ) = { -4.89583333, 55.88333333, 0.00000000 };
Point ( 3453 ) = { -4.90000000, 55.88750000, 0.00000000 };
Point ( 3454 ) = { -4.90000000, 55.89583333, 0.00000000 };
Point ( 3455 ) = { -4.89583333, 55.90000000, 0.00000000 };
Point ( 3456 ) = { -4.89166667, 55.90416667, 0.00000000 };
Point ( 3457 ) = { -4.89166667, 55.91250000, 0.00000000 };
Point ( 3458 ) = { -4.88750000, 55.91666667, 0.00000000 };
Point ( 3459 ) = { -4.88333333, 55.92083333, 0.00000000 };
Point ( 3460 ) = { -4.88333333, 55.92916667, 0.00000000 };
Point ( 3461 ) = { -4.88333333, 55.93750000, 0.00000000 };
Point ( 3462 ) = { -4.88333333, 55.94583333, 0.00000000 };
Point ( 3463 ) = { -4.87916667, 55.95000000, 0.00000000 };
Point ( 3464 ) = { -4.87083333, 55.95000000, 0.00000000 };
Point ( 3465 ) = { -4.86666667, 55.95416667, 0.00000000 };
Point ( 3466 ) = { -4.86250000, 55.95833333, 0.00000000 };
Point ( 3467 ) = { -4.85416667, 55.95833333, 0.00000000 };
Point ( 3468 ) = { -4.84583333, 55.95833333, 0.00000000 };
Point ( 3469 ) = { -4.83750000, 55.95833333, 0.00000000 };
Point ( 3470 ) = { -4.82916667, 55.95833333, 0.00000000 };
Point ( 3471 ) = { -4.82500000, 55.96250000, 0.00000000 };
Point ( 3472 ) = { -4.82083333, 55.96666667, 0.00000000 };
Point ( 3473 ) = { -4.81250000, 55.96666667, 0.00000000 };
Point ( 3474 ) = { -4.80416667, 55.96666667, 0.00000000 };
Point ( 3475 ) = { -4.79583333, 55.96666667, 0.00000000 };
Point ( 3476 ) = { -4.78750000, 55.96666667, 0.00000000 };
Point ( 3477 ) = { -4.77916667, 55.96666667, 0.00000000 };
Point ( 3478 ) = { -4.77083333, 55.96666667, 0.00000000 };
Point ( 3479 ) = { -4.76666667, 55.96250000, 0.00000000 };
Point ( 3480 ) = { -4.76250000, 55.95833333, 0.00000000 };
Point ( 3481 ) = { -4.75416667, 55.95833333, 0.00000000 };
Point ( 3482 ) = { -4.75000000, 55.96250000, 0.00000000 };
Point ( 3483 ) = { -4.74583333, 55.96666667, 0.00000000 };
Point ( 3484 ) = { -4.74166667, 55.97083333, 0.00000000 };
Point ( 3485 ) = { -4.74583333, 55.97500000, 0.00000000 };
Point ( 3486 ) = { -4.75000000, 55.97916667, 0.00000000 };
Point ( 3487 ) = { -4.75000000, 55.98750000, 0.00000000 };
Point ( 3488 ) = { -4.75000000, 55.99583333, 0.00000000 };
Point ( 3489 ) = { -4.75416667, 56.00000000, 0.00000000 };
Point ( 3490 ) = { -4.75833333, 55.99583333, 0.00000000 };
Point ( 3491 ) = { -4.76250000, 55.99166667, 0.00000000 };
Point ( 3492 ) = { -4.76666667, 55.98750000, 0.00000000 };
Point ( 3493 ) = { -4.77083333, 55.98333333, 0.00000000 };
Point ( 3494 ) = { -4.77916667, 55.98333333, 0.00000000 };
Point ( 3495 ) = { -4.78750000, 55.98333333, 0.00000000 };
Point ( 3496 ) = { -4.79166667, 55.97916667, 0.00000000 };
Point ( 3497 ) = { -4.79583333, 55.97500000, 0.00000000 };
Point ( 3498 ) = { -4.80000000, 55.97916667, 0.00000000 };
Point ( 3499 ) = { -4.80416667, 55.98333333, 0.00000000 };
Point ( 3500 ) = { -4.81250000, 55.98333333, 0.00000000 };
Point ( 3501 ) = { -4.82083333, 55.98333333, 0.00000000 };
Point ( 3502 ) = { -4.82916667, 55.98333333, 0.00000000 };
Point ( 3503 ) = { -4.83750000, 55.98333333, 0.00000000 };
Point ( 3504 ) = { -4.84583333, 55.98333333, 0.00000000 };
Point ( 3505 ) = { -4.85416667, 55.98333333, 0.00000000 };
Point ( 3506 ) = { -4.85833333, 55.98750000, 0.00000000 };
Point ( 3507 ) = { -4.85833333, 55.99583333, 0.00000000 };
Point ( 3508 ) = { -4.85833333, 56.00416667, 0.00000000 };
Point ( 3509 ) = { -4.86250000, 56.00833333, 0.00000000 };
Point ( 3510 ) = { -4.87083333, 56.00833333, 0.00000000 };
Point ( 3511 ) = { -4.87500000, 56.01250000, 0.00000000 };
Point ( 3512 ) = { -4.87500000, 56.02083333, 0.00000000 };
Point ( 3513 ) = { -4.87500000, 56.02916667, 0.00000000 };
Point ( 3514 ) = { -4.87916667, 56.03333333, 0.00000000 };
Point ( 3515 ) = { -4.88333333, 56.03750000, 0.00000000 };
Point ( 3516 ) = { -4.88333333, 56.04583333, 0.00000000 };
Point ( 3517 ) = { -4.88333333, 56.05416667, 0.00000000 };
Point ( 3518 ) = { -4.88333333, 56.06250000, 0.00000000 };
Point ( 3519 ) = { -4.88750000, 56.06666667, 0.00000000 };
Point ( 3520 ) = { -4.89166667, 56.06250000, 0.00000000 };
Point ( 3521 ) = { -4.89583333, 56.05833333, 0.00000000 };
Point ( 3522 ) = { -4.90000000, 56.05416667, 0.00000000 };
Point ( 3523 ) = { -4.90416667, 56.05000000, 0.00000000 };
Point ( 3524 ) = { -4.90833333, 56.04583333, 0.00000000 };
Point ( 3525 ) = { -4.90416667, 56.04166667, 0.00000000 };
Point ( 3526 ) = { -4.90000000, 56.03750000, 0.00000000 };
Point ( 3527 ) = { -4.90000000, 56.02916667, 0.00000000 };
Point ( 3528 ) = { -4.89583333, 56.02500000, 0.00000000 };
Point ( 3529 ) = { -4.89166667, 56.02083333, 0.00000000 };
Point ( 3530 ) = { -4.89166667, 56.01250000, 0.00000000 };
Point ( 3531 ) = { -4.89166667, 56.00416667, 0.00000000 };
Point ( 3532 ) = { -4.89166667, 55.99583333, 0.00000000 };
Point ( 3533 ) = { -4.89166667, 55.98750000, 0.00000000 };
Point ( 3534 ) = { -4.89583333, 55.98333333, 0.00000000 };
Point ( 3535 ) = { -4.90000000, 55.97916667, 0.00000000 };
Point ( 3536 ) = { -4.90416667, 55.97500000, 0.00000000 };
Point ( 3537 ) = { -4.90833333, 55.97083333, 0.00000000 };
Point ( 3538 ) = { -4.90833333, 55.96250000, 0.00000000 };
Point ( 3539 ) = { -4.90833333, 55.95416667, 0.00000000 };
Point ( 3540 ) = { -4.91250000, 55.95000000, 0.00000000 };
Point ( 3541 ) = { -4.91666667, 55.94583333, 0.00000000 };
Point ( 3542 ) = { -4.92083333, 55.94166667, 0.00000000 };
Point ( 3543 ) = { -4.92500000, 55.93750000, 0.00000000 };
Point ( 3544 ) = { -4.92916667, 55.93333333, 0.00000000 };
Point ( 3545 ) = { -4.93333333, 55.92916667, 0.00000000 };
Point ( 3546 ) = { -4.93750000, 55.92500000, 0.00000000 };
Point ( 3547 ) = { -4.94166667, 55.92083333, 0.00000000 };
Point ( 3548 ) = { -4.94166667, 55.91250000, 0.00000000 };
Point ( 3549 ) = { -4.94166667, 55.90416667, 0.00000000 };
Point ( 3550 ) = { -4.94166667, 55.89583333, 0.00000000 };
Point ( 3551 ) = { -4.94583333, 55.89166667, 0.00000000 };
Point ( 3552 ) = { -4.95000000, 55.88750000, 0.00000000 };
Point ( 3553 ) = { -4.95416667, 55.88333333, 0.00000000 };
Point ( 3554 ) = { -4.96250000, 55.88333333, 0.00000000 };
Point ( 3555 ) = { -4.96666667, 55.87916667, 0.00000000 };
Point ( 3556 ) = { -4.96666667, 55.87083333, 0.00000000 };
Point ( 3557 ) = { -4.97083333, 55.86666667, 0.00000000 };
Point ( 3558 ) = { -4.97500000, 55.86250000, 0.00000000 };
Point ( 3559 ) = { -4.97916667, 55.85833333, 0.00000000 };
Point ( 3560 ) = { -4.98750000, 55.85833333, 0.00000000 };
Point ( 3561 ) = { -4.99583333, 55.85833333, 0.00000000 };
Point ( 3562 ) = { -5.00416667, 55.85833333, 0.00000000 };
Point ( 3563 ) = { -5.01250000, 55.85833333, 0.00000000 };
Point ( 3564 ) = { -5.01666667, 55.86250000, 0.00000000 };
Point ( 3565 ) = { -5.02083333, 55.86666667, 0.00000000 };
Point ( 3566 ) = { -5.02916667, 55.86666667, 0.00000000 };
Point ( 3567 ) = { -5.03750000, 55.86666667, 0.00000000 };
Point ( 3568 ) = { -5.04166667, 55.87083333, 0.00000000 };
Point ( 3569 ) = { -5.04583333, 55.87500000, 0.00000000 };
Point ( 3570 ) = { -5.05000000, 55.87916667, 0.00000000 };
Point ( 3571 ) = { -5.05000000, 55.88750000, 0.00000000 };
Point ( 3572 ) = { -5.05416667, 55.89166667, 0.00000000 };
Point ( 3573 ) = { -5.05833333, 55.89583333, 0.00000000 };
Point ( 3574 ) = { -5.05833333, 55.90416667, 0.00000000 };
Point ( 3575 ) = { -5.05833333, 55.91250000, 0.00000000 };
Point ( 3576 ) = { -5.05833333, 55.92083333, 0.00000000 };
Point ( 3577 ) = { -5.05833333, 55.92916667, 0.00000000 };
Point ( 3578 ) = { -5.06250000, 55.93333333, 0.00000000 };
Point ( 3579 ) = { -5.06666667, 55.93750000, 0.00000000 };
Point ( 3580 ) = { -5.07083333, 55.94166667, 0.00000000 };
Point ( 3581 ) = { -5.07500000, 55.93750000, 0.00000000 };
Point ( 3582 ) = { -5.07500000, 55.92916667, 0.00000000 };
Point ( 3583 ) = { -5.07500000, 55.92083333, 0.00000000 };
Point ( 3584 ) = { -5.07083333, 55.91666667, 0.00000000 };
Point ( 3585 ) = { -5.06666667, 55.91250000, 0.00000000 };
Point ( 3586 ) = { -5.06666667, 55.90416667, 0.00000000 };
Point ( 3587 ) = { -5.06666667, 55.89583333, 0.00000000 };
Point ( 3588 ) = { -5.07083333, 55.89166667, 0.00000000 };
Point ( 3589 ) = { -5.07916667, 55.89166667, 0.00000000 };
Point ( 3590 ) = { -5.08333333, 55.88750000, 0.00000000 };
Point ( 3591 ) = { -5.07916667, 55.88333333, 0.00000000 };
Point ( 3592 ) = { -5.07500000, 55.87916667, 0.00000000 };
Point ( 3593 ) = { -5.07500000, 55.87083333, 0.00000000 };
Point ( 3594 ) = { -5.07083333, 55.86666667, 0.00000000 };
Point ( 3595 ) = { -5.06666667, 55.86250000, 0.00000000 };
Point ( 3596 ) = { -5.06250000, 55.85833333, 0.00000000 };
Point ( 3597 ) = { -5.05833333, 55.85416667, 0.00000000 };
Point ( 3598 ) = { -5.05416667, 55.85000000, 0.00000000 };
Point ( 3599 ) = { -5.04583333, 55.85000000, 0.00000000 };
Point ( 3600 ) = { -5.03750000, 55.85000000, 0.00000000 };
Point ( 3601 ) = { -5.02916667, 55.85000000, 0.00000000 };
Point ( 3602 ) = { -5.02083333, 55.85000000, 0.00000000 };
Point ( 3603 ) = { -5.01666667, 55.84583333, 0.00000000 };
Point ( 3604 ) = { -5.01666667, 55.83750000, 0.00000000 };
Point ( 3605 ) = { -5.01666667, 55.82916667, 0.00000000 };
Point ( 3606 ) = { -5.01666667, 55.82083333, 0.00000000 };
Point ( 3607 ) = { -5.01666667, 55.81250000, 0.00000000 };
Point ( 3608 ) = { -5.01250000, 55.80833333, 0.00000000 };
Point ( 3609 ) = { -5.00833333, 55.80416667, 0.00000000 };
Point ( 3610 ) = { -5.00833333, 55.79583333, 0.00000000 };
Point ( 3611 ) = { -5.00833333, 55.78750000, 0.00000000 };
Point ( 3612 ) = { -5.00416667, 55.78333333, 0.00000000 };
Point ( 3613 ) = { -5.00000000, 55.77916667, 0.00000000 };
Point ( 3614 ) = { -5.00000000, 55.77083333, 0.00000000 };
Point ( 3615 ) = { -5.00416667, 55.76666667, 0.00000000 };
Point ( 3616 ) = { -5.00833333, 55.76250000, 0.00000000 };
Point ( 3617 ) = { -5.01250000, 55.75833333, 0.00000000 };
Point ( 3618 ) = { -5.01666667, 55.75416667, 0.00000000 };
Point ( 3619 ) = { -5.01250000, 55.75000000, 0.00000000 };
Point ( 3620 ) = { -5.00833333, 55.74583333, 0.00000000 };
Point ( 3621 ) = { -5.00416667, 55.74166667, 0.00000000 };
Point ( 3622 ) = { -5.00000000, 55.73750000, 0.00000000 };
Point ( 3623 ) = { -5.00000000, 55.72916667, 0.00000000 };
Point ( 3624 ) = { -5.00416667, 55.72500000, 0.00000000 };
Point ( 3625 ) = { -5.01250000, 55.72500000, 0.00000000 };
Point ( 3626 ) = { -5.02083333, 55.72500000, 0.00000000 };
Point ( 3627 ) = { -5.02500000, 55.72083333, 0.00000000 };
Point ( 3628 ) = { -5.02916667, 55.71666667, 0.00000000 };
Point ( 3629 ) = { -5.03750000, 55.71666667, 0.00000000 };
Point ( 3630 ) = { -5.04166667, 55.72083333, 0.00000000 };
Point ( 3631 ) = { -5.04583333, 55.72500000, 0.00000000 };
Point ( 3632 ) = { -5.05000000, 55.72916667, 0.00000000 };
Point ( 3633 ) = { -5.05416667, 55.73333333, 0.00000000 };
Point ( 3634 ) = { -5.05833333, 55.73750000, 0.00000000 };
Point ( 3635 ) = { -5.06250000, 55.74166667, 0.00000000 };
Point ( 3636 ) = { -5.06666667, 55.74583333, 0.00000000 };
Point ( 3637 ) = { -5.06666667, 55.75416667, 0.00000000 };
Point ( 3638 ) = { -5.07083333, 55.75833333, 0.00000000 };
Point ( 3639 ) = { -5.07916667, 55.75833333, 0.00000000 };
Point ( 3640 ) = { -5.08333333, 55.76250000, 0.00000000 };
Point ( 3641 ) = { -5.08750000, 55.76666667, 0.00000000 };
Point ( 3642 ) = { -5.09583333, 55.76666667, 0.00000000 };
Point ( 3643 ) = { -5.10000000, 55.77083333, 0.00000000 };
Point ( 3644 ) = { -5.10416667, 55.77500000, 0.00000000 };
Point ( 3645 ) = { -5.10833333, 55.77083333, 0.00000000 };
Point ( 3646 ) = { -5.11250000, 55.76666667, 0.00000000 };
Point ( 3647 ) = { -5.12083333, 55.76666667, 0.00000000 };
Point ( 3648 ) = { -5.12500000, 55.77083333, 0.00000000 };
Point ( 3649 ) = { -5.12500000, 55.77916667, 0.00000000 };
Point ( 3650 ) = { -5.12916667, 55.78333333, 0.00000000 };
Point ( 3651 ) = { -5.13333333, 55.78750000, 0.00000000 };
Point ( 3652 ) = { -5.13333333, 55.79583333, 0.00000000 };
Point ( 3653 ) = { -5.13333333, 55.80416667, 0.00000000 };
Point ( 3654 ) = { -5.13750000, 55.80833333, 0.00000000 };
Point ( 3655 ) = { -5.14166667, 55.81250000, 0.00000000 };
Point ( 3656 ) = { -5.14166667, 55.82083333, 0.00000000 };
Point ( 3657 ) = { -5.14166667, 55.82916667, 0.00000000 };
Point ( 3658 ) = { -5.14166667, 55.83750000, 0.00000000 };
Point ( 3659 ) = { -5.14583333, 55.84166667, 0.00000000 };
Point ( 3660 ) = { -5.15416667, 55.84166667, 0.00000000 };
Point ( 3661 ) = { -5.16250000, 55.84166667, 0.00000000 };
Point ( 3662 ) = { -5.16666667, 55.84583333, 0.00000000 };
Point ( 3663 ) = { -5.17083333, 55.85000000, 0.00000000 };
Point ( 3664 ) = { -5.17500000, 55.85416667, 0.00000000 };
Point ( 3665 ) = { -5.17916667, 55.85833333, 0.00000000 };
Point ( 3666 ) = { -5.18750000, 55.85833333, 0.00000000 };
Point ( 3667 ) = { -5.19166667, 55.86250000, 0.00000000 };
Point ( 3668 ) = { -5.19583333, 55.86666667, 0.00000000 };
Point ( 3669 ) = { -5.20000000, 55.87083333, 0.00000000 };
Point ( 3670 ) = { -5.20416667, 55.87500000, 0.00000000 };
Point ( 3671 ) = { -5.20833333, 55.87916667, 0.00000000 };
Point ( 3672 ) = { -5.21250000, 55.88333333, 0.00000000 };
Point ( 3673 ) = { -5.21666667, 55.87916667, 0.00000000 };
Point ( 3674 ) = { -5.21666667, 55.87083333, 0.00000000 };
Point ( 3675 ) = { -5.21250000, 55.86666667, 0.00000000 };
Point ( 3676 ) = { -5.20833333, 55.86250000, 0.00000000 };
Point ( 3677 ) = { -5.20833333, 55.85416667, 0.00000000 };
Point ( 3678 ) = { -5.20416667, 55.85000000, 0.00000000 };
Point ( 3679 ) = { -5.20000000, 55.84583333, 0.00000000 };
Point ( 3680 ) = { -5.20000000, 55.83750000, 0.00000000 };
Point ( 3681 ) = { -5.20000000, 55.82916667, 0.00000000 };
Point ( 3682 ) = { -5.20416667, 55.82500000, 0.00000000 };
Point ( 3683 ) = { -5.21250000, 55.82500000, 0.00000000 };
Point ( 3684 ) = { -5.22083333, 55.82500000, 0.00000000 };
Point ( 3685 ) = { -5.22500000, 55.82916667, 0.00000000 };
Point ( 3686 ) = { -5.22916667, 55.83333333, 0.00000000 };
Point ( 3687 ) = { -5.23750000, 55.83333333, 0.00000000 };
Point ( 3688 ) = { -5.24583333, 55.83333333, 0.00000000 };
Point ( 3689 ) = { -5.25000000, 55.83750000, 0.00000000 };
Point ( 3690 ) = { -5.25416667, 55.84166667, 0.00000000 };
Point ( 3691 ) = { -5.25833333, 55.84583333, 0.00000000 };
Point ( 3692 ) = { -5.26250000, 55.85000000, 0.00000000 };
Point ( 3693 ) = { -5.26666667, 55.84583333, 0.00000000 };
Point ( 3694 ) = { -5.27083333, 55.84166667, 0.00000000 };
Point ( 3695 ) = { -5.27916667, 55.84166667, 0.00000000 };
Point ( 3696 ) = { -5.28333333, 55.84583333, 0.00000000 };
Point ( 3697 ) = { -5.28750000, 55.85000000, 0.00000000 };
Point ( 3698 ) = { -5.29583333, 55.85000000, 0.00000000 };
Point ( 3699 ) = { -5.30416667, 55.85000000, 0.00000000 };
Point ( 3700 ) = { -5.31250000, 55.85000000, 0.00000000 };
Point ( 3701 ) = { -5.31666667, 55.85416667, 0.00000000 };
Point ( 3702 ) = { -5.31666667, 55.86250000, 0.00000000 };
Point ( 3703 ) = { -5.31666667, 55.87083333, 0.00000000 };
Point ( 3704 ) = { -5.32083333, 55.87500000, 0.00000000 };
Point ( 3705 ) = { -5.32916667, 55.87500000, 0.00000000 };
Point ( 3706 ) = { -5.33333333, 55.87916667, 0.00000000 };
Point ( 3707 ) = { -5.33750000, 55.88333333, 0.00000000 };
Point ( 3708 ) = { -5.34583333, 55.88333333, 0.00000000 };
Point ( 3709 ) = { -5.35000000, 55.88750000, 0.00000000 };
Point ( 3710 ) = { -5.35000000, 55.89583333, 0.00000000 };
Point ( 3711 ) = { -5.35000000, 55.90416667, 0.00000000 };
Point ( 3712 ) = { -5.35000000, 55.91250000, 0.00000000 };
Point ( 3713 ) = { -5.35000000, 55.92083333, 0.00000000 };
Point ( 3714 ) = { -5.35000000, 55.92916667, 0.00000000 };
Point ( 3715 ) = { -5.34583333, 55.93333333, 0.00000000 };
Point ( 3716 ) = { -5.34166667, 55.93750000, 0.00000000 };
Point ( 3717 ) = { -5.34166667, 55.94583333, 0.00000000 };
Point ( 3718 ) = { -5.33750000, 55.95000000, 0.00000000 };
Point ( 3719 ) = { -5.33333333, 55.95416667, 0.00000000 };
Point ( 3720 ) = { -5.33750000, 55.95833333, 0.00000000 };
Point ( 3721 ) = { -5.34166667, 55.96250000, 0.00000000 };
Point ( 3722 ) = { -5.34583333, 55.96666667, 0.00000000 };
Point ( 3723 ) = { -5.35000000, 55.97083333, 0.00000000 };
Point ( 3724 ) = { -5.35000000, 55.97916667, 0.00000000 };
Point ( 3725 ) = { -5.34583333, 55.98333333, 0.00000000 };
Point ( 3726 ) = { -5.34166667, 55.98750000, 0.00000000 };
Point ( 3727 ) = { -5.34166667, 55.99583333, 0.00000000 };
Point ( 3728 ) = { -5.33750000, 56.00000000, 0.00000000 };
Point ( 3729 ) = { -5.33333333, 56.00416667, 0.00000000 };
Point ( 3730 ) = { -5.32916667, 56.00833333, 0.00000000 };
Point ( 3731 ) = { -5.32083333, 56.00833333, 0.00000000 };
Point ( 3732 ) = { -5.31666667, 56.01250000, 0.00000000 };
Point ( 3733 ) = { -5.31250000, 56.01666667, 0.00000000 };
Point ( 3734 ) = { -5.30833333, 56.02083333, 0.00000000 };
Point ( 3735 ) = { -5.30833333, 56.02916667, 0.00000000 };
Point ( 3736 ) = { -5.30416667, 56.03333333, 0.00000000 };
Point ( 3737 ) = { -5.30000000, 56.03750000, 0.00000000 };
Point ( 3738 ) = { -5.30000000, 56.04583333, 0.00000000 };
Point ( 3739 ) = { -5.29583333, 56.05000000, 0.00000000 };
Point ( 3740 ) = { -5.29166667, 56.05416667, 0.00000000 };
Point ( 3741 ) = { -5.29583333, 56.05833333, 0.00000000 };
Point ( 3742 ) = { -5.30416667, 56.05833333, 0.00000000 };
Point ( 3743 ) = { -5.31250000, 56.05833333, 0.00000000 };
Point ( 3744 ) = { -5.32083333, 56.05833333, 0.00000000 };
Point ( 3745 ) = { -5.32500000, 56.05416667, 0.00000000 };
Point ( 3746 ) = { -5.32916667, 56.05000000, 0.00000000 };
Point ( 3747 ) = { -5.33333333, 56.04583333, 0.00000000 };
Point ( 3748 ) = { -5.33333333, 56.03750000, 0.00000000 };
Point ( 3749 ) = { -5.33333333, 56.02916667, 0.00000000 };
Point ( 3750 ) = { -5.33750000, 56.02500000, 0.00000000 };
Point ( 3751 ) = { -5.34166667, 56.02083333, 0.00000000 };
Point ( 3752 ) = { -5.34583333, 56.01666667, 0.00000000 };
Point ( 3753 ) = { -5.35416667, 56.01666667, 0.00000000 };
Point ( 3754 ) = { -5.36250000, 56.01666667, 0.00000000 };
Point ( 3755 ) = { -5.36666667, 56.01250000, 0.00000000 };
Point ( 3756 ) = { -5.37083333, 56.00833333, 0.00000000 };
Point ( 3757 ) = { -5.37500000, 56.00416667, 0.00000000 };
Point ( 3758 ) = { -5.37916667, 56.00000000, 0.00000000 };
Point ( 3759 ) = { -5.38750000, 56.00000000, 0.00000000 };
Point ( 3760 ) = { -5.39583333, 56.00000000, 0.00000000 };
Point ( 3761 ) = { -5.40416667, 56.00000000, 0.00000000 };
Point ( 3762 ) = { -5.41250000, 56.00000000, 0.00000000 };
Point ( 3763 ) = { -5.41666667, 56.00416667, 0.00000000 };
Point ( 3764 ) = { -5.42083333, 56.00833333, 0.00000000 };
Point ( 3765 ) = { -5.42500000, 56.01250000, 0.00000000 };
Point ( 3766 ) = { -5.42916667, 56.01666667, 0.00000000 };
Point ( 3767 ) = { -5.43333333, 56.02083333, 0.00000000 };
Point ( 3768 ) = { -5.43750000, 56.02500000, 0.00000000 };
Point ( 3769 ) = { -5.44166667, 56.02083333, 0.00000000 };
Point ( 3770 ) = { -5.44166667, 56.01250000, 0.00000000 };
Point ( 3771 ) = { -5.44166667, 56.00416667, 0.00000000 };
Point ( 3772 ) = { -5.44166667, 55.99583333, 0.00000000 };
Point ( 3773 ) = { -5.44166667, 55.98750000, 0.00000000 };
Point ( 3774 ) = { -5.44166667, 55.97916667, 0.00000000 };
Point ( 3775 ) = { -5.44166667, 55.97083333, 0.00000000 };
Point ( 3776 ) = { -5.43750000, 55.96666667, 0.00000000 };
Point ( 3777 ) = { -5.43333333, 55.96250000, 0.00000000 };
Point ( 3778 ) = { -5.42916667, 55.95833333, 0.00000000 };
Point ( 3779 ) = { -5.42500000, 55.95416667, 0.00000000 };
Point ( 3780 ) = { -5.42500000, 55.94583333, 0.00000000 };
Point ( 3781 ) = { -5.42500000, 55.93750000, 0.00000000 };
Point ( 3782 ) = { -5.42083333, 55.93333333, 0.00000000 };
Point ( 3783 ) = { -5.41666667, 55.92916667, 0.00000000 };
Point ( 3784 ) = { -5.41666667, 55.92083333, 0.00000000 };
Point ( 3785 ) = { -5.41666667, 55.91250000, 0.00000000 };
Point ( 3786 ) = { -5.41666667, 55.90416667, 0.00000000 };
Point ( 3787 ) = { -5.41250000, 55.90000000, 0.00000000 };
Point ( 3788 ) = { -5.40833333, 55.89583333, 0.00000000 };
Point ( 3789 ) = { -5.40416667, 55.89166667, 0.00000000 };
Point ( 3790 ) = { -5.40000000, 55.88750000, 0.00000000 };
Point ( 3791 ) = { -5.40000000, 55.87916667, 0.00000000 };
Point ( 3792 ) = { -5.39583333, 55.87500000, 0.00000000 };
Point ( 3793 ) = { -5.39166667, 55.87083333, 0.00000000 };
Point ( 3794 ) = { -5.38750000, 55.86666667, 0.00000000 };
Point ( 3795 ) = { -5.38333333, 55.86250000, 0.00000000 };
Point ( 3796 ) = { -5.37916667, 55.85833333, 0.00000000 };
Point ( 3797 ) = { -5.37083333, 55.85833333, 0.00000000 };
Point ( 3798 ) = { -5.36666667, 55.85416667, 0.00000000 };
Point ( 3799 ) = { -5.36250000, 55.85000000, 0.00000000 };
Point ( 3800 ) = { -5.35833333, 55.84583333, 0.00000000 };
Point ( 3801 ) = { -5.35416667, 55.84166667, 0.00000000 };
Point ( 3802 ) = { -5.35000000, 55.83750000, 0.00000000 };
Point ( 3803 ) = { -5.34583333, 55.83333333, 0.00000000 };
Point ( 3804 ) = { -5.33750000, 55.83333333, 0.00000000 };
Point ( 3805 ) = { -5.33333333, 55.82916667, 0.00000000 };
Point ( 3806 ) = { -5.33333333, 55.82083333, 0.00000000 };
Point ( 3807 ) = { -5.32916667, 55.81666667, 0.00000000 };
Point ( 3808 ) = { -5.32500000, 55.81250000, 0.00000000 };
Point ( 3809 ) = { -5.32083333, 55.80833333, 0.00000000 };
Point ( 3810 ) = { -5.31666667, 55.80416667, 0.00000000 };
Point ( 3811 ) = { -5.31666667, 55.79583333, 0.00000000 };
Point ( 3812 ) = { -5.31250000, 55.79166667, 0.00000000 };
Point ( 3813 ) = { -5.30833333, 55.78750000, 0.00000000 };
Point ( 3814 ) = { -5.31250000, 55.78333333, 0.00000000 };
Point ( 3815 ) = { -5.31666667, 55.77916667, 0.00000000 };
Point ( 3816 ) = { -5.31666667, 55.77083333, 0.00000000 };
Point ( 3817 ) = { -5.32083333, 55.76666667, 0.00000000 };
Point ( 3818 ) = { -5.32500000, 55.76250000, 0.00000000 };
Point ( 3819 ) = { -5.32916667, 55.75833333, 0.00000000 };
Point ( 3820 ) = { -5.33750000, 55.75833333, 0.00000000 };
Point ( 3821 ) = { -5.34166667, 55.76250000, 0.00000000 };
Point ( 3822 ) = { -5.34583333, 55.76666667, 0.00000000 };
Point ( 3823 ) = { -5.35000000, 55.76250000, 0.00000000 };
Point ( 3824 ) = { -5.35416667, 55.75833333, 0.00000000 };
Point ( 3825 ) = { -5.35833333, 55.75416667, 0.00000000 };
Point ( 3826 ) = { -5.36250000, 55.75000000, 0.00000000 };
Point ( 3827 ) = { -5.37083333, 55.75000000, 0.00000000 };
Point ( 3828 ) = { -5.37916667, 55.75000000, 0.00000000 };
Point ( 3829 ) = { -5.38750000, 55.75000000, 0.00000000 };
Point ( 3830 ) = { -5.39166667, 55.74583333, 0.00000000 };
Point ( 3831 ) = { -5.39583333, 55.74166667, 0.00000000 };
Point ( 3832 ) = { -5.40416667, 55.74166667, 0.00000000 };
Point ( 3833 ) = { -5.40833333, 55.73750000, 0.00000000 };
Point ( 3834 ) = { -5.41250000, 55.73333333, 0.00000000 };
Point ( 3835 ) = { -5.41666667, 55.72916667, 0.00000000 };
Point ( 3836 ) = { -5.42083333, 55.72500000, 0.00000000 };
Point ( 3837 ) = { -5.42500000, 55.72083333, 0.00000000 };
Point ( 3838 ) = { -5.42916667, 55.71666667, 0.00000000 };
Point ( 3839 ) = { -5.43750000, 55.71666667, 0.00000000 };
Point ( 3840 ) = { -5.44166667, 55.71250000, 0.00000000 };
Point ( 3841 ) = { -5.44166667, 55.70416667, 0.00000000 };
Point ( 3842 ) = { -5.44166667, 55.69583333, 0.00000000 };
Point ( 3843 ) = { -5.44166667, 55.68750000, 0.00000000 };
Point ( 3844 ) = { -5.44583333, 55.68333333, 0.00000000 };
Point ( 3845 ) = { -5.45000000, 55.67916667, 0.00000000 };
Point ( 3846 ) = { -5.45416667, 55.67500000, 0.00000000 };
Point ( 3847 ) = { -5.45833333, 55.67083333, 0.00000000 };
Point ( 3848 ) = { -5.45833333, 55.66250000, 0.00000000 };
Point ( 3849 ) = { -5.46250000, 55.65833333, 0.00000000 };
Point ( 3850 ) = { -5.46666667, 55.65416667, 0.00000000 };
Point ( 3851 ) = { -5.46666667, 55.64583333, 0.00000000 };
Point ( 3852 ) = { -5.47083333, 55.64166667, 0.00000000 };
Point ( 3853 ) = { -5.47500000, 55.63750000, 0.00000000 };
Point ( 3854 ) = { -5.47500000, 55.62916667, 0.00000000 };
Point ( 3855 ) = { -5.47500000, 55.62083333, 0.00000000 };
Point ( 3856 ) = { -5.47500000, 55.61250000, 0.00000000 };
Point ( 3857 ) = { -5.47083333, 55.60833333, 0.00000000 };
Point ( 3858 ) = { -5.46666667, 55.60416667, 0.00000000 };
Point ( 3859 ) = { -5.46666667, 55.59583333, 0.00000000 };
Point ( 3860 ) = { -5.46250000, 55.59166667, 0.00000000 };
Point ( 3861 ) = { -5.45833333, 55.58750000, 0.00000000 };
Point ( 3862 ) = { -5.45833333, 55.57916667, 0.00000000 };
Point ( 3863 ) = { -5.46250000, 55.57500000, 0.00000000 };
Point ( 3864 ) = { -5.47083333, 55.57500000, 0.00000000 };
Point ( 3865 ) = { -5.47916667, 55.57500000, 0.00000000 };
Point ( 3866 ) = { -5.48333333, 55.57083333, 0.00000000 };
Point ( 3867 ) = { -5.48333333, 55.56250000, 0.00000000 };
Point ( 3868 ) = { -5.48333333, 55.55416667, 0.00000000 };
Point ( 3869 ) = { -5.48333333, 55.54583333, 0.00000000 };
Point ( 3870 ) = { -5.48333333, 55.53750000, 0.00000000 };
Point ( 3871 ) = { -5.48333333, 55.52916667, 0.00000000 };
Point ( 3872 ) = { -5.48750000, 55.52500000, 0.00000000 };
Point ( 3873 ) = { -5.49583333, 55.52500000, 0.00000000 };
Point ( 3874 ) = { -5.50000000, 55.52083333, 0.00000000 };
Point ( 3875 ) = { -5.50000000, 55.51250000, 0.00000000 };
Point ( 3876 ) = { -5.50416667, 55.50833333, 0.00000000 };
Point ( 3877 ) = { -5.50833333, 55.50416667, 0.00000000 };
Point ( 3878 ) = { -5.50833333, 55.49583333, 0.00000000 };
Point ( 3879 ) = { -5.50833333, 55.48750000, 0.00000000 };
Point ( 3880 ) = { -5.51250000, 55.48333333, 0.00000000 };
Point ( 3881 ) = { -5.51666667, 55.47916667, 0.00000000 };
Point ( 3882 ) = { -5.52083333, 55.47500000, 0.00000000 };
Point ( 3883 ) = { -5.52916667, 55.47500000, 0.00000000 };
Point ( 3884 ) = { -5.53333333, 55.47083333, 0.00000000 };
Point ( 3885 ) = { -5.53750000, 55.46666667, 0.00000000 };
Point ( 3886 ) = { -5.54166667, 55.46250000, 0.00000000 };
Point ( 3887 ) = { -5.54166667, 55.45416667, 0.00000000 };
Point ( 3888 ) = { -5.54166667, 55.44583333, 0.00000000 };
Point ( 3889 ) = { -5.54583333, 55.44166667, 0.00000000 };
Point ( 3890 ) = { -5.55000000, 55.43750000, 0.00000000 };
Point ( 3891 ) = { -5.54583333, 55.43333333, 0.00000000 };
Point ( 3892 ) = { -5.53750000, 55.43333333, 0.00000000 };
Point ( 3893 ) = { -5.53333333, 55.42916667, 0.00000000 };
Point ( 3894 ) = { -5.53333333, 55.42083333, 0.00000000 };
Point ( 3895 ) = { -5.53750000, 55.41666667, 0.00000000 };
Point ( 3896 ) = { -5.54166667, 55.41250000, 0.00000000 };
Point ( 3897 ) = { -5.53750000, 55.40833333, 0.00000000 };
Point ( 3898 ) = { -5.53333333, 55.40416667, 0.00000000 };
Point ( 3899 ) = { -5.52916667, 55.40000000, 0.00000000 };
Point ( 3900 ) = { -5.52500000, 55.39583333, 0.00000000 };
Point ( 3901 ) = { -5.52083333, 55.39166667, 0.00000000 };
Point ( 3902 ) = { -5.51666667, 55.38750000, 0.00000000 };
Point ( 3903 ) = { -5.51666667, 55.37916667, 0.00000000 };
Point ( 3904 ) = { -5.51250000, 55.37500000, 0.00000000 };
Point ( 3905 ) = { -5.50833333, 55.37083333, 0.00000000 };
Point ( 3906 ) = { -5.51250000, 55.36666667, 0.00000000 };
Point ( 3907 ) = { -5.51666667, 55.36250000, 0.00000000 };
Point ( 3908 ) = { -5.51666667, 55.35416667, 0.00000000 };
Point ( 3909 ) = { -5.52083333, 55.35000000, 0.00000000 };
Point ( 3910 ) = { -5.52500000, 55.34583333, 0.00000000 };
Point ( 3911 ) = { -5.52916667, 55.34166667, 0.00000000 };
Point ( 3912 ) = { -5.53750000, 55.34166667, 0.00000000 };
Point ( 3913 ) = { -5.54166667, 55.33750000, 0.00000000 };
Point ( 3914 ) = { -5.54583333, 55.33333333, 0.00000000 };
Point ( 3915 ) = { -5.55000000, 55.32916667, 0.00000000 };
Point ( 3916 ) = { -5.55416667, 55.32500000, 0.00000000 };
Point ( 3917 ) = { -5.55833333, 55.32083333, 0.00000000 };
Point ( 3918 ) = { -5.56250000, 55.31666667, 0.00000000 };
Point ( 3919 ) = { -5.57083333, 55.31666667, 0.00000000 };
Point ( 3920 ) = { -5.57500000, 55.31250000, 0.00000000 };
Point ( 3921 ) = { -5.57916667, 55.30833333, 0.00000000 };
Point ( 3922 ) = { -5.58750000, 55.30833333, 0.00000000 };
Point ( 3923 ) = { -5.59166667, 55.30416667, 0.00000000 };
Point ( 3924 ) = { -5.59583333, 55.30000000, 0.00000000 };
Point ( 3925 ) = { -5.60416667, 55.30000000, 0.00000000 };
Point ( 3926 ) = { -5.60833333, 55.30416667, 0.00000000 };
Point ( 3927 ) = { -5.61250000, 55.30833333, 0.00000000 };
Point ( 3928 ) = { -5.61666667, 55.30416667, 0.00000000 };
Point ( 3929 ) = { -5.62083333, 55.30000000, 0.00000000 };
Point ( 3930 ) = { -5.62916667, 55.30000000, 0.00000000 };
Point ( 3931 ) = { -5.63750000, 55.30000000, 0.00000000 };
Point ( 3932 ) = { -5.64166667, 55.30416667, 0.00000000 };
Point ( 3933 ) = { -5.64583333, 55.30833333, 0.00000000 };
Point ( 3934 ) = { -5.65000000, 55.30416667, 0.00000000 };
Point ( 3935 ) = { -5.65416667, 55.30000000, 0.00000000 };
Point ( 3936 ) = { -5.66250000, 55.30000000, 0.00000000 };
Point ( 3937 ) = { -5.67083333, 55.30000000, 0.00000000 };
Point ( 3938 ) = { -5.67916667, 55.30000000, 0.00000000 };
Point ( 3939 ) = { -5.68750000, 55.30000000, 0.00000000 };
Point ( 3940 ) = { -5.69583333, 55.30000000, 0.00000000 };
Point ( 3941 ) = { -5.70000000, 55.29583333, 0.00000000 };
Point ( 3942 ) = { -5.70416667, 55.29166667, 0.00000000 };
Point ( 3943 ) = { -5.71250000, 55.29166667, 0.00000000 };
Point ( 3944 ) = { -5.71666667, 55.28750000, 0.00000000 };
Point ( 3945 ) = { -5.72083333, 55.28333333, 0.00000000 };
Point ( 3946 ) = { -5.72916667, 55.28333333, 0.00000000 };
Point ( 3947 ) = { -5.73750000, 55.28333333, 0.00000000 };
Point ( 3948 ) = { -5.74583333, 55.28333333, 0.00000000 };
Point ( 3949 ) = { -5.75416667, 55.28333333, 0.00000000 };
Point ( 3950 ) = { -5.76250000, 55.28333333, 0.00000000 };
Point ( 3951 ) = { -5.77083333, 55.28333333, 0.00000000 };
Point ( 3952 ) = { -5.77500000, 55.28750000, 0.00000000 };
Point ( 3953 ) = { -5.77916667, 55.29166667, 0.00000000 };
Point ( 3954 ) = { -5.78750000, 55.29166667, 0.00000000 };
Point ( 3955 ) = { -5.79583333, 55.29166667, 0.00000000 };
Point ( 3956 ) = { -5.80000000, 55.29583333, 0.00000000 };
Point ( 3957 ) = { -5.80416667, 55.30000000, 0.00000000 };
Point ( 3958 ) = { -5.80833333, 55.30416667, 0.00000000 };
Point ( 3959 ) = { -5.80833333, 55.31250000, 0.00000000 };
Point ( 3960 ) = { -5.80416667, 55.31666667, 0.00000000 };
Point ( 3961 ) = { -5.80000000, 55.32083333, 0.00000000 };
Point ( 3962 ) = { -5.80416667, 55.32500000, 0.00000000 };
Point ( 3963 ) = { -5.80833333, 55.32916667, 0.00000000 };
Point ( 3964 ) = { -5.80833333, 55.33750000, 0.00000000 };
Point ( 3965 ) = { -5.80833333, 55.34583333, 0.00000000 };
Point ( 3966 ) = { -5.80833333, 55.35416667, 0.00000000 };
Point ( 3967 ) = { -5.80833333, 55.36250000, 0.00000000 };
Point ( 3968 ) = { -5.80833333, 55.37083333, 0.00000000 };
Point ( 3969 ) = { -5.80416667, 55.37500000, 0.00000000 };
Point ( 3970 ) = { -5.80000000, 55.37916667, 0.00000000 };
Point ( 3971 ) = { -5.80000000, 55.38750000, 0.00000000 };
Point ( 3972 ) = { -5.80000000, 55.39583333, 0.00000000 };
Point ( 3973 ) = { -5.79583333, 55.40000000, 0.00000000 };
Point ( 3974 ) = { -5.79166667, 55.40416667, 0.00000000 };
Point ( 3975 ) = { -5.78750000, 55.40833333, 0.00000000 };
Point ( 3976 ) = { -5.77916667, 55.40833333, 0.00000000 };
Point ( 3977 ) = { -5.77500000, 55.41250000, 0.00000000 };
Point ( 3978 ) = { -5.77083333, 55.41666667, 0.00000000 };
Point ( 3979 ) = { -5.76666667, 55.42083333, 0.00000000 };
Point ( 3980 ) = { -5.76250000, 55.42500000, 0.00000000 };
Point ( 3981 ) = { -5.75416667, 55.42500000, 0.00000000 };
Point ( 3982 ) = { -5.74583333, 55.42500000, 0.00000000 };
Point ( 3983 ) = { -5.73750000, 55.42500000, 0.00000000 };
Point ( 3984 ) = { -5.72916667, 55.42500000, 0.00000000 };
Point ( 3985 ) = { -5.72500000, 55.42916667, 0.00000000 };
Point ( 3986 ) = { -5.72500000, 55.43750000, 0.00000000 };
Point ( 3987 ) = { -5.72083333, 55.44166667, 0.00000000 };
Point ( 3988 ) = { -5.71666667, 55.44583333, 0.00000000 };
Point ( 3989 ) = { -5.71666667, 55.45416667, 0.00000000 };
Point ( 3990 ) = { -5.71666667, 55.46250000, 0.00000000 };
Point ( 3991 ) = { -5.71666667, 55.47083333, 0.00000000 };
Point ( 3992 ) = { -5.71666667, 55.47916667, 0.00000000 };
Point ( 3993 ) = { -5.71666667, 55.48750000, 0.00000000 };
Point ( 3994 ) = { -5.71666667, 55.49583333, 0.00000000 };
Point ( 3995 ) = { -5.71666667, 55.50416667, 0.00000000 };
Point ( 3996 ) = { -5.71666667, 55.51250000, 0.00000000 };
Point ( 3997 ) = { -5.71666667, 55.52083333, 0.00000000 };
Point ( 3998 ) = { -5.71250000, 55.52500000, 0.00000000 };
Point ( 3999 ) = { -5.70833333, 55.52916667, 0.00000000 };
Point ( 4000 ) = { -5.70833333, 55.53750000, 0.00000000 };
Point ( 4001 ) = { -5.70833333, 55.54583333, 0.00000000 };
Point ( 4002 ) = { -5.70833333, 55.55416667, 0.00000000 };
Point ( 4003 ) = { -5.71250000, 55.55833333, 0.00000000 };
Point ( 4004 ) = { -5.71666667, 55.56250000, 0.00000000 };
Point ( 4005 ) = { -5.71666667, 55.57083333, 0.00000000 };
Point ( 4006 ) = { -5.71666667, 55.57916667, 0.00000000 };
Point ( 4007 ) = { -5.71250000, 55.58333333, 0.00000000 };
Point ( 4008 ) = { -5.70416667, 55.58333333, 0.00000000 };
Point ( 4009 ) = { -5.70000000, 55.58750000, 0.00000000 };
Point ( 4010 ) = { -5.69583333, 55.59166667, 0.00000000 };
Point ( 4011 ) = { -5.69166667, 55.59583333, 0.00000000 };
Point ( 4012 ) = { -5.69166667, 55.60416667, 0.00000000 };
Point ( 4013 ) = { -5.68750000, 55.60833333, 0.00000000 };
Point ( 4014 ) = { -5.68333333, 55.61250000, 0.00000000 };
Point ( 4015 ) = { -5.68333333, 55.62083333, 0.00000000 };
Point ( 4016 ) = { -5.67916667, 55.62500000, 0.00000000 };
Point ( 4017 ) = { -5.67500000, 55.62916667, 0.00000000 };
Point ( 4018 ) = { -5.67500000, 55.63750000, 0.00000000 };
Point ( 4019 ) = { -5.67500000, 55.64583333, 0.00000000 };
Point ( 4020 ) = { -5.67083333, 55.65000000, 0.00000000 };
Point ( 4021 ) = { -5.66666667, 55.65416667, 0.00000000 };
Point ( 4022 ) = { -5.66666667, 55.66250000, 0.00000000 };
Point ( 4023 ) = { -5.66666667, 55.67083333, 0.00000000 };
Point ( 4024 ) = { -5.67083333, 55.67500000, 0.00000000 };
Point ( 4025 ) = { -5.67500000, 55.67916667, 0.00000000 };
Point ( 4026 ) = { -5.67083333, 55.68333333, 0.00000000 };
Point ( 4027 ) = { -5.66666667, 55.68750000, 0.00000000 };
Point ( 4028 ) = { -5.66250000, 55.69166667, 0.00000000 };
Point ( 4029 ) = { -5.65416667, 55.69166667, 0.00000000 };
Point ( 4030 ) = { -5.64583333, 55.69166667, 0.00000000 };
Point ( 4031 ) = { -5.64166667, 55.69583333, 0.00000000 };
Point ( 4032 ) = { -5.63750000, 55.70000000, 0.00000000 };
Point ( 4033 ) = { -5.63333333, 55.70416667, 0.00000000 };
Point ( 4034 ) = { -5.62916667, 55.70833333, 0.00000000 };
Point ( 4035 ) = { -5.62500000, 55.71250000, 0.00000000 };
Point ( 4036 ) = { -5.62083333, 55.71666667, 0.00000000 };
Point ( 4037 ) = { -5.61666667, 55.72083333, 0.00000000 };
Point ( 4038 ) = { -5.61250000, 55.72500000, 0.00000000 };
Point ( 4039 ) = { -5.60833333, 55.72916667, 0.00000000 };
Point ( 4040 ) = { -5.60416667, 55.73333333, 0.00000000 };
Point ( 4041 ) = { -5.60000000, 55.73750000, 0.00000000 };
Point ( 4042 ) = { -5.60000000, 55.74583333, 0.00000000 };
Point ( 4043 ) = { -5.59583333, 55.75000000, 0.00000000 };
Point ( 4044 ) = { -5.58750000, 55.75000000, 0.00000000 };
Point ( 4045 ) = { -5.58333333, 55.75416667, 0.00000000 };
Point ( 4046 ) = { -5.58333333, 55.76250000, 0.00000000 };
Point ( 4047 ) = { -5.58750000, 55.76666667, 0.00000000 };
Point ( 4048 ) = { -5.59166667, 55.76250000, 0.00000000 };
Point ( 4049 ) = { -5.59583333, 55.75833333, 0.00000000 };
Point ( 4050 ) = { -5.60416667, 55.75833333, 0.00000000 };
Point ( 4051 ) = { -5.61250000, 55.75833333, 0.00000000 };
Point ( 4052 ) = { -5.61666667, 55.76250000, 0.00000000 };
Point ( 4053 ) = { -5.61666667, 55.77083333, 0.00000000 };
Point ( 4054 ) = { -5.62083333, 55.77500000, 0.00000000 };
Point ( 4055 ) = { -5.62500000, 55.77916667, 0.00000000 };
Point ( 4056 ) = { -5.62916667, 55.78333333, 0.00000000 };
Point ( 4057 ) = { -5.63750000, 55.78333333, 0.00000000 };
Point ( 4058 ) = { -5.64583333, 55.78333333, 0.00000000 };
Point ( 4059 ) = { -5.65416667, 55.78333333, 0.00000000 };
Point ( 4060 ) = { -5.65833333, 55.78750000, 0.00000000 };
Point ( 4061 ) = { -5.65833333, 55.79583333, 0.00000000 };
Point ( 4062 ) = { -5.66250000, 55.80000000, 0.00000000 };
Point ( 4063 ) = { -5.66666667, 55.80416667, 0.00000000 };
Point ( 4064 ) = { -5.67083333, 55.80833333, 0.00000000 };
Point ( 4065 ) = { -5.67500000, 55.81250000, 0.00000000 };
Point ( 4066 ) = { -5.67500000, 55.82083333, 0.00000000 };
Point ( 4067 ) = { -5.67500000, 55.82916667, 0.00000000 };
Point ( 4068 ) = { -5.67083333, 55.83333333, 0.00000000 };
Point ( 4069 ) = { -5.66666667, 55.83750000, 0.00000000 };
Point ( 4070 ) = { -5.66666667, 55.84583333, 0.00000000 };
Point ( 4071 ) = { -5.66666667, 55.85416667, 0.00000000 };
Point ( 4072 ) = { -5.66250000, 55.85833333, 0.00000000 };
Point ( 4073 ) = { -5.65833333, 55.86250000, 0.00000000 };
Point ( 4074 ) = { -5.65416667, 55.86666667, 0.00000000 };
Point ( 4075 ) = { -5.65000000, 55.87083333, 0.00000000 };
Point ( 4076 ) = { -5.64583333, 55.87500000, 0.00000000 };
Point ( 4077 ) = { -5.64166667, 55.87916667, 0.00000000 };
Point ( 4078 ) = { -5.63750000, 55.88333333, 0.00000000 };
Point ( 4079 ) = { -5.62916667, 55.88333333, 0.00000000 };
Point ( 4080 ) = { -5.62500000, 55.88750000, 0.00000000 };
Point ( 4081 ) = { -5.62500000, 55.89583333, 0.00000000 };
Point ( 4082 ) = { -5.62083333, 55.90000000, 0.00000000 };
Point ( 4083 ) = { -5.61666667, 55.90416667, 0.00000000 };
Point ( 4084 ) = { -5.61250000, 55.90833333, 0.00000000 };
Point ( 4085 ) = { -5.60833333, 55.91250000, 0.00000000 };
Point ( 4086 ) = { -5.61250000, 55.91666667, 0.00000000 };
Point ( 4087 ) = { -5.62083333, 55.91666667, 0.00000000 };
Point ( 4088 ) = { -5.62500000, 55.91250000, 0.00000000 };
Point ( 4089 ) = { -5.62916667, 55.90833333, 0.00000000 };
Point ( 4090 ) = { -5.63333333, 55.90416667, 0.00000000 };
Point ( 4091 ) = { -5.63750000, 55.90000000, 0.00000000 };
Point ( 4092 ) = { -5.64583333, 55.90000000, 0.00000000 };
Point ( 4093 ) = { -5.65416667, 55.90000000, 0.00000000 };
Point ( 4094 ) = { -5.65833333, 55.89583333, 0.00000000 };
Point ( 4095 ) = { -5.66250000, 55.89166667, 0.00000000 };
Point ( 4096 ) = { -5.66666667, 55.88750000, 0.00000000 };
Point ( 4097 ) = { -5.67083333, 55.88333333, 0.00000000 };
Point ( 4098 ) = { -5.67916667, 55.88333333, 0.00000000 };
Point ( 4099 ) = { -5.68333333, 55.88750000, 0.00000000 };
Point ( 4100 ) = { -5.68750000, 55.89166667, 0.00000000 };
Point ( 4101 ) = { -5.69166667, 55.89583333, 0.00000000 };
Point ( 4102 ) = { -5.69166667, 55.90416667, 0.00000000 };
Point ( 4103 ) = { -5.69166667, 55.91250000, 0.00000000 };
Point ( 4104 ) = { -5.68750000, 55.91666667, 0.00000000 };
Point ( 4105 ) = { -5.68333333, 55.92083333, 0.00000000 };
Point ( 4106 ) = { -5.68333333, 55.92916667, 0.00000000 };
Point ( 4107 ) = { -5.68750000, 55.93333333, 0.00000000 };
Point ( 4108 ) = { -5.69583333, 55.93333333, 0.00000000 };
Point ( 4109 ) = { -5.70416667, 55.93333333, 0.00000000 };
Point ( 4110 ) = { -5.70833333, 55.93750000, 0.00000000 };
Point ( 4111 ) = { -5.70833333, 55.94583333, 0.00000000 };
Point ( 4112 ) = { -5.71250000, 55.95000000, 0.00000000 };
Point ( 4113 ) = { -5.71666667, 55.95416667, 0.00000000 };
Point ( 4114 ) = { -5.71250000, 55.95833333, 0.00000000 };
Point ( 4115 ) = { -5.70833333, 55.96250000, 0.00000000 };
Point ( 4116 ) = { -5.70833333, 55.97083333, 0.00000000 };
Point ( 4117 ) = { -5.70416667, 55.97500000, 0.00000000 };
Point ( 4118 ) = { -5.70000000, 55.97916667, 0.00000000 };
Point ( 4119 ) = { -5.69583333, 55.98333333, 0.00000000 };
Point ( 4120 ) = { -5.69166667, 55.98750000, 0.00000000 };
Point ( 4121 ) = { -5.68750000, 55.99166667, 0.00000000 };
Point ( 4122 ) = { -5.68333333, 55.99583333, 0.00000000 };
Point ( 4123 ) = { -5.67916667, 56.00000000, 0.00000000 };
Point ( 4124 ) = { -5.67500000, 56.00416667, 0.00000000 };
Point ( 4125 ) = { -5.67500000, 56.01250000, 0.00000000 };
Point ( 4126 ) = { -5.67083333, 56.01666667, 0.00000000 };
Point ( 4127 ) = { -5.66666667, 56.02083333, 0.00000000 };
Point ( 4128 ) = { -5.66666667, 56.02916667, 0.00000000 };
Point ( 4129 ) = { -5.66250000, 56.03333333, 0.00000000 };
Point ( 4130 ) = { -5.65416667, 56.03333333, 0.00000000 };
Point ( 4131 ) = { -5.65000000, 56.03750000, 0.00000000 };
Point ( 4132 ) = { -5.64583333, 56.04166667, 0.00000000 };
Point ( 4133 ) = { -5.64166667, 56.04583333, 0.00000000 };
Point ( 4134 ) = { -5.63750000, 56.05000000, 0.00000000 };
Point ( 4135 ) = { -5.63333333, 56.05416667, 0.00000000 };
Point ( 4136 ) = { -5.62916667, 56.05833333, 0.00000000 };
Point ( 4137 ) = { -5.62500000, 56.06250000, 0.00000000 };
Point ( 4138 ) = { -5.62083333, 56.06666667, 0.00000000 };
Point ( 4139 ) = { -5.61250000, 56.06666667, 0.00000000 };
Point ( 4140 ) = { -5.60833333, 56.07083333, 0.00000000 };
Point ( 4141 ) = { -5.60833333, 56.07916667, 0.00000000 };
Point ( 4142 ) = { -5.60416667, 56.08333333, 0.00000000 };
Point ( 4143 ) = { -5.60000000, 56.08750000, 0.00000000 };
Point ( 4144 ) = { -5.59583333, 56.09166667, 0.00000000 };
Point ( 4145 ) = { -5.58750000, 56.09166667, 0.00000000 };
Point ( 4146 ) = { -5.58333333, 56.09583333, 0.00000000 };
Point ( 4147 ) = { -5.57916667, 56.10000000, 0.00000000 };
Point ( 4148 ) = { -5.57500000, 56.09583333, 0.00000000 };
Point ( 4149 ) = { -5.57083333, 56.09166667, 0.00000000 };
Point ( 4150 ) = { -5.56250000, 56.09166667, 0.00000000 };
Point ( 4151 ) = { -5.55416667, 56.09166667, 0.00000000 };
Point ( 4152 ) = { -5.54583333, 56.09166667, 0.00000000 };
Point ( 4153 ) = { -5.53750000, 56.09166667, 0.00000000 };
Point ( 4154 ) = { -5.53333333, 56.09583333, 0.00000000 };
Point ( 4155 ) = { -5.53750000, 56.10000000, 0.00000000 };
Point ( 4156 ) = { -5.54583333, 56.10000000, 0.00000000 };
Point ( 4157 ) = { -5.55416667, 56.10000000, 0.00000000 };
Point ( 4158 ) = { -5.55833333, 56.10416667, 0.00000000 };
Point ( 4159 ) = { -5.56250000, 56.10833333, 0.00000000 };
Point ( 4160 ) = { -5.56666667, 56.11250000, 0.00000000 };
Point ( 4161 ) = { -5.56666667, 56.12083333, 0.00000000 };
Point ( 4162 ) = { -5.57083333, 56.12500000, 0.00000000 };
Point ( 4163 ) = { -5.57500000, 56.12916667, 0.00000000 };
Point ( 4164 ) = { -5.57500000, 56.13750000, 0.00000000 };
Point ( 4165 ) = { -5.57916667, 56.14166667, 0.00000000 };
Point ( 4166 ) = { -5.58750000, 56.14166667, 0.00000000 };
Point ( 4167 ) = { -5.59166667, 56.13750000, 0.00000000 };
Point ( 4168 ) = { -5.59583333, 56.13333333, 0.00000000 };
Point ( 4169 ) = { -5.60000000, 56.12916667, 0.00000000 };
Point ( 4170 ) = { -5.60416667, 56.12500000, 0.00000000 };
Point ( 4171 ) = { -5.60833333, 56.12083333, 0.00000000 };
Point ( 4172 ) = { -5.61250000, 56.11666667, 0.00000000 };
Point ( 4173 ) = { -5.61666667, 56.12083333, 0.00000000 };
Point ( 4174 ) = { -5.61666667, 56.12916667, 0.00000000 };
Point ( 4175 ) = { -5.61666667, 56.13750000, 0.00000000 };
Point ( 4176 ) = { -5.61250000, 56.14166667, 0.00000000 };
Point ( 4177 ) = { -5.60833333, 56.14583333, 0.00000000 };
Point ( 4178 ) = { -5.60416667, 56.15000000, 0.00000000 };
Point ( 4179 ) = { -5.60000000, 56.15416667, 0.00000000 };
Point ( 4180 ) = { -5.60000000, 56.16250000, 0.00000000 };
Point ( 4181 ) = { -5.59583333, 56.16666667, 0.00000000 };
Point ( 4182 ) = { -5.59166667, 56.17083333, 0.00000000 };
Point ( 4183 ) = { -5.59166667, 56.17916667, 0.00000000 };
Point ( 4184 ) = { -5.58750000, 56.18333333, 0.00000000 };
Point ( 4185 ) = { -5.57916667, 56.18333333, 0.00000000 };
Point ( 4186 ) = { -5.57500000, 56.18750000, 0.00000000 };
Point ( 4187 ) = { -5.57500000, 56.19583333, 0.00000000 };
Point ( 4188 ) = { -5.57500000, 56.20416667, 0.00000000 };
Point ( 4189 ) = { -5.57083333, 56.20833333, 0.00000000 };
Point ( 4190 ) = { -5.56250000, 56.20833333, 0.00000000 };
Point ( 4191 ) = { -5.55833333, 56.21250000, 0.00000000 };
Point ( 4192 ) = { -5.55416667, 56.21666667, 0.00000000 };
Point ( 4193 ) = { -5.55000000, 56.22083333, 0.00000000 };
Point ( 4194 ) = { -5.55416667, 56.22500000, 0.00000000 };
Point ( 4195 ) = { -5.55833333, 56.22916667, 0.00000000 };
Point ( 4196 ) = { -5.56250000, 56.23333333, 0.00000000 };
Point ( 4197 ) = { -5.56666667, 56.23750000, 0.00000000 };
Point ( 4198 ) = { -5.56250000, 56.24166667, 0.00000000 };
Point ( 4199 ) = { -5.55416667, 56.24166667, 0.00000000 };
Point ( 4200 ) = { -5.54583333, 56.24166667, 0.00000000 };
Point ( 4201 ) = { -5.54166667, 56.24583333, 0.00000000 };
Point ( 4202 ) = { -5.54583333, 56.25000000, 0.00000000 };
Point ( 4203 ) = { -5.55000000, 56.25416667, 0.00000000 };
Point ( 4204 ) = { -5.55416667, 56.25833333, 0.00000000 };
Point ( 4205 ) = { -5.56250000, 56.25833333, 0.00000000 };
Point ( 4206 ) = { -5.56666667, 56.25416667, 0.00000000 };
Point ( 4207 ) = { -5.57083333, 56.25000000, 0.00000000 };
Point ( 4208 ) = { -5.57500000, 56.24583333, 0.00000000 };
Point ( 4209 ) = { -5.57916667, 56.24166667, 0.00000000 };
Point ( 4210 ) = { -5.58750000, 56.24166667, 0.00000000 };
Point ( 4211 ) = { -5.59166667, 56.24583333, 0.00000000 };
Point ( 4212 ) = { -5.59583333, 56.25000000, 0.00000000 };
Point ( 4213 ) = { -5.60000000, 56.25416667, 0.00000000 };
Point ( 4214 ) = { -5.60000000, 56.26250000, 0.00000000 };
Point ( 4215 ) = { -5.60000000, 56.27083333, 0.00000000 };
Point ( 4216 ) = { -5.60416667, 56.27500000, 0.00000000 };
Point ( 4217 ) = { -5.60833333, 56.27083333, 0.00000000 };
Point ( 4218 ) = { -5.60833333, 56.26250000, 0.00000000 };
Point ( 4219 ) = { -5.60833333, 56.25416667, 0.00000000 };
Point ( 4220 ) = { -5.61250000, 56.25000000, 0.00000000 };
Point ( 4221 ) = { -5.61666667, 56.24583333, 0.00000000 };
Point ( 4222 ) = { -5.61666667, 56.23750000, 0.00000000 };
Point ( 4223 ) = { -5.61250000, 56.23333333, 0.00000000 };
Point ( 4224 ) = { -5.60416667, 56.23333333, 0.00000000 };
Point ( 4225 ) = { -5.59583333, 56.23333333, 0.00000000 };
Point ( 4226 ) = { -5.59166667, 56.22916667, 0.00000000 };
Point ( 4227 ) = { -5.59166667, 56.22083333, 0.00000000 };
Point ( 4228 ) = { -5.59166667, 56.21250000, 0.00000000 };
Point ( 4229 ) = { -5.58750000, 56.20833333, 0.00000000 };
Point ( 4230 ) = { -5.58333333, 56.20416667, 0.00000000 };
Point ( 4231 ) = { -5.58750000, 56.20000000, 0.00000000 };
Point ( 4232 ) = { -5.59583333, 56.20000000, 0.00000000 };
Point ( 4233 ) = { -5.60000000, 56.19583333, 0.00000000 };
Point ( 4234 ) = { -5.60416667, 56.19166667, 0.00000000 };
Point ( 4235 ) = { -5.60833333, 56.19583333, 0.00000000 };
Point ( 4236 ) = { -5.61250000, 56.20000000, 0.00000000 };
Point ( 4237 ) = { -5.61666667, 56.20416667, 0.00000000 };
Point ( 4238 ) = { -5.62083333, 56.20833333, 0.00000000 };
Point ( 4239 ) = { -5.62916667, 56.20833333, 0.00000000 };
Point ( 4240 ) = { -5.63333333, 56.20416667, 0.00000000 };
Point ( 4241 ) = { -5.62916667, 56.20000000, 0.00000000 };
Point ( 4242 ) = { -5.62500000, 56.19583333, 0.00000000 };
Point ( 4243 ) = { -5.62916667, 56.19166667, 0.00000000 };
Point ( 4244 ) = { -5.63333333, 56.18750000, 0.00000000 };
Point ( 4245 ) = { -5.63750000, 56.18333333, 0.00000000 };
Point ( 4246 ) = { -5.64166667, 56.18750000, 0.00000000 };
Point ( 4247 ) = { -5.64583333, 56.19166667, 0.00000000 };
Point ( 4248 ) = { -5.65000000, 56.19583333, 0.00000000 };
Point ( 4249 ) = { -5.65000000, 56.20416667, 0.00000000 };
Point ( 4250 ) = { -5.65416667, 56.20833333, 0.00000000 };
Point ( 4251 ) = { -5.65833333, 56.21250000, 0.00000000 };
Point ( 4252 ) = { -5.66250000, 56.21666667, 0.00000000 };
Point ( 4253 ) = { -5.66666667, 56.22083333, 0.00000000 };
Point ( 4254 ) = { -5.66666667, 56.22916667, 0.00000000 };
Point ( 4255 ) = { -5.66666667, 56.23750000, 0.00000000 };
Point ( 4256 ) = { -5.66250000, 56.24166667, 0.00000000 };
Point ( 4257 ) = { -5.65833333, 56.24583333, 0.00000000 };
Point ( 4258 ) = { -5.65833333, 56.25416667, 0.00000000 };
Point ( 4259 ) = { -5.65833333, 56.26250000, 0.00000000 };
Point ( 4260 ) = { -5.65416667, 56.26666667, 0.00000000 };
Point ( 4261 ) = { -5.64583333, 56.26666667, 0.00000000 };
Point ( 4262 ) = { -5.64166667, 56.27083333, 0.00000000 };
Point ( 4263 ) = { -5.64166667, 56.27916667, 0.00000000 };
Point ( 4264 ) = { -5.64166667, 56.28750000, 0.00000000 };
Point ( 4265 ) = { -5.64583333, 56.29166667, 0.00000000 };
Point ( 4266 ) = { -5.65416667, 56.29166667, 0.00000000 };
Point ( 4267 ) = { -5.66250000, 56.29166667, 0.00000000 };
Point ( 4268 ) = { -5.66666667, 56.29583333, 0.00000000 };
Point ( 4269 ) = { -5.66250000, 56.30000000, 0.00000000 };
Point ( 4270 ) = { -5.65416667, 56.30000000, 0.00000000 };
Point ( 4271 ) = { -5.65000000, 56.30416667, 0.00000000 };
Point ( 4272 ) = { -5.64583333, 56.30833333, 0.00000000 };
Point ( 4273 ) = { -5.64166667, 56.31250000, 0.00000000 };
Point ( 4274 ) = { -5.63750000, 56.31666667, 0.00000000 };
Point ( 4275 ) = { -5.62916667, 56.31666667, 0.00000000 };
Point ( 4276 ) = { -5.62500000, 56.32083333, 0.00000000 };
Point ( 4277 ) = { -5.62083333, 56.32500000, 0.00000000 };
Point ( 4278 ) = { -5.61250000, 56.32500000, 0.00000000 };
Point ( 4279 ) = { -5.60833333, 56.32083333, 0.00000000 };
Point ( 4280 ) = { -5.60416667, 56.31666667, 0.00000000 };
Point ( 4281 ) = { -5.60000000, 56.32083333, 0.00000000 };
Point ( 4282 ) = { -5.59583333, 56.32500000, 0.00000000 };
Point ( 4283 ) = { -5.59166667, 56.32916667, 0.00000000 };
Point ( 4284 ) = { -5.58750000, 56.33333333, 0.00000000 };
Point ( 4285 ) = { -5.57916667, 56.33333333, 0.00000000 };
Point ( 4286 ) = { -5.57500000, 56.33750000, 0.00000000 };
Point ( 4287 ) = { -5.57083333, 56.34166667, 0.00000000 };
Point ( 4288 ) = { -5.56666667, 56.34583333, 0.00000000 };
Point ( 4289 ) = { -5.56250000, 56.35000000, 0.00000000 };
Point ( 4290 ) = { -5.55416667, 56.35000000, 0.00000000 };
Point ( 4291 ) = { -5.54583333, 56.35000000, 0.00000000 };
Point ( 4292 ) = { -5.54166667, 56.35416667, 0.00000000 };
Point ( 4293 ) = { -5.54166667, 56.36250000, 0.00000000 };
Point ( 4294 ) = { -5.54166667, 56.37083333, 0.00000000 };
Point ( 4295 ) = { -5.54583333, 56.37500000, 0.00000000 };
Point ( 4296 ) = { -5.55000000, 56.37083333, 0.00000000 };
Point ( 4297 ) = { -5.55416667, 56.36666667, 0.00000000 };
Point ( 4298 ) = { -5.55833333, 56.37083333, 0.00000000 };
Point ( 4299 ) = { -5.56250000, 56.37500000, 0.00000000 };
Point ( 4300 ) = { -5.57083333, 56.37500000, 0.00000000 };
Point ( 4301 ) = { -5.57916667, 56.37500000, 0.00000000 };
Point ( 4302 ) = { -5.58750000, 56.37500000, 0.00000000 };
Point ( 4303 ) = { -5.59166667, 56.37916667, 0.00000000 };
Point ( 4304 ) = { -5.59166667, 56.38750000, 0.00000000 };
Point ( 4305 ) = { -5.58750000, 56.39166667, 0.00000000 };
Point ( 4306 ) = { -5.57916667, 56.39166667, 0.00000000 };
Point ( 4307 ) = { -5.57500000, 56.39583333, 0.00000000 };
Point ( 4308 ) = { -5.57083333, 56.40000000, 0.00000000 };
Point ( 4309 ) = { -5.56666667, 56.40416667, 0.00000000 };
Point ( 4310 ) = { -5.56250000, 56.40833333, 0.00000000 };
Point ( 4311 ) = { -5.55833333, 56.41250000, 0.00000000 };
Point ( 4312 ) = { -5.55416667, 56.41666667, 0.00000000 };
Point ( 4313 ) = { -5.54583333, 56.41666667, 0.00000000 };
Point ( 4314 ) = { -5.53750000, 56.41666667, 0.00000000 };
Point ( 4315 ) = { -5.52916667, 56.41666667, 0.00000000 };
Point ( 4316 ) = { -5.52083333, 56.41666667, 0.00000000 };
Point ( 4317 ) = { -5.51666667, 56.42083333, 0.00000000 };
Point ( 4318 ) = { -5.51250000, 56.42500000, 0.00000000 };
Point ( 4319 ) = { -5.50416667, 56.42500000, 0.00000000 };
Point ( 4320 ) = { -5.49583333, 56.42500000, 0.00000000 };
Point ( 4321 ) = { -5.49166667, 56.42916667, 0.00000000 };
Point ( 4322 ) = { -5.48750000, 56.43333333, 0.00000000 };
Point ( 4323 ) = { -5.48333333, 56.43750000, 0.00000000 };
Point ( 4324 ) = { -5.47916667, 56.44166667, 0.00000000 };
Point ( 4325 ) = { -5.47083333, 56.44166667, 0.00000000 };
Point ( 4326 ) = { -5.46666667, 56.44583333, 0.00000000 };
Point ( 4327 ) = { -5.46250000, 56.45000000, 0.00000000 };
Point ( 4328 ) = { -5.45416667, 56.45000000, 0.00000000 };
Point ( 4329 ) = { -5.45000000, 56.45416667, 0.00000000 };
Point ( 4330 ) = { -5.44583333, 56.45833333, 0.00000000 };
Point ( 4331 ) = { -5.43750000, 56.45833333, 0.00000000 };
Point ( 4332 ) = { -5.42916667, 56.45833333, 0.00000000 };
Point ( 4333 ) = { -5.42083333, 56.45833333, 0.00000000 };
Point ( 4334 ) = { -5.41250000, 56.45833333, 0.00000000 };
Point ( 4335 ) = { -5.40833333, 56.46250000, 0.00000000 };
Point ( 4336 ) = { -5.40833333, 56.47083333, 0.00000000 };
Point ( 4337 ) = { -5.40833333, 56.47916667, 0.00000000 };
Point ( 4338 ) = { -5.40833333, 56.48750000, 0.00000000 };
Point ( 4339 ) = { -5.41250000, 56.49166667, 0.00000000 };
Point ( 4340 ) = { -5.42083333, 56.49166667, 0.00000000 };
Point ( 4341 ) = { -5.42916667, 56.49166667, 0.00000000 };
Point ( 4342 ) = { -5.43333333, 56.48750000, 0.00000000 };
Point ( 4343 ) = { -5.43333333, 56.47916667, 0.00000000 };
Point ( 4344 ) = { -5.43750000, 56.47500000, 0.00000000 };
Point ( 4345 ) = { -5.44583333, 56.47500000, 0.00000000 };
Point ( 4346 ) = { -5.45416667, 56.47500000, 0.00000000 };
Point ( 4347 ) = { -5.45833333, 56.47916667, 0.00000000 };
Point ( 4348 ) = { -5.46250000, 56.48333333, 0.00000000 };
Point ( 4349 ) = { -5.46666667, 56.47916667, 0.00000000 };
Point ( 4350 ) = { -5.47083333, 56.47500000, 0.00000000 };
Point ( 4351 ) = { -5.47500000, 56.47916667, 0.00000000 };
Point ( 4352 ) = { -5.47500000, 56.48750000, 0.00000000 };
Point ( 4353 ) = { -5.47083333, 56.49166667, 0.00000000 };
Point ( 4354 ) = { -5.46250000, 56.49166667, 0.00000000 };
Point ( 4355 ) = { -5.45833333, 56.49583333, 0.00000000 };
Point ( 4356 ) = { -5.45416667, 56.50000000, 0.00000000 };
Point ( 4357 ) = { -5.45000000, 56.50416667, 0.00000000 };
Point ( 4358 ) = { -5.45000000, 56.51250000, 0.00000000 };
Point ( 4359 ) = { -5.45416667, 56.51666667, 0.00000000 };
Point ( 4360 ) = { -5.45833333, 56.52083333, 0.00000000 };
Point ( 4361 ) = { -5.46250000, 56.52500000, 0.00000000 };
Point ( 4362 ) = { -5.47083333, 56.52500000, 0.00000000 };
Point ( 4363 ) = { -5.47500000, 56.52083333, 0.00000000 };
Point ( 4364 ) = { -5.47916667, 56.51666667, 0.00000000 };
Point ( 4365 ) = { -5.48333333, 56.51250000, 0.00000000 };
Point ( 4366 ) = { -5.48750000, 56.50833333, 0.00000000 };
Point ( 4367 ) = { -5.49166667, 56.50416667, 0.00000000 };
Point ( 4368 ) = { -5.49583333, 56.50000000, 0.00000000 };
Point ( 4369 ) = { -5.50000000, 56.49583333, 0.00000000 };
Point ( 4370 ) = { -5.50416667, 56.49166667, 0.00000000 };
Point ( 4371 ) = { -5.50833333, 56.48750000, 0.00000000 };
Point ( 4372 ) = { -5.51250000, 56.48333333, 0.00000000 };
Point ( 4373 ) = { -5.51666667, 56.48750000, 0.00000000 };
Point ( 4374 ) = { -5.52083333, 56.49166667, 0.00000000 };
Point ( 4375 ) = { -5.52500000, 56.48750000, 0.00000000 };
Point ( 4376 ) = { -5.52916667, 56.48333333, 0.00000000 };
Point ( 4377 ) = { -5.53750000, 56.48333333, 0.00000000 };
Point ( 4378 ) = { -5.54166667, 56.47916667, 0.00000000 };
Point ( 4379 ) = { -5.54583333, 56.47500000, 0.00000000 };
Point ( 4380 ) = { -5.55416667, 56.47500000, 0.00000000 };
Point ( 4381 ) = { -5.55833333, 56.47083333, 0.00000000 };
Point ( 4382 ) = { -5.56250000, 56.46666667, 0.00000000 };
Point ( 4383 ) = { -5.57083333, 56.46666667, 0.00000000 };
Point ( 4384 ) = { -5.57500000, 56.46250000, 0.00000000 };
Point ( 4385 ) = { -5.57916667, 56.45833333, 0.00000000 };
Point ( 4386 ) = { -5.58750000, 56.45833333, 0.00000000 };
Point ( 4387 ) = { -5.59583333, 56.45833333, 0.00000000 };
Point ( 4388 ) = { -5.60000000, 56.46250000, 0.00000000 };
Point ( 4389 ) = { -5.59583333, 56.46666667, 0.00000000 };
Point ( 4390 ) = { -5.59166667, 56.47083333, 0.00000000 };
Point ( 4391 ) = { -5.58750000, 56.47500000, 0.00000000 };
Point ( 4392 ) = { -5.58333333, 56.47916667, 0.00000000 };
Point ( 4393 ) = { -5.57916667, 56.48333333, 0.00000000 };
Point ( 4394 ) = { -5.57500000, 56.48750000, 0.00000000 };
Point ( 4395 ) = { -5.57916667, 56.49166667, 0.00000000 };
Point ( 4396 ) = { -5.58750000, 56.49166667, 0.00000000 };
Point ( 4397 ) = { -5.59166667, 56.49583333, 0.00000000 };
Point ( 4398 ) = { -5.58750000, 56.50000000, 0.00000000 };
Point ( 4399 ) = { -5.57916667, 56.50000000, 0.00000000 };
Point ( 4400 ) = { -5.57083333, 56.50000000, 0.00000000 };
Point ( 4401 ) = { -5.56250000, 56.50000000, 0.00000000 };
Point ( 4402 ) = { -5.55833333, 56.50416667, 0.00000000 };
Point ( 4403 ) = { -5.55416667, 56.50833333, 0.00000000 };
Point ( 4404 ) = { -5.54583333, 56.50833333, 0.00000000 };
Point ( 4405 ) = { -5.53750000, 56.50833333, 0.00000000 };
Point ( 4406 ) = { -5.53333333, 56.51250000, 0.00000000 };
Point ( 4407 ) = { -5.52916667, 56.51666667, 0.00000000 };
Point ( 4408 ) = { -5.52083333, 56.51666667, 0.00000000 };
Point ( 4409 ) = { -5.51666667, 56.52083333, 0.00000000 };
Point ( 4410 ) = { -5.51250000, 56.52500000, 0.00000000 };
Point ( 4411 ) = { -5.50833333, 56.52916667, 0.00000000 };
Point ( 4412 ) = { -5.50416667, 56.53333333, 0.00000000 };
Point ( 4413 ) = { -5.50000000, 56.53750000, 0.00000000 };
Point ( 4414 ) = { -5.49583333, 56.54166667, 0.00000000 };
Point ( 4415 ) = { -5.48750000, 56.54166667, 0.00000000 };
Point ( 4416 ) = { -5.48333333, 56.54583333, 0.00000000 };
Point ( 4417 ) = { -5.47916667, 56.55000000, 0.00000000 };
Point ( 4418 ) = { -5.47500000, 56.55416667, 0.00000000 };
Point ( 4419 ) = { -5.47083333, 56.55833333, 0.00000000 };
Point ( 4420 ) = { -5.46250000, 56.55833333, 0.00000000 };
Point ( 4421 ) = { -5.45416667, 56.55833333, 0.00000000 };
Point ( 4422 ) = { -5.44583333, 56.55833333, 0.00000000 };
Point ( 4423 ) = { -5.44166667, 56.56250000, 0.00000000 };
Point ( 4424 ) = { -5.43750000, 56.56666667, 0.00000000 };
Point ( 4425 ) = { -5.42916667, 56.56666667, 0.00000000 };
Point ( 4426 ) = { -5.42500000, 56.56250000, 0.00000000 };
Point ( 4427 ) = { -5.42500000, 56.55416667, 0.00000000 };
Point ( 4428 ) = { -5.42083333, 56.55000000, 0.00000000 };
Point ( 4429 ) = { -5.41666667, 56.55416667, 0.00000000 };
Point ( 4430 ) = { -5.41666667, 56.56250000, 0.00000000 };
Point ( 4431 ) = { -5.41250000, 56.56666667, 0.00000000 };
Point ( 4432 ) = { -5.40416667, 56.56666667, 0.00000000 };
Point ( 4433 ) = { -5.39583333, 56.56666667, 0.00000000 };
Point ( 4434 ) = { -5.38750000, 56.56666667, 0.00000000 };
Point ( 4435 ) = { -5.38333333, 56.57083333, 0.00000000 };
Point ( 4436 ) = { -5.38750000, 56.57500000, 0.00000000 };
Point ( 4437 ) = { -5.39583333, 56.57500000, 0.00000000 };
Point ( 4438 ) = { -5.40000000, 56.57916667, 0.00000000 };
Point ( 4439 ) = { -5.40416667, 56.58333333, 0.00000000 };
Point ( 4440 ) = { -5.40833333, 56.58750000, 0.00000000 };
Point ( 4441 ) = { -5.40416667, 56.59166667, 0.00000000 };
Point ( 4442 ) = { -5.40000000, 56.59583333, 0.00000000 };
Point ( 4443 ) = { -5.39583333, 56.60000000, 0.00000000 };
Point ( 4444 ) = { -5.38750000, 56.60000000, 0.00000000 };
Point ( 4445 ) = { -5.38333333, 56.59583333, 0.00000000 };
Point ( 4446 ) = { -5.37916667, 56.59166667, 0.00000000 };
Point ( 4447 ) = { -5.37500000, 56.59583333, 0.00000000 };
Point ( 4448 ) = { -5.37083333, 56.60000000, 0.00000000 };
Point ( 4449 ) = { -5.36666667, 56.60416667, 0.00000000 };
Point ( 4450 ) = { -5.36250000, 56.60833333, 0.00000000 };
Point ( 4451 ) = { -5.35416667, 56.60833333, 0.00000000 };
Point ( 4452 ) = { -5.35000000, 56.61250000, 0.00000000 };
Point ( 4453 ) = { -5.34583333, 56.61666667, 0.00000000 };
Point ( 4454 ) = { -5.34166667, 56.62083333, 0.00000000 };
Point ( 4455 ) = { -5.34166667, 56.62916667, 0.00000000 };
Point ( 4456 ) = { -5.33750000, 56.63333333, 0.00000000 };
Point ( 4457 ) = { -5.33333333, 56.62916667, 0.00000000 };
Point ( 4458 ) = { -5.32916667, 56.62500000, 0.00000000 };
Point ( 4459 ) = { -5.32083333, 56.62500000, 0.00000000 };
Point ( 4460 ) = { -5.31666667, 56.62916667, 0.00000000 };
Point ( 4461 ) = { -5.31250000, 56.63333333, 0.00000000 };
Point ( 4462 ) = { -5.30833333, 56.63750000, 0.00000000 };
Point ( 4463 ) = { -5.31250000, 56.64166667, 0.00000000 };
Point ( 4464 ) = { -5.31666667, 56.64583333, 0.00000000 };
Point ( 4465 ) = { -5.32083333, 56.65000000, 0.00000000 };
Point ( 4466 ) = { -5.32500000, 56.65416667, 0.00000000 };
Point ( 4467 ) = { -5.32083333, 56.65833333, 0.00000000 };
Point ( 4468 ) = { -5.31250000, 56.65833333, 0.00000000 };
Point ( 4469 ) = { -5.30833333, 56.66250000, 0.00000000 };
Point ( 4470 ) = { -5.30416667, 56.66666667, 0.00000000 };
Point ( 4471 ) = { -5.29583333, 56.66666667, 0.00000000 };
Point ( 4472 ) = { -5.28750000, 56.66666667, 0.00000000 };
Point ( 4473 ) = { -5.28333333, 56.67083333, 0.00000000 };
Point ( 4474 ) = { -5.27916667, 56.67500000, 0.00000000 };
Point ( 4475 ) = { -5.27083333, 56.67500000, 0.00000000 };
Point ( 4476 ) = { -5.26250000, 56.67500000, 0.00000000 };
Point ( 4477 ) = { -5.25416667, 56.67500000, 0.00000000 };
Point ( 4478 ) = { -5.24583333, 56.67500000, 0.00000000 };
Point ( 4479 ) = { -5.24166667, 56.67916667, 0.00000000 };
Point ( 4480 ) = { -5.23750000, 56.68333333, 0.00000000 };
Point ( 4481 ) = { -5.23333333, 56.68750000, 0.00000000 };
Point ( 4482 ) = { -5.22916667, 56.69166667, 0.00000000 };
Point ( 4483 ) = { -5.22500000, 56.69583333, 0.00000000 };
Point ( 4484 ) = { -5.22916667, 56.70000000, 0.00000000 };
Point ( 4485 ) = { -5.23750000, 56.70000000, 0.00000000 };
Point ( 4486 ) = { -5.24583333, 56.70000000, 0.00000000 };
Point ( 4487 ) = { -5.25000000, 56.70416667, 0.00000000 };
Point ( 4488 ) = { -5.24583333, 56.70833333, 0.00000000 };
Point ( 4489 ) = { -5.24166667, 56.71250000, 0.00000000 };
Point ( 4490 ) = { -5.24583333, 56.71666667, 0.00000000 };
Point ( 4491 ) = { -5.25416667, 56.71666667, 0.00000000 };
Point ( 4492 ) = { -5.26250000, 56.71666667, 0.00000000 };
Point ( 4493 ) = { -5.26666667, 56.71250000, 0.00000000 };
Point ( 4494 ) = { -5.27083333, 56.70833333, 0.00000000 };
Point ( 4495 ) = { -5.27500000, 56.70416667, 0.00000000 };
Point ( 4496 ) = { -5.27916667, 56.70000000, 0.00000000 };
Point ( 4497 ) = { -5.28750000, 56.70000000, 0.00000000 };
Point ( 4498 ) = { -5.29166667, 56.70416667, 0.00000000 };
Point ( 4499 ) = { -5.29583333, 56.70833333, 0.00000000 };
Point ( 4500 ) = { -5.30416667, 56.70833333, 0.00000000 };
Point ( 4501 ) = { -5.30833333, 56.70416667, 0.00000000 };
Point ( 4502 ) = { -5.31250000, 56.70000000, 0.00000000 };
Point ( 4503 ) = { -5.31666667, 56.69583333, 0.00000000 };
Point ( 4504 ) = { -5.32083333, 56.69166667, 0.00000000 };
Point ( 4505 ) = { -5.32916667, 56.69166667, 0.00000000 };
Point ( 4506 ) = { -5.33333333, 56.68750000, 0.00000000 };
Point ( 4507 ) = { -5.33750000, 56.68333333, 0.00000000 };
Point ( 4508 ) = { -5.34583333, 56.68333333, 0.00000000 };
Point ( 4509 ) = { -5.35000000, 56.67916667, 0.00000000 };
Point ( 4510 ) = { -5.35416667, 56.67500000, 0.00000000 };
Point ( 4511 ) = { -5.35833333, 56.67083333, 0.00000000 };
Point ( 4512 ) = { -5.36250000, 56.66666667, 0.00000000 };
Point ( 4513 ) = { -5.36666667, 56.66250000, 0.00000000 };
Point ( 4514 ) = { -5.37083333, 56.65833333, 0.00000000 };
Point ( 4515 ) = { -5.37916667, 56.65833333, 0.00000000 };
Point ( 4516 ) = { -5.38333333, 56.65416667, 0.00000000 };
Point ( 4517 ) = { -5.38750000, 56.65000000, 0.00000000 };
Point ( 4518 ) = { -5.39166667, 56.64583333, 0.00000000 };
Point ( 4519 ) = { -5.39583333, 56.64166667, 0.00000000 };
Point ( 4520 ) = { -5.40416667, 56.64166667, 0.00000000 };
Point ( 4521 ) = { -5.41250000, 56.64166667, 0.00000000 };
Point ( 4522 ) = { -5.42083333, 56.64166667, 0.00000000 };
Point ( 4523 ) = { -5.42916667, 56.64166667, 0.00000000 };
Point ( 4524 ) = { -5.43333333, 56.63750000, 0.00000000 };
Point ( 4525 ) = { -5.43750000, 56.63333333, 0.00000000 };
Point ( 4526 ) = { -5.44166667, 56.62916667, 0.00000000 };
Point ( 4527 ) = { -5.44583333, 56.62500000, 0.00000000 };
Point ( 4528 ) = { -5.45000000, 56.62083333, 0.00000000 };
Point ( 4529 ) = { -5.45416667, 56.61666667, 0.00000000 };
Point ( 4530 ) = { -5.46250000, 56.61666667, 0.00000000 };
Point ( 4531 ) = { -5.46666667, 56.61250000, 0.00000000 };
Point ( 4532 ) = { -5.47083333, 56.60833333, 0.00000000 };
Point ( 4533 ) = { -5.47916667, 56.60833333, 0.00000000 };
Point ( 4534 ) = { -5.48750000, 56.60833333, 0.00000000 };
Point ( 4535 ) = { -5.49166667, 56.60416667, 0.00000000 };
Point ( 4536 ) = { -5.49583333, 56.60000000, 0.00000000 };
Point ( 4537 ) = { -5.50000000, 56.59583333, 0.00000000 };
Point ( 4538 ) = { -5.50416667, 56.59166667, 0.00000000 };
Point ( 4539 ) = { -5.50833333, 56.58750000, 0.00000000 };
Point ( 4540 ) = { -5.51250000, 56.58333333, 0.00000000 };
Point ( 4541 ) = { -5.51666667, 56.57916667, 0.00000000 };
Point ( 4542 ) = { -5.51666667, 56.57083333, 0.00000000 };
Point ( 4543 ) = { -5.52083333, 56.56666667, 0.00000000 };
Point ( 4544 ) = { -5.52916667, 56.56666667, 0.00000000 };
Point ( 4545 ) = { -5.53333333, 56.56250000, 0.00000000 };
Point ( 4546 ) = { -5.53750000, 56.55833333, 0.00000000 };
Point ( 4547 ) = { -5.54166667, 56.55416667, 0.00000000 };
Point ( 4548 ) = { -5.54583333, 56.55000000, 0.00000000 };
Point ( 4549 ) = { -5.55416667, 56.55000000, 0.00000000 };
Point ( 4550 ) = { -5.55833333, 56.54583333, 0.00000000 };
Point ( 4551 ) = { -5.56250000, 56.54166667, 0.00000000 };
Point ( 4552 ) = { -5.56666667, 56.53750000, 0.00000000 };
Point ( 4553 ) = { -5.57083333, 56.53333333, 0.00000000 };
Point ( 4554 ) = { -5.57916667, 56.53333333, 0.00000000 };
Point ( 4555 ) = { -5.58333333, 56.52916667, 0.00000000 };
Point ( 4556 ) = { -5.58750000, 56.52500000, 0.00000000 };
Point ( 4557 ) = { -5.59583333, 56.52500000, 0.00000000 };
Point ( 4558 ) = { -5.60000000, 56.52083333, 0.00000000 };
Point ( 4559 ) = { -5.60416667, 56.51666667, 0.00000000 };
Point ( 4560 ) = { -5.61250000, 56.51666667, 0.00000000 };
Point ( 4561 ) = { -5.62083333, 56.51666667, 0.00000000 };
Point ( 4562 ) = { -5.62500000, 56.51250000, 0.00000000 };
Point ( 4563 ) = { -5.62916667, 56.50833333, 0.00000000 };
Point ( 4564 ) = { -5.63750000, 56.50833333, 0.00000000 };
Point ( 4565 ) = { -5.64583333, 56.50833333, 0.00000000 };
Point ( 4566 ) = { -5.65000000, 56.50416667, 0.00000000 };
Point ( 4567 ) = { -5.65416667, 56.50000000, 0.00000000 };
Point ( 4568 ) = { -5.66250000, 56.50000000, 0.00000000 };
Point ( 4569 ) = { -5.67083333, 56.50000000, 0.00000000 };
Point ( 4570 ) = { -5.67500000, 56.49583333, 0.00000000 };
Point ( 4571 ) = { -5.67916667, 56.49166667, 0.00000000 };
Point ( 4572 ) = { -5.68750000, 56.49166667, 0.00000000 };
Point ( 4573 ) = { -5.69166667, 56.49583333, 0.00000000 };
Point ( 4574 ) = { -5.69583333, 56.50000000, 0.00000000 };
Point ( 4575 ) = { -5.70000000, 56.50416667, 0.00000000 };
Point ( 4576 ) = { -5.70416667, 56.50833333, 0.00000000 };
Point ( 4577 ) = { -5.71250000, 56.50833333, 0.00000000 };
Point ( 4578 ) = { -5.72083333, 56.50833333, 0.00000000 };
Point ( 4579 ) = { -5.72500000, 56.51250000, 0.00000000 };
Point ( 4580 ) = { -5.72916667, 56.51666667, 0.00000000 };
Point ( 4581 ) = { -5.73750000, 56.51666667, 0.00000000 };
Point ( 4582 ) = { -5.74583333, 56.51666667, 0.00000000 };
Point ( 4583 ) = { -5.75416667, 56.51666667, 0.00000000 };
Point ( 4584 ) = { -5.76250000, 56.51666667, 0.00000000 };
Point ( 4585 ) = { -5.76666667, 56.52083333, 0.00000000 };
Point ( 4586 ) = { -5.77083333, 56.52500000, 0.00000000 };
Point ( 4587 ) = { -5.77500000, 56.52916667, 0.00000000 };
Point ( 4588 ) = { -5.77916667, 56.53333333, 0.00000000 };
Point ( 4589 ) = { -5.78750000, 56.53333333, 0.00000000 };
Point ( 4590 ) = { -5.79583333, 56.53333333, 0.00000000 };
Point ( 4591 ) = { -5.80416667, 56.53333333, 0.00000000 };
Point ( 4592 ) = { -5.81250000, 56.53333333, 0.00000000 };
Point ( 4593 ) = { -5.82083333, 56.53333333, 0.00000000 };
Point ( 4594 ) = { -5.82916667, 56.53333333, 0.00000000 };
Point ( 4595 ) = { -5.83750000, 56.53333333, 0.00000000 };
Point ( 4596 ) = { -5.84166667, 56.53750000, 0.00000000 };
Point ( 4597 ) = { -5.84583333, 56.54166667, 0.00000000 };
Point ( 4598 ) = { -5.85416667, 56.54166667, 0.00000000 };
Point ( 4599 ) = { -5.86250000, 56.54166667, 0.00000000 };
Point ( 4600 ) = { -5.87083333, 56.54166667, 0.00000000 };
Point ( 4601 ) = { -5.87500000, 56.54583333, 0.00000000 };
Point ( 4602 ) = { -5.87916667, 56.55000000, 0.00000000 };
Point ( 4603 ) = { -5.88750000, 56.55000000, 0.00000000 };
Point ( 4604 ) = { -5.89583333, 56.55000000, 0.00000000 };
Point ( 4605 ) = { -5.90416667, 56.55000000, 0.00000000 };
Point ( 4606 ) = { -5.91250000, 56.55000000, 0.00000000 };
Point ( 4607 ) = { -5.91666667, 56.55416667, 0.00000000 };
Point ( 4608 ) = { -5.92083333, 56.55833333, 0.00000000 };
Point ( 4609 ) = { -5.92916667, 56.55833333, 0.00000000 };
Point ( 4610 ) = { -5.93333333, 56.56250000, 0.00000000 };
Point ( 4611 ) = { -5.93750000, 56.56666667, 0.00000000 };
Point ( 4612 ) = { -5.94166667, 56.57083333, 0.00000000 };
Point ( 4613 ) = { -5.94583333, 56.57500000, 0.00000000 };
Point ( 4614 ) = { -5.95416667, 56.57500000, 0.00000000 };
Point ( 4615 ) = { -5.95833333, 56.57916667, 0.00000000 };
Point ( 4616 ) = { -5.96250000, 56.58333333, 0.00000000 };
Point ( 4617 ) = { -5.96666667, 56.58750000, 0.00000000 };
Point ( 4618 ) = { -5.97083333, 56.59166667, 0.00000000 };
Point ( 4619 ) = { -5.97500000, 56.59583333, 0.00000000 };
Point ( 4620 ) = { -5.97916667, 56.60000000, 0.00000000 };
Point ( 4621 ) = { -5.98333333, 56.60416667, 0.00000000 };
Point ( 4622 ) = { -5.98750000, 56.60833333, 0.00000000 };
Point ( 4623 ) = { -5.99166667, 56.61250000, 0.00000000 };
Point ( 4624 ) = { -5.99583333, 56.61666667, 0.00000000 };
Point ( 4625 ) = { -6.00000000, 56.62083333, 0.00000000 };
Point ( 4626 ) = { -6.00416667, 56.62500000, 0.00000000 };
Point ( 4627 ) = { -6.00833333, 56.62916667, 0.00000000 };
Point ( 4628 ) = { -6.00833333, 56.63750000, 0.00000000 };
Point ( 4629 ) = { -6.00833333, 56.64583333, 0.00000000 };
Point ( 4630 ) = { -6.00416667, 56.65000000, 0.00000000 };
Point ( 4631 ) = { -5.99583333, 56.65000000, 0.00000000 };
Point ( 4632 ) = { -5.98750000, 56.65000000, 0.00000000 };
Point ( 4633 ) = { -5.97916667, 56.65000000, 0.00000000 };
Point ( 4634 ) = { -5.97083333, 56.65000000, 0.00000000 };
Point ( 4635 ) = { -5.96666667, 56.65416667, 0.00000000 };
Point ( 4636 ) = { -5.96250000, 56.65833333, 0.00000000 };
Point ( 4637 ) = { -5.95416667, 56.65833333, 0.00000000 };
Point ( 4638 ) = { -5.95000000, 56.66250000, 0.00000000 };
Point ( 4639 ) = { -5.94583333, 56.66666667, 0.00000000 };
Point ( 4640 ) = { -5.94166667, 56.67083333, 0.00000000 };
Point ( 4641 ) = { -5.94583333, 56.67500000, 0.00000000 };
Point ( 4642 ) = { -5.95000000, 56.67916667, 0.00000000 };
Point ( 4643 ) = { -5.95416667, 56.68333333, 0.00000000 };
Point ( 4644 ) = { -5.95833333, 56.67916667, 0.00000000 };
Point ( 4645 ) = { -5.96250000, 56.67500000, 0.00000000 };
Point ( 4646 ) = { -5.96666667, 56.67083333, 0.00000000 };
Point ( 4647 ) = { -5.97083333, 56.66666667, 0.00000000 };
Point ( 4648 ) = { -5.97916667, 56.66666667, 0.00000000 };
Point ( 4649 ) = { -5.98333333, 56.67083333, 0.00000000 };
Point ( 4650 ) = { -5.98750000, 56.67500000, 0.00000000 };
Point ( 4651 ) = { -5.99583333, 56.67500000, 0.00000000 };
Point ( 4652 ) = { -6.00416667, 56.67500000, 0.00000000 };
Point ( 4653 ) = { -6.01250000, 56.67500000, 0.00000000 };
Point ( 4654 ) = { -6.02083333, 56.67500000, 0.00000000 };
Point ( 4655 ) = { -6.02916667, 56.67500000, 0.00000000 };
Point ( 4656 ) = { -6.03750000, 56.67500000, 0.00000000 };
Point ( 4657 ) = { -6.04166667, 56.67916667, 0.00000000 };
Point ( 4658 ) = { -6.04583333, 56.68333333, 0.00000000 };
Point ( 4659 ) = { -6.05000000, 56.68750000, 0.00000000 };
Point ( 4660 ) = { -6.05416667, 56.69166667, 0.00000000 };
Point ( 4661 ) = { -6.06250000, 56.69166667, 0.00000000 };
Point ( 4662 ) = { -6.07083333, 56.69166667, 0.00000000 };
Point ( 4663 ) = { -6.07916667, 56.69166667, 0.00000000 };
Point ( 4664 ) = { -6.08750000, 56.69166667, 0.00000000 };
Point ( 4665 ) = { -6.09166667, 56.68750000, 0.00000000 };
Point ( 4666 ) = { -6.09583333, 56.68333333, 0.00000000 };
Point ( 4667 ) = { -6.10000000, 56.68750000, 0.00000000 };
Point ( 4668 ) = { -6.10416667, 56.69166667, 0.00000000 };
Point ( 4669 ) = { -6.11250000, 56.69166667, 0.00000000 };
Point ( 4670 ) = { -6.12083333, 56.69166667, 0.00000000 };
Point ( 4671 ) = { -6.12500000, 56.68750000, 0.00000000 };
Point ( 4672 ) = { -6.12916667, 56.68333333, 0.00000000 };
Point ( 4673 ) = { -6.13750000, 56.68333333, 0.00000000 };
Point ( 4674 ) = { -6.14166667, 56.67916667, 0.00000000 };
Point ( 4675 ) = { -6.14583333, 56.67500000, 0.00000000 };
Point ( 4676 ) = { -6.15000000, 56.67916667, 0.00000000 };
Point ( 4677 ) = { -6.15416667, 56.68333333, 0.00000000 };
Point ( 4678 ) = { -6.16250000, 56.68333333, 0.00000000 };
Point ( 4679 ) = { -6.17083333, 56.68333333, 0.00000000 };
Point ( 4680 ) = { -6.17916667, 56.68333333, 0.00000000 };
Point ( 4681 ) = { -6.18750000, 56.68333333, 0.00000000 };
Point ( 4682 ) = { -6.19166667, 56.68750000, 0.00000000 };
Point ( 4683 ) = { -6.19583333, 56.69166667, 0.00000000 };
Point ( 4684 ) = { -6.20416667, 56.69166667, 0.00000000 };
Point ( 4685 ) = { -6.21250000, 56.69166667, 0.00000000 };
Point ( 4686 ) = { -6.21666667, 56.69583333, 0.00000000 };
Point ( 4687 ) = { -6.22083333, 56.70000000, 0.00000000 };
Point ( 4688 ) = { -6.22500000, 56.70416667, 0.00000000 };
Point ( 4689 ) = { -6.22916667, 56.70833333, 0.00000000 };
Point ( 4690 ) = { -6.23333333, 56.71250000, 0.00000000 };
Point ( 4691 ) = { -6.22916667, 56.71666667, 0.00000000 };
Point ( 4692 ) = { -6.22500000, 56.72083333, 0.00000000 };
Point ( 4693 ) = { -6.22500000, 56.72916667, 0.00000000 };
Point ( 4694 ) = { -6.22083333, 56.73333333, 0.00000000 };
Point ( 4695 ) = { -6.21666667, 56.73750000, 0.00000000 };
Point ( 4696 ) = { -6.21250000, 56.74166667, 0.00000000 };
Point ( 4697 ) = { -6.20416667, 56.74166667, 0.00000000 };
Point ( 4698 ) = { -6.19583333, 56.74166667, 0.00000000 };
Point ( 4699 ) = { -6.18750000, 56.74166667, 0.00000000 };
Point ( 4700 ) = { -6.18333333, 56.74583333, 0.00000000 };
Point ( 4701 ) = { -6.18750000, 56.75000000, 0.00000000 };
Point ( 4702 ) = { -6.19166667, 56.75416667, 0.00000000 };
Point ( 4703 ) = { -6.18750000, 56.75833333, 0.00000000 };
Point ( 4704 ) = { -6.17916667, 56.75833333, 0.00000000 };
Point ( 4705 ) = { -6.17083333, 56.75833333, 0.00000000 };
Point ( 4706 ) = { -6.16250000, 56.75833333, 0.00000000 };
Point ( 4707 ) = { -6.15833333, 56.76250000, 0.00000000 };
Point ( 4708 ) = { -6.15416667, 56.76666667, 0.00000000 };
Point ( 4709 ) = { -6.14583333, 56.76666667, 0.00000000 };
Point ( 4710 ) = { -6.13750000, 56.76666667, 0.00000000 };
Point ( 4711 ) = { -6.12916667, 56.76666667, 0.00000000 };
Point ( 4712 ) = { -6.12083333, 56.76666667, 0.00000000 };
Point ( 4713 ) = { -6.11250000, 56.76666667, 0.00000000 };
Point ( 4714 ) = { -6.10416667, 56.76666667, 0.00000000 };
Point ( 4715 ) = { -6.09583333, 56.76666667, 0.00000000 };
Point ( 4716 ) = { -6.08750000, 56.76666667, 0.00000000 };
Point ( 4717 ) = { -6.07916667, 56.76666667, 0.00000000 };
Point ( 4718 ) = { -6.07083333, 56.76666667, 0.00000000 };
Point ( 4719 ) = { -6.06250000, 56.76666667, 0.00000000 };
Point ( 4720 ) = { -6.05416667, 56.76666667, 0.00000000 };
Point ( 4721 ) = { -6.04583333, 56.76666667, 0.00000000 };
Point ( 4722 ) = { -6.03750000, 56.76666667, 0.00000000 };
Point ( 4723 ) = { -6.02916667, 56.76666667, 0.00000000 };
Point ( 4724 ) = { -6.02083333, 56.76666667, 0.00000000 };
Point ( 4725 ) = { -6.01666667, 56.77083333, 0.00000000 };
Point ( 4726 ) = { -6.01250000, 56.77500000, 0.00000000 };
Point ( 4727 ) = { -6.00416667, 56.77500000, 0.00000000 };
Point ( 4728 ) = { -5.99583333, 56.77500000, 0.00000000 };
Point ( 4729 ) = { -5.98750000, 56.77500000, 0.00000000 };
Point ( 4730 ) = { -5.97916667, 56.77500000, 0.00000000 };
Point ( 4731 ) = { -5.97500000, 56.77916667, 0.00000000 };
Point ( 4732 ) = { -5.97083333, 56.78333333, 0.00000000 };
Point ( 4733 ) = { -5.96666667, 56.78750000, 0.00000000 };
Point ( 4734 ) = { -5.96250000, 56.79166667, 0.00000000 };
Point ( 4735 ) = { -5.95833333, 56.78750000, 0.00000000 };
Point ( 4736 ) = { -5.95416667, 56.78333333, 0.00000000 };
Point ( 4737 ) = { -5.94583333, 56.78333333, 0.00000000 };
Point ( 4738 ) = { -5.94166667, 56.77916667, 0.00000000 };
Point ( 4739 ) = { -5.93750000, 56.77500000, 0.00000000 };
Point ( 4740 ) = { -5.93333333, 56.77083333, 0.00000000 };
Point ( 4741 ) = { -5.92916667, 56.76666667, 0.00000000 };
Point ( 4742 ) = { -5.92083333, 56.76666667, 0.00000000 };
Point ( 4743 ) = { -5.91666667, 56.76250000, 0.00000000 };
Point ( 4744 ) = { -5.91250000, 56.75833333, 0.00000000 };
Point ( 4745 ) = { -5.90416667, 56.75833333, 0.00000000 };
Point ( 4746 ) = { -5.90000000, 56.76250000, 0.00000000 };
Point ( 4747 ) = { -5.90000000, 56.77083333, 0.00000000 };
Point ( 4748 ) = { -5.89583333, 56.77500000, 0.00000000 };
Point ( 4749 ) = { -5.89166667, 56.77916667, 0.00000000 };
Point ( 4750 ) = { -5.89166667, 56.78750000, 0.00000000 };
Point ( 4751 ) = { -5.89583333, 56.79166667, 0.00000000 };
Point ( 4752 ) = { -5.90000000, 56.79583333, 0.00000000 };
Point ( 4753 ) = { -5.89583333, 56.80000000, 0.00000000 };
Point ( 4754 ) = { -5.89166667, 56.80416667, 0.00000000 };
Point ( 4755 ) = { -5.88750000, 56.80833333, 0.00000000 };
Point ( 4756 ) = { -5.88333333, 56.81250000, 0.00000000 };
Point ( 4757 ) = { -5.87916667, 56.81666667, 0.00000000 };
Point ( 4758 ) = { -5.87500000, 56.81250000, 0.00000000 };
Point ( 4759 ) = { -5.87083333, 56.80833333, 0.00000000 };
Point ( 4760 ) = { -5.86666667, 56.81250000, 0.00000000 };
Point ( 4761 ) = { -5.86666667, 56.82083333, 0.00000000 };
Point ( 4762 ) = { -5.86666667, 56.82916667, 0.00000000 };
Point ( 4763 ) = { -5.86250000, 56.83333333, 0.00000000 };
Point ( 4764 ) = { -5.85416667, 56.83333333, 0.00000000 };
Point ( 4765 ) = { -5.84583333, 56.83333333, 0.00000000 };
Point ( 4766 ) = { -5.83750000, 56.83333333, 0.00000000 };
Point ( 4767 ) = { -5.82916667, 56.83333333, 0.00000000 };
Point ( 4768 ) = { -5.82500000, 56.83750000, 0.00000000 };
Point ( 4769 ) = { -5.82083333, 56.84166667, 0.00000000 };
Point ( 4770 ) = { -5.81250000, 56.84166667, 0.00000000 };
Point ( 4771 ) = { -5.80416667, 56.84166667, 0.00000000 };
Point ( 4772 ) = { -5.79583333, 56.84166667, 0.00000000 };
Point ( 4773 ) = { -5.78750000, 56.84166667, 0.00000000 };
Point ( 4774 ) = { -5.77916667, 56.84166667, 0.00000000 };
Point ( 4775 ) = { -5.77500000, 56.84583333, 0.00000000 };
Point ( 4776 ) = { -5.77083333, 56.85000000, 0.00000000 };
Point ( 4777 ) = { -5.76250000, 56.85000000, 0.00000000 };
Point ( 4778 ) = { -5.75833333, 56.85416667, 0.00000000 };
Point ( 4779 ) = { -5.76250000, 56.85833333, 0.00000000 };
Point ( 4780 ) = { -5.77083333, 56.85833333, 0.00000000 };
Point ( 4781 ) = { -5.77916667, 56.85833333, 0.00000000 };
Point ( 4782 ) = { -5.78750000, 56.85833333, 0.00000000 };
Point ( 4783 ) = { -5.79166667, 56.86250000, 0.00000000 };
Point ( 4784 ) = { -5.78750000, 56.86666667, 0.00000000 };
Point ( 4785 ) = { -5.78333333, 56.87083333, 0.00000000 };
Point ( 4786 ) = { -5.77916667, 56.87500000, 0.00000000 };
Point ( 4787 ) = { -5.77083333, 56.87500000, 0.00000000 };
Point ( 4788 ) = { -5.76666667, 56.87916667, 0.00000000 };
Point ( 4789 ) = { -5.76250000, 56.88333333, 0.00000000 };
Point ( 4790 ) = { -5.75416667, 56.88333333, 0.00000000 };
Point ( 4791 ) = { -5.75000000, 56.88750000, 0.00000000 };
Point ( 4792 ) = { -5.75416667, 56.89166667, 0.00000000 };
Point ( 4793 ) = { -5.76250000, 56.89166667, 0.00000000 };
Point ( 4794 ) = { -5.77083333, 56.89166667, 0.00000000 };
Point ( 4795 ) = { -5.77916667, 56.89166667, 0.00000000 };
Point ( 4796 ) = { -5.78750000, 56.89166667, 0.00000000 };
Point ( 4797 ) = { -5.79583333, 56.89166667, 0.00000000 };
Point ( 4798 ) = { -5.80000000, 56.88750000, 0.00000000 };
Point ( 4799 ) = { -5.80416667, 56.88333333, 0.00000000 };
Point ( 4800 ) = { -5.81250000, 56.88333333, 0.00000000 };
Point ( 4801 ) = { -5.82083333, 56.88333333, 0.00000000 };
Point ( 4802 ) = { -5.82916667, 56.88333333, 0.00000000 };
Point ( 4803 ) = { -5.83333333, 56.87916667, 0.00000000 };
Point ( 4804 ) = { -5.83750000, 56.87500000, 0.00000000 };
Point ( 4805 ) = { -5.84583333, 56.87500000, 0.00000000 };
Point ( 4806 ) = { -5.85000000, 56.87916667, 0.00000000 };
Point ( 4807 ) = { -5.85416667, 56.88333333, 0.00000000 };
Point ( 4808 ) = { -5.86250000, 56.88333333, 0.00000000 };
Point ( 4809 ) = { -5.86666667, 56.87916667, 0.00000000 };
Point ( 4810 ) = { -5.87083333, 56.87500000, 0.00000000 };
Point ( 4811 ) = { -5.87916667, 56.87500000, 0.00000000 };
Point ( 4812 ) = { -5.88750000, 56.87500000, 0.00000000 };
Point ( 4813 ) = { -5.89583333, 56.87500000, 0.00000000 };
Point ( 4814 ) = { -5.90416667, 56.87500000, 0.00000000 };
Point ( 4815 ) = { -5.91250000, 56.87500000, 0.00000000 };
Point ( 4816 ) = { -5.91666667, 56.87916667, 0.00000000 };
Point ( 4817 ) = { -5.92083333, 56.88333333, 0.00000000 };
Point ( 4818 ) = { -5.92500000, 56.88750000, 0.00000000 };
Point ( 4819 ) = { -5.92083333, 56.89166667, 0.00000000 };
Point ( 4820 ) = { -5.91666667, 56.89583333, 0.00000000 };
Point ( 4821 ) = { -5.91250000, 56.90000000, 0.00000000 };
Point ( 4822 ) = { -5.90416667, 56.90000000, 0.00000000 };
Point ( 4823 ) = { -5.90000000, 56.90416667, 0.00000000 };
Point ( 4824 ) = { -5.89583333, 56.90833333, 0.00000000 };
Point ( 4825 ) = { -5.89166667, 56.91250000, 0.00000000 };
Point ( 4826 ) = { -5.89583333, 56.91666667, 0.00000000 };
Point ( 4827 ) = { -5.90000000, 56.92083333, 0.00000000 };
Point ( 4828 ) = { -5.89583333, 56.92500000, 0.00000000 };
Point ( 4829 ) = { -5.88750000, 56.92500000, 0.00000000 };
Point ( 4830 ) = { -5.87916667, 56.92500000, 0.00000000 };
Point ( 4831 ) = { -5.87500000, 56.92916667, 0.00000000 };
Point ( 4832 ) = { -5.87083333, 56.93333333, 0.00000000 };
Point ( 4833 ) = { -5.86666667, 56.93750000, 0.00000000 };
Point ( 4834 ) = { -5.86250000, 56.94166667, 0.00000000 };
Point ( 4835 ) = { -5.85833333, 56.94583333, 0.00000000 };
Point ( 4836 ) = { -5.85833333, 56.95416667, 0.00000000 };
Point ( 4837 ) = { -5.85416667, 56.95833333, 0.00000000 };
Point ( 4838 ) = { -5.85000000, 56.96250000, 0.00000000 };
Point ( 4839 ) = { -5.85000000, 56.97083333, 0.00000000 };
Point ( 4840 ) = { -5.85000000, 56.97916667, 0.00000000 };
Point ( 4841 ) = { -5.85000000, 56.98750000, 0.00000000 };
Point ( 4842 ) = { -5.84583333, 56.99166667, 0.00000000 };
Point ( 4843 ) = { -5.84166667, 56.99583333, 0.00000000 };
Point ( 4844 ) = { -5.83750000, 57.00000000, 0.00000000 };
Point ( 4845 ) = { -5.83333333, 57.00416667, 0.00000000 };
Point ( 4846 ) = { -5.82916667, 57.00833333, 0.00000000 };
Point ( 4847 ) = { -5.82500000, 57.01250000, 0.00000000 };
Point ( 4848 ) = { -5.82083333, 57.01666667, 0.00000000 };
Point ( 4849 ) = { -5.81250000, 57.01666667, 0.00000000 };
Point ( 4850 ) = { -5.80416667, 57.01666667, 0.00000000 };
Point ( 4851 ) = { -5.79583333, 57.01666667, 0.00000000 };
Point ( 4852 ) = { -5.78750000, 57.01666667, 0.00000000 };
Point ( 4853 ) = { -5.77916667, 57.01666667, 0.00000000 };
Point ( 4854 ) = { -5.77083333, 57.01666667, 0.00000000 };
Point ( 4855 ) = { -5.76666667, 57.02083333, 0.00000000 };
Point ( 4856 ) = { -5.76250000, 57.02500000, 0.00000000 };
Point ( 4857 ) = { -5.75833333, 57.02916667, 0.00000000 };
Point ( 4858 ) = { -5.75833333, 57.03750000, 0.00000000 };
Point ( 4859 ) = { -5.76250000, 57.04166667, 0.00000000 };
Point ( 4860 ) = { -5.77083333, 57.04166667, 0.00000000 };
Point ( 4861 ) = { -5.77916667, 57.04166667, 0.00000000 };
Point ( 4862 ) = { -5.78750000, 57.04166667, 0.00000000 };
Point ( 4863 ) = { -5.79166667, 57.04583333, 0.00000000 };
Point ( 4864 ) = { -5.79583333, 57.05000000, 0.00000000 };
Point ( 4865 ) = { -5.80000000, 57.05416667, 0.00000000 };
Point ( 4866 ) = { -5.80000000, 57.06250000, 0.00000000 };
Point ( 4867 ) = { -5.79583333, 57.06666667, 0.00000000 };
Point ( 4868 ) = { -5.79166667, 57.07083333, 0.00000000 };
Point ( 4869 ) = { -5.78750000, 57.07500000, 0.00000000 };
Point ( 4870 ) = { -5.78333333, 57.07916667, 0.00000000 };
Point ( 4871 ) = { -5.77916667, 57.08333333, 0.00000000 };
Point ( 4872 ) = { -5.77083333, 57.08333333, 0.00000000 };
Point ( 4873 ) = { -5.76666667, 57.08750000, 0.00000000 };
Point ( 4874 ) = { -5.76250000, 57.09166667, 0.00000000 };
Point ( 4875 ) = { -5.75416667, 57.09166667, 0.00000000 };
Point ( 4876 ) = { -5.74583333, 57.09166667, 0.00000000 };
Point ( 4877 ) = { -5.74166667, 57.09583333, 0.00000000 };
Point ( 4878 ) = { -5.73750000, 57.10000000, 0.00000000 };
Point ( 4879 ) = { -5.73333333, 57.10416667, 0.00000000 };
Point ( 4880 ) = { -5.72916667, 57.10833333, 0.00000000 };
Point ( 4881 ) = { -5.72500000, 57.11250000, 0.00000000 };
Point ( 4882 ) = { -5.72083333, 57.11666667, 0.00000000 };
Point ( 4883 ) = { -5.71666667, 57.12083333, 0.00000000 };
Point ( 4884 ) = { -5.71250000, 57.12500000, 0.00000000 };
Point ( 4885 ) = { -5.70416667, 57.12500000, 0.00000000 };
Point ( 4886 ) = { -5.69583333, 57.12500000, 0.00000000 };
Point ( 4887 ) = { -5.68750000, 57.12500000, 0.00000000 };
Point ( 4888 ) = { -5.67916667, 57.12500000, 0.00000000 };
Point ( 4889 ) = { -5.67083333, 57.12500000, 0.00000000 };
Point ( 4890 ) = { -5.66250000, 57.12500000, 0.00000000 };
Point ( 4891 ) = { -5.65833333, 57.12916667, 0.00000000 };
Point ( 4892 ) = { -5.65416667, 57.13333333, 0.00000000 };
Point ( 4893 ) = { -5.64583333, 57.13333333, 0.00000000 };
Point ( 4894 ) = { -5.63750000, 57.13333333, 0.00000000 };
Point ( 4895 ) = { -5.63333333, 57.12916667, 0.00000000 };
Point ( 4896 ) = { -5.62916667, 57.12500000, 0.00000000 };
Point ( 4897 ) = { -5.62083333, 57.12500000, 0.00000000 };
Point ( 4898 ) = { -5.61250000, 57.12500000, 0.00000000 };
Point ( 4899 ) = { -5.60416667, 57.12500000, 0.00000000 };
Point ( 4900 ) = { -5.59583333, 57.12500000, 0.00000000 };
Point ( 4901 ) = { -5.59166667, 57.12083333, 0.00000000 };
Point ( 4902 ) = { -5.58750000, 57.11666667, 0.00000000 };
Point ( 4903 ) = { -5.57916667, 57.11666667, 0.00000000 };
Point ( 4904 ) = { -5.57500000, 57.11250000, 0.00000000 };
Point ( 4905 ) = { -5.57083333, 57.10833333, 0.00000000 };
Point ( 4906 ) = { -5.56666667, 57.10416667, 0.00000000 };
Point ( 4907 ) = { -5.56250000, 57.10000000, 0.00000000 };
Point ( 4908 ) = { -5.55416667, 57.10000000, 0.00000000 };
Point ( 4909 ) = { -5.55000000, 57.09583333, 0.00000000 };
Point ( 4910 ) = { -5.54583333, 57.09166667, 0.00000000 };
Point ( 4911 ) = { -5.53750000, 57.09166667, 0.00000000 };
Point ( 4912 ) = { -5.52916667, 57.09166667, 0.00000000 };
Point ( 4913 ) = { -5.52500000, 57.08750000, 0.00000000 };
Point ( 4914 ) = { -5.52083333, 57.08333333, 0.00000000 };
Point ( 4915 ) = { -5.51666667, 57.08750000, 0.00000000 };
Point ( 4916 ) = { -5.51666667, 57.09583333, 0.00000000 };
Point ( 4917 ) = { -5.52083333, 57.10000000, 0.00000000 };
Point ( 4918 ) = { -5.52916667, 57.10000000, 0.00000000 };
Point ( 4919 ) = { -5.53750000, 57.10000000, 0.00000000 };
Point ( 4920 ) = { -5.54166667, 57.10416667, 0.00000000 };
Point ( 4921 ) = { -5.54583333, 57.10833333, 0.00000000 };
Point ( 4922 ) = { -5.55416667, 57.10833333, 0.00000000 };
Point ( 4923 ) = { -5.55833333, 57.11250000, 0.00000000 };
Point ( 4924 ) = { -5.55833333, 57.12083333, 0.00000000 };
Point ( 4925 ) = { -5.56250000, 57.12500000, 0.00000000 };
Point ( 4926 ) = { -5.56666667, 57.12916667, 0.00000000 };
Point ( 4927 ) = { -5.57083333, 57.13333333, 0.00000000 };
Point ( 4928 ) = { -5.57916667, 57.13333333, 0.00000000 };
Point ( 4929 ) = { -5.58750000, 57.13333333, 0.00000000 };
Point ( 4930 ) = { -5.59166667, 57.13750000, 0.00000000 };
Point ( 4931 ) = { -5.59583333, 57.14166667, 0.00000000 };
Point ( 4932 ) = { -5.60416667, 57.14166667, 0.00000000 };
Point ( 4933 ) = { -5.61250000, 57.14166667, 0.00000000 };
Point ( 4934 ) = { -5.62083333, 57.14166667, 0.00000000 };
Point ( 4935 ) = { -5.62916667, 57.14166667, 0.00000000 };
Point ( 4936 ) = { -5.63750000, 57.14166667, 0.00000000 };
Point ( 4937 ) = { -5.64583333, 57.14166667, 0.00000000 };
Point ( 4938 ) = { -5.65416667, 57.14166667, 0.00000000 };
Point ( 4939 ) = { -5.66250000, 57.14166667, 0.00000000 };
Point ( 4940 ) = { -5.67083333, 57.14166667, 0.00000000 };
Point ( 4941 ) = { -5.67916667, 57.14166667, 0.00000000 };
Point ( 4942 ) = { -5.68333333, 57.14583333, 0.00000000 };
Point ( 4943 ) = { -5.68750000, 57.15000000, 0.00000000 };
Point ( 4944 ) = { -5.69166667, 57.15416667, 0.00000000 };
Point ( 4945 ) = { -5.69166667, 57.16250000, 0.00000000 };
Point ( 4946 ) = { -5.69166667, 57.17083333, 0.00000000 };
Point ( 4947 ) = { -5.68750000, 57.17500000, 0.00000000 };
Point ( 4948 ) = { -5.68333333, 57.17916667, 0.00000000 };
Point ( 4949 ) = { -5.67916667, 57.18333333, 0.00000000 };
Point ( 4950 ) = { -5.67500000, 57.18750000, 0.00000000 };
Point ( 4951 ) = { -5.67083333, 57.19166667, 0.00000000 };
Point ( 4952 ) = { -5.66250000, 57.19166667, 0.00000000 };
Point ( 4953 ) = { -5.65833333, 57.19583333, 0.00000000 };
Point ( 4954 ) = { -5.65416667, 57.20000000, 0.00000000 };
Point ( 4955 ) = { -5.64583333, 57.20000000, 0.00000000 };
Point ( 4956 ) = { -5.64166667, 57.20416667, 0.00000000 };
Point ( 4957 ) = { -5.63750000, 57.20833333, 0.00000000 };
Point ( 4958 ) = { -5.63333333, 57.21250000, 0.00000000 };
Point ( 4959 ) = { -5.63333333, 57.22083333, 0.00000000 };
Point ( 4960 ) = { -5.63750000, 57.22500000, 0.00000000 };
Point ( 4961 ) = { -5.64583333, 57.22500000, 0.00000000 };
Point ( 4962 ) = { -5.65416667, 57.22500000, 0.00000000 };
Point ( 4963 ) = { -5.65833333, 57.22083333, 0.00000000 };
Point ( 4964 ) = { -5.66250000, 57.21666667, 0.00000000 };
Point ( 4965 ) = { -5.66666667, 57.21250000, 0.00000000 };
Point ( 4966 ) = { -5.66666667, 57.20416667, 0.00000000 };
Point ( 4967 ) = { -5.67083333, 57.20000000, 0.00000000 };
Point ( 4968 ) = { -5.67916667, 57.20000000, 0.00000000 };
Point ( 4969 ) = { -5.68333333, 57.19583333, 0.00000000 };
Point ( 4970 ) = { -5.68750000, 57.19166667, 0.00000000 };
Point ( 4971 ) = { -5.69583333, 57.19166667, 0.00000000 };
Point ( 4972 ) = { -5.70000000, 57.18750000, 0.00000000 };
Point ( 4973 ) = { -5.70416667, 57.18333333, 0.00000000 };
Point ( 4974 ) = { -5.71250000, 57.18333333, 0.00000000 };
Point ( 4975 ) = { -5.71666667, 57.17916667, 0.00000000 };
Point ( 4976 ) = { -5.72083333, 57.17500000, 0.00000000 };
Point ( 4977 ) = { -5.72916667, 57.17500000, 0.00000000 };
Point ( 4978 ) = { -5.73750000, 57.17500000, 0.00000000 };
Point ( 4979 ) = { -5.74583333, 57.17500000, 0.00000000 };
Point ( 4980 ) = { -5.75000000, 57.17083333, 0.00000000 };
Point ( 4981 ) = { -5.75416667, 57.16666667, 0.00000000 };
Point ( 4982 ) = { -5.76250000, 57.16666667, 0.00000000 };
Point ( 4983 ) = { -5.77083333, 57.16666667, 0.00000000 };
Point ( 4984 ) = { -5.77916667, 57.16666667, 0.00000000 };
Point ( 4985 ) = { -5.78750000, 57.16666667, 0.00000000 };
Point ( 4986 ) = { -5.79166667, 57.16250000, 0.00000000 };
Point ( 4987 ) = { -5.79166667, 57.15416667, 0.00000000 };
Point ( 4988 ) = { -5.78750000, 57.15000000, 0.00000000 };
Point ( 4989 ) = { -5.78333333, 57.14583333, 0.00000000 };
Point ( 4990 ) = { -5.78333333, 57.13750000, 0.00000000 };
Point ( 4991 ) = { -5.78750000, 57.13333333, 0.00000000 };
Point ( 4992 ) = { -5.79583333, 57.13333333, 0.00000000 };
Point ( 4993 ) = { -5.80000000, 57.12916667, 0.00000000 };
Point ( 4994 ) = { -5.80000000, 57.12083333, 0.00000000 };
Point ( 4995 ) = { -5.80416667, 57.11666667, 0.00000000 };
Point ( 4996 ) = { -5.80833333, 57.11250000, 0.00000000 };
Point ( 4997 ) = { -5.81250000, 57.10833333, 0.00000000 };
Point ( 4998 ) = { -5.82083333, 57.10833333, 0.00000000 };
Point ( 4999 ) = { -5.82916667, 57.10833333, 0.00000000 };
Point ( 5000 ) = { -5.83750000, 57.10833333, 0.00000000 };
Point ( 5001 ) = { -5.84583333, 57.10833333, 0.00000000 };
Point ( 5002 ) = { -5.85000000, 57.10416667, 0.00000000 };
Point ( 5003 ) = { -5.85416667, 57.10000000, 0.00000000 };
Point ( 5004 ) = { -5.85833333, 57.09583333, 0.00000000 };
Point ( 5005 ) = { -5.86250000, 57.09166667, 0.00000000 };
Point ( 5006 ) = { -5.86666667, 57.08750000, 0.00000000 };
Point ( 5007 ) = { -5.87083333, 57.08333333, 0.00000000 };
Point ( 5008 ) = { -5.87916667, 57.08333333, 0.00000000 };
Point ( 5009 ) = { -5.88333333, 57.07916667, 0.00000000 };
Point ( 5010 ) = { -5.88333333, 57.07083333, 0.00000000 };
Point ( 5011 ) = { -5.88750000, 57.06666667, 0.00000000 };
Point ( 5012 ) = { -5.89166667, 57.06250000, 0.00000000 };
Point ( 5013 ) = { -5.89583333, 57.05833333, 0.00000000 };
Point ( 5014 ) = { -5.90000000, 57.05416667, 0.00000000 };
Point ( 5015 ) = { -5.90416667, 57.05000000, 0.00000000 };
Point ( 5016 ) = { -5.91250000, 57.05000000, 0.00000000 };
Point ( 5017 ) = { -5.91666667, 57.04583333, 0.00000000 };
Point ( 5018 ) = { -5.92083333, 57.04166667, 0.00000000 };
Point ( 5019 ) = { -5.92916667, 57.04166667, 0.00000000 };
Point ( 5020 ) = { -5.93333333, 57.03750000, 0.00000000 };
Point ( 5021 ) = { -5.93750000, 57.03333333, 0.00000000 };
Point ( 5022 ) = { -5.94583333, 57.03333333, 0.00000000 };
Point ( 5023 ) = { -5.95416667, 57.03333333, 0.00000000 };
Point ( 5024 ) = { -5.95833333, 57.02916667, 0.00000000 };
Point ( 5025 ) = { -5.96250000, 57.02500000, 0.00000000 };
Point ( 5026 ) = { -5.97083333, 57.02500000, 0.00000000 };
Point ( 5027 ) = { -5.97916667, 57.02500000, 0.00000000 };
Point ( 5028 ) = { -5.98750000, 57.02500000, 0.00000000 };
Point ( 5029 ) = { -5.99166667, 57.02083333, 0.00000000 };
Point ( 5030 ) = { -5.99583333, 57.01666667, 0.00000000 };
Point ( 5031 ) = { -6.00416667, 57.01666667, 0.00000000 };
Point ( 5032 ) = { -6.01250000, 57.01666667, 0.00000000 };
Point ( 5033 ) = { -6.02083333, 57.01666667, 0.00000000 };
Point ( 5034 ) = { -6.02500000, 57.02083333, 0.00000000 };
Point ( 5035 ) = { -6.02500000, 57.02916667, 0.00000000 };
Point ( 5036 ) = { -6.02916667, 57.03333333, 0.00000000 };
Point ( 5037 ) = { -6.03333333, 57.03750000, 0.00000000 };
Point ( 5038 ) = { -6.03750000, 57.04166667, 0.00000000 };
Point ( 5039 ) = { -6.04166667, 57.04583333, 0.00000000 };
Point ( 5040 ) = { -6.04166667, 57.05416667, 0.00000000 };
Point ( 5041 ) = { -6.03750000, 57.05833333, 0.00000000 };
Point ( 5042 ) = { -6.03333333, 57.06250000, 0.00000000 };
Point ( 5043 ) = { -6.03333333, 57.07083333, 0.00000000 };
Point ( 5044 ) = { -6.02916667, 57.07500000, 0.00000000 };
Point ( 5045 ) = { -6.02083333, 57.07500000, 0.00000000 };
Point ( 5046 ) = { -6.01250000, 57.07500000, 0.00000000 };
Point ( 5047 ) = { -6.00833333, 57.07916667, 0.00000000 };
Point ( 5048 ) = { -6.00833333, 57.08750000, 0.00000000 };
Point ( 5049 ) = { -6.00833333, 57.09583333, 0.00000000 };
Point ( 5050 ) = { -6.00833333, 57.10416667, 0.00000000 };
Point ( 5051 ) = { -6.00833333, 57.11250000, 0.00000000 };
Point ( 5052 ) = { -6.00833333, 57.12083333, 0.00000000 };
Point ( 5053 ) = { -6.00416667, 57.12500000, 0.00000000 };
Point ( 5054 ) = { -6.00000000, 57.12916667, 0.00000000 };
Point ( 5055 ) = { -5.99583333, 57.13333333, 0.00000000 };
Point ( 5056 ) = { -5.98750000, 57.13333333, 0.00000000 };
Point ( 5057 ) = { -5.97916667, 57.13333333, 0.00000000 };
Point ( 5058 ) = { -5.97500000, 57.13750000, 0.00000000 };
Point ( 5059 ) = { -5.97083333, 57.14166667, 0.00000000 };
Point ( 5060 ) = { -5.96666667, 57.14583333, 0.00000000 };
Point ( 5061 ) = { -5.96250000, 57.15000000, 0.00000000 };
Point ( 5062 ) = { -5.95416667, 57.15000000, 0.00000000 };
Point ( 5063 ) = { -5.94583333, 57.15000000, 0.00000000 };
Point ( 5064 ) = { -5.94166667, 57.15416667, 0.00000000 };
Point ( 5065 ) = { -5.93750000, 57.15833333, 0.00000000 };
Point ( 5066 ) = { -5.92916667, 57.15833333, 0.00000000 };
Point ( 5067 ) = { -5.92500000, 57.16250000, 0.00000000 };
Point ( 5068 ) = { -5.92916667, 57.16666667, 0.00000000 };
Point ( 5069 ) = { -5.93750000, 57.16666667, 0.00000000 };
Point ( 5070 ) = { -5.94583333, 57.16666667, 0.00000000 };
Point ( 5071 ) = { -5.95416667, 57.16666667, 0.00000000 };
Point ( 5072 ) = { -5.96250000, 57.16666667, 0.00000000 };
Point ( 5073 ) = { -5.96666667, 57.16250000, 0.00000000 };
Point ( 5074 ) = { -5.97083333, 57.15833333, 0.00000000 };
Point ( 5075 ) = { -5.97916667, 57.15833333, 0.00000000 };
Point ( 5076 ) = { -5.98750000, 57.15833333, 0.00000000 };
Point ( 5077 ) = { -5.99166667, 57.16250000, 0.00000000 };
Point ( 5078 ) = { -5.99583333, 57.16666667, 0.00000000 };
Point ( 5079 ) = { -6.00000000, 57.17083333, 0.00000000 };
Point ( 5080 ) = { -6.00000000, 57.17916667, 0.00000000 };
Point ( 5081 ) = { -6.00416667, 57.18333333, 0.00000000 };
Point ( 5082 ) = { -6.00833333, 57.18750000, 0.00000000 };
Point ( 5083 ) = { -6.00833333, 57.19583333, 0.00000000 };
Point ( 5084 ) = { -6.01250000, 57.20000000, 0.00000000 };
Point ( 5085 ) = { -6.01666667, 57.19583333, 0.00000000 };
Point ( 5086 ) = { -6.01666667, 57.18750000, 0.00000000 };
Point ( 5087 ) = { -6.02083333, 57.18333333, 0.00000000 };
Point ( 5088 ) = { -6.02500000, 57.17916667, 0.00000000 };
Point ( 5089 ) = { -6.02916667, 57.17500000, 0.00000000 };
Point ( 5090 ) = { -6.03750000, 57.17500000, 0.00000000 };
Point ( 5091 ) = { -6.04166667, 57.17083333, 0.00000000 };
Point ( 5092 ) = { -6.04583333, 57.16666667, 0.00000000 };
Point ( 5093 ) = { -6.05000000, 57.16250000, 0.00000000 };
Point ( 5094 ) = { -6.05000000, 57.15416667, 0.00000000 };
Point ( 5095 ) = { -6.05416667, 57.15000000, 0.00000000 };
Point ( 5096 ) = { -6.05833333, 57.14583333, 0.00000000 };
Point ( 5097 ) = { -6.06250000, 57.14166667, 0.00000000 };
Point ( 5098 ) = { -6.06666667, 57.13750000, 0.00000000 };
Point ( 5099 ) = { -6.07083333, 57.13333333, 0.00000000 };
Point ( 5100 ) = { -6.07500000, 57.12916667, 0.00000000 };
Point ( 5101 ) = { -6.07916667, 57.12500000, 0.00000000 };
Point ( 5102 ) = { -6.08750000, 57.12500000, 0.00000000 };
Point ( 5103 ) = { -6.09583333, 57.12500000, 0.00000000 };
Point ( 5104 ) = { -6.10000000, 57.12916667, 0.00000000 };
Point ( 5105 ) = { -6.10416667, 57.13333333, 0.00000000 };
Point ( 5106 ) = { -6.11250000, 57.13333333, 0.00000000 };
Point ( 5107 ) = { -6.11666667, 57.13750000, 0.00000000 };
Point ( 5108 ) = { -6.11666667, 57.14583333, 0.00000000 };
Point ( 5109 ) = { -6.11250000, 57.15000000, 0.00000000 };
Point ( 5110 ) = { -6.10833333, 57.15416667, 0.00000000 };
Point ( 5111 ) = { -6.10833333, 57.16250000, 0.00000000 };
Point ( 5112 ) = { -6.10833333, 57.17083333, 0.00000000 };
Point ( 5113 ) = { -6.11250000, 57.17500000, 0.00000000 };
Point ( 5114 ) = { -6.11666667, 57.17916667, 0.00000000 };
Point ( 5115 ) = { -6.12083333, 57.18333333, 0.00000000 };
Point ( 5116 ) = { -6.12916667, 57.18333333, 0.00000000 };
Point ( 5117 ) = { -6.13750000, 57.18333333, 0.00000000 };
Point ( 5118 ) = { -6.14583333, 57.18333333, 0.00000000 };
Point ( 5119 ) = { -6.15000000, 57.18750000, 0.00000000 };
Point ( 5120 ) = { -6.15416667, 57.19166667, 0.00000000 };
Point ( 5121 ) = { -6.15833333, 57.18750000, 0.00000000 };
Point ( 5122 ) = { -6.15833333, 57.17916667, 0.00000000 };
Point ( 5123 ) = { -6.16250000, 57.17500000, 0.00000000 };
Point ( 5124 ) = { -6.16666667, 57.17083333, 0.00000000 };
Point ( 5125 ) = { -6.17083333, 57.16666667, 0.00000000 };
Point ( 5126 ) = { -6.17500000, 57.16250000, 0.00000000 };
Point ( 5127 ) = { -6.17500000, 57.15416667, 0.00000000 };
Point ( 5128 ) = { -6.17916667, 57.15000000, 0.00000000 };
Point ( 5129 ) = { -6.18750000, 57.15000000, 0.00000000 };
Point ( 5130 ) = { -6.19166667, 57.14583333, 0.00000000 };
Point ( 5131 ) = { -6.19583333, 57.14166667, 0.00000000 };
Point ( 5132 ) = { -6.20000000, 57.13750000, 0.00000000 };
Point ( 5133 ) = { -6.20416667, 57.13333333, 0.00000000 };
Point ( 5134 ) = { -6.20833333, 57.12916667, 0.00000000 };
Point ( 5135 ) = { -6.21250000, 57.12500000, 0.00000000 };
Point ( 5136 ) = { -6.22083333, 57.12500000, 0.00000000 };
Point ( 5137 ) = { -6.22916667, 57.12500000, 0.00000000 };
Point ( 5138 ) = { -6.23750000, 57.12500000, 0.00000000 };
Point ( 5139 ) = { -6.24166667, 57.12916667, 0.00000000 };
Point ( 5140 ) = { -6.24583333, 57.13333333, 0.00000000 };
Point ( 5141 ) = { -6.25416667, 57.13333333, 0.00000000 };
Point ( 5142 ) = { -6.25833333, 57.13750000, 0.00000000 };
Point ( 5143 ) = { -6.25833333, 57.14583333, 0.00000000 };
Point ( 5144 ) = { -6.25833333, 57.15416667, 0.00000000 };
Point ( 5145 ) = { -6.25416667, 57.15833333, 0.00000000 };
Point ( 5146 ) = { -6.24583333, 57.15833333, 0.00000000 };
Point ( 5147 ) = { -6.23750000, 57.15833333, 0.00000000 };
Point ( 5148 ) = { -6.22916667, 57.15833333, 0.00000000 };
Point ( 5149 ) = { -6.22500000, 57.16250000, 0.00000000 };
Point ( 5150 ) = { -6.22916667, 57.16666667, 0.00000000 };
Point ( 5151 ) = { -6.23750000, 57.16666667, 0.00000000 };
Point ( 5152 ) = { -6.24583333, 57.16666667, 0.00000000 };
Point ( 5153 ) = { -6.25416667, 57.16666667, 0.00000000 };
Point ( 5154 ) = { -6.26250000, 57.16666667, 0.00000000 };
Point ( 5155 ) = { -6.27083333, 57.16666667, 0.00000000 };
Point ( 5156 ) = { -6.27500000, 57.16250000, 0.00000000 };
Point ( 5157 ) = { -6.27916667, 57.15833333, 0.00000000 };
Point ( 5158 ) = { -6.28750000, 57.15833333, 0.00000000 };
Point ( 5159 ) = { -6.29583333, 57.15833333, 0.00000000 };
Point ( 5160 ) = { -6.30416667, 57.15833333, 0.00000000 };
Point ( 5161 ) = { -6.31250000, 57.15833333, 0.00000000 };
Point ( 5162 ) = { -6.32083333, 57.15833333, 0.00000000 };
Point ( 5163 ) = { -6.32500000, 57.16250000, 0.00000000 };
Point ( 5164 ) = { -6.32083333, 57.16666667, 0.00000000 };
Point ( 5165 ) = { -6.31666667, 57.17083333, 0.00000000 };
Point ( 5166 ) = { -6.31250000, 57.17500000, 0.00000000 };
Point ( 5167 ) = { -6.30416667, 57.17500000, 0.00000000 };
Point ( 5168 ) = { -6.30000000, 57.17916667, 0.00000000 };
Point ( 5169 ) = { -6.29583333, 57.18333333, 0.00000000 };
Point ( 5170 ) = { -6.29166667, 57.18750000, 0.00000000 };
Point ( 5171 ) = { -6.28750000, 57.19166667, 0.00000000 };
Point ( 5172 ) = { -6.28333333, 57.19583333, 0.00000000 };
Point ( 5173 ) = { -6.28750000, 57.20000000, 0.00000000 };
Point ( 5174 ) = { -6.29583333, 57.20000000, 0.00000000 };
Point ( 5175 ) = { -6.30000000, 57.19583333, 0.00000000 };
Point ( 5176 ) = { -6.30416667, 57.19166667, 0.00000000 };
Point ( 5177 ) = { -6.31250000, 57.19166667, 0.00000000 };
Point ( 5178 ) = { -6.31666667, 57.18750000, 0.00000000 };
Point ( 5179 ) = { -6.32083333, 57.18333333, 0.00000000 };
Point ( 5180 ) = { -6.32916667, 57.18333333, 0.00000000 };
Point ( 5181 ) = { -6.33750000, 57.18333333, 0.00000000 };
Point ( 5182 ) = { -6.34583333, 57.18333333, 0.00000000 };
Point ( 5183 ) = { -6.35416667, 57.18333333, 0.00000000 };
Point ( 5184 ) = { -6.35833333, 57.18750000, 0.00000000 };
Point ( 5185 ) = { -6.36250000, 57.19166667, 0.00000000 };
Point ( 5186 ) = { -6.37083333, 57.19166667, 0.00000000 };
Point ( 5187 ) = { -6.37500000, 57.19583333, 0.00000000 };
Point ( 5188 ) = { -6.37916667, 57.20000000, 0.00000000 };
Point ( 5189 ) = { -6.38333333, 57.20416667, 0.00000000 };
Point ( 5190 ) = { -6.38750000, 57.20833333, 0.00000000 };
Point ( 5191 ) = { -6.39166667, 57.21250000, 0.00000000 };
Point ( 5192 ) = { -6.39166667, 57.22083333, 0.00000000 };
Point ( 5193 ) = { -6.39583333, 57.22500000, 0.00000000 };
Point ( 5194 ) = { -6.40416667, 57.22500000, 0.00000000 };
Point ( 5195 ) = { -6.40833333, 57.22916667, 0.00000000 };
Point ( 5196 ) = { -6.41250000, 57.23333333, 0.00000000 };
Point ( 5197 ) = { -6.42083333, 57.23333333, 0.00000000 };
Point ( 5198 ) = { -6.42500000, 57.23750000, 0.00000000 };
Point ( 5199 ) = { -6.42916667, 57.24166667, 0.00000000 };
Point ( 5200 ) = { -6.43333333, 57.24583333, 0.00000000 };
Point ( 5201 ) = { -6.43750000, 57.25000000, 0.00000000 };
Point ( 5202 ) = { -6.44166667, 57.25416667, 0.00000000 };
Point ( 5203 ) = { -6.44583333, 57.25833333, 0.00000000 };
Point ( 5204 ) = { -6.45416667, 57.25833333, 0.00000000 };
Point ( 5205 ) = { -6.45833333, 57.26250000, 0.00000000 };
Point ( 5206 ) = { -6.45833333, 57.27083333, 0.00000000 };
Point ( 5207 ) = { -6.46250000, 57.27500000, 0.00000000 };
Point ( 5208 ) = { -6.46666667, 57.27916667, 0.00000000 };
Point ( 5209 ) = { -6.47083333, 57.28333333, 0.00000000 };
Point ( 5210 ) = { -6.47916667, 57.28333333, 0.00000000 };
Point ( 5211 ) = { -6.48333333, 57.28750000, 0.00000000 };
Point ( 5212 ) = { -6.48333333, 57.29583333, 0.00000000 };
Point ( 5213 ) = { -6.48333333, 57.30416667, 0.00000000 };
Point ( 5214 ) = { -6.48333333, 57.31250000, 0.00000000 };
Point ( 5215 ) = { -6.47916667, 57.31666667, 0.00000000 };
Point ( 5216 ) = { -6.47083333, 57.31666667, 0.00000000 };
Point ( 5217 ) = { -6.46666667, 57.32083333, 0.00000000 };
Point ( 5218 ) = { -6.46250000, 57.32500000, 0.00000000 };
Point ( 5219 ) = { -6.45416667, 57.32500000, 0.00000000 };
Point ( 5220 ) = { -6.44583333, 57.32500000, 0.00000000 };
Point ( 5221 ) = { -6.44166667, 57.32916667, 0.00000000 };
Point ( 5222 ) = { -6.43750000, 57.33333333, 0.00000000 };
Point ( 5223 ) = { -6.43333333, 57.33750000, 0.00000000 };
Point ( 5224 ) = { -6.43750000, 57.34166667, 0.00000000 };
Point ( 5225 ) = { -6.44583333, 57.34166667, 0.00000000 };
Point ( 5226 ) = { -6.45000000, 57.33750000, 0.00000000 };
Point ( 5227 ) = { -6.45416667, 57.33333333, 0.00000000 };
Point ( 5228 ) = { -6.46250000, 57.33333333, 0.00000000 };
Point ( 5229 ) = { -6.47083333, 57.33333333, 0.00000000 };
Point ( 5230 ) = { -6.47500000, 57.33750000, 0.00000000 };
Point ( 5231 ) = { -6.47083333, 57.34166667, 0.00000000 };
Point ( 5232 ) = { -6.46666667, 57.34583333, 0.00000000 };
Point ( 5233 ) = { -6.46250000, 57.35000000, 0.00000000 };
Point ( 5234 ) = { -6.45833333, 57.35416667, 0.00000000 };
Point ( 5235 ) = { -6.46250000, 57.35833333, 0.00000000 };
Point ( 5236 ) = { -6.47083333, 57.35833333, 0.00000000 };
Point ( 5237 ) = { -6.47500000, 57.36250000, 0.00000000 };
Point ( 5238 ) = { -6.47916667, 57.36666667, 0.00000000 };
Point ( 5239 ) = { -6.48333333, 57.36250000, 0.00000000 };
Point ( 5240 ) = { -6.48750000, 57.35833333, 0.00000000 };
Point ( 5241 ) = { -6.49166667, 57.35416667, 0.00000000 };
Point ( 5242 ) = { -6.48750000, 57.35000000, 0.00000000 };
Point ( 5243 ) = { -6.48333333, 57.34583333, 0.00000000 };
Point ( 5244 ) = { -6.48333333, 57.33750000, 0.00000000 };
Point ( 5245 ) = { -6.48750000, 57.33333333, 0.00000000 };
Point ( 5246 ) = { -6.49166667, 57.32916667, 0.00000000 };
Point ( 5247 ) = { -6.49583333, 57.32500000, 0.00000000 };
Point ( 5248 ) = { -6.50416667, 57.32500000, 0.00000000 };
Point ( 5249 ) = { -6.51250000, 57.32500000, 0.00000000 };
Point ( 5250 ) = { -6.51666667, 57.32916667, 0.00000000 };
Point ( 5251 ) = { -6.51666667, 57.33750000, 0.00000000 };
Point ( 5252 ) = { -6.51250000, 57.34166667, 0.00000000 };
Point ( 5253 ) = { -6.50416667, 57.34166667, 0.00000000 };
Point ( 5254 ) = { -6.50000000, 57.34583333, 0.00000000 };
Point ( 5255 ) = { -6.50000000, 57.35416667, 0.00000000 };
Point ( 5256 ) = { -6.50000000, 57.36250000, 0.00000000 };
Point ( 5257 ) = { -6.49583333, 57.36666667, 0.00000000 };
Point ( 5258 ) = { -6.48750000, 57.36666667, 0.00000000 };
Point ( 5259 ) = { -6.48333333, 57.37083333, 0.00000000 };
Point ( 5260 ) = { -6.48750000, 57.37500000, 0.00000000 };
Point ( 5261 ) = { -6.49166667, 57.37916667, 0.00000000 };
Point ( 5262 ) = { -6.49583333, 57.38333333, 0.00000000 };
Point ( 5263 ) = { -6.50416667, 57.38333333, 0.00000000 };
Point ( 5264 ) = { -6.50833333, 57.37916667, 0.00000000 };
Point ( 5265 ) = { -6.51250000, 57.37500000, 0.00000000 };
Point ( 5266 ) = { -6.51666667, 57.37083333, 0.00000000 };
Point ( 5267 ) = { -6.51666667, 57.36250000, 0.00000000 };
Point ( 5268 ) = { -6.52083333, 57.35833333, 0.00000000 };
Point ( 5269 ) = { -6.52916667, 57.35833333, 0.00000000 };
Point ( 5270 ) = { -6.53333333, 57.36250000, 0.00000000 };
Point ( 5271 ) = { -6.52916667, 57.36666667, 0.00000000 };
Point ( 5272 ) = { -6.52500000, 57.37083333, 0.00000000 };
Point ( 5273 ) = { -6.52500000, 57.37916667, 0.00000000 };
Point ( 5274 ) = { -6.52500000, 57.38750000, 0.00000000 };
Point ( 5275 ) = { -6.52500000, 57.39583333, 0.00000000 };
Point ( 5276 ) = { -6.52916667, 57.40000000, 0.00000000 };
Point ( 5277 ) = { -6.53333333, 57.39583333, 0.00000000 };
Point ( 5278 ) = { -6.53750000, 57.39166667, 0.00000000 };
Point ( 5279 ) = { -6.54166667, 57.38750000, 0.00000000 };
Point ( 5280 ) = { -6.54583333, 57.38333333, 0.00000000 };
Point ( 5281 ) = { -6.55416667, 57.38333333, 0.00000000 };
Point ( 5282 ) = { -6.56250000, 57.38333333, 0.00000000 };
Point ( 5283 ) = { -6.56666667, 57.37916667, 0.00000000 };
Point ( 5284 ) = { -6.56250000, 57.37500000, 0.00000000 };
Point ( 5285 ) = { -6.55833333, 57.37083333, 0.00000000 };
Point ( 5286 ) = { -6.55833333, 57.36250000, 0.00000000 };
Point ( 5287 ) = { -6.55833333, 57.35416667, 0.00000000 };
Point ( 5288 ) = { -6.55833333, 57.34583333, 0.00000000 };
Point ( 5289 ) = { -6.55833333, 57.33750000, 0.00000000 };
Point ( 5290 ) = { -6.56250000, 57.33333333, 0.00000000 };
Point ( 5291 ) = { -6.57083333, 57.33333333, 0.00000000 };
Point ( 5292 ) = { -6.57500000, 57.32916667, 0.00000000 };
Point ( 5293 ) = { -6.57916667, 57.32500000, 0.00000000 };
Point ( 5294 ) = { -6.58333333, 57.32916667, 0.00000000 };
Point ( 5295 ) = { -6.58750000, 57.33333333, 0.00000000 };
Point ( 5296 ) = { -6.59583333, 57.33333333, 0.00000000 };
Point ( 5297 ) = { -6.60000000, 57.33750000, 0.00000000 };
Point ( 5298 ) = { -6.60416667, 57.34166667, 0.00000000 };
Point ( 5299 ) = { -6.61250000, 57.34166667, 0.00000000 };
Point ( 5300 ) = { -6.62083333, 57.34166667, 0.00000000 };
Point ( 5301 ) = { -6.62916667, 57.34166667, 0.00000000 };
Point ( 5302 ) = { -6.63333333, 57.34583333, 0.00000000 };
Point ( 5303 ) = { -6.63750000, 57.35000000, 0.00000000 };
Point ( 5304 ) = { -6.64583333, 57.35000000, 0.00000000 };
Point ( 5305 ) = { -6.65416667, 57.35000000, 0.00000000 };
Point ( 5306 ) = { -6.66250000, 57.35000000, 0.00000000 };
Point ( 5307 ) = { -6.67083333, 57.35000000, 0.00000000 };
Point ( 5308 ) = { -6.67500000, 57.35416667, 0.00000000 };
Point ( 5309 ) = { -6.67916667, 57.35833333, 0.00000000 };
Point ( 5310 ) = { -6.68750000, 57.35833333, 0.00000000 };
Point ( 5311 ) = { -6.69166667, 57.36250000, 0.00000000 };
Point ( 5312 ) = { -6.69583333, 57.36666667, 0.00000000 };
Point ( 5313 ) = { -6.70416667, 57.36666667, 0.00000000 };
Point ( 5314 ) = { -6.71250000, 57.36666667, 0.00000000 };
Point ( 5315 ) = { -6.72083333, 57.36666667, 0.00000000 };
Point ( 5316 ) = { -6.72500000, 57.37083333, 0.00000000 };
Point ( 5317 ) = { -6.72916667, 57.37500000, 0.00000000 };
Point ( 5318 ) = { -6.73333333, 57.37916667, 0.00000000 };
Point ( 5319 ) = { -6.73750000, 57.38333333, 0.00000000 };
Point ( 5320 ) = { -6.74166667, 57.38750000, 0.00000000 };
Point ( 5321 ) = { -6.74166667, 57.39583333, 0.00000000 };
Point ( 5322 ) = { -6.74166667, 57.40416667, 0.00000000 };
Point ( 5323 ) = { -6.74166667, 57.41250000, 0.00000000 };
Point ( 5324 ) = { -6.74583333, 57.41666667, 0.00000000 };
Point ( 5325 ) = { -6.75416667, 57.41666667, 0.00000000 };
Point ( 5326 ) = { -6.76250000, 57.41666667, 0.00000000 };
Point ( 5327 ) = { -6.76666667, 57.42083333, 0.00000000 };
Point ( 5328 ) = { -6.77083333, 57.42500000, 0.00000000 };
Point ( 5329 ) = { -6.77916667, 57.42500000, 0.00000000 };
Point ( 5330 ) = { -6.78333333, 57.42083333, 0.00000000 };
Point ( 5331 ) = { -6.78750000, 57.41666667, 0.00000000 };
Point ( 5332 ) = { -6.79166667, 57.42083333, 0.00000000 };
Point ( 5333 ) = { -6.79166667, 57.42916667, 0.00000000 };
Point ( 5334 ) = { -6.79166667, 57.43750000, 0.00000000 };
Point ( 5335 ) = { -6.78750000, 57.44166667, 0.00000000 };
Point ( 5336 ) = { -6.78333333, 57.44583333, 0.00000000 };
Point ( 5337 ) = { -6.78750000, 57.45000000, 0.00000000 };
Point ( 5338 ) = { -6.79166667, 57.45416667, 0.00000000 };
Point ( 5339 ) = { -6.78750000, 57.45833333, 0.00000000 };
Point ( 5340 ) = { -6.77916667, 57.45833333, 0.00000000 };
Point ( 5341 ) = { -6.77500000, 57.46250000, 0.00000000 };
Point ( 5342 ) = { -6.77083333, 57.46666667, 0.00000000 };
Point ( 5343 ) = { -6.76250000, 57.46666667, 0.00000000 };
Point ( 5344 ) = { -6.75833333, 57.46250000, 0.00000000 };
Point ( 5345 ) = { -6.75416667, 57.45833333, 0.00000000 };
Point ( 5346 ) = { -6.75000000, 57.46250000, 0.00000000 };
Point ( 5347 ) = { -6.75000000, 57.47083333, 0.00000000 };
Point ( 5348 ) = { -6.75000000, 57.47916667, 0.00000000 };
Point ( 5349 ) = { -6.75000000, 57.48750000, 0.00000000 };
Point ( 5350 ) = { -6.75000000, 57.49583333, 0.00000000 };
Point ( 5351 ) = { -6.75000000, 57.50416667, 0.00000000 };
Point ( 5352 ) = { -6.74583333, 57.50833333, 0.00000000 };
Point ( 5353 ) = { -6.73750000, 57.50833333, 0.00000000 };
Point ( 5354 ) = { -6.73333333, 57.51250000, 0.00000000 };
Point ( 5355 ) = { -6.72916667, 57.51666667, 0.00000000 };
Point ( 5356 ) = { -6.72083333, 57.51666667, 0.00000000 };
Point ( 5357 ) = { -6.71250000, 57.51666667, 0.00000000 };
Point ( 5358 ) = { -6.70833333, 57.51250000, 0.00000000 };
Point ( 5359 ) = { -6.70416667, 57.50833333, 0.00000000 };
Point ( 5360 ) = { -6.70000000, 57.50416667, 0.00000000 };
Point ( 5361 ) = { -6.69583333, 57.50000000, 0.00000000 };
Point ( 5362 ) = { -6.69166667, 57.49583333, 0.00000000 };
Point ( 5363 ) = { -6.68750000, 57.49166667, 0.00000000 };
Point ( 5364 ) = { -6.68333333, 57.48750000, 0.00000000 };
Point ( 5365 ) = { -6.67916667, 57.48333333, 0.00000000 };
Point ( 5366 ) = { -6.67500000, 57.47916667, 0.00000000 };
Point ( 5367 ) = { -6.67083333, 57.47500000, 0.00000000 };
Point ( 5368 ) = { -6.66666667, 57.47083333, 0.00000000 };
Point ( 5369 ) = { -6.66250000, 57.46666667, 0.00000000 };
Point ( 5370 ) = { -6.65416667, 57.46666667, 0.00000000 };
Point ( 5371 ) = { -6.65000000, 57.46250000, 0.00000000 };
Point ( 5372 ) = { -6.65000000, 57.45416667, 0.00000000 };
Point ( 5373 ) = { -6.64583333, 57.45000000, 0.00000000 };
Point ( 5374 ) = { -6.63750000, 57.45000000, 0.00000000 };
Point ( 5375 ) = { -6.62916667, 57.45000000, 0.00000000 };
Point ( 5376 ) = { -6.62083333, 57.45000000, 0.00000000 };
Point ( 5377 ) = { -6.61666667, 57.45416667, 0.00000000 };
Point ( 5378 ) = { -6.62083333, 57.45833333, 0.00000000 };
Point ( 5379 ) = { -6.62500000, 57.46250000, 0.00000000 };
Point ( 5380 ) = { -6.62500000, 57.47083333, 0.00000000 };
Point ( 5381 ) = { -6.62916667, 57.47500000, 0.00000000 };
Point ( 5382 ) = { -6.63333333, 57.47916667, 0.00000000 };
Point ( 5383 ) = { -6.63333333, 57.48750000, 0.00000000 };
Point ( 5384 ) = { -6.63750000, 57.49166667, 0.00000000 };
Point ( 5385 ) = { -6.64166667, 57.49583333, 0.00000000 };
Point ( 5386 ) = { -6.64166667, 57.50416667, 0.00000000 };
Point ( 5387 ) = { -6.64583333, 57.50833333, 0.00000000 };
Point ( 5388 ) = { -6.65000000, 57.51250000, 0.00000000 };
Point ( 5389 ) = { -6.65416667, 57.51666667, 0.00000000 };
Point ( 5390 ) = { -6.65833333, 57.52083333, 0.00000000 };
Point ( 5391 ) = { -6.65416667, 57.52500000, 0.00000000 };
Point ( 5392 ) = { -6.64583333, 57.52500000, 0.00000000 };
Point ( 5393 ) = { -6.64166667, 57.52916667, 0.00000000 };
Point ( 5394 ) = { -6.63750000, 57.53333333, 0.00000000 };
Point ( 5395 ) = { -6.63333333, 57.52916667, 0.00000000 };
Point ( 5396 ) = { -6.63333333, 57.52083333, 0.00000000 };
Point ( 5397 ) = { -6.63750000, 57.51666667, 0.00000000 };
Point ( 5398 ) = { -6.64166667, 57.51250000, 0.00000000 };
Point ( 5399 ) = { -6.63750000, 57.50833333, 0.00000000 };
Point ( 5400 ) = { -6.62916667, 57.50833333, 0.00000000 };
Point ( 5401 ) = { -6.62083333, 57.50833333, 0.00000000 };
Point ( 5402 ) = { -6.61250000, 57.50833333, 0.00000000 };
Point ( 5403 ) = { -6.60833333, 57.51250000, 0.00000000 };
Point ( 5404 ) = { -6.60416667, 57.51666667, 0.00000000 };
Point ( 5405 ) = { -6.59583333, 57.51666667, 0.00000000 };
Point ( 5406 ) = { -6.59166667, 57.52083333, 0.00000000 };
Point ( 5407 ) = { -6.59583333, 57.52500000, 0.00000000 };
Point ( 5408 ) = { -6.60000000, 57.52916667, 0.00000000 };
Point ( 5409 ) = { -6.60416667, 57.53333333, 0.00000000 };
Point ( 5410 ) = { -6.61250000, 57.53333333, 0.00000000 };
Point ( 5411 ) = { -6.62083333, 57.53333333, 0.00000000 };
Point ( 5412 ) = { -6.62500000, 57.53750000, 0.00000000 };
Point ( 5413 ) = { -6.62916667, 57.54166667, 0.00000000 };
Point ( 5414 ) = { -6.63750000, 57.54166667, 0.00000000 };
Point ( 5415 ) = { -6.64583333, 57.54166667, 0.00000000 };
Point ( 5416 ) = { -6.65416667, 57.54166667, 0.00000000 };
Point ( 5417 ) = { -6.65833333, 57.54583333, 0.00000000 };
Point ( 5418 ) = { -6.65833333, 57.55416667, 0.00000000 };
Point ( 5419 ) = { -6.65416667, 57.55833333, 0.00000000 };
Point ( 5420 ) = { -6.64583333, 57.55833333, 0.00000000 };
Point ( 5421 ) = { -6.64166667, 57.56250000, 0.00000000 };
Point ( 5422 ) = { -6.64166667, 57.57083333, 0.00000000 };
Point ( 5423 ) = { -6.64166667, 57.57916667, 0.00000000 };
Point ( 5424 ) = { -6.64166667, 57.58750000, 0.00000000 };
Point ( 5425 ) = { -6.64166667, 57.59583333, 0.00000000 };
Point ( 5426 ) = { -6.64166667, 57.60416667, 0.00000000 };
Point ( 5427 ) = { -6.63750000, 57.60833333, 0.00000000 };
Point ( 5428 ) = { -6.62916667, 57.60833333, 0.00000000 };
Point ( 5429 ) = { -6.62083333, 57.60833333, 0.00000000 };
Point ( 5430 ) = { -6.61250000, 57.60833333, 0.00000000 };
Point ( 5431 ) = { -6.60416667, 57.60833333, 0.00000000 };
Point ( 5432 ) = { -6.60000000, 57.60416667, 0.00000000 };
Point ( 5433 ) = { -6.59583333, 57.60000000, 0.00000000 };
Point ( 5434 ) = { -6.58750000, 57.60000000, 0.00000000 };
Point ( 5435 ) = { -6.58333333, 57.59583333, 0.00000000 };
Point ( 5436 ) = { -6.57916667, 57.59166667, 0.00000000 };
Point ( 5437 ) = { -6.57500000, 57.58750000, 0.00000000 };
Point ( 5438 ) = { -6.57083333, 57.58333333, 0.00000000 };
Point ( 5439 ) = { -6.56666667, 57.57916667, 0.00000000 };
Point ( 5440 ) = { -6.56666667, 57.57083333, 0.00000000 };
Point ( 5441 ) = { -6.56666667, 57.56250000, 0.00000000 };
Point ( 5442 ) = { -6.56666667, 57.55416667, 0.00000000 };
Point ( 5443 ) = { -6.56250000, 57.55000000, 0.00000000 };
Point ( 5444 ) = { -6.55416667, 57.55000000, 0.00000000 };
Point ( 5445 ) = { -6.54583333, 57.55000000, 0.00000000 };
Point ( 5446 ) = { -6.53750000, 57.55000000, 0.00000000 };
Point ( 5447 ) = { -6.52916667, 57.55000000, 0.00000000 };
Point ( 5448 ) = { -6.52500000, 57.54583333, 0.00000000 };
Point ( 5449 ) = { -6.52083333, 57.54166667, 0.00000000 };
Point ( 5450 ) = { -6.51250000, 57.54166667, 0.00000000 };
Point ( 5451 ) = { -6.50416667, 57.54166667, 0.00000000 };
Point ( 5452 ) = { -6.50000000, 57.53750000, 0.00000000 };
Point ( 5453 ) = { -6.49583333, 57.53333333, 0.00000000 };
Point ( 5454 ) = { -6.49166667, 57.52916667, 0.00000000 };
Point ( 5455 ) = { -6.48750000, 57.52500000, 0.00000000 };
Point ( 5456 ) = { -6.47916667, 57.52500000, 0.00000000 };
Point ( 5457 ) = { -6.47500000, 57.52083333, 0.00000000 };
Point ( 5458 ) = { -6.47083333, 57.51666667, 0.00000000 };
Point ( 5459 ) = { -6.46666667, 57.51250000, 0.00000000 };
Point ( 5460 ) = { -6.46250000, 57.50833333, 0.00000000 };
Point ( 5461 ) = { -6.45416667, 57.50833333, 0.00000000 };
Point ( 5462 ) = { -6.45000000, 57.51250000, 0.00000000 };
Point ( 5463 ) = { -6.44583333, 57.51666667, 0.00000000 };
Point ( 5464 ) = { -6.43750000, 57.51666667, 0.00000000 };
Point ( 5465 ) = { -6.43333333, 57.52083333, 0.00000000 };
Point ( 5466 ) = { -6.42916667, 57.52500000, 0.00000000 };
Point ( 5467 ) = { -6.42500000, 57.52083333, 0.00000000 };
Point ( 5468 ) = { -6.42500000, 57.51250000, 0.00000000 };
Point ( 5469 ) = { -6.42083333, 57.50833333, 0.00000000 };
Point ( 5470 ) = { -6.41250000, 57.50833333, 0.00000000 };
Point ( 5471 ) = { -6.40833333, 57.51250000, 0.00000000 };
Point ( 5472 ) = { -6.40833333, 57.52083333, 0.00000000 };
Point ( 5473 ) = { -6.40833333, 57.52916667, 0.00000000 };
Point ( 5474 ) = { -6.40416667, 57.53333333, 0.00000000 };
Point ( 5475 ) = { -6.39583333, 57.53333333, 0.00000000 };
Point ( 5476 ) = { -6.39166667, 57.52916667, 0.00000000 };
Point ( 5477 ) = { -6.38750000, 57.52500000, 0.00000000 };
Point ( 5478 ) = { -6.38333333, 57.52083333, 0.00000000 };
Point ( 5479 ) = { -6.37916667, 57.51666667, 0.00000000 };
Point ( 5480 ) = { -6.37500000, 57.52083333, 0.00000000 };
Point ( 5481 ) = { -6.37500000, 57.52916667, 0.00000000 };
Point ( 5482 ) = { -6.37916667, 57.53333333, 0.00000000 };
Point ( 5483 ) = { -6.38333333, 57.53750000, 0.00000000 };
Point ( 5484 ) = { -6.38750000, 57.54166667, 0.00000000 };
Point ( 5485 ) = { -6.39166667, 57.54583333, 0.00000000 };
Point ( 5486 ) = { -6.39583333, 57.55000000, 0.00000000 };
Point ( 5487 ) = { -6.40000000, 57.55416667, 0.00000000 };
Point ( 5488 ) = { -6.40000000, 57.56250000, 0.00000000 };
Point ( 5489 ) = { -6.40000000, 57.57083333, 0.00000000 };
Point ( 5490 ) = { -6.39583333, 57.57500000, 0.00000000 };
Point ( 5491 ) = { -6.38750000, 57.57500000, 0.00000000 };
Point ( 5492 ) = { -6.37916667, 57.57500000, 0.00000000 };
Point ( 5493 ) = { -6.37500000, 57.57916667, 0.00000000 };
Point ( 5494 ) = { -6.37916667, 57.58333333, 0.00000000 };
Point ( 5495 ) = { -6.38750000, 57.58333333, 0.00000000 };
Point ( 5496 ) = { -6.39583333, 57.58333333, 0.00000000 };
Point ( 5497 ) = { -6.40000000, 57.58750000, 0.00000000 };
Point ( 5498 ) = { -6.40000000, 57.59583333, 0.00000000 };
Point ( 5499 ) = { -6.40000000, 57.60416667, 0.00000000 };
Point ( 5500 ) = { -6.40000000, 57.61250000, 0.00000000 };
Point ( 5501 ) = { -6.40416667, 57.61666667, 0.00000000 };
Point ( 5502 ) = { -6.40833333, 57.62083333, 0.00000000 };
Point ( 5503 ) = { -6.41250000, 57.62500000, 0.00000000 };
Point ( 5504 ) = { -6.41666667, 57.62916667, 0.00000000 };
Point ( 5505 ) = { -6.42083333, 57.63333333, 0.00000000 };
Point ( 5506 ) = { -6.42500000, 57.63750000, 0.00000000 };
Point ( 5507 ) = { -6.42916667, 57.64166667, 0.00000000 };
Point ( 5508 ) = { -6.43333333, 57.64583333, 0.00000000 };
Point ( 5509 ) = { -6.42916667, 57.65000000, 0.00000000 };
Point ( 5510 ) = { -6.42083333, 57.65000000, 0.00000000 };
Point ( 5511 ) = { -6.41250000, 57.65000000, 0.00000000 };
Point ( 5512 ) = { -6.40833333, 57.65416667, 0.00000000 };
Point ( 5513 ) = { -6.40833333, 57.66250000, 0.00000000 };
Point ( 5514 ) = { -6.40416667, 57.66666667, 0.00000000 };
Point ( 5515 ) = { -6.39583333, 57.66666667, 0.00000000 };
Point ( 5516 ) = { -6.38750000, 57.66666667, 0.00000000 };
Point ( 5517 ) = { -6.37916667, 57.66666667, 0.00000000 };
Point ( 5518 ) = { -6.37083333, 57.66666667, 0.00000000 };
Point ( 5519 ) = { -6.36666667, 57.67083333, 0.00000000 };
Point ( 5520 ) = { -6.36250000, 57.67500000, 0.00000000 };
Point ( 5521 ) = { -6.35416667, 57.67500000, 0.00000000 };
Point ( 5522 ) = { -6.35000000, 57.67916667, 0.00000000 };
Point ( 5523 ) = { -6.35000000, 57.68750000, 0.00000000 };
Point ( 5524 ) = { -6.35416667, 57.69166667, 0.00000000 };
Point ( 5525 ) = { -6.35833333, 57.69583333, 0.00000000 };
Point ( 5526 ) = { -6.35833333, 57.70416667, 0.00000000 };
Point ( 5527 ) = { -6.35416667, 57.70833333, 0.00000000 };
Point ( 5528 ) = { -6.34583333, 57.70833333, 0.00000000 };
Point ( 5529 ) = { -6.33750000, 57.70833333, 0.00000000 };
Point ( 5530 ) = { -6.32916667, 57.70833333, 0.00000000 };
Point ( 5531 ) = { -6.32083333, 57.70833333, 0.00000000 };
Point ( 5532 ) = { -6.31250000, 57.70833333, 0.00000000 };
Point ( 5533 ) = { -6.30416667, 57.70833333, 0.00000000 };
Point ( 5534 ) = { -6.29583333, 57.70833333, 0.00000000 };
Point ( 5535 ) = { -6.29166667, 57.70416667, 0.00000000 };
Point ( 5536 ) = { -6.28750000, 57.70000000, 0.00000000 };
Point ( 5537 ) = { -6.28333333, 57.69583333, 0.00000000 };
Point ( 5538 ) = { -6.27916667, 57.69166667, 0.00000000 };
Point ( 5539 ) = { -6.27500000, 57.68750000, 0.00000000 };
Point ( 5540 ) = { -6.27083333, 57.68333333, 0.00000000 };
Point ( 5541 ) = { -6.26250000, 57.68333333, 0.00000000 };
Point ( 5542 ) = { -6.25416667, 57.68333333, 0.00000000 };
Point ( 5543 ) = { -6.25000000, 57.67916667, 0.00000000 };
Point ( 5544 ) = { -6.24583333, 57.67500000, 0.00000000 };
Point ( 5545 ) = { -6.24166667, 57.67083333, 0.00000000 };
Point ( 5546 ) = { -6.24166667, 57.66250000, 0.00000000 };
Point ( 5547 ) = { -6.23750000, 57.65833333, 0.00000000 };
Point ( 5548 ) = { -6.23333333, 57.66250000, 0.00000000 };
Point ( 5549 ) = { -6.23333333, 57.67083333, 0.00000000 };
Point ( 5550 ) = { -6.22916667, 57.67500000, 0.00000000 };
Point ( 5551 ) = { -6.22500000, 57.67083333, 0.00000000 };
Point ( 5552 ) = { -6.22083333, 57.66666667, 0.00000000 };
Point ( 5553 ) = { -6.21666667, 57.66250000, 0.00000000 };
Point ( 5554 ) = { -6.22083333, 57.65833333, 0.00000000 };
Point ( 5555 ) = { -6.22916667, 57.65833333, 0.00000000 };
Point ( 5556 ) = { -6.23333333, 57.65416667, 0.00000000 };
Point ( 5557 ) = { -6.23333333, 57.64583333, 0.00000000 };
Point ( 5558 ) = { -6.22916667, 57.64166667, 0.00000000 };
Point ( 5559 ) = { -6.22083333, 57.64166667, 0.00000000 };
Point ( 5560 ) = { -6.21250000, 57.64166667, 0.00000000 };
Point ( 5561 ) = { -6.20833333, 57.64583333, 0.00000000 };
Point ( 5562 ) = { -6.20416667, 57.65000000, 0.00000000 };
Point ( 5563 ) = { -6.20000000, 57.64583333, 0.00000000 };
Point ( 5564 ) = { -6.19583333, 57.64166667, 0.00000000 };
Point ( 5565 ) = { -6.19166667, 57.63750000, 0.00000000 };
Point ( 5566 ) = { -6.18750000, 57.63333333, 0.00000000 };
Point ( 5567 ) = { -6.18333333, 57.62916667, 0.00000000 };
Point ( 5568 ) = { -6.17916667, 57.62500000, 0.00000000 };
Point ( 5569 ) = { -6.17500000, 57.62083333, 0.00000000 };
Point ( 5570 ) = { -6.17083333, 57.61666667, 0.00000000 };
Point ( 5571 ) = { -6.16666667, 57.61250000, 0.00000000 };
Point ( 5572 ) = { -6.16250000, 57.60833333, 0.00000000 };
Point ( 5573 ) = { -6.15833333, 57.60416667, 0.00000000 };
Point ( 5574 ) = { -6.15416667, 57.60000000, 0.00000000 };
Point ( 5575 ) = { -6.15000000, 57.59583333, 0.00000000 };
Point ( 5576 ) = { -6.14583333, 57.59166667, 0.00000000 };
Point ( 5577 ) = { -6.13750000, 57.59166667, 0.00000000 };
Point ( 5578 ) = { -6.13333333, 57.58750000, 0.00000000 };
Point ( 5579 ) = { -6.13333333, 57.57916667, 0.00000000 };
Point ( 5580 ) = { -6.13750000, 57.57500000, 0.00000000 };
Point ( 5581 ) = { -6.14166667, 57.57083333, 0.00000000 };
Point ( 5582 ) = { -6.14166667, 57.56250000, 0.00000000 };
Point ( 5583 ) = { -6.13750000, 57.55833333, 0.00000000 };
Point ( 5584 ) = { -6.13333333, 57.55416667, 0.00000000 };
Point ( 5585 ) = { -6.13333333, 57.54583333, 0.00000000 };
Point ( 5586 ) = { -6.13333333, 57.53750000, 0.00000000 };
Point ( 5587 ) = { -6.13333333, 57.52916667, 0.00000000 };
Point ( 5588 ) = { -6.13333333, 57.52083333, 0.00000000 };
Point ( 5589 ) = { -6.13750000, 57.51666667, 0.00000000 };
Point ( 5590 ) = { -6.14166667, 57.51250000, 0.00000000 };
Point ( 5591 ) = { -6.14166667, 57.50416667, 0.00000000 };
Point ( 5592 ) = { -6.14166667, 57.49583333, 0.00000000 };
Point ( 5593 ) = { -6.13750000, 57.49166667, 0.00000000 };
Point ( 5594 ) = { -6.13333333, 57.48750000, 0.00000000 };
Point ( 5595 ) = { -6.13333333, 57.47916667, 0.00000000 };
Point ( 5596 ) = { -6.13333333, 57.47083333, 0.00000000 };
Point ( 5597 ) = { -6.13333333, 57.46250000, 0.00000000 };
Point ( 5598 ) = { -6.13333333, 57.45416667, 0.00000000 };
Point ( 5599 ) = { -6.13333333, 57.44583333, 0.00000000 };
Point ( 5600 ) = { -6.13750000, 57.44166667, 0.00000000 };
Point ( 5601 ) = { -6.14166667, 57.43750000, 0.00000000 };
Point ( 5602 ) = { -6.14166667, 57.42916667, 0.00000000 };
Point ( 5603 ) = { -6.14583333, 57.42500000, 0.00000000 };
Point ( 5604 ) = { -6.15000000, 57.42083333, 0.00000000 };
Point ( 5605 ) = { -6.15416667, 57.41666667, 0.00000000 };
Point ( 5606 ) = { -6.15833333, 57.41250000, 0.00000000 };
Point ( 5607 ) = { -6.15416667, 57.40833333, 0.00000000 };
Point ( 5608 ) = { -6.14583333, 57.40833333, 0.00000000 };
Point ( 5609 ) = { -6.13750000, 57.40833333, 0.00000000 };
Point ( 5610 ) = { -6.13333333, 57.40416667, 0.00000000 };
Point ( 5611 ) = { -6.12916667, 57.40000000, 0.00000000 };
Point ( 5612 ) = { -6.12500000, 57.39583333, 0.00000000 };
Point ( 5613 ) = { -6.12083333, 57.39166667, 0.00000000 };
Point ( 5614 ) = { -6.11666667, 57.38750000, 0.00000000 };
Point ( 5615 ) = { -6.12083333, 57.38333333, 0.00000000 };
Point ( 5616 ) = { -6.12500000, 57.37916667, 0.00000000 };
Point ( 5617 ) = { -6.12916667, 57.37500000, 0.00000000 };
Point ( 5618 ) = { -6.13333333, 57.37083333, 0.00000000 };
Point ( 5619 ) = { -6.13333333, 57.36250000, 0.00000000 };
Point ( 5620 ) = { -6.12916667, 57.35833333, 0.00000000 };
Point ( 5621 ) = { -6.12500000, 57.35416667, 0.00000000 };
Point ( 5622 ) = { -6.12083333, 57.35000000, 0.00000000 };
Point ( 5623 ) = { -6.11250000, 57.35000000, 0.00000000 };
Point ( 5624 ) = { -6.10416667, 57.35000000, 0.00000000 };
Point ( 5625 ) = { -6.10000000, 57.34583333, 0.00000000 };
Point ( 5626 ) = { -6.09583333, 57.34166667, 0.00000000 };
Point ( 5627 ) = { -6.09166667, 57.33750000, 0.00000000 };
Point ( 5628 ) = { -6.09583333, 57.33333333, 0.00000000 };
Point ( 5629 ) = { -6.10000000, 57.32916667, 0.00000000 };
Point ( 5630 ) = { -6.10000000, 57.32083333, 0.00000000 };
Point ( 5631 ) = { -6.09583333, 57.31666667, 0.00000000 };
Point ( 5632 ) = { -6.08750000, 57.31666667, 0.00000000 };
Point ( 5633 ) = { -6.07916667, 57.31666667, 0.00000000 };
Point ( 5634 ) = { -6.07083333, 57.31666667, 0.00000000 };
Point ( 5635 ) = { -6.06250000, 57.31666667, 0.00000000 };
Point ( 5636 ) = { -6.05416667, 57.31666667, 0.00000000 };
Point ( 5637 ) = { -6.04583333, 57.31666667, 0.00000000 };
Point ( 5638 ) = { -6.04166667, 57.31250000, 0.00000000 };
Point ( 5639 ) = { -6.04166667, 57.30416667, 0.00000000 };
Point ( 5640 ) = { -6.04166667, 57.29583333, 0.00000000 };
Point ( 5641 ) = { -6.03750000, 57.29166667, 0.00000000 };
Point ( 5642 ) = { -6.02916667, 57.29166667, 0.00000000 };
Point ( 5643 ) = { -6.02500000, 57.29583333, 0.00000000 };
Point ( 5644 ) = { -6.02500000, 57.30416667, 0.00000000 };
Point ( 5645 ) = { -6.02500000, 57.31250000, 0.00000000 };
Point ( 5646 ) = { -6.02083333, 57.31666667, 0.00000000 };
Point ( 5647 ) = { -6.01666667, 57.32083333, 0.00000000 };
Point ( 5648 ) = { -6.01250000, 57.32500000, 0.00000000 };
Point ( 5649 ) = { -6.00416667, 57.32500000, 0.00000000 };
Point ( 5650 ) = { -5.99583333, 57.32500000, 0.00000000 };
Point ( 5651 ) = { -5.98750000, 57.32500000, 0.00000000 };
Point ( 5652 ) = { -5.97916667, 57.32500000, 0.00000000 };
Point ( 5653 ) = { -5.97083333, 57.32500000, 0.00000000 };
Point ( 5654 ) = { -5.96250000, 57.32500000, 0.00000000 };
Point ( 5655 ) = { -5.95416667, 57.32500000, 0.00000000 };
Point ( 5656 ) = { -5.94583333, 57.32500000, 0.00000000 };
Point ( 5657 ) = { -5.94166667, 57.32083333, 0.00000000 };
Point ( 5658 ) = { -5.93750000, 57.31666667, 0.00000000 };
Point ( 5659 ) = { -5.92916667, 57.31666667, 0.00000000 };
Point ( 5660 ) = { -5.92500000, 57.31250000, 0.00000000 };
Point ( 5661 ) = { -5.92083333, 57.30833333, 0.00000000 };
Point ( 5662 ) = { -5.91666667, 57.30416667, 0.00000000 };
Point ( 5663 ) = { -5.91666667, 57.29583333, 0.00000000 };
Point ( 5664 ) = { -5.92083333, 57.29166667, 0.00000000 };
Point ( 5665 ) = { -5.92500000, 57.28750000, 0.00000000 };
Point ( 5666 ) = { -5.92916667, 57.28333333, 0.00000000 };
Point ( 5667 ) = { -5.93333333, 57.27916667, 0.00000000 };
Point ( 5668 ) = { -5.93750000, 57.27500000, 0.00000000 };
Point ( 5669 ) = { -5.94166667, 57.27083333, 0.00000000 };
Point ( 5670 ) = { -5.93750000, 57.26666667, 0.00000000 };
Point ( 5671 ) = { -5.92916667, 57.26666667, 0.00000000 };
Point ( 5672 ) = { -5.92083333, 57.26666667, 0.00000000 };
Point ( 5673 ) = { -5.91666667, 57.26250000, 0.00000000 };
Point ( 5674 ) = { -5.91250000, 57.25833333, 0.00000000 };
Point ( 5675 ) = { -5.90416667, 57.25833333, 0.00000000 };
Point ( 5676 ) = { -5.90000000, 57.25416667, 0.00000000 };
Point ( 5677 ) = { -5.90000000, 57.24583333, 0.00000000 };
Point ( 5678 ) = { -5.89583333, 57.24166667, 0.00000000 };
Point ( 5679 ) = { -5.88750000, 57.24166667, 0.00000000 };
Point ( 5680 ) = { -5.88333333, 57.24583333, 0.00000000 };
Point ( 5681 ) = { -5.87916667, 57.25000000, 0.00000000 };
Point ( 5682 ) = { -5.87083333, 57.25000000, 0.00000000 };
Point ( 5683 ) = { -5.86666667, 57.25416667, 0.00000000 };
Point ( 5684 ) = { -5.86666667, 57.26250000, 0.00000000 };
Point ( 5685 ) = { -5.87083333, 57.26666667, 0.00000000 };
Point ( 5686 ) = { -5.87500000, 57.27083333, 0.00000000 };
Point ( 5687 ) = { -5.87500000, 57.27916667, 0.00000000 };
Point ( 5688 ) = { -5.87083333, 57.28333333, 0.00000000 };
Point ( 5689 ) = { -5.86250000, 57.28333333, 0.00000000 };
Point ( 5690 ) = { -5.85416667, 57.28333333, 0.00000000 };
Point ( 5691 ) = { -5.85000000, 57.27916667, 0.00000000 };
Point ( 5692 ) = { -5.84583333, 57.27500000, 0.00000000 };
Point ( 5693 ) = { -5.84166667, 57.27083333, 0.00000000 };
Point ( 5694 ) = { -5.84166667, 57.26250000, 0.00000000 };
Point ( 5695 ) = { -5.83750000, 57.25833333, 0.00000000 };
Point ( 5696 ) = { -5.83333333, 57.26250000, 0.00000000 };
Point ( 5697 ) = { -5.82916667, 57.26666667, 0.00000000 };
Point ( 5698 ) = { -5.82500000, 57.26250000, 0.00000000 };
Point ( 5699 ) = { -5.82083333, 57.25833333, 0.00000000 };
Point ( 5700 ) = { -5.81666667, 57.26250000, 0.00000000 };
Point ( 5701 ) = { -5.81250000, 57.26666667, 0.00000000 };
Point ( 5702 ) = { -5.80416667, 57.26666667, 0.00000000 };
Point ( 5703 ) = { -5.79583333, 57.26666667, 0.00000000 };
Point ( 5704 ) = { -5.79166667, 57.27083333, 0.00000000 };
Point ( 5705 ) = { -5.78750000, 57.27500000, 0.00000000 };
Point ( 5706 ) = { -5.77916667, 57.27500000, 0.00000000 };
Point ( 5707 ) = { -5.77500000, 57.27916667, 0.00000000 };
Point ( 5708 ) = { -5.77083333, 57.28333333, 0.00000000 };
Point ( 5709 ) = { -5.76250000, 57.28333333, 0.00000000 };
Point ( 5710 ) = { -5.75833333, 57.27916667, 0.00000000 };
Point ( 5711 ) = { -5.75416667, 57.27500000, 0.00000000 };
Point ( 5712 ) = { -5.74583333, 57.27500000, 0.00000000 };
Point ( 5713 ) = { -5.74166667, 57.27916667, 0.00000000 };
Point ( 5714 ) = { -5.74166667, 57.28750000, 0.00000000 };
Point ( 5715 ) = { -5.73750000, 57.29166667, 0.00000000 };
Point ( 5716 ) = { -5.73333333, 57.29583333, 0.00000000 };
Point ( 5717 ) = { -5.72916667, 57.30000000, 0.00000000 };
Point ( 5718 ) = { -5.72500000, 57.30416667, 0.00000000 };
Point ( 5719 ) = { -5.72500000, 57.31250000, 0.00000000 };
Point ( 5720 ) = { -5.72083333, 57.31666667, 0.00000000 };
Point ( 5721 ) = { -5.71250000, 57.31666667, 0.00000000 };
Point ( 5722 ) = { -5.70833333, 57.32083333, 0.00000000 };
Point ( 5723 ) = { -5.70416667, 57.32500000, 0.00000000 };
Point ( 5724 ) = { -5.69583333, 57.32500000, 0.00000000 };
Point ( 5725 ) = { -5.69166667, 57.32916667, 0.00000000 };
Point ( 5726 ) = { -5.69166667, 57.33750000, 0.00000000 };
Point ( 5727 ) = { -5.68750000, 57.34166667, 0.00000000 };
Point ( 5728 ) = { -5.67916667, 57.34166667, 0.00000000 };
Point ( 5729 ) = { -5.67083333, 57.34166667, 0.00000000 };
Point ( 5730 ) = { -5.66250000, 57.34166667, 0.00000000 };
Point ( 5731 ) = { -5.65833333, 57.34583333, 0.00000000 };
Point ( 5732 ) = { -5.65416667, 57.35000000, 0.00000000 };
Point ( 5733 ) = { -5.64583333, 57.35000000, 0.00000000 };
Point ( 5734 ) = { -5.64166667, 57.34583333, 0.00000000 };
Point ( 5735 ) = { -5.63750000, 57.34166667, 0.00000000 };
Point ( 5736 ) = { -5.62916667, 57.34166667, 0.00000000 };
Point ( 5737 ) = { -5.62083333, 57.34166667, 0.00000000 };
Point ( 5738 ) = { -5.61666667, 57.34583333, 0.00000000 };
Point ( 5739 ) = { -5.61250000, 57.35000000, 0.00000000 };
Point ( 5740 ) = { -5.60833333, 57.35416667, 0.00000000 };
Point ( 5741 ) = { -5.61250000, 57.35833333, 0.00000000 };
Point ( 5742 ) = { -5.62083333, 57.35833333, 0.00000000 };
Point ( 5743 ) = { -5.62916667, 57.35833333, 0.00000000 };
Point ( 5744 ) = { -5.63333333, 57.36250000, 0.00000000 };
Point ( 5745 ) = { -5.63750000, 57.36666667, 0.00000000 };
Point ( 5746 ) = { -5.64166667, 57.37083333, 0.00000000 };
Point ( 5747 ) = { -5.64166667, 57.37916667, 0.00000000 };
Point ( 5748 ) = { -5.64583333, 57.38333333, 0.00000000 };
Point ( 5749 ) = { -5.65416667, 57.38333333, 0.00000000 };
Point ( 5750 ) = { -5.66250000, 57.38333333, 0.00000000 };
Point ( 5751 ) = { -5.66666667, 57.37916667, 0.00000000 };
Point ( 5752 ) = { -5.67083333, 57.37500000, 0.00000000 };
Point ( 5753 ) = { -5.67916667, 57.37500000, 0.00000000 };
Point ( 5754 ) = { -5.68750000, 57.37500000, 0.00000000 };
Point ( 5755 ) = { -5.69166667, 57.37083333, 0.00000000 };
Point ( 5756 ) = { -5.69583333, 57.36666667, 0.00000000 };
Point ( 5757 ) = { -5.70416667, 57.36666667, 0.00000000 };
Point ( 5758 ) = { -5.70833333, 57.36250000, 0.00000000 };
Point ( 5759 ) = { -5.71250000, 57.35833333, 0.00000000 };
Point ( 5760 ) = { -5.72083333, 57.35833333, 0.00000000 };
Point ( 5761 ) = { -5.72500000, 57.35416667, 0.00000000 };
Point ( 5762 ) = { -5.72916667, 57.35000000, 0.00000000 };
Point ( 5763 ) = { -5.73750000, 57.35000000, 0.00000000 };
Point ( 5764 ) = { -5.74583333, 57.35000000, 0.00000000 };
Point ( 5765 ) = { -5.75416667, 57.35000000, 0.00000000 };
Point ( 5766 ) = { -5.75833333, 57.34583333, 0.00000000 };
Point ( 5767 ) = { -5.76250000, 57.34166667, 0.00000000 };
Point ( 5768 ) = { -5.77083333, 57.34166667, 0.00000000 };
Point ( 5769 ) = { -5.77916667, 57.34166667, 0.00000000 };
Point ( 5770 ) = { -5.78750000, 57.34166667, 0.00000000 };
Point ( 5771 ) = { -5.79166667, 57.34583333, 0.00000000 };
Point ( 5772 ) = { -5.79583333, 57.35000000, 0.00000000 };
Point ( 5773 ) = { -5.80000000, 57.35416667, 0.00000000 };
Point ( 5774 ) = { -5.80416667, 57.35833333, 0.00000000 };
Point ( 5775 ) = { -5.81250000, 57.35833333, 0.00000000 };
Point ( 5776 ) = { -5.82083333, 57.35833333, 0.00000000 };
Point ( 5777 ) = { -5.82500000, 57.36250000, 0.00000000 };
Point ( 5778 ) = { -5.82500000, 57.37083333, 0.00000000 };
Point ( 5779 ) = { -5.82916667, 57.37500000, 0.00000000 };
Point ( 5780 ) = { -5.83333333, 57.37083333, 0.00000000 };
Point ( 5781 ) = { -5.83750000, 57.36666667, 0.00000000 };
Point ( 5782 ) = { -5.84166667, 57.37083333, 0.00000000 };
Point ( 5783 ) = { -5.83750000, 57.37500000, 0.00000000 };
Point ( 5784 ) = { -5.83333333, 57.37916667, 0.00000000 };
Point ( 5785 ) = { -5.83333333, 57.38750000, 0.00000000 };
Point ( 5786 ) = { -5.82916667, 57.39166667, 0.00000000 };
Point ( 5787 ) = { -5.82500000, 57.39583333, 0.00000000 };
Point ( 5788 ) = { -5.82083333, 57.40000000, 0.00000000 };
Point ( 5789 ) = { -5.81666667, 57.40416667, 0.00000000 };
Point ( 5790 ) = { -5.82083333, 57.40833333, 0.00000000 };
Point ( 5791 ) = { -5.82500000, 57.41250000, 0.00000000 };
Point ( 5792 ) = { -5.82500000, 57.42083333, 0.00000000 };
Point ( 5793 ) = { -5.82500000, 57.42916667, 0.00000000 };
Point ( 5794 ) = { -5.82916667, 57.43333333, 0.00000000 };
Point ( 5795 ) = { -5.83750000, 57.43333333, 0.00000000 };
Point ( 5796 ) = { -5.84583333, 57.43333333, 0.00000000 };
Point ( 5797 ) = { -5.85000000, 57.43750000, 0.00000000 };
Point ( 5798 ) = { -5.85416667, 57.44166667, 0.00000000 };
Point ( 5799 ) = { -5.86250000, 57.44166667, 0.00000000 };
Point ( 5800 ) = { -5.86666667, 57.44583333, 0.00000000 };
Point ( 5801 ) = { -5.86666667, 57.45416667, 0.00000000 };
Point ( 5802 ) = { -5.86666667, 57.46250000, 0.00000000 };
Point ( 5803 ) = { -5.87083333, 57.46666667, 0.00000000 };
Point ( 5804 ) = { -5.87500000, 57.47083333, 0.00000000 };
Point ( 5805 ) = { -5.87500000, 57.47916667, 0.00000000 };
Point ( 5806 ) = { -5.87500000, 57.48750000, 0.00000000 };
Point ( 5807 ) = { -5.87500000, 57.49583333, 0.00000000 };
Point ( 5808 ) = { -5.87500000, 57.50416667, 0.00000000 };
Point ( 5809 ) = { -5.87083333, 57.50833333, 0.00000000 };
Point ( 5810 ) = { -5.86666667, 57.51250000, 0.00000000 };
Point ( 5811 ) = { -5.86666667, 57.52083333, 0.00000000 };
Point ( 5812 ) = { -5.86250000, 57.52500000, 0.00000000 };
Point ( 5813 ) = { -5.85833333, 57.52916667, 0.00000000 };
Point ( 5814 ) = { -5.85833333, 57.53750000, 0.00000000 };
Point ( 5815 ) = { -5.85833333, 57.54583333, 0.00000000 };
Point ( 5816 ) = { -5.85833333, 57.55416667, 0.00000000 };
Point ( 5817 ) = { -5.85416667, 57.55833333, 0.00000000 };
Point ( 5818 ) = { -5.85000000, 57.56250000, 0.00000000 };
Point ( 5819 ) = { -5.84583333, 57.56666667, 0.00000000 };
Point ( 5820 ) = { -5.84166667, 57.57083333, 0.00000000 };
Point ( 5821 ) = { -5.84166667, 57.57916667, 0.00000000 };
Point ( 5822 ) = { -5.83750000, 57.58333333, 0.00000000 };
Point ( 5823 ) = { -5.82916667, 57.58333333, 0.00000000 };
Point ( 5824 ) = { -5.82083333, 57.58333333, 0.00000000 };
Point ( 5825 ) = { -5.81666667, 57.58750000, 0.00000000 };
Point ( 5826 ) = { -5.81250000, 57.59166667, 0.00000000 };
Point ( 5827 ) = { -5.80833333, 57.58750000, 0.00000000 };
Point ( 5828 ) = { -5.80416667, 57.58333333, 0.00000000 };
Point ( 5829 ) = { -5.79583333, 57.58333333, 0.00000000 };
Point ( 5830 ) = { -5.79166667, 57.57916667, 0.00000000 };
Point ( 5831 ) = { -5.78750000, 57.57500000, 0.00000000 };
Point ( 5832 ) = { -5.77916667, 57.57500000, 0.00000000 };
Point ( 5833 ) = { -5.77500000, 57.57083333, 0.00000000 };
Point ( 5834 ) = { -5.77083333, 57.56666667, 0.00000000 };
Point ( 5835 ) = { -5.76250000, 57.56666667, 0.00000000 };
Point ( 5836 ) = { -5.75416667, 57.56666667, 0.00000000 };
Point ( 5837 ) = { -5.75000000, 57.56250000, 0.00000000 };
Point ( 5838 ) = { -5.74583333, 57.55833333, 0.00000000 };
Point ( 5839 ) = { -5.74166667, 57.55416667, 0.00000000 };
Point ( 5840 ) = { -5.73750000, 57.55000000, 0.00000000 };
Point ( 5841 ) = { -5.72916667, 57.55000000, 0.00000000 };
Point ( 5842 ) = { -5.72083333, 57.55000000, 0.00000000 };
Point ( 5843 ) = { -5.71666667, 57.55416667, 0.00000000 };
Point ( 5844 ) = { -5.71250000, 57.55833333, 0.00000000 };
Point ( 5845 ) = { -5.70833333, 57.56250000, 0.00000000 };
Point ( 5846 ) = { -5.70833333, 57.57083333, 0.00000000 };
Point ( 5847 ) = { -5.71250000, 57.57500000, 0.00000000 };
Point ( 5848 ) = { -5.72083333, 57.57500000, 0.00000000 };
Point ( 5849 ) = { -5.72500000, 57.57916667, 0.00000000 };
Point ( 5850 ) = { -5.72916667, 57.58333333, 0.00000000 };
Point ( 5851 ) = { -5.73333333, 57.58750000, 0.00000000 };
Point ( 5852 ) = { -5.73750000, 57.59166667, 0.00000000 };
Point ( 5853 ) = { -5.74166667, 57.59583333, 0.00000000 };
Point ( 5854 ) = { -5.74166667, 57.60416667, 0.00000000 };
Point ( 5855 ) = { -5.74583333, 57.60833333, 0.00000000 };
Point ( 5856 ) = { -5.75000000, 57.61250000, 0.00000000 };
Point ( 5857 ) = { -5.75416667, 57.61666667, 0.00000000 };
Point ( 5858 ) = { -5.75833333, 57.62083333, 0.00000000 };
Point ( 5859 ) = { -5.76250000, 57.62500000, 0.00000000 };
Point ( 5860 ) = { -5.77083333, 57.62500000, 0.00000000 };
Point ( 5861 ) = { -5.77500000, 57.62916667, 0.00000000 };
Point ( 5862 ) = { -5.77916667, 57.63333333, 0.00000000 };
Point ( 5863 ) = { -5.78750000, 57.63333333, 0.00000000 };
Point ( 5864 ) = { -5.79583333, 57.63333333, 0.00000000 };
Point ( 5865 ) = { -5.80416667, 57.63333333, 0.00000000 };
Point ( 5866 ) = { -5.81250000, 57.63333333, 0.00000000 };
Point ( 5867 ) = { -5.81666667, 57.63750000, 0.00000000 };
Point ( 5868 ) = { -5.82083333, 57.64166667, 0.00000000 };
Point ( 5869 ) = { -5.82500000, 57.64583333, 0.00000000 };
Point ( 5870 ) = { -5.82083333, 57.65000000, 0.00000000 };
Point ( 5871 ) = { -5.81666667, 57.65416667, 0.00000000 };
Point ( 5872 ) = { -5.81666667, 57.66250000, 0.00000000 };
Point ( 5873 ) = { -5.81666667, 57.67083333, 0.00000000 };
Point ( 5874 ) = { -5.81250000, 57.67500000, 0.00000000 };
Point ( 5875 ) = { -5.80416667, 57.67500000, 0.00000000 };
Point ( 5876 ) = { -5.80000000, 57.67916667, 0.00000000 };
Point ( 5877 ) = { -5.79583333, 57.68333333, 0.00000000 };
Point ( 5878 ) = { -5.79166667, 57.68750000, 0.00000000 };
Point ( 5879 ) = { -5.79166667, 57.69583333, 0.00000000 };
Point ( 5880 ) = { -5.78750000, 57.70000000, 0.00000000 };
Point ( 5881 ) = { -5.77916667, 57.70000000, 0.00000000 };
Point ( 5882 ) = { -5.77500000, 57.70416667, 0.00000000 };
Point ( 5883 ) = { -5.77083333, 57.70833333, 0.00000000 };
Point ( 5884 ) = { -5.76250000, 57.70833333, 0.00000000 };
Point ( 5885 ) = { -5.75416667, 57.70833333, 0.00000000 };
Point ( 5886 ) = { -5.74583333, 57.70833333, 0.00000000 };
Point ( 5887 ) = { -5.73750000, 57.70833333, 0.00000000 };
Point ( 5888 ) = { -5.72916667, 57.70833333, 0.00000000 };
Point ( 5889 ) = { -5.72083333, 57.70833333, 0.00000000 };
Point ( 5890 ) = { -5.71250000, 57.70833333, 0.00000000 };
Point ( 5891 ) = { -5.70833333, 57.70416667, 0.00000000 };
Point ( 5892 ) = { -5.70416667, 57.70000000, 0.00000000 };
Point ( 5893 ) = { -5.69583333, 57.70000000, 0.00000000 };
Point ( 5894 ) = { -5.68750000, 57.70000000, 0.00000000 };
Point ( 5895 ) = { -5.68333333, 57.70416667, 0.00000000 };
Point ( 5896 ) = { -5.68750000, 57.70833333, 0.00000000 };
Point ( 5897 ) = { -5.69166667, 57.71250000, 0.00000000 };
Point ( 5898 ) = { -5.69166667, 57.72083333, 0.00000000 };
Point ( 5899 ) = { -5.69583333, 57.72500000, 0.00000000 };
Point ( 5900 ) = { -5.70416667, 57.72500000, 0.00000000 };
Point ( 5901 ) = { -5.71250000, 57.72500000, 0.00000000 };
Point ( 5902 ) = { -5.72083333, 57.72500000, 0.00000000 };
Point ( 5903 ) = { -5.72916667, 57.72500000, 0.00000000 };
Point ( 5904 ) = { -5.73750000, 57.72500000, 0.00000000 };
Point ( 5905 ) = { -5.74583333, 57.72500000, 0.00000000 };
Point ( 5906 ) = { -5.75416667, 57.72500000, 0.00000000 };
Point ( 5907 ) = { -5.76250000, 57.72500000, 0.00000000 };
Point ( 5908 ) = { -5.76666667, 57.72916667, 0.00000000 };
Point ( 5909 ) = { -5.77083333, 57.73333333, 0.00000000 };
Point ( 5910 ) = { -5.77500000, 57.73750000, 0.00000000 };
Point ( 5911 ) = { -5.77916667, 57.74166667, 0.00000000 };
Point ( 5912 ) = { -5.78750000, 57.74166667, 0.00000000 };
Point ( 5913 ) = { -5.79166667, 57.73750000, 0.00000000 };
Point ( 5914 ) = { -5.79166667, 57.72916667, 0.00000000 };
Point ( 5915 ) = { -5.79583333, 57.72500000, 0.00000000 };
Point ( 5916 ) = { -5.80416667, 57.72500000, 0.00000000 };
Point ( 5917 ) = { -5.81250000, 57.72500000, 0.00000000 };
Point ( 5918 ) = { -5.82083333, 57.72500000, 0.00000000 };
Point ( 5919 ) = { -5.82500000, 57.72916667, 0.00000000 };
Point ( 5920 ) = { -5.82500000, 57.73750000, 0.00000000 };
Point ( 5921 ) = { -5.82083333, 57.74166667, 0.00000000 };
Point ( 5922 ) = { -5.81666667, 57.74583333, 0.00000000 };
Point ( 5923 ) = { -5.81666667, 57.75416667, 0.00000000 };
Point ( 5924 ) = { -5.81666667, 57.76250000, 0.00000000 };
Point ( 5925 ) = { -5.81666667, 57.77083333, 0.00000000 };
Point ( 5926 ) = { -5.81250000, 57.77500000, 0.00000000 };
Point ( 5927 ) = { -5.80833333, 57.77916667, 0.00000000 };
Point ( 5928 ) = { -5.80833333, 57.78750000, 0.00000000 };
Point ( 5929 ) = { -5.80833333, 57.79583333, 0.00000000 };
Point ( 5930 ) = { -5.80833333, 57.80416667, 0.00000000 };
Point ( 5931 ) = { -5.81250000, 57.80833333, 0.00000000 };
Point ( 5932 ) = { -5.81666667, 57.81250000, 0.00000000 };
Point ( 5933 ) = { -5.81666667, 57.82083333, 0.00000000 };
Point ( 5934 ) = { -5.81666667, 57.82916667, 0.00000000 };
Point ( 5935 ) = { -5.81666667, 57.83750000, 0.00000000 };
Point ( 5936 ) = { -5.81666667, 57.84583333, 0.00000000 };
Point ( 5937 ) = { -5.81666667, 57.85416667, 0.00000000 };
Point ( 5938 ) = { -5.81666667, 57.86250000, 0.00000000 };
Point ( 5939 ) = { -5.81250000, 57.86666667, 0.00000000 };
Point ( 5940 ) = { -5.80416667, 57.86666667, 0.00000000 };
Point ( 5941 ) = { -5.79583333, 57.86666667, 0.00000000 };
Point ( 5942 ) = { -5.78750000, 57.86666667, 0.00000000 };
Point ( 5943 ) = { -5.77916667, 57.86666667, 0.00000000 };
Point ( 5944 ) = { -5.77083333, 57.86666667, 0.00000000 };
Point ( 5945 ) = { -5.76666667, 57.87083333, 0.00000000 };
Point ( 5946 ) = { -5.76250000, 57.87500000, 0.00000000 };
Point ( 5947 ) = { -5.75416667, 57.87500000, 0.00000000 };
Point ( 5948 ) = { -5.74583333, 57.87500000, 0.00000000 };
Point ( 5949 ) = { -5.73750000, 57.87500000, 0.00000000 };
Point ( 5950 ) = { -5.72916667, 57.87500000, 0.00000000 };
Point ( 5951 ) = { -5.72083333, 57.87500000, 0.00000000 };
Point ( 5952 ) = { -5.71250000, 57.87500000, 0.00000000 };
Point ( 5953 ) = { -5.70416667, 57.87500000, 0.00000000 };
Point ( 5954 ) = { -5.69583333, 57.87500000, 0.00000000 };
Point ( 5955 ) = { -5.69166667, 57.87083333, 0.00000000 };
Point ( 5956 ) = { -5.68750000, 57.86666667, 0.00000000 };
Point ( 5957 ) = { -5.68333333, 57.86250000, 0.00000000 };
Point ( 5958 ) = { -5.68333333, 57.85416667, 0.00000000 };
Point ( 5959 ) = { -5.68333333, 57.84583333, 0.00000000 };
Point ( 5960 ) = { -5.67916667, 57.84166667, 0.00000000 };
Point ( 5961 ) = { -5.67500000, 57.83750000, 0.00000000 };
Point ( 5962 ) = { -5.67083333, 57.83333333, 0.00000000 };
Point ( 5963 ) = { -5.66666667, 57.82916667, 0.00000000 };
Point ( 5964 ) = { -5.66250000, 57.82500000, 0.00000000 };
Point ( 5965 ) = { -5.65833333, 57.82083333, 0.00000000 };
Point ( 5966 ) = { -5.66250000, 57.81666667, 0.00000000 };
Point ( 5967 ) = { -5.66666667, 57.81250000, 0.00000000 };
Point ( 5968 ) = { -5.66666667, 57.80416667, 0.00000000 };
Point ( 5969 ) = { -5.66250000, 57.80000000, 0.00000000 };
Point ( 5970 ) = { -5.65833333, 57.79583333, 0.00000000 };
Point ( 5971 ) = { -5.65416667, 57.79166667, 0.00000000 };
Point ( 5972 ) = { -5.64583333, 57.79166667, 0.00000000 };
Point ( 5973 ) = { -5.64166667, 57.78750000, 0.00000000 };
Point ( 5974 ) = { -5.63750000, 57.78333333, 0.00000000 };
Point ( 5975 ) = { -5.62916667, 57.78333333, 0.00000000 };
Point ( 5976 ) = { -5.62500000, 57.78750000, 0.00000000 };
Point ( 5977 ) = { -5.62083333, 57.79166667, 0.00000000 };
Point ( 5978 ) = { -5.61666667, 57.79583333, 0.00000000 };
Point ( 5979 ) = { -5.61250000, 57.80000000, 0.00000000 };
Point ( 5980 ) = { -5.60416667, 57.80000000, 0.00000000 };
Point ( 5981 ) = { -5.60000000, 57.80416667, 0.00000000 };
Point ( 5982 ) = { -5.59583333, 57.80833333, 0.00000000 };
Point ( 5983 ) = { -5.59166667, 57.81250000, 0.00000000 };
Point ( 5984 ) = { -5.59166667, 57.82083333, 0.00000000 };
Point ( 5985 ) = { -5.58750000, 57.82500000, 0.00000000 };
Point ( 5986 ) = { -5.58333333, 57.82916667, 0.00000000 };
Point ( 5987 ) = { -5.58750000, 57.83333333, 0.00000000 };
Point ( 5988 ) = { -5.59166667, 57.83750000, 0.00000000 };
Point ( 5989 ) = { -5.59583333, 57.84166667, 0.00000000 };
Point ( 5990 ) = { -5.60000000, 57.84583333, 0.00000000 };
Point ( 5991 ) = { -5.60416667, 57.85000000, 0.00000000 };
Point ( 5992 ) = { -5.61250000, 57.85000000, 0.00000000 };
Point ( 5993 ) = { -5.62083333, 57.85000000, 0.00000000 };
Point ( 5994 ) = { -5.62500000, 57.84583333, 0.00000000 };
Point ( 5995 ) = { -5.62083333, 57.84166667, 0.00000000 };
Point ( 5996 ) = { -5.61250000, 57.84166667, 0.00000000 };
Point ( 5997 ) = { -5.60833333, 57.83750000, 0.00000000 };
Point ( 5998 ) = { -5.60416667, 57.83333333, 0.00000000 };
Point ( 5999 ) = { -5.60000000, 57.82916667, 0.00000000 };
Point ( 6000 ) = { -5.60000000, 57.82083333, 0.00000000 };
Point ( 6001 ) = { -5.60416667, 57.81666667, 0.00000000 };
Point ( 6002 ) = { -5.61250000, 57.81666667, 0.00000000 };
Point ( 6003 ) = { -5.62083333, 57.81666667, 0.00000000 };
Point ( 6004 ) = { -5.62500000, 57.82083333, 0.00000000 };
Point ( 6005 ) = { -5.62916667, 57.82500000, 0.00000000 };
Point ( 6006 ) = { -5.63750000, 57.82500000, 0.00000000 };
Point ( 6007 ) = { -5.64166667, 57.82916667, 0.00000000 };
Point ( 6008 ) = { -5.64583333, 57.83333333, 0.00000000 };
Point ( 6009 ) = { -5.65000000, 57.83750000, 0.00000000 };
Point ( 6010 ) = { -5.64583333, 57.84166667, 0.00000000 };
Point ( 6011 ) = { -5.64166667, 57.84583333, 0.00000000 };
Point ( 6012 ) = { -5.64166667, 57.85416667, 0.00000000 };
Point ( 6013 ) = { -5.64583333, 57.85833333, 0.00000000 };
Point ( 6014 ) = { -5.65000000, 57.86250000, 0.00000000 };
Point ( 6015 ) = { -5.65416667, 57.86666667, 0.00000000 };
Point ( 6016 ) = { -5.65833333, 57.87083333, 0.00000000 };
Point ( 6017 ) = { -5.65833333, 57.87916667, 0.00000000 };
Point ( 6018 ) = { -5.65833333, 57.88750000, 0.00000000 };
Point ( 6019 ) = { -5.65416667, 57.89166667, 0.00000000 };
Point ( 6020 ) = { -5.65000000, 57.89583333, 0.00000000 };
Point ( 6021 ) = { -5.65000000, 57.90416667, 0.00000000 };
Point ( 6022 ) = { -5.64583333, 57.90833333, 0.00000000 };
Point ( 6023 ) = { -5.64166667, 57.91250000, 0.00000000 };
Point ( 6024 ) = { -5.63750000, 57.91666667, 0.00000000 };
Point ( 6025 ) = { -5.62916667, 57.91666667, 0.00000000 };
Point ( 6026 ) = { -5.62500000, 57.92083333, 0.00000000 };
Point ( 6027 ) = { -5.62083333, 57.92500000, 0.00000000 };
Point ( 6028 ) = { -5.61250000, 57.92500000, 0.00000000 };
Point ( 6029 ) = { -5.60416667, 57.92500000, 0.00000000 };
Point ( 6030 ) = { -5.59583333, 57.92500000, 0.00000000 };
Point ( 6031 ) = { -5.58750000, 57.92500000, 0.00000000 };
Point ( 6032 ) = { -5.58333333, 57.92083333, 0.00000000 };
Point ( 6033 ) = { -5.57916667, 57.91666667, 0.00000000 };
Point ( 6034 ) = { -5.57083333, 57.91666667, 0.00000000 };
Point ( 6035 ) = { -5.56666667, 57.92083333, 0.00000000 };
Point ( 6036 ) = { -5.56250000, 57.92500000, 0.00000000 };
Point ( 6037 ) = { -5.55833333, 57.92083333, 0.00000000 };
Point ( 6038 ) = { -5.55416667, 57.91666667, 0.00000000 };
Point ( 6039 ) = { -5.55000000, 57.91250000, 0.00000000 };
Point ( 6040 ) = { -5.55000000, 57.90416667, 0.00000000 };
Point ( 6041 ) = { -5.55000000, 57.89583333, 0.00000000 };
Point ( 6042 ) = { -5.55000000, 57.88750000, 0.00000000 };
Point ( 6043 ) = { -5.54583333, 57.88333333, 0.00000000 };
Point ( 6044 ) = { -5.54166667, 57.87916667, 0.00000000 };
Point ( 6045 ) = { -5.53750000, 57.87500000, 0.00000000 };
Point ( 6046 ) = { -5.53333333, 57.87083333, 0.00000000 };
Point ( 6047 ) = { -5.52916667, 57.86666667, 0.00000000 };
Point ( 6048 ) = { -5.52083333, 57.86666667, 0.00000000 };
Point ( 6049 ) = { -5.51250000, 57.86666667, 0.00000000 };
Point ( 6050 ) = { -5.50416667, 57.86666667, 0.00000000 };
Point ( 6051 ) = { -5.49583333, 57.86666667, 0.00000000 };
Point ( 6052 ) = { -5.48750000, 57.86666667, 0.00000000 };
Point ( 6053 ) = { -5.48333333, 57.86250000, 0.00000000 };
Point ( 6054 ) = { -5.47916667, 57.85833333, 0.00000000 };
Point ( 6055 ) = { -5.47083333, 57.85833333, 0.00000000 };
Point ( 6056 ) = { -5.46250000, 57.85833333, 0.00000000 };
Point ( 6057 ) = { -5.45833333, 57.86250000, 0.00000000 };
Point ( 6058 ) = { -5.45833333, 57.87083333, 0.00000000 };
Point ( 6059 ) = { -5.46250000, 57.87500000, 0.00000000 };
Point ( 6060 ) = { -5.47083333, 57.87500000, 0.00000000 };
Point ( 6061 ) = { -5.47500000, 57.87916667, 0.00000000 };
Point ( 6062 ) = { -5.47916667, 57.88333333, 0.00000000 };
Point ( 6063 ) = { -5.48333333, 57.88750000, 0.00000000 };
Point ( 6064 ) = { -5.48333333, 57.89583333, 0.00000000 };
Point ( 6065 ) = { -5.47916667, 57.90000000, 0.00000000 };
Point ( 6066 ) = { -5.47083333, 57.90000000, 0.00000000 };
Point ( 6067 ) = { -5.46250000, 57.90000000, 0.00000000 };
Point ( 6068 ) = { -5.45833333, 57.89583333, 0.00000000 };
Point ( 6069 ) = { -5.45833333, 57.88750000, 0.00000000 };
Point ( 6070 ) = { -5.45833333, 57.87916667, 0.00000000 };
Point ( 6071 ) = { -5.45416667, 57.87500000, 0.00000000 };
Point ( 6072 ) = { -5.44583333, 57.87500000, 0.00000000 };
Point ( 6073 ) = { -5.44166667, 57.87916667, 0.00000000 };
Point ( 6074 ) = { -5.44166667, 57.88750000, 0.00000000 };
Point ( 6075 ) = { -5.44166667, 57.89583333, 0.00000000 };
Point ( 6076 ) = { -5.43750000, 57.90000000, 0.00000000 };
Point ( 6077 ) = { -5.43333333, 57.90416667, 0.00000000 };
Point ( 6078 ) = { -5.42916667, 57.90833333, 0.00000000 };
Point ( 6079 ) = { -5.42083333, 57.90833333, 0.00000000 };
Point ( 6080 ) = { -5.41250000, 57.90833333, 0.00000000 };
Point ( 6081 ) = { -5.40416667, 57.90833333, 0.00000000 };
Point ( 6082 ) = { -5.40000000, 57.91250000, 0.00000000 };
Point ( 6083 ) = { -5.40000000, 57.92083333, 0.00000000 };
Point ( 6084 ) = { -5.40416667, 57.92500000, 0.00000000 };
Point ( 6085 ) = { -5.40833333, 57.92916667, 0.00000000 };
Point ( 6086 ) = { -5.40416667, 57.93333333, 0.00000000 };
Point ( 6087 ) = { -5.39583333, 57.93333333, 0.00000000 };
Point ( 6088 ) = { -5.38750000, 57.93333333, 0.00000000 };
Point ( 6089 ) = { -5.37916667, 57.93333333, 0.00000000 };
Point ( 6090 ) = { -5.37500000, 57.93750000, 0.00000000 };
Point ( 6091 ) = { -5.37083333, 57.94166667, 0.00000000 };
Point ( 6092 ) = { -5.36250000, 57.94166667, 0.00000000 };
Point ( 6093 ) = { -5.35416667, 57.94166667, 0.00000000 };
Point ( 6094 ) = { -5.35000000, 57.93750000, 0.00000000 };
Point ( 6095 ) = { -5.35000000, 57.92916667, 0.00000000 };
Point ( 6096 ) = { -5.34583333, 57.92500000, 0.00000000 };
Point ( 6097 ) = { -5.33750000, 57.92500000, 0.00000000 };
Point ( 6098 ) = { -5.33333333, 57.92083333, 0.00000000 };
Point ( 6099 ) = { -5.32916667, 57.91666667, 0.00000000 };
Point ( 6100 ) = { -5.32083333, 57.91666667, 0.00000000 };
Point ( 6101 ) = { -5.31250000, 57.91666667, 0.00000000 };
Point ( 6102 ) = { -5.30416667, 57.91666667, 0.00000000 };
Point ( 6103 ) = { -5.29583333, 57.91666667, 0.00000000 };
Point ( 6104 ) = { -5.28750000, 57.91666667, 0.00000000 };
Point ( 6105 ) = { -5.27916667, 57.91666667, 0.00000000 };
Point ( 6106 ) = { -5.27083333, 57.91666667, 0.00000000 };
Point ( 6107 ) = { -5.26666667, 57.92083333, 0.00000000 };
Point ( 6108 ) = { -5.26250000, 57.92500000, 0.00000000 };
Point ( 6109 ) = { -5.25416667, 57.92500000, 0.00000000 };
Point ( 6110 ) = { -5.24583333, 57.92500000, 0.00000000 };
Point ( 6111 ) = { -5.24166667, 57.92083333, 0.00000000 };
Point ( 6112 ) = { -5.23750000, 57.91666667, 0.00000000 };
Point ( 6113 ) = { -5.22916667, 57.91666667, 0.00000000 };
Point ( 6114 ) = { -5.22500000, 57.92083333, 0.00000000 };
Point ( 6115 ) = { -5.22500000, 57.92916667, 0.00000000 };
Point ( 6116 ) = { -5.22916667, 57.93333333, 0.00000000 };
Point ( 6117 ) = { -5.23333333, 57.93750000, 0.00000000 };
Point ( 6118 ) = { -5.23750000, 57.94166667, 0.00000000 };
Point ( 6119 ) = { -5.24166667, 57.94583333, 0.00000000 };
Point ( 6120 ) = { -5.23750000, 57.95000000, 0.00000000 };
Point ( 6121 ) = { -5.22916667, 57.95000000, 0.00000000 };
Point ( 6122 ) = { -5.22500000, 57.95416667, 0.00000000 };
Point ( 6123 ) = { -5.22916667, 57.95833333, 0.00000000 };
Point ( 6124 ) = { -5.23750000, 57.95833333, 0.00000000 };
Point ( 6125 ) = { -5.24583333, 57.95833333, 0.00000000 };
Point ( 6126 ) = { -5.25000000, 57.96250000, 0.00000000 };
Point ( 6127 ) = { -5.25416667, 57.96666667, 0.00000000 };
Point ( 6128 ) = { -5.26250000, 57.96666667, 0.00000000 };
Point ( 6129 ) = { -5.26666667, 57.97083333, 0.00000000 };
Point ( 6130 ) = { -5.27083333, 57.97500000, 0.00000000 };
Point ( 6131 ) = { -5.27916667, 57.97500000, 0.00000000 };
Point ( 6132 ) = { -5.28750000, 57.97500000, 0.00000000 };
Point ( 6133 ) = { -5.29583333, 57.97500000, 0.00000000 };
Point ( 6134 ) = { -5.30416667, 57.97500000, 0.00000000 };
Point ( 6135 ) = { -5.31250000, 57.97500000, 0.00000000 };
Point ( 6136 ) = { -5.31666667, 57.97916667, 0.00000000 };
Point ( 6137 ) = { -5.31666667, 57.98750000, 0.00000000 };
Point ( 6138 ) = { -5.32083333, 57.99166667, 0.00000000 };
Point ( 6139 ) = { -5.32500000, 57.99583333, 0.00000000 };
Point ( 6140 ) = { -5.32916667, 58.00000000, 0.00000000 };
Point ( 6141 ) = { -5.33333333, 57.99583333, 0.00000000 };
Point ( 6142 ) = { -5.33333333, 57.98750000, 0.00000000 };
Point ( 6143 ) = { -5.33750000, 57.98333333, 0.00000000 };
Point ( 6144 ) = { -5.34166667, 57.97916667, 0.00000000 };
Point ( 6145 ) = { -5.34583333, 57.97500000, 0.00000000 };
Point ( 6146 ) = { -5.35000000, 57.97916667, 0.00000000 };
Point ( 6147 ) = { -5.35000000, 57.98750000, 0.00000000 };
Point ( 6148 ) = { -5.35000000, 57.99583333, 0.00000000 };
Point ( 6149 ) = { -5.35416667, 58.00000000, 0.00000000 };
Point ( 6150 ) = { -5.35833333, 58.00416667, 0.00000000 };
Point ( 6151 ) = { -5.35833333, 58.01250000, 0.00000000 };
Point ( 6152 ) = { -5.36250000, 58.01666667, 0.00000000 };
Point ( 6153 ) = { -5.36666667, 58.02083333, 0.00000000 };
Point ( 6154 ) = { -5.37083333, 58.02500000, 0.00000000 };
Point ( 6155 ) = { -5.37916667, 58.02500000, 0.00000000 };
Point ( 6156 ) = { -5.38750000, 58.02500000, 0.00000000 };
Point ( 6157 ) = { -5.39166667, 58.02083333, 0.00000000 };
Point ( 6158 ) = { -5.39166667, 58.01250000, 0.00000000 };
Point ( 6159 ) = { -5.38750000, 58.00833333, 0.00000000 };
Point ( 6160 ) = { -5.38333333, 58.00416667, 0.00000000 };
Point ( 6161 ) = { -5.38750000, 58.00000000, 0.00000000 };
Point ( 6162 ) = { -5.39583333, 58.00000000, 0.00000000 };
Point ( 6163 ) = { -5.40416667, 58.00000000, 0.00000000 };
Point ( 6164 ) = { -5.41250000, 58.00000000, 0.00000000 };
Point ( 6165 ) = { -5.42083333, 58.00000000, 0.00000000 };
Point ( 6166 ) = { -5.42500000, 58.00416667, 0.00000000 };
Point ( 6167 ) = { -5.42916667, 58.00833333, 0.00000000 };
Point ( 6168 ) = { -5.43333333, 58.00416667, 0.00000000 };
Point ( 6169 ) = { -5.43750000, 58.00000000, 0.00000000 };
Point ( 6170 ) = { -5.44583333, 58.00000000, 0.00000000 };
Point ( 6171 ) = { -5.45416667, 58.00000000, 0.00000000 };
Point ( 6172 ) = { -5.45833333, 58.00416667, 0.00000000 };
Point ( 6173 ) = { -5.45833333, 58.01250000, 0.00000000 };
Point ( 6174 ) = { -5.45416667, 58.01666667, 0.00000000 };
Point ( 6175 ) = { -5.45000000, 58.02083333, 0.00000000 };
Point ( 6176 ) = { -5.44583333, 58.02500000, 0.00000000 };
Point ( 6177 ) = { -5.44166667, 58.02083333, 0.00000000 };
Point ( 6178 ) = { -5.43750000, 58.01666667, 0.00000000 };
Point ( 6179 ) = { -5.42916667, 58.01666667, 0.00000000 };
Point ( 6180 ) = { -5.42500000, 58.02083333, 0.00000000 };
Point ( 6181 ) = { -5.42500000, 58.02916667, 0.00000000 };
Point ( 6182 ) = { -5.42916667, 58.03333333, 0.00000000 };
Point ( 6183 ) = { -5.43750000, 58.03333333, 0.00000000 };
Point ( 6184 ) = { -5.44583333, 58.03333333, 0.00000000 };
Point ( 6185 ) = { -5.45000000, 58.03750000, 0.00000000 };
Point ( 6186 ) = { -5.45416667, 58.04166667, 0.00000000 };
Point ( 6187 ) = { -5.46250000, 58.04166667, 0.00000000 };
Point ( 6188 ) = { -5.46666667, 58.04583333, 0.00000000 };
Point ( 6189 ) = { -5.46250000, 58.05000000, 0.00000000 };
Point ( 6190 ) = { -5.45416667, 58.05000000, 0.00000000 };
Point ( 6191 ) = { -5.45000000, 58.05416667, 0.00000000 };
Point ( 6192 ) = { -5.45000000, 58.06250000, 0.00000000 };
Point ( 6193 ) = { -5.45416667, 58.06666667, 0.00000000 };
Point ( 6194 ) = { -5.45833333, 58.07083333, 0.00000000 };
Point ( 6195 ) = { -5.45833333, 58.07916667, 0.00000000 };
Point ( 6196 ) = { -5.45833333, 58.08750000, 0.00000000 };
Point ( 6197 ) = { -5.45416667, 58.09166667, 0.00000000 };
Point ( 6198 ) = { -5.45000000, 58.09583333, 0.00000000 };
Point ( 6199 ) = { -5.44583333, 58.10000000, 0.00000000 };
Point ( 6200 ) = { -5.44166667, 58.10416667, 0.00000000 };
Point ( 6201 ) = { -5.43750000, 58.10833333, 0.00000000 };
Point ( 6202 ) = { -5.42916667, 58.10833333, 0.00000000 };
Point ( 6203 ) = { -5.42083333, 58.10833333, 0.00000000 };
Point ( 6204 ) = { -5.41250000, 58.10833333, 0.00000000 };
Point ( 6205 ) = { -5.40833333, 58.10416667, 0.00000000 };
Point ( 6206 ) = { -5.40416667, 58.10000000, 0.00000000 };
Point ( 6207 ) = { -5.39583333, 58.10000000, 0.00000000 };
Point ( 6208 ) = { -5.38750000, 58.10000000, 0.00000000 };
Point ( 6209 ) = { -5.38333333, 58.09583333, 0.00000000 };
Point ( 6210 ) = { -5.37916667, 58.09166667, 0.00000000 };
Point ( 6211 ) = { -5.37500000, 58.08750000, 0.00000000 };
Point ( 6212 ) = { -5.37083333, 58.08333333, 0.00000000 };
Point ( 6213 ) = { -5.36250000, 58.08333333, 0.00000000 };
Point ( 6214 ) = { -5.35416667, 58.08333333, 0.00000000 };
Point ( 6215 ) = { -5.34583333, 58.08333333, 0.00000000 };
Point ( 6216 ) = { -5.33750000, 58.08333333, 0.00000000 };
Point ( 6217 ) = { -5.32916667, 58.08333333, 0.00000000 };
Point ( 6218 ) = { -5.32500000, 58.07916667, 0.00000000 };
Point ( 6219 ) = { -5.32083333, 58.07500000, 0.00000000 };
Point ( 6220 ) = { -5.31250000, 58.07500000, 0.00000000 };
Point ( 6221 ) = { -5.30416667, 58.07500000, 0.00000000 };
Point ( 6222 ) = { -5.30000000, 58.07916667, 0.00000000 };
Point ( 6223 ) = { -5.29583333, 58.08333333, 0.00000000 };
Point ( 6224 ) = { -5.29166667, 58.08750000, 0.00000000 };
Point ( 6225 ) = { -5.28750000, 58.09166667, 0.00000000 };
Point ( 6226 ) = { -5.28333333, 58.09583333, 0.00000000 };
Point ( 6227 ) = { -5.28333333, 58.10416667, 0.00000000 };
Point ( 6228 ) = { -5.28750000, 58.10833333, 0.00000000 };
Point ( 6229 ) = { -5.29166667, 58.10416667, 0.00000000 };
Point ( 6230 ) = { -5.29583333, 58.10000000, 0.00000000 };
Point ( 6231 ) = { -5.30416667, 58.10000000, 0.00000000 };
Point ( 6232 ) = { -5.30833333, 58.10416667, 0.00000000 };
Point ( 6233 ) = { -5.30833333, 58.11250000, 0.00000000 };
Point ( 6234 ) = { -5.30833333, 58.12083333, 0.00000000 };
Point ( 6235 ) = { -5.30416667, 58.12500000, 0.00000000 };
Point ( 6236 ) = { -5.29583333, 58.12500000, 0.00000000 };
Point ( 6237 ) = { -5.29166667, 58.12916667, 0.00000000 };
Point ( 6238 ) = { -5.29583333, 58.13333333, 0.00000000 };
Point ( 6239 ) = { -5.30000000, 58.13750000, 0.00000000 };
Point ( 6240 ) = { -5.29583333, 58.14166667, 0.00000000 };
Point ( 6241 ) = { -5.29166667, 58.14583333, 0.00000000 };
Point ( 6242 ) = { -5.29583333, 58.15000000, 0.00000000 };
Point ( 6243 ) = { -5.30416667, 58.15000000, 0.00000000 };
Point ( 6244 ) = { -5.30833333, 58.14583333, 0.00000000 };
Point ( 6245 ) = { -5.31250000, 58.14166667, 0.00000000 };
Point ( 6246 ) = { -5.32083333, 58.14166667, 0.00000000 };
Point ( 6247 ) = { -5.32916667, 58.14166667, 0.00000000 };
Point ( 6248 ) = { -5.33333333, 58.14583333, 0.00000000 };
Point ( 6249 ) = { -5.32916667, 58.15000000, 0.00000000 };
Point ( 6250 ) = { -5.32083333, 58.15000000, 0.00000000 };
Point ( 6251 ) = { -5.31250000, 58.15000000, 0.00000000 };
Point ( 6252 ) = { -5.30833333, 58.15416667, 0.00000000 };
Point ( 6253 ) = { -5.31250000, 58.15833333, 0.00000000 };
Point ( 6254 ) = { -5.31666667, 58.16250000, 0.00000000 };
Point ( 6255 ) = { -5.31666667, 58.17083333, 0.00000000 };
Point ( 6256 ) = { -5.32083333, 58.17500000, 0.00000000 };
Point ( 6257 ) = { -5.32916667, 58.17500000, 0.00000000 };
Point ( 6258 ) = { -5.33333333, 58.17916667, 0.00000000 };
Point ( 6259 ) = { -5.33750000, 58.18333333, 0.00000000 };
Point ( 6260 ) = { -5.34166667, 58.18750000, 0.00000000 };
Point ( 6261 ) = { -5.34166667, 58.19583333, 0.00000000 };
Point ( 6262 ) = { -5.34583333, 58.20000000, 0.00000000 };
Point ( 6263 ) = { -5.35416667, 58.20000000, 0.00000000 };
Point ( 6264 ) = { -5.36250000, 58.20000000, 0.00000000 };
Point ( 6265 ) = { -5.36666667, 58.20416667, 0.00000000 };
Point ( 6266 ) = { -5.36666667, 58.21250000, 0.00000000 };
Point ( 6267 ) = { -5.37083333, 58.21666667, 0.00000000 };
Point ( 6268 ) = { -5.37500000, 58.22083333, 0.00000000 };
Point ( 6269 ) = { -5.37916667, 58.22500000, 0.00000000 };
Point ( 6270 ) = { -5.38750000, 58.22500000, 0.00000000 };
Point ( 6271 ) = { -5.39583333, 58.22500000, 0.00000000 };
Point ( 6272 ) = { -5.40000000, 58.22916667, 0.00000000 };
Point ( 6273 ) = { -5.40416667, 58.23333333, 0.00000000 };
Point ( 6274 ) = { -5.40833333, 58.23750000, 0.00000000 };
Point ( 6275 ) = { -5.40833333, 58.24583333, 0.00000000 };
Point ( 6276 ) = { -5.40416667, 58.25000000, 0.00000000 };
Point ( 6277 ) = { -5.40000000, 58.25416667, 0.00000000 };
Point ( 6278 ) = { -5.39583333, 58.25833333, 0.00000000 };
Point ( 6279 ) = { -5.38750000, 58.25833333, 0.00000000 };
Point ( 6280 ) = { -5.38333333, 58.26250000, 0.00000000 };
Point ( 6281 ) = { -5.37916667, 58.26666667, 0.00000000 };
Point ( 6282 ) = { -5.37083333, 58.26666667, 0.00000000 };
Point ( 6283 ) = { -5.36250000, 58.26666667, 0.00000000 };
Point ( 6284 ) = { -5.35833333, 58.26250000, 0.00000000 };
Point ( 6285 ) = { -5.35416667, 58.25833333, 0.00000000 };
Point ( 6286 ) = { -5.34583333, 58.25833333, 0.00000000 };
Point ( 6287 ) = { -5.34166667, 58.25416667, 0.00000000 };
Point ( 6288 ) = { -5.33750000, 58.25000000, 0.00000000 };
Point ( 6289 ) = { -5.33333333, 58.24583333, 0.00000000 };
Point ( 6290 ) = { -5.32916667, 58.24166667, 0.00000000 };
Point ( 6291 ) = { -5.32083333, 58.24166667, 0.00000000 };
Point ( 6292 ) = { -5.31666667, 58.23750000, 0.00000000 };
Point ( 6293 ) = { -5.31250000, 58.23333333, 0.00000000 };
Point ( 6294 ) = { -5.30416667, 58.23333333, 0.00000000 };
Point ( 6295 ) = { -5.30000000, 58.23750000, 0.00000000 };
Point ( 6296 ) = { -5.29583333, 58.24166667, 0.00000000 };
Point ( 6297 ) = { -5.28750000, 58.24166667, 0.00000000 };
Point ( 6298 ) = { -5.28333333, 58.24583333, 0.00000000 };
Point ( 6299 ) = { -5.28333333, 58.25416667, 0.00000000 };
Point ( 6300 ) = { -5.28333333, 58.26250000, 0.00000000 };
Point ( 6301 ) = { -5.27916667, 58.26666667, 0.00000000 };
Point ( 6302 ) = { -5.27083333, 58.26666667, 0.00000000 };
Point ( 6303 ) = { -5.26250000, 58.26666667, 0.00000000 };
Point ( 6304 ) = { -5.25416667, 58.26666667, 0.00000000 };
Point ( 6305 ) = { -5.24583333, 58.26666667, 0.00000000 };
Point ( 6306 ) = { -5.24166667, 58.26250000, 0.00000000 };
Point ( 6307 ) = { -5.23750000, 58.25833333, 0.00000000 };
Point ( 6308 ) = { -5.22916667, 58.25833333, 0.00000000 };
Point ( 6309 ) = { -5.22083333, 58.25833333, 0.00000000 };
Point ( 6310 ) = { -5.21250000, 58.25833333, 0.00000000 };
Point ( 6311 ) = { -5.20416667, 58.25833333, 0.00000000 };
Point ( 6312 ) = { -5.19583333, 58.25833333, 0.00000000 };
Point ( 6313 ) = { -5.18750000, 58.25833333, 0.00000000 };
Point ( 6314 ) = { -5.18333333, 58.25416667, 0.00000000 };
Point ( 6315 ) = { -5.17916667, 58.25000000, 0.00000000 };
Point ( 6316 ) = { -5.17500000, 58.25416667, 0.00000000 };
Point ( 6317 ) = { -5.17083333, 58.25833333, 0.00000000 };
Point ( 6318 ) = { -5.16250000, 58.25833333, 0.00000000 };
Point ( 6319 ) = { -5.15416667, 58.25833333, 0.00000000 };
Point ( 6320 ) = { -5.15000000, 58.26250000, 0.00000000 };
Point ( 6321 ) = { -5.14583333, 58.26666667, 0.00000000 };
Point ( 6322 ) = { -5.14166667, 58.27083333, 0.00000000 };
Point ( 6323 ) = { -5.14583333, 58.27500000, 0.00000000 };
Point ( 6324 ) = { -5.15416667, 58.27500000, 0.00000000 };
Point ( 6325 ) = { -5.15833333, 58.27916667, 0.00000000 };
Point ( 6326 ) = { -5.15833333, 58.28750000, 0.00000000 };
Point ( 6327 ) = { -5.15416667, 58.29166667, 0.00000000 };
Point ( 6328 ) = { -5.15000000, 58.28750000, 0.00000000 };
Point ( 6329 ) = { -5.14583333, 58.28333333, 0.00000000 };
Point ( 6330 ) = { -5.14166667, 58.28750000, 0.00000000 };
Point ( 6331 ) = { -5.14166667, 58.29583333, 0.00000000 };
Point ( 6332 ) = { -5.14583333, 58.30000000, 0.00000000 };
Point ( 6333 ) = { -5.15000000, 58.30416667, 0.00000000 };
Point ( 6334 ) = { -5.15000000, 58.31250000, 0.00000000 };
Point ( 6335 ) = { -5.15416667, 58.31666667, 0.00000000 };
Point ( 6336 ) = { -5.15833333, 58.31250000, 0.00000000 };
Point ( 6337 ) = { -5.15833333, 58.30416667, 0.00000000 };
Point ( 6338 ) = { -5.16250000, 58.30000000, 0.00000000 };
Point ( 6339 ) = { -5.17083333, 58.30000000, 0.00000000 };
Point ( 6340 ) = { -5.17916667, 58.30000000, 0.00000000 };
Point ( 6341 ) = { -5.18750000, 58.30000000, 0.00000000 };
Point ( 6342 ) = { -5.19166667, 58.30416667, 0.00000000 };
Point ( 6343 ) = { -5.18750000, 58.30833333, 0.00000000 };
Point ( 6344 ) = { -5.18333333, 58.31250000, 0.00000000 };
Point ( 6345 ) = { -5.17916667, 58.31666667, 0.00000000 };
Point ( 6346 ) = { -5.17500000, 58.32083333, 0.00000000 };
Point ( 6347 ) = { -5.17500000, 58.32916667, 0.00000000 };
Point ( 6348 ) = { -5.17500000, 58.33750000, 0.00000000 };
Point ( 6349 ) = { -5.17916667, 58.34166667, 0.00000000 };
Point ( 6350 ) = { -5.18333333, 58.34583333, 0.00000000 };
Point ( 6351 ) = { -5.18333333, 58.35416667, 0.00000000 };
Point ( 6352 ) = { -5.17916667, 58.35833333, 0.00000000 };
Point ( 6353 ) = { -5.17500000, 58.36250000, 0.00000000 };
Point ( 6354 ) = { -5.17916667, 58.36666667, 0.00000000 };
Point ( 6355 ) = { -5.18750000, 58.36666667, 0.00000000 };
Point ( 6356 ) = { -5.19583333, 58.36666667, 0.00000000 };
Point ( 6357 ) = { -5.20000000, 58.37083333, 0.00000000 };
Point ( 6358 ) = { -5.20416667, 58.37500000, 0.00000000 };
Point ( 6359 ) = { -5.21250000, 58.37500000, 0.00000000 };
Point ( 6360 ) = { -5.21666667, 58.37916667, 0.00000000 };
Point ( 6361 ) = { -5.21250000, 58.38333333, 0.00000000 };
Point ( 6362 ) = { -5.20833333, 58.38750000, 0.00000000 };
Point ( 6363 ) = { -5.20416667, 58.39166667, 0.00000000 };
Point ( 6364 ) = { -5.19583333, 58.39166667, 0.00000000 };
Point ( 6365 ) = { -5.18750000, 58.39166667, 0.00000000 };
Point ( 6366 ) = { -5.17916667, 58.39166667, 0.00000000 };
Point ( 6367 ) = { -5.17083333, 58.39166667, 0.00000000 };
Point ( 6368 ) = { -5.16666667, 58.38750000, 0.00000000 };
Point ( 6369 ) = { -5.16250000, 58.38333333, 0.00000000 };
Point ( 6370 ) = { -5.15833333, 58.38750000, 0.00000000 };
Point ( 6371 ) = { -5.15833333, 58.39583333, 0.00000000 };
Point ( 6372 ) = { -5.15833333, 58.40416667, 0.00000000 };
Point ( 6373 ) = { -5.15416667, 58.40833333, 0.00000000 };
Point ( 6374 ) = { -5.15000000, 58.41250000, 0.00000000 };
Point ( 6375 ) = { -5.14583333, 58.41666667, 0.00000000 };
Point ( 6376 ) = { -5.13750000, 58.41666667, 0.00000000 };
Point ( 6377 ) = { -5.12916667, 58.41666667, 0.00000000 };
Point ( 6378 ) = { -5.12083333, 58.41666667, 0.00000000 };
Point ( 6379 ) = { -5.11666667, 58.42083333, 0.00000000 };
Point ( 6380 ) = { -5.12083333, 58.42500000, 0.00000000 };
Point ( 6381 ) = { -5.12500000, 58.42916667, 0.00000000 };
Point ( 6382 ) = { -5.12083333, 58.43333333, 0.00000000 };
Point ( 6383 ) = { -5.11250000, 58.43333333, 0.00000000 };
Point ( 6384 ) = { -5.10833333, 58.43750000, 0.00000000 };
Point ( 6385 ) = { -5.10416667, 58.44166667, 0.00000000 };
Point ( 6386 ) = { -5.09583333, 58.44166667, 0.00000000 };
Point ( 6387 ) = { -5.09166667, 58.44583333, 0.00000000 };
Point ( 6388 ) = { -5.08750000, 58.45000000, 0.00000000 };
Point ( 6389 ) = { -5.08333333, 58.45416667, 0.00000000 };
Point ( 6390 ) = { -5.08750000, 58.45833333, 0.00000000 };
Point ( 6391 ) = { -5.09166667, 58.46250000, 0.00000000 };
Point ( 6392 ) = { -5.09166667, 58.47083333, 0.00000000 };
Point ( 6393 ) = { -5.09583333, 58.47500000, 0.00000000 };
Point ( 6394 ) = { -5.10416667, 58.47500000, 0.00000000 };
Point ( 6395 ) = { -5.11250000, 58.47500000, 0.00000000 };
Point ( 6396 ) = { -5.12083333, 58.47500000, 0.00000000 };
Point ( 6397 ) = { -5.12500000, 58.47083333, 0.00000000 };
Point ( 6398 ) = { -5.12916667, 58.46666667, 0.00000000 };
Point ( 6399 ) = { -5.13750000, 58.46666667, 0.00000000 };
Point ( 6400 ) = { -5.14166667, 58.47083333, 0.00000000 };
Point ( 6401 ) = { -5.14166667, 58.47916667, 0.00000000 };
Point ( 6402 ) = { -5.13750000, 58.48333333, 0.00000000 };
Point ( 6403 ) = { -5.12916667, 58.48333333, 0.00000000 };
Point ( 6404 ) = { -5.12500000, 58.48750000, 0.00000000 };
Point ( 6405 ) = { -5.12500000, 58.49583333, 0.00000000 };
Point ( 6406 ) = { -5.12500000, 58.50416667, 0.00000000 };
Point ( 6407 ) = { -5.12500000, 58.51250000, 0.00000000 };
Point ( 6408 ) = { -5.12083333, 58.51666667, 0.00000000 };
Point ( 6409 ) = { -5.11666667, 58.52083333, 0.00000000 };
Point ( 6410 ) = { -5.11250000, 58.52500000, 0.00000000 };
Point ( 6411 ) = { -5.10833333, 58.52916667, 0.00000000 };
Point ( 6412 ) = { -5.10416667, 58.53333333, 0.00000000 };
Point ( 6413 ) = { -5.10000000, 58.53750000, 0.00000000 };
Point ( 6414 ) = { -5.09583333, 58.54166667, 0.00000000 };
Point ( 6415 ) = { -5.08750000, 58.54166667, 0.00000000 };
Point ( 6416 ) = { -5.07916667, 58.54166667, 0.00000000 };
Point ( 6417 ) = { -5.07083333, 58.54166667, 0.00000000 };
Point ( 6418 ) = { -5.06250000, 58.54166667, 0.00000000 };
Point ( 6419 ) = { -5.05833333, 58.54583333, 0.00000000 };
Point ( 6420 ) = { -5.05416667, 58.55000000, 0.00000000 };
Point ( 6421 ) = { -5.05000000, 58.55416667, 0.00000000 };
Point ( 6422 ) = { -5.04583333, 58.55833333, 0.00000000 };
Point ( 6423 ) = { -5.04166667, 58.56250000, 0.00000000 };
Point ( 6424 ) = { -5.03750000, 58.56666667, 0.00000000 };
Point ( 6425 ) = { -5.03333333, 58.57083333, 0.00000000 };
Point ( 6426 ) = { -5.03333333, 58.57916667, 0.00000000 };
Point ( 6427 ) = { -5.02916667, 58.58333333, 0.00000000 };
Point ( 6428 ) = { -5.02500000, 58.58750000, 0.00000000 };
Point ( 6429 ) = { -5.02500000, 58.59583333, 0.00000000 };
Point ( 6430 ) = { -5.02500000, 58.60416667, 0.00000000 };
Point ( 6431 ) = { -5.02500000, 58.61250000, 0.00000000 };
Point ( 6432 ) = { -5.02083333, 58.61666667, 0.00000000 };
Point ( 6433 ) = { -5.01666667, 58.62083333, 0.00000000 };
Point ( 6434 ) = { -5.01250000, 58.62500000, 0.00000000 };
Point ( 6435 ) = { -5.00833333, 58.62916667, 0.00000000 };
Point ( 6436 ) = { -5.00416667, 58.63333333, 0.00000000 };
Point ( 6437 ) = { -4.99583333, 58.63333333, 0.00000000 };
Point ( 6438 ) = { -4.99166667, 58.62916667, 0.00000000 };
Point ( 6439 ) = { -4.98750000, 58.62500000, 0.00000000 };
Point ( 6440 ) = { -4.97916667, 58.62500000, 0.00000000 };
Point ( 6441 ) = { -4.97083333, 58.62500000, 0.00000000 };
Point ( 6442 ) = { -4.96666667, 58.62083333, 0.00000000 };
Point ( 6443 ) = { -4.96250000, 58.61666667, 0.00000000 };
Point ( 6444 ) = { -4.95416667, 58.61666667, 0.00000000 };
Point ( 6445 ) = { -4.94583333, 58.61666667, 0.00000000 };
Point ( 6446 ) = { -4.93750000, 58.61666667, 0.00000000 };
Point ( 6447 ) = { -4.93333333, 58.62083333, 0.00000000 };
Point ( 6448 ) = { -4.92916667, 58.62500000, 0.00000000 };
Point ( 6449 ) = { -4.92083333, 58.62500000, 0.00000000 };
Point ( 6450 ) = { -4.91250000, 58.62500000, 0.00000000 };
Point ( 6451 ) = { -4.90833333, 58.62083333, 0.00000000 };
Point ( 6452 ) = { -4.90416667, 58.61666667, 0.00000000 };
Point ( 6453 ) = { -4.89583333, 58.61666667, 0.00000000 };
Point ( 6454 ) = { -4.88750000, 58.61666667, 0.00000000 };
Point ( 6455 ) = { -4.87916667, 58.61666667, 0.00000000 };
Point ( 6456 ) = { -4.87083333, 58.61666667, 0.00000000 };
Point ( 6457 ) = { -4.86666667, 58.61250000, 0.00000000 };
Point ( 6458 ) = { -4.86250000, 58.60833333, 0.00000000 };
Point ( 6459 ) = { -4.85416667, 58.60833333, 0.00000000 };
Point ( 6460 ) = { -4.84583333, 58.60833333, 0.00000000 };
Point ( 6461 ) = { -4.83750000, 58.60833333, 0.00000000 };
Point ( 6462 ) = { -4.83333333, 58.60416667, 0.00000000 };
Point ( 6463 ) = { -4.82916667, 58.60000000, 0.00000000 };
Point ( 6464 ) = { -4.82500000, 58.59583333, 0.00000000 };
Point ( 6465 ) = { -4.82083333, 58.59166667, 0.00000000 };
Point ( 6466 ) = { -4.81666667, 58.58750000, 0.00000000 };
Point ( 6467 ) = { -4.81666667, 58.57916667, 0.00000000 };
Point ( 6468 ) = { -4.81666667, 58.57083333, 0.00000000 };
Point ( 6469 ) = { -4.81666667, 58.56250000, 0.00000000 };
Point ( 6470 ) = { -4.81250000, 58.55833333, 0.00000000 };
Point ( 6471 ) = { -4.80833333, 58.56250000, 0.00000000 };
Point ( 6472 ) = { -4.80416667, 58.56666667, 0.00000000 };
Point ( 6473 ) = { -4.80000000, 58.57083333, 0.00000000 };
Point ( 6474 ) = { -4.80000000, 58.57916667, 0.00000000 };
Point ( 6475 ) = { -4.79583333, 58.58333333, 0.00000000 };
Point ( 6476 ) = { -4.78750000, 58.58333333, 0.00000000 };
Point ( 6477 ) = { -4.78333333, 58.58750000, 0.00000000 };
Point ( 6478 ) = { -4.78750000, 58.59166667, 0.00000000 };
Point ( 6479 ) = { -4.79166667, 58.59583333, 0.00000000 };
Point ( 6480 ) = { -4.79166667, 58.60416667, 0.00000000 };
Point ( 6481 ) = { -4.78750000, 58.60833333, 0.00000000 };
Point ( 6482 ) = { -4.77916667, 58.60833333, 0.00000000 };
Point ( 6483 ) = { -4.77083333, 58.60833333, 0.00000000 };
Point ( 6484 ) = { -4.76666667, 58.60416667, 0.00000000 };
Point ( 6485 ) = { -4.76250000, 58.60000000, 0.00000000 };
Point ( 6486 ) = { -4.75833333, 58.59583333, 0.00000000 };
Point ( 6487 ) = { -4.75416667, 58.59166667, 0.00000000 };
Point ( 6488 ) = { -4.75000000, 58.58750000, 0.00000000 };
Point ( 6489 ) = { -4.74583333, 58.58333333, 0.00000000 };
Point ( 6490 ) = { -4.74166667, 58.57916667, 0.00000000 };
Point ( 6491 ) = { -4.73750000, 58.57500000, 0.00000000 };
Point ( 6492 ) = { -4.72916667, 58.57500000, 0.00000000 };
Point ( 6493 ) = { -4.72083333, 58.57500000, 0.00000000 };
Point ( 6494 ) = { -4.71250000, 58.57500000, 0.00000000 };
Point ( 6495 ) = { -4.70833333, 58.57083333, 0.00000000 };
Point ( 6496 ) = { -4.70416667, 58.56666667, 0.00000000 };
Point ( 6497 ) = { -4.70000000, 58.56250000, 0.00000000 };
Point ( 6498 ) = { -4.69583333, 58.55833333, 0.00000000 };
Point ( 6499 ) = { -4.68750000, 58.55833333, 0.00000000 };
Point ( 6500 ) = { -4.68333333, 58.56250000, 0.00000000 };
Point ( 6501 ) = { -4.68333333, 58.57083333, 0.00000000 };
Point ( 6502 ) = { -4.67916667, 58.57500000, 0.00000000 };
Point ( 6503 ) = { -4.67083333, 58.57500000, 0.00000000 };
Point ( 6504 ) = { -4.66666667, 58.57083333, 0.00000000 };
Point ( 6505 ) = { -4.66666667, 58.56250000, 0.00000000 };
Point ( 6506 ) = { -4.66250000, 58.55833333, 0.00000000 };
Point ( 6507 ) = { -4.65833333, 58.55416667, 0.00000000 };
Point ( 6508 ) = { -4.65416667, 58.55000000, 0.00000000 };
Point ( 6509 ) = { -4.64583333, 58.55000000, 0.00000000 };
Point ( 6510 ) = { -4.64166667, 58.54583333, 0.00000000 };
Point ( 6511 ) = { -4.64166667, 58.53750000, 0.00000000 };
Point ( 6512 ) = { -4.63750000, 58.53333333, 0.00000000 };
Point ( 6513 ) = { -4.62916667, 58.53333333, 0.00000000 };
Point ( 6514 ) = { -4.62083333, 58.53333333, 0.00000000 };
Point ( 6515 ) = { -4.61250000, 58.53333333, 0.00000000 };
Point ( 6516 ) = { -4.60833333, 58.53750000, 0.00000000 };
Point ( 6517 ) = { -4.60833333, 58.54583333, 0.00000000 };
Point ( 6518 ) = { -4.60833333, 58.55416667, 0.00000000 };
Point ( 6519 ) = { -4.60416667, 58.55833333, 0.00000000 };
Point ( 6520 ) = { -4.60000000, 58.56250000, 0.00000000 };
Point ( 6521 ) = { -4.60000000, 58.57083333, 0.00000000 };
Point ( 6522 ) = { -4.59583333, 58.57500000, 0.00000000 };
Point ( 6523 ) = { -4.59166667, 58.57916667, 0.00000000 };
Point ( 6524 ) = { -4.58750000, 58.58333333, 0.00000000 };
Point ( 6525 ) = { -4.57916667, 58.58333333, 0.00000000 };
Point ( 6526 ) = { -4.57083333, 58.58333333, 0.00000000 };
Point ( 6527 ) = { -4.56250000, 58.58333333, 0.00000000 };
Point ( 6528 ) = { -4.55416667, 58.58333333, 0.00000000 };
Point ( 6529 ) = { -4.54583333, 58.58333333, 0.00000000 };
Point ( 6530 ) = { -4.53750000, 58.58333333, 0.00000000 };
Point ( 6531 ) = { -4.52916667, 58.58333333, 0.00000000 };
Point ( 6532 ) = { -4.52083333, 58.58333333, 0.00000000 };
Point ( 6533 ) = { -4.51250000, 58.58333333, 0.00000000 };
Point ( 6534 ) = { -4.50416667, 58.58333333, 0.00000000 };
Point ( 6535 ) = { -4.50000000, 58.57916667, 0.00000000 };
Point ( 6536 ) = { -4.49583333, 58.57500000, 0.00000000 };
Point ( 6537 ) = { -4.48750000, 58.57500000, 0.00000000 };
Point ( 6538 ) = { -4.47916667, 58.57500000, 0.00000000 };
Point ( 6539 ) = { -4.47500000, 58.57083333, 0.00000000 };
Point ( 6540 ) = { -4.47083333, 58.56666667, 0.00000000 };
Point ( 6541 ) = { -4.46250000, 58.56666667, 0.00000000 };
Point ( 6542 ) = { -4.45416667, 58.56666667, 0.00000000 };
Point ( 6543 ) = { -4.45000000, 58.56250000, 0.00000000 };
Point ( 6544 ) = { -4.44583333, 58.55833333, 0.00000000 };
Point ( 6545 ) = { -4.43750000, 58.55833333, 0.00000000 };
Point ( 6546 ) = { -4.42916667, 58.55833333, 0.00000000 };
Point ( 6547 ) = { -4.42500000, 58.55416667, 0.00000000 };
Point ( 6548 ) = { -4.42500000, 58.54583333, 0.00000000 };
Point ( 6549 ) = { -4.42500000, 58.53750000, 0.00000000 };
Point ( 6550 ) = { -4.42083333, 58.53333333, 0.00000000 };
Point ( 6551 ) = { -4.41666667, 58.52916667, 0.00000000 };
Point ( 6552 ) = { -4.41250000, 58.52500000, 0.00000000 };
Point ( 6553 ) = { -4.40833333, 58.52916667, 0.00000000 };
Point ( 6554 ) = { -4.40833333, 58.53750000, 0.00000000 };
Point ( 6555 ) = { -4.40416667, 58.54166667, 0.00000000 };
Point ( 6556 ) = { -4.40000000, 58.54583333, 0.00000000 };
Point ( 6557 ) = { -4.39583333, 58.55000000, 0.00000000 };
Point ( 6558 ) = { -4.38750000, 58.55000000, 0.00000000 };
Point ( 6559 ) = { -4.38333333, 58.54583333, 0.00000000 };
Point ( 6560 ) = { -4.37916667, 58.54166667, 0.00000000 };
Point ( 6561 ) = { -4.37083333, 58.54166667, 0.00000000 };
Point ( 6562 ) = { -4.36250000, 58.54166667, 0.00000000 };
Point ( 6563 ) = { -4.35833333, 58.54583333, 0.00000000 };
Point ( 6564 ) = { -4.35833333, 58.55416667, 0.00000000 };
Point ( 6565 ) = { -4.35833333, 58.56250000, 0.00000000 };
Point ( 6566 ) = { -4.35416667, 58.56666667, 0.00000000 };
Point ( 6567 ) = { -4.34583333, 58.56666667, 0.00000000 };
Point ( 6568 ) = { -4.33750000, 58.56666667, 0.00000000 };
Point ( 6569 ) = { -4.32916667, 58.56666667, 0.00000000 };
Point ( 6570 ) = { -4.32500000, 58.56250000, 0.00000000 };
Point ( 6571 ) = { -4.32500000, 58.55416667, 0.00000000 };
Point ( 6572 ) = { -4.32083333, 58.55000000, 0.00000000 };
Point ( 6573 ) = { -4.31250000, 58.55000000, 0.00000000 };
Point ( 6574 ) = { -4.30416667, 58.55000000, 0.00000000 };
Point ( 6575 ) = { -4.29583333, 58.55000000, 0.00000000 };
Point ( 6576 ) = { -4.28750000, 58.55000000, 0.00000000 };
Point ( 6577 ) = { -4.27916667, 58.55000000, 0.00000000 };
Point ( 6578 ) = { -4.27500000, 58.54583333, 0.00000000 };
Point ( 6579 ) = { -4.27083333, 58.54166667, 0.00000000 };
Point ( 6580 ) = { -4.26250000, 58.54166667, 0.00000000 };
Point ( 6581 ) = { -4.25833333, 58.53750000, 0.00000000 };
Point ( 6582 ) = { -4.25416667, 58.53333333, 0.00000000 };
Point ( 6583 ) = { -4.24583333, 58.53333333, 0.00000000 };
Point ( 6584 ) = { -4.24166667, 58.53750000, 0.00000000 };
Point ( 6585 ) = { -4.23750000, 58.54166667, 0.00000000 };
Point ( 6586 ) = { -4.22916667, 58.54166667, 0.00000000 };
Point ( 6587 ) = { -4.22083333, 58.54166667, 0.00000000 };
Point ( 6588 ) = { -4.21666667, 58.54583333, 0.00000000 };
Point ( 6589 ) = { -4.21666667, 58.55416667, 0.00000000 };
Point ( 6590 ) = { -4.21250000, 58.55833333, 0.00000000 };
Point ( 6591 ) = { -4.20416667, 58.55833333, 0.00000000 };
Point ( 6592 ) = { -4.19583333, 58.55833333, 0.00000000 };
Point ( 6593 ) = { -4.19166667, 58.55416667, 0.00000000 };
Point ( 6594 ) = { -4.18750000, 58.55000000, 0.00000000 };
Point ( 6595 ) = { -4.17916667, 58.55000000, 0.00000000 };
Point ( 6596 ) = { -4.17083333, 58.55000000, 0.00000000 };
Point ( 6597 ) = { -4.16666667, 58.55416667, 0.00000000 };
Point ( 6598 ) = { -4.16250000, 58.55833333, 0.00000000 };
Point ( 6599 ) = { -4.15833333, 58.56250000, 0.00000000 };
Point ( 6600 ) = { -4.15416667, 58.56666667, 0.00000000 };
Point ( 6601 ) = { -4.14583333, 58.56666667, 0.00000000 };
Point ( 6602 ) = { -4.14166667, 58.57083333, 0.00000000 };
Point ( 6603 ) = { -4.13750000, 58.57500000, 0.00000000 };
Point ( 6604 ) = { -4.12916667, 58.57500000, 0.00000000 };
Point ( 6605 ) = { -4.12083333, 58.57500000, 0.00000000 };
Point ( 6606 ) = { -4.11250000, 58.57500000, 0.00000000 };
Point ( 6607 ) = { -4.10833333, 58.57083333, 0.00000000 };
Point ( 6608 ) = { -4.10416667, 58.56666667, 0.00000000 };
Point ( 6609 ) = { -4.09583333, 58.56666667, 0.00000000 };
Point ( 6610 ) = { -4.08750000, 58.56666667, 0.00000000 };
Point ( 6611 ) = { -4.08333333, 58.56250000, 0.00000000 };
Point ( 6612 ) = { -4.07916667, 58.55833333, 0.00000000 };
Point ( 6613 ) = { -4.07500000, 58.56250000, 0.00000000 };
Point ( 6614 ) = { -4.07083333, 58.56666667, 0.00000000 };
Point ( 6615 ) = { -4.06666667, 58.57083333, 0.00000000 };
Point ( 6616 ) = { -4.06250000, 58.57500000, 0.00000000 };
Point ( 6617 ) = { -4.05416667, 58.57500000, 0.00000000 };
Point ( 6618 ) = { -4.05000000, 58.57916667, 0.00000000 };
Point ( 6619 ) = { -4.05000000, 58.58750000, 0.00000000 };
Point ( 6620 ) = { -4.04583333, 58.59166667, 0.00000000 };
Point ( 6621 ) = { -4.03750000, 58.59166667, 0.00000000 };
Point ( 6622 ) = { -4.03333333, 58.59583333, 0.00000000 };
Point ( 6623 ) = { -4.02916667, 58.60000000, 0.00000000 };
Point ( 6624 ) = { -4.02083333, 58.60000000, 0.00000000 };
Point ( 6625 ) = { -4.01250000, 58.60000000, 0.00000000 };
Point ( 6626 ) = { -4.00833333, 58.59583333, 0.00000000 };
Point ( 6627 ) = { -4.00833333, 58.58750000, 0.00000000 };
Point ( 6628 ) = { -4.00416667, 58.58333333, 0.00000000 };
Point ( 6629 ) = { -4.00000000, 58.57916667, 0.00000000 };
Point ( 6630 ) = { -3.99583333, 58.57500000, 0.00000000 };
Point ( 6631 ) = { -3.98750000, 58.57500000, 0.00000000 };
Point ( 6632 ) = { -3.97916667, 58.57500000, 0.00000000 };
Point ( 6633 ) = { -3.97083333, 58.57500000, 0.00000000 };
Point ( 6634 ) = { -3.96250000, 58.57500000, 0.00000000 };
Point ( 6635 ) = { -3.95416667, 58.57500000, 0.00000000 };
Point ( 6636 ) = { -3.94583333, 58.57500000, 0.00000000 };
Point ( 6637 ) = { -3.93750000, 58.57500000, 0.00000000 };
Point ( 6638 ) = { -3.92916667, 58.57500000, 0.00000000 };
Point ( 6639 ) = { -3.92500000, 58.57083333, 0.00000000 };
Point ( 6640 ) = { -3.92083333, 58.56666667, 0.00000000 };
Point ( 6641 ) = { -3.91250000, 58.56666667, 0.00000000 };
Point ( 6642 ) = { -3.90833333, 58.57083333, 0.00000000 };
Point ( 6643 ) = { -3.90416667, 58.57500000, 0.00000000 };
Point ( 6644 ) = { -3.89583333, 58.57500000, 0.00000000 };
Point ( 6645 ) = { -3.88750000, 58.57500000, 0.00000000 };
Point ( 6646 ) = { -3.87916667, 58.57500000, 0.00000000 };
Point ( 6647 ) = { -3.87500000, 58.57083333, 0.00000000 };
Point ( 6648 ) = { -3.87083333, 58.56666667, 0.00000000 };
Point ( 6649 ) = { -3.86666667, 58.57083333, 0.00000000 };
Point ( 6650 ) = { -3.86250000, 58.57500000, 0.00000000 };
Point ( 6651 ) = { -3.85416667, 58.57500000, 0.00000000 };
Point ( 6652 ) = { -3.84583333, 58.57500000, 0.00000000 };
Point ( 6653 ) = { -3.83750000, 58.57500000, 0.00000000 };
Point ( 6654 ) = { -3.82916667, 58.57500000, 0.00000000 };
Point ( 6655 ) = { -3.82083333, 58.57500000, 0.00000000 };
Point ( 6656 ) = { -3.81250000, 58.57500000, 0.00000000 };
Point ( 6657 ) = { -3.80416667, 58.57500000, 0.00000000 };
Point ( 6658 ) = { -3.79583333, 58.57500000, 0.00000000 };
Point ( 6659 ) = { -3.79166667, 58.57083333, 0.00000000 };
Point ( 6660 ) = { -3.78750000, 58.56666667, 0.00000000 };
Point ( 6661 ) = { -3.78333333, 58.57083333, 0.00000000 };
Point ( 6662 ) = { -3.77916667, 58.57500000, 0.00000000 };
Point ( 6663 ) = { -3.77083333, 58.57500000, 0.00000000 };
Point ( 6664 ) = { -3.76666667, 58.57916667, 0.00000000 };
Point ( 6665 ) = { -3.76250000, 58.58333333, 0.00000000 };
Point ( 6666 ) = { -3.75416667, 58.58333333, 0.00000000 };
Point ( 6667 ) = { -3.75000000, 58.58750000, 0.00000000 };
Point ( 6668 ) = { -3.74583333, 58.59166667, 0.00000000 };
Point ( 6669 ) = { -3.73750000, 58.59166667, 0.00000000 };
Point ( 6670 ) = { -3.73333333, 58.59583333, 0.00000000 };
Point ( 6671 ) = { -3.72916667, 58.60000000, 0.00000000 };
Point ( 6672 ) = { -3.72083333, 58.60000000, 0.00000000 };
Point ( 6673 ) = { -3.71250000, 58.60000000, 0.00000000 };
Point ( 6674 ) = { -3.70833333, 58.60416667, 0.00000000 };
Point ( 6675 ) = { -3.70416667, 58.60833333, 0.00000000 };
Point ( 6676 ) = { -3.69583333, 58.60833333, 0.00000000 };
Point ( 6677 ) = { -3.68750000, 58.60833333, 0.00000000 };
Point ( 6678 ) = { -3.67916667, 58.60833333, 0.00000000 };
Point ( 6679 ) = { -3.67500000, 58.61250000, 0.00000000 };
Point ( 6680 ) = { -3.67083333, 58.61666667, 0.00000000 };
Point ( 6681 ) = { -3.66666667, 58.62083333, 0.00000000 };
Point ( 6682 ) = { -3.66250000, 58.62500000, 0.00000000 };
Point ( 6683 ) = { -3.65416667, 58.62500000, 0.00000000 };
Point ( 6684 ) = { -3.65000000, 58.62083333, 0.00000000 };
Point ( 6685 ) = { -3.64583333, 58.61666667, 0.00000000 };
Point ( 6686 ) = { -3.63750000, 58.61666667, 0.00000000 };
Point ( 6687 ) = { -3.62916667, 58.61666667, 0.00000000 };
Point ( 6688 ) = { -3.62083333, 58.61666667, 0.00000000 };
Point ( 6689 ) = { -3.61250000, 58.61666667, 0.00000000 };
Point ( 6690 ) = { -3.60833333, 58.62083333, 0.00000000 };
Point ( 6691 ) = { -3.60416667, 58.62500000, 0.00000000 };
Point ( 6692 ) = { -3.59583333, 58.62500000, 0.00000000 };
Point ( 6693 ) = { -3.58750000, 58.62500000, 0.00000000 };
Point ( 6694 ) = { -3.57916667, 58.62500000, 0.00000000 };
Point ( 6695 ) = { -3.57083333, 58.62500000, 0.00000000 };
Point ( 6696 ) = { -3.56250000, 58.62500000, 0.00000000 };
Point ( 6697 ) = { -3.55416667, 58.62500000, 0.00000000 };
Point ( 6698 ) = { -3.54583333, 58.62500000, 0.00000000 };
Point ( 6699 ) = { -3.53750000, 58.62500000, 0.00000000 };
Point ( 6700 ) = { -3.53333333, 58.62083333, 0.00000000 };
Point ( 6701 ) = { -3.53333333, 58.61250000, 0.00000000 };
Point ( 6702 ) = { -3.52916667, 58.60833333, 0.00000000 };
Point ( 6703 ) = { -3.52500000, 58.60416667, 0.00000000 };
Point ( 6704 ) = { -3.52083333, 58.60000000, 0.00000000 };
Point ( 6705 ) = { -3.51250000, 58.60000000, 0.00000000 };
Point ( 6706 ) = { -3.50833333, 58.60416667, 0.00000000 };
Point ( 6707 ) = { -3.50416667, 58.60833333, 0.00000000 };
Point ( 6708 ) = { -3.49583333, 58.60833333, 0.00000000 };
Point ( 6709 ) = { -3.48750000, 58.60833333, 0.00000000 };
Point ( 6710 ) = { -3.48333333, 58.61250000, 0.00000000 };
Point ( 6711 ) = { -3.47916667, 58.61666667, 0.00000000 };
Point ( 6712 ) = { -3.47083333, 58.61666667, 0.00000000 };
Point ( 6713 ) = { -3.46250000, 58.61666667, 0.00000000 };
Point ( 6714 ) = { -3.45416667, 58.61666667, 0.00000000 };
Point ( 6715 ) = { -3.44583333, 58.61666667, 0.00000000 };
Point ( 6716 ) = { -3.43750000, 58.61666667, 0.00000000 };
Point ( 6717 ) = { -3.43333333, 58.61250000, 0.00000000 };
Point ( 6718 ) = { -3.42916667, 58.60833333, 0.00000000 };
Point ( 6719 ) = { -3.42083333, 58.60833333, 0.00000000 };
Point ( 6720 ) = { -3.41250000, 58.60833333, 0.00000000 };
Point ( 6721 ) = { -3.40416667, 58.60833333, 0.00000000 };
Point ( 6722 ) = { -3.39583333, 58.60833333, 0.00000000 };
Point ( 6723 ) = { -3.38750000, 58.60833333, 0.00000000 };
Point ( 6724 ) = { -3.38333333, 58.60416667, 0.00000000 };
Point ( 6725 ) = { -3.37916667, 58.60000000, 0.00000000 };
Point ( 6726 ) = { -3.37083333, 58.60000000, 0.00000000 };
Point ( 6727 ) = { -3.36250000, 58.60000000, 0.00000000 };
Point ( 6728 ) = { -3.35833333, 58.60416667, 0.00000000 };
Point ( 6729 ) = { -3.35833333, 58.61250000, 0.00000000 };
Point ( 6730 ) = { -3.36250000, 58.61666667, 0.00000000 };
Point ( 6731 ) = { -3.37083333, 58.61666667, 0.00000000 };
Point ( 6732 ) = { -3.37916667, 58.61666667, 0.00000000 };
Point ( 6733 ) = { -3.38333333, 58.62083333, 0.00000000 };
Point ( 6734 ) = { -3.38750000, 58.62500000, 0.00000000 };
Point ( 6735 ) = { -3.39583333, 58.62500000, 0.00000000 };
Point ( 6736 ) = { -3.40416667, 58.62500000, 0.00000000 };
Point ( 6737 ) = { -3.40833333, 58.62916667, 0.00000000 };
Point ( 6738 ) = { -3.41250000, 58.63333333, 0.00000000 };
Point ( 6739 ) = { -3.41666667, 58.63750000, 0.00000000 };
Point ( 6740 ) = { -3.41666667, 58.64583333, 0.00000000 };
Point ( 6741 ) = { -3.41666667, 58.65416667, 0.00000000 };
Point ( 6742 ) = { -3.41250000, 58.65833333, 0.00000000 };
Point ( 6743 ) = { -3.40833333, 58.66250000, 0.00000000 };
Point ( 6744 ) = { -3.40416667, 58.66666667, 0.00000000 };
Point ( 6745 ) = { -3.39583333, 58.66666667, 0.00000000 };
Point ( 6746 ) = { -3.39166667, 58.67083333, 0.00000000 };
Point ( 6747 ) = { -3.38750000, 58.67500000, 0.00000000 };
Point ( 6748 ) = { -3.37916667, 58.67500000, 0.00000000 };
Point ( 6749 ) = { -3.37083333, 58.67500000, 0.00000000 };
Point ( 6750 ) = { -3.36250000, 58.67500000, 0.00000000 };
Point ( 6751 ) = { -3.35833333, 58.67083333, 0.00000000 };
Point ( 6752 ) = { -3.35416667, 58.66666667, 0.00000000 };
Point ( 6753 ) = { -3.35000000, 58.66250000, 0.00000000 };
Point ( 6754 ) = { -3.34583333, 58.65833333, 0.00000000 };
Point ( 6755 ) = { -3.34166667, 58.65416667, 0.00000000 };
Point ( 6756 ) = { -3.33750000, 58.65000000, 0.00000000 };
Point ( 6757 ) = { -3.32916667, 58.65000000, 0.00000000 };
Point ( 6758 ) = { -3.32083333, 58.65000000, 0.00000000 };
Point ( 6759 ) = { -3.31250000, 58.65000000, 0.00000000 };
Point ( 6760 ) = { -3.30416667, 58.65000000, 0.00000000 };
Point ( 6761 ) = { -3.29583333, 58.65000000, 0.00000000 };
Point ( 6762 ) = { -3.28750000, 58.65000000, 0.00000000 };
Point ( 6763 ) = { -3.28333333, 58.65416667, 0.00000000 };
Point ( 6764 ) = { -3.27916667, 58.65833333, 0.00000000 };
Point ( 6765 ) = { -3.27083333, 58.65833333, 0.00000000 };
Point ( 6766 ) = { -3.26250000, 58.65833333, 0.00000000 };
Point ( 6767 ) = { -3.25416667, 58.65833333, 0.00000000 };
Point ( 6768 ) = { -3.24583333, 58.65833333, 0.00000000 };
Point ( 6769 ) = { -3.23750000, 58.65833333, 0.00000000 };
Point ( 6770 ) = { -3.22916667, 58.65833333, 0.00000000 };
Point ( 6771 ) = { -3.22083333, 58.65833333, 0.00000000 };
Point ( 6772 ) = { -3.21250000, 58.65833333, 0.00000000 };
Point ( 6773 ) = { -3.20416667, 58.65833333, 0.00000000 };
Point ( 6774 ) = { -3.19583333, 58.65833333, 0.00000000 };
Point ( 6775 ) = { -3.18750000, 58.65833333, 0.00000000 };
Point ( 6776 ) = { -3.17916667, 58.65833333, 0.00000000 };
Point ( 6777 ) = { -3.17500000, 58.65416667, 0.00000000 };
Point ( 6778 ) = { -3.17083333, 58.65000000, 0.00000000 };
Point ( 6779 ) = { -3.16666667, 58.64583333, 0.00000000 };
Point ( 6780 ) = { -3.16250000, 58.64166667, 0.00000000 };
Point ( 6781 ) = { -3.15416667, 58.64166667, 0.00000000 };
Point ( 6782 ) = { -3.14583333, 58.64166667, 0.00000000 };
Point ( 6783 ) = { -3.13750000, 58.64166667, 0.00000000 };
Point ( 6784 ) = { -3.13333333, 58.64583333, 0.00000000 };
Point ( 6785 ) = { -3.12916667, 58.65000000, 0.00000000 };
Point ( 6786 ) = { -3.12083333, 58.65000000, 0.00000000 };
Point ( 6787 ) = { -3.11250000, 58.65000000, 0.00000000 };
Point ( 6788 ) = { -3.10416667, 58.65000000, 0.00000000 };
Point ( 6789 ) = { -3.09583333, 58.65000000, 0.00000000 };
Point ( 6790 ) = { -3.08750000, 58.65000000, 0.00000000 };
Point ( 6791 ) = { -3.07916667, 58.65000000, 0.00000000 };
Point ( 6792 ) = { -3.07083333, 58.65000000, 0.00000000 };
Point ( 6793 ) = { -3.06250000, 58.65000000, 0.00000000 };
Point ( 6794 ) = { -3.05416667, 58.65000000, 0.00000000 };
Point ( 6795 ) = { -3.04583333, 58.65000000, 0.00000000 };
Point ( 6796 ) = { -3.03750000, 58.65000000, 0.00000000 };
Point ( 6797 ) = { -3.02916667, 58.65000000, 0.00000000 };
Point ( 6798 ) = { -3.02083333, 58.65000000, 0.00000000 };
Point ( 6799 ) = { -3.01666667, 58.64583333, 0.00000000 };
Point ( 6800 ) = { -3.02083333, 58.64166667, 0.00000000 };
Point ( 6801 ) = { -3.02500000, 58.63750000, 0.00000000 };
Point ( 6802 ) = { -3.02916667, 58.63333333, 0.00000000 };
Point ( 6803 ) = { -3.03333333, 58.62916667, 0.00000000 };
Point ( 6804 ) = { -3.03333333, 58.62083333, 0.00000000 };
Point ( 6805 ) = { -3.03333333, 58.61250000, 0.00000000 };
Point ( 6806 ) = { -3.03333333, 58.60416667, 0.00000000 };
Point ( 6807 ) = { -3.03750000, 58.60000000, 0.00000000 };
Point ( 6808 ) = { -3.04166667, 58.59583333, 0.00000000 };
Point ( 6809 ) = { -3.04583333, 58.59166667, 0.00000000 };
Point ( 6810 ) = { -3.05416667, 58.59166667, 0.00000000 };
Point ( 6811 ) = { -3.05833333, 58.58750000, 0.00000000 };
Point ( 6812 ) = { -3.05833333, 58.57916667, 0.00000000 };
Point ( 6813 ) = { -3.05833333, 58.57083333, 0.00000000 };
Point ( 6814 ) = { -3.06250000, 58.56666667, 0.00000000 };
Point ( 6815 ) = { -3.06666667, 58.56250000, 0.00000000 };
Point ( 6816 ) = { -3.07083333, 58.55833333, 0.00000000 };
Point ( 6817 ) = { -3.07500000, 58.55416667, 0.00000000 };
Point ( 6818 ) = { -3.07916667, 58.55000000, 0.00000000 };
Point ( 6819 ) = { -3.08333333, 58.54583333, 0.00000000 };
Point ( 6820 ) = { -3.08750000, 58.54166667, 0.00000000 };
Point ( 6821 ) = { -3.09583333, 58.54166667, 0.00000000 };
Point ( 6822 ) = { -3.10000000, 58.53750000, 0.00000000 };
Point ( 6823 ) = { -3.10416667, 58.53333333, 0.00000000 };
Point ( 6824 ) = { -3.10833333, 58.52916667, 0.00000000 };
Point ( 6825 ) = { -3.11250000, 58.52500000, 0.00000000 };
Point ( 6826 ) = { -3.12083333, 58.52500000, 0.00000000 };
Point ( 6827 ) = { -3.12500000, 58.52083333, 0.00000000 };
Point ( 6828 ) = { -3.12916667, 58.51666667, 0.00000000 };
Point ( 6829 ) = { -3.13333333, 58.51250000, 0.00000000 };
Point ( 6830 ) = { -3.13333333, 58.50416667, 0.00000000 };
Point ( 6831 ) = { -3.12916667, 58.50000000, 0.00000000 };
Point ( 6832 ) = { -3.12500000, 58.49583333, 0.00000000 };
Point ( 6833 ) = { -3.12500000, 58.48750000, 0.00000000 };
Point ( 6834 ) = { -3.12083333, 58.48333333, 0.00000000 };
Point ( 6835 ) = { -3.11250000, 58.48333333, 0.00000000 };
Point ( 6836 ) = { -3.10833333, 58.47916667, 0.00000000 };
Point ( 6837 ) = { -3.10416667, 58.47500000, 0.00000000 };
Point ( 6838 ) = { -3.09583333, 58.47500000, 0.00000000 };
Point ( 6839 ) = { -3.08750000, 58.47500000, 0.00000000 };
Point ( 6840 ) = { -3.08333333, 58.47916667, 0.00000000 };
Point ( 6841 ) = { -3.07916667, 58.48333333, 0.00000000 };
Point ( 6842 ) = { -3.07083333, 58.48333333, 0.00000000 };
Point ( 6843 ) = { -3.06250000, 58.48333333, 0.00000000 };
Point ( 6844 ) = { -3.05416667, 58.48333333, 0.00000000 };
Point ( 6845 ) = { -3.04583333, 58.48333333, 0.00000000 };
Point ( 6846 ) = { -3.04166667, 58.47916667, 0.00000000 };
Point ( 6847 ) = { -3.04583333, 58.47500000, 0.00000000 };
Point ( 6848 ) = { -3.05000000, 58.47083333, 0.00000000 };
Point ( 6849 ) = { -3.05000000, 58.46250000, 0.00000000 };
Point ( 6850 ) = { -3.05000000, 58.45416667, 0.00000000 };
Point ( 6851 ) = { -3.05000000, 58.44583333, 0.00000000 };
Point ( 6852 ) = { -3.05416667, 58.44166667, 0.00000000 };
Point ( 6853 ) = { -3.06250000, 58.44166667, 0.00000000 };
Point ( 6854 ) = { -3.06666667, 58.43750000, 0.00000000 };
Point ( 6855 ) = { -3.06666667, 58.42916667, 0.00000000 };
Point ( 6856 ) = { -3.07083333, 58.42500000, 0.00000000 };
Point ( 6857 ) = { -3.07500000, 58.42083333, 0.00000000 };
Point ( 6858 ) = { -3.07916667, 58.41666667, 0.00000000 };
Point ( 6859 ) = { -3.08333333, 58.41250000, 0.00000000 };
Point ( 6860 ) = { -3.08333333, 58.40416667, 0.00000000 };
Point ( 6861 ) = { -3.08750000, 58.40000000, 0.00000000 };
Point ( 6862 ) = { -3.09166667, 58.39583333, 0.00000000 };
Point ( 6863 ) = { -3.09166667, 58.38750000, 0.00000000 };
Point ( 6864 ) = { -3.09583333, 58.38333333, 0.00000000 };
Point ( 6865 ) = { -3.10000000, 58.37916667, 0.00000000 };
Point ( 6866 ) = { -3.10416667, 58.37500000, 0.00000000 };
Point ( 6867 ) = { -3.10833333, 58.37083333, 0.00000000 };
Point ( 6868 ) = { -3.11250000, 58.36666667, 0.00000000 };
Point ( 6869 ) = { -3.11666667, 58.36250000, 0.00000000 };
Point ( 6870 ) = { -3.12083333, 58.35833333, 0.00000000 };
Point ( 6871 ) = { -3.12916667, 58.35833333, 0.00000000 };
Point ( 6872 ) = { -3.13333333, 58.35416667, 0.00000000 };
Point ( 6873 ) = { -3.13750000, 58.35000000, 0.00000000 };
Point ( 6874 ) = { -3.14583333, 58.35000000, 0.00000000 };
Point ( 6875 ) = { -3.15000000, 58.34583333, 0.00000000 };
Point ( 6876 ) = { -3.15416667, 58.34166667, 0.00000000 };
Point ( 6877 ) = { -3.15833333, 58.33750000, 0.00000000 };
Point ( 6878 ) = { -3.16250000, 58.33333333, 0.00000000 };
Point ( 6879 ) = { -3.16666667, 58.32916667, 0.00000000 };
Point ( 6880 ) = { -3.17083333, 58.32500000, 0.00000000 };
Point ( 6881 ) = { -3.17916667, 58.32500000, 0.00000000 };
Point ( 6882 ) = { -3.18333333, 58.32083333, 0.00000000 };
Point ( 6883 ) = { -3.18750000, 58.31666667, 0.00000000 };
Point ( 6884 ) = { -3.19583333, 58.31666667, 0.00000000 };
Point ( 6885 ) = { -3.20000000, 58.31250000, 0.00000000 };
Point ( 6886 ) = { -3.20416667, 58.30833333, 0.00000000 };
Point ( 6887 ) = { -3.20833333, 58.30416667, 0.00000000 };
Point ( 6888 ) = { -3.21250000, 58.30000000, 0.00000000 };
Point ( 6889 ) = { -3.22083333, 58.30000000, 0.00000000 };
Point ( 6890 ) = { -3.22916667, 58.30000000, 0.00000000 };
Point ( 6891 ) = { -3.23750000, 58.30000000, 0.00000000 };
Point ( 6892 ) = { -3.24166667, 58.29583333, 0.00000000 };
Point ( 6893 ) = { -3.24583333, 58.29166667, 0.00000000 };
Point ( 6894 ) = { -3.25416667, 58.29166667, 0.00000000 };
Point ( 6895 ) = { -3.26250000, 58.29166667, 0.00000000 };
Point ( 6896 ) = { -3.27083333, 58.29166667, 0.00000000 };
Point ( 6897 ) = { -3.27916667, 58.29166667, 0.00000000 };
Point ( 6898 ) = { -3.28333333, 58.28750000, 0.00000000 };
Point ( 6899 ) = { -3.28750000, 58.28333333, 0.00000000 };
Point ( 6900 ) = { -3.29583333, 58.28333333, 0.00000000 };
Point ( 6901 ) = { -3.30416667, 58.28333333, 0.00000000 };
Point ( 6902 ) = { -3.31250000, 58.28333333, 0.00000000 };
Point ( 6903 ) = { -3.31666667, 58.27916667, 0.00000000 };
Point ( 6904 ) = { -3.32083333, 58.27500000, 0.00000000 };
Point ( 6905 ) = { -3.32916667, 58.27500000, 0.00000000 };
Point ( 6906 ) = { -3.33750000, 58.27500000, 0.00000000 };
Point ( 6907 ) = { -3.34583333, 58.27500000, 0.00000000 };
Point ( 6908 ) = { -3.35416667, 58.27500000, 0.00000000 };
Point ( 6909 ) = { -3.36250000, 58.27500000, 0.00000000 };
Point ( 6910 ) = { -3.36666667, 58.27083333, 0.00000000 };
Point ( 6911 ) = { -3.37083333, 58.26666667, 0.00000000 };
Point ( 6912 ) = { -3.37916667, 58.26666667, 0.00000000 };
Point ( 6913 ) = { -3.38333333, 58.26250000, 0.00000000 };
Point ( 6914 ) = { -3.38750000, 58.25833333, 0.00000000 };
Point ( 6915 ) = { -3.39166667, 58.25416667, 0.00000000 };
Point ( 6916 ) = { -3.39583333, 58.25000000, 0.00000000 };
Point ( 6917 ) = { -3.40000000, 58.24583333, 0.00000000 };
Point ( 6918 ) = { -3.40416667, 58.24166667, 0.00000000 };
Point ( 6919 ) = { -3.41250000, 58.24166667, 0.00000000 };
Point ( 6920 ) = { -3.41666667, 58.23750000, 0.00000000 };
Point ( 6921 ) = { -3.42083333, 58.23333333, 0.00000000 };
Point ( 6922 ) = { -3.42500000, 58.22916667, 0.00000000 };
Point ( 6923 ) = { -3.42916667, 58.22500000, 0.00000000 };
Point ( 6924 ) = { -3.43750000, 58.22500000, 0.00000000 };
Point ( 6925 ) = { -3.44166667, 58.22083333, 0.00000000 };
Point ( 6926 ) = { -3.44583333, 58.21666667, 0.00000000 };
Point ( 6927 ) = { -3.45000000, 58.21250000, 0.00000000 };
Point ( 6928 ) = { -3.45416667, 58.20833333, 0.00000000 };
Point ( 6929 ) = { -3.45833333, 58.20416667, 0.00000000 };
Point ( 6930 ) = { -3.46250000, 58.20000000, 0.00000000 };
Point ( 6931 ) = { -3.46666667, 58.19583333, 0.00000000 };
Point ( 6932 ) = { -3.47083333, 58.19166667, 0.00000000 };
Point ( 6933 ) = { -3.47500000, 58.18750000, 0.00000000 };
Point ( 6934 ) = { -3.47916667, 58.18333333, 0.00000000 };
Point ( 6935 ) = { -3.48750000, 58.18333333, 0.00000000 };
Point ( 6936 ) = { -3.49166667, 58.17916667, 0.00000000 };
Point ( 6937 ) = { -3.49583333, 58.17500000, 0.00000000 };
Point ( 6938 ) = { -3.50000000, 58.17083333, 0.00000000 };
Point ( 6939 ) = { -3.50416667, 58.16666667, 0.00000000 };
Point ( 6940 ) = { -3.50833333, 58.16250000, 0.00000000 };
Point ( 6941 ) = { -3.51250000, 58.15833333, 0.00000000 };
Point ( 6942 ) = { -3.52083333, 58.15833333, 0.00000000 };
Point ( 6943 ) = { -3.52916667, 58.15833333, 0.00000000 };
Point ( 6944 ) = { -3.53333333, 58.15416667, 0.00000000 };
Point ( 6945 ) = { -3.53750000, 58.15000000, 0.00000000 };
Point ( 6946 ) = { -3.54583333, 58.15000000, 0.00000000 };
Point ( 6947 ) = { -3.55000000, 58.14583333, 0.00000000 };
Point ( 6948 ) = { -3.55416667, 58.14166667, 0.00000000 };
Point ( 6949 ) = { -3.56250000, 58.14166667, 0.00000000 };
Point ( 6950 ) = { -3.56666667, 58.13750000, 0.00000000 };
Point ( 6951 ) = { -3.57083333, 58.13333333, 0.00000000 };
Point ( 6952 ) = { -3.57916667, 58.13333333, 0.00000000 };
Point ( 6953 ) = { -3.58333333, 58.12916667, 0.00000000 };
Point ( 6954 ) = { -3.58750000, 58.12500000, 0.00000000 };
Point ( 6955 ) = { -3.59583333, 58.12500000, 0.00000000 };
Point ( 6956 ) = { -3.60416667, 58.12500000, 0.00000000 };
Point ( 6957 ) = { -3.61250000, 58.12500000, 0.00000000 };
Point ( 6958 ) = { -3.61666667, 58.12083333, 0.00000000 };
Point ( 6959 ) = { -3.62083333, 58.11666667, 0.00000000 };
Point ( 6960 ) = { -3.62500000, 58.11250000, 0.00000000 };
Point ( 6961 ) = { -3.62916667, 58.10833333, 0.00000000 };
Point ( 6962 ) = { -3.63750000, 58.10833333, 0.00000000 };
Point ( 6963 ) = { -3.64583333, 58.10833333, 0.00000000 };
Point ( 6964 ) = { -3.65000000, 58.10416667, 0.00000000 };
Point ( 6965 ) = { -3.65416667, 58.10000000, 0.00000000 };
Point ( 6966 ) = { -3.66250000, 58.10000000, 0.00000000 };
Point ( 6967 ) = { -3.67083333, 58.10000000, 0.00000000 };
Point ( 6968 ) = { -3.67500000, 58.09583333, 0.00000000 };
Point ( 6969 ) = { -3.67916667, 58.09166667, 0.00000000 };
Point ( 6970 ) = { -3.68750000, 58.09166667, 0.00000000 };
Point ( 6971 ) = { -3.69166667, 58.08750000, 0.00000000 };
Point ( 6972 ) = { -3.69583333, 58.08333333, 0.00000000 };
Point ( 6973 ) = { -3.70416667, 58.08333333, 0.00000000 };
Point ( 6974 ) = { -3.70833333, 58.07916667, 0.00000000 };
Point ( 6975 ) = { -3.71250000, 58.07500000, 0.00000000 };
Point ( 6976 ) = { -3.72083333, 58.07500000, 0.00000000 };
Point ( 6977 ) = { -3.72916667, 58.07500000, 0.00000000 };
Point ( 6978 ) = { -3.73750000, 58.07500000, 0.00000000 };
Point ( 6979 ) = { -3.74166667, 58.07083333, 0.00000000 };
Point ( 6980 ) = { -3.74583333, 58.06666667, 0.00000000 };
Point ( 6981 ) = { -3.75416667, 58.06666667, 0.00000000 };
Point ( 6982 ) = { -3.75833333, 58.06250000, 0.00000000 };
Point ( 6983 ) = { -3.76250000, 58.05833333, 0.00000000 };
Point ( 6984 ) = { -3.76666667, 58.05416667, 0.00000000 };
Point ( 6985 ) = { -3.77083333, 58.05000000, 0.00000000 };
Point ( 6986 ) = { -3.77916667, 58.05000000, 0.00000000 };
Point ( 6987 ) = { -3.78750000, 58.05000000, 0.00000000 };
Point ( 6988 ) = { -3.79583333, 58.05000000, 0.00000000 };
Point ( 6989 ) = { -3.80416667, 58.05000000, 0.00000000 };
Point ( 6990 ) = { -3.80833333, 58.04583333, 0.00000000 };
Point ( 6991 ) = { -3.81250000, 58.04166667, 0.00000000 };
Point ( 6992 ) = { -3.81666667, 58.03750000, 0.00000000 };
Point ( 6993 ) = { -3.82083333, 58.03333333, 0.00000000 };
Point ( 6994 ) = { -3.82500000, 58.02916667, 0.00000000 };
Point ( 6995 ) = { -3.82500000, 58.02083333, 0.00000000 };
Point ( 6996 ) = { -3.82916667, 58.01666667, 0.00000000 };
Point ( 6997 ) = { -3.83333333, 58.01250000, 0.00000000 };
Point ( 6998 ) = { -3.83750000, 58.00833333, 0.00000000 };
Point ( 6999 ) = { -3.84583333, 58.00833333, 0.00000000 };
Point ( 7000 ) = { -3.85000000, 58.00416667, 0.00000000 };
Point ( 7001 ) = { -3.85000000, 57.99583333, 0.00000000 };
Point ( 7002 ) = { -3.85416667, 57.99166667, 0.00000000 };
Point ( 7003 ) = { -3.86250000, 57.99166667, 0.00000000 };
Point ( 7004 ) = { -3.86666667, 57.98750000, 0.00000000 };
Point ( 7005 ) = { -3.87083333, 57.98333333, 0.00000000 };
Point ( 7006 ) = { -3.87500000, 57.97916667, 0.00000000 };
Point ( 7007 ) = { -3.87916667, 57.97500000, 0.00000000 };
Point ( 7008 ) = { -3.88333333, 57.97083333, 0.00000000 };
Point ( 7009 ) = { -3.88750000, 57.96666667, 0.00000000 };
Point ( 7010 ) = { -3.89583333, 57.96666667, 0.00000000 };
Point ( 7011 ) = { -3.90000000, 57.96250000, 0.00000000 };
Point ( 7012 ) = { -3.90416667, 57.95833333, 0.00000000 };
Point ( 7013 ) = { -3.91250000, 57.95833333, 0.00000000 };
Point ( 7014 ) = { -3.91666667, 57.95416667, 0.00000000 };
Point ( 7015 ) = { -3.92083333, 57.95000000, 0.00000000 };
Point ( 7016 ) = { -3.92500000, 57.94583333, 0.00000000 };
Point ( 7017 ) = { -3.92916667, 57.94166667, 0.00000000 };
Point ( 7018 ) = { -3.93333333, 57.93750000, 0.00000000 };
Point ( 7019 ) = { -3.93333333, 57.92916667, 0.00000000 };
Point ( 7020 ) = { -3.93333333, 57.92083333, 0.00000000 };
Point ( 7021 ) = { -3.93333333, 57.91250000, 0.00000000 };
Point ( 7022 ) = { -3.92916667, 57.90833333, 0.00000000 };
Point ( 7023 ) = { -3.92500000, 57.90416667, 0.00000000 };
Point ( 7024 ) = { -3.92500000, 57.89583333, 0.00000000 };
Point ( 7025 ) = { -3.92083333, 57.89166667, 0.00000000 };
Point ( 7026 ) = { -3.91250000, 57.89166667, 0.00000000 };
Point ( 7027 ) = { -3.90833333, 57.88750000, 0.00000000 };
Point ( 7028 ) = { -3.90416667, 57.88333333, 0.00000000 };
Point ( 7029 ) = { -3.90000000, 57.87916667, 0.00000000 };
Point ( 7030 ) = { -3.89583333, 57.87500000, 0.00000000 };
Point ( 7031 ) = { -3.88750000, 57.87500000, 0.00000000 };
Point ( 7032 ) = { -3.87916667, 57.87500000, 0.00000000 };
Point ( 7033 ) = { -3.87500000, 57.87083333, 0.00000000 };
Point ( 7034 ) = { -3.87083333, 57.86666667, 0.00000000 };
Point ( 7035 ) = { -3.86250000, 57.86666667, 0.00000000 };
Point ( 7036 ) = { -3.85416667, 57.86666667, 0.00000000 };
Point ( 7037 ) = { -3.84583333, 57.86666667, 0.00000000 };
Point ( 7038 ) = { -3.84166667, 57.86250000, 0.00000000 };
Point ( 7039 ) = { -3.83750000, 57.85833333, 0.00000000 };
Point ( 7040 ) = { -3.83333333, 57.86250000, 0.00000000 };
Point ( 7041 ) = { -3.82916667, 57.86666667, 0.00000000 };
Point ( 7042 ) = { -3.82083333, 57.86666667, 0.00000000 };
Point ( 7043 ) = { -3.81250000, 57.86666667, 0.00000000 };
Point ( 7044 ) = { -3.80833333, 57.87083333, 0.00000000 };
Point ( 7045 ) = { -3.80416667, 57.87500000, 0.00000000 };
Point ( 7046 ) = { -3.79583333, 57.87500000, 0.00000000 };
Point ( 7047 ) = { -3.78750000, 57.87500000, 0.00000000 };
Point ( 7048 ) = { -3.77916667, 57.87500000, 0.00000000 };
Point ( 7049 ) = { -3.77083333, 57.87500000, 0.00000000 };
Point ( 7050 ) = { -3.76666667, 57.87083333, 0.00000000 };
Point ( 7051 ) = { -3.76666667, 57.86250000, 0.00000000 };
Point ( 7052 ) = { -3.76666667, 57.85416667, 0.00000000 };
Point ( 7053 ) = { -3.77083333, 57.85000000, 0.00000000 };
Point ( 7054 ) = { -3.77500000, 57.84583333, 0.00000000 };
Point ( 7055 ) = { -3.77500000, 57.83750000, 0.00000000 };
Point ( 7056 ) = { -3.77916667, 57.83333333, 0.00000000 };
Point ( 7057 ) = { -3.78333333, 57.82916667, 0.00000000 };
Point ( 7058 ) = { -3.78750000, 57.82500000, 0.00000000 };
Point ( 7059 ) = { -3.79583333, 57.82500000, 0.00000000 };
Point ( 7060 ) = { -3.80000000, 57.82083333, 0.00000000 };
Point ( 7061 ) = { -3.80416667, 57.81666667, 0.00000000 };
Point ( 7062 ) = { -3.80833333, 57.81250000, 0.00000000 };
Point ( 7063 ) = { -3.81250000, 57.80833333, 0.00000000 };
Point ( 7064 ) = { -3.81666667, 57.80416667, 0.00000000 };
Point ( 7065 ) = { -3.82083333, 57.80000000, 0.00000000 };
Point ( 7066 ) = { -3.82500000, 57.79583333, 0.00000000 };
Point ( 7067 ) = { -3.82916667, 57.79166667, 0.00000000 };
Point ( 7068 ) = { -3.83333333, 57.78750000, 0.00000000 };
Point ( 7069 ) = { -3.83333333, 57.77916667, 0.00000000 };
Point ( 7070 ) = { -3.83750000, 57.77500000, 0.00000000 };
Point ( 7071 ) = { -3.84166667, 57.77083333, 0.00000000 };
Point ( 7072 ) = { -3.84583333, 57.76666667, 0.00000000 };
Point ( 7073 ) = { -3.85416667, 57.76666667, 0.00000000 };
Point ( 7074 ) = { -3.86250000, 57.76666667, 0.00000000 };
Point ( 7075 ) = { -3.86666667, 57.76250000, 0.00000000 };
Point ( 7076 ) = { -3.87083333, 57.75833333, 0.00000000 };
Point ( 7077 ) = { -3.87916667, 57.75833333, 0.00000000 };
Point ( 7078 ) = { -3.88333333, 57.75416667, 0.00000000 };
Point ( 7079 ) = { -3.88750000, 57.75000000, 0.00000000 };
Point ( 7080 ) = { -3.89166667, 57.74583333, 0.00000000 };
Point ( 7081 ) = { -3.89583333, 57.74166667, 0.00000000 };
Point ( 7082 ) = { -3.90000000, 57.73750000, 0.00000000 };
Point ( 7083 ) = { -3.90000000, 57.72916667, 0.00000000 };
Point ( 7084 ) = { -3.90416667, 57.72500000, 0.00000000 };
Point ( 7085 ) = { -3.91250000, 57.72500000, 0.00000000 };
Point ( 7086 ) = { -3.91666667, 57.72083333, 0.00000000 };
Point ( 7087 ) = { -3.91666667, 57.71250000, 0.00000000 };
Point ( 7088 ) = { -3.92083333, 57.70833333, 0.00000000 };
Point ( 7089 ) = { -3.92500000, 57.70416667, 0.00000000 };
Point ( 7090 ) = { -3.92916667, 57.70000000, 0.00000000 };
Point ( 7091 ) = { -3.93333333, 57.69583333, 0.00000000 };
Point ( 7092 ) = { -3.93750000, 57.69166667, 0.00000000 };
Point ( 7093 ) = { -3.94583333, 57.69166667, 0.00000000 };
Point ( 7094 ) = { -3.95000000, 57.69583333, 0.00000000 };
Point ( 7095 ) = { -3.95416667, 57.70000000, 0.00000000 };
Point ( 7096 ) = { -3.95833333, 57.69583333, 0.00000000 };
Point ( 7097 ) = { -3.96250000, 57.69166667, 0.00000000 };
Point ( 7098 ) = { -3.96666667, 57.68750000, 0.00000000 };
Point ( 7099 ) = { -3.97083333, 57.68333333, 0.00000000 };
Point ( 7100 ) = { -3.97916667, 57.68333333, 0.00000000 };
Point ( 7101 ) = { -3.98750000, 57.68333333, 0.00000000 };
Point ( 7102 ) = { -3.99166667, 57.67916667, 0.00000000 };
Point ( 7103 ) = { -3.98750000, 57.67500000, 0.00000000 };
Point ( 7104 ) = { -3.98333333, 57.67083333, 0.00000000 };
Point ( 7105 ) = { -3.98333333, 57.66250000, 0.00000000 };
Point ( 7106 ) = { -3.97916667, 57.65833333, 0.00000000 };
Point ( 7107 ) = { -3.97500000, 57.65416667, 0.00000000 };
Point ( 7108 ) = { -3.97500000, 57.64583333, 0.00000000 };
Point ( 7109 ) = { -3.97500000, 57.63750000, 0.00000000 };
Point ( 7110 ) = { -3.97916667, 57.63333333, 0.00000000 };
Point ( 7111 ) = { -3.98333333, 57.62916667, 0.00000000 };
Point ( 7112 ) = { -3.98750000, 57.62500000, 0.00000000 };
Point ( 7113 ) = { -3.99583333, 57.62500000, 0.00000000 };
Point ( 7114 ) = { -4.00416667, 57.62500000, 0.00000000 };
Point ( 7115 ) = { -4.01250000, 57.62500000, 0.00000000 };
Point ( 7116 ) = { -4.01666667, 57.62916667, 0.00000000 };
Point ( 7117 ) = { -4.02083333, 57.63333333, 0.00000000 };
Point ( 7118 ) = { -4.02500000, 57.62916667, 0.00000000 };
Point ( 7119 ) = { -4.02916667, 57.62500000, 0.00000000 };
Point ( 7120 ) = { -4.03750000, 57.62500000, 0.00000000 };
Point ( 7121 ) = { -4.04166667, 57.62916667, 0.00000000 };
Point ( 7122 ) = { -4.04583333, 57.63333333, 0.00000000 };
Point ( 7123 ) = { -4.05416667, 57.63333333, 0.00000000 };
Point ( 7124 ) = { -4.05833333, 57.62916667, 0.00000000 };
Point ( 7125 ) = { -4.06250000, 57.62500000, 0.00000000 };
Point ( 7126 ) = { -4.06666667, 57.62083333, 0.00000000 };
Point ( 7127 ) = { -4.07083333, 57.61666667, 0.00000000 };
Point ( 7128 ) = { -4.07916667, 57.61666667, 0.00000000 };
Point ( 7129 ) = { -4.08333333, 57.61250000, 0.00000000 };
Point ( 7130 ) = { -4.08750000, 57.60833333, 0.00000000 };
Point ( 7131 ) = { -4.09166667, 57.60416667, 0.00000000 };
Point ( 7132 ) = { -4.09583333, 57.60000000, 0.00000000 };
Point ( 7133 ) = { -4.10000000, 57.59583333, 0.00000000 };
Point ( 7134 ) = { -4.10000000, 57.58750000, 0.00000000 };
Point ( 7135 ) = { -4.10000000, 57.57916667, 0.00000000 };
Point ( 7136 ) = { -4.10416667, 57.57500000, 0.00000000 };
Point ( 7137 ) = { -4.11250000, 57.57500000, 0.00000000 };
Point ( 7138 ) = { -4.12083333, 57.57500000, 0.00000000 };
Point ( 7139 ) = { -4.12916667, 57.57500000, 0.00000000 };
Point ( 7140 ) = { -4.13750000, 57.57500000, 0.00000000 };
Point ( 7141 ) = { -4.14166667, 57.57083333, 0.00000000 };
Point ( 7142 ) = { -4.14583333, 57.56666667, 0.00000000 };
Point ( 7143 ) = { -4.15416667, 57.56666667, 0.00000000 };
Point ( 7144 ) = { -4.16250000, 57.56666667, 0.00000000 };
Point ( 7145 ) = { -4.16666667, 57.56250000, 0.00000000 };
Point ( 7146 ) = { -4.17083333, 57.55833333, 0.00000000 };
Point ( 7147 ) = { -4.17500000, 57.55416667, 0.00000000 };
Point ( 7148 ) = { -4.17500000, 57.54583333, 0.00000000 };
Point ( 7149 ) = { -4.17083333, 57.54166667, 0.00000000 };
Point ( 7150 ) = { -4.16250000, 57.54166667, 0.00000000 };
Point ( 7151 ) = { -4.15833333, 57.54583333, 0.00000000 };
Point ( 7152 ) = { -4.15416667, 57.55000000, 0.00000000 };
Point ( 7153 ) = { -4.15000000, 57.55416667, 0.00000000 };
Point ( 7154 ) = { -4.14583333, 57.55833333, 0.00000000 };
Point ( 7155 ) = { -4.13750000, 57.55833333, 0.00000000 };
Point ( 7156 ) = { -4.12916667, 57.55833333, 0.00000000 };
Point ( 7157 ) = { -4.12500000, 57.55416667, 0.00000000 };
Point ( 7158 ) = { -4.12083333, 57.55000000, 0.00000000 };
Point ( 7159 ) = { -4.11250000, 57.55000000, 0.00000000 };
Point ( 7160 ) = { -4.10416667, 57.55000000, 0.00000000 };
Point ( 7161 ) = { -4.09583333, 57.55000000, 0.00000000 };
Point ( 7162 ) = { -4.08750000, 57.55000000, 0.00000000 };
Point ( 7163 ) = { -4.07916667, 57.55000000, 0.00000000 };
Point ( 7164 ) = { -4.07083333, 57.55000000, 0.00000000 };
Point ( 7165 ) = { -4.06666667, 57.55416667, 0.00000000 };
Point ( 7166 ) = { -4.06250000, 57.55833333, 0.00000000 };
Point ( 7167 ) = { -4.05833333, 57.56250000, 0.00000000 };
Point ( 7168 ) = { -4.05416667, 57.56666667, 0.00000000 };
Point ( 7169 ) = { -4.05000000, 57.57083333, 0.00000000 };
Point ( 7170 ) = { -4.05416667, 57.57500000, 0.00000000 };
Point ( 7171 ) = { -4.06250000, 57.57500000, 0.00000000 };
Point ( 7172 ) = { -4.07083333, 57.57500000, 0.00000000 };
Point ( 7173 ) = { -4.07500000, 57.57916667, 0.00000000 };
Point ( 7174 ) = { -4.07500000, 57.58750000, 0.00000000 };
Point ( 7175 ) = { -4.07083333, 57.59166667, 0.00000000 };
Point ( 7176 ) = { -4.06666667, 57.59583333, 0.00000000 };
Point ( 7177 ) = { -4.06250000, 57.60000000, 0.00000000 };
Point ( 7178 ) = { -4.05833333, 57.59583333, 0.00000000 };
Point ( 7179 ) = { -4.05416667, 57.59166667, 0.00000000 };
Point ( 7180 ) = { -4.05000000, 57.59583333, 0.00000000 };
Point ( 7181 ) = { -4.04583333, 57.60000000, 0.00000000 };
Point ( 7182 ) = { -4.04166667, 57.59583333, 0.00000000 };
Point ( 7183 ) = { -4.03750000, 57.59166667, 0.00000000 };
Point ( 7184 ) = { -4.02916667, 57.59166667, 0.00000000 };
Point ( 7185 ) = { -4.02500000, 57.59583333, 0.00000000 };
Point ( 7186 ) = { -4.02083333, 57.60000000, 0.00000000 };
Point ( 7187 ) = { -4.01250000, 57.60000000, 0.00000000 };
Point ( 7188 ) = { -4.00416667, 57.60000000, 0.00000000 };
Point ( 7189 ) = { -3.99583333, 57.60000000, 0.00000000 };
Point ( 7190 ) = { -3.98750000, 57.60000000, 0.00000000 };
Point ( 7191 ) = { -3.98333333, 57.60416667, 0.00000000 };
Point ( 7192 ) = { -3.97916667, 57.60833333, 0.00000000 };
Point ( 7193 ) = { -3.97083333, 57.60833333, 0.00000000 };
Point ( 7194 ) = { -3.96666667, 57.60416667, 0.00000000 };
Point ( 7195 ) = { -3.96250000, 57.60000000, 0.00000000 };
Point ( 7196 ) = { -3.95416667, 57.60000000, 0.00000000 };
Point ( 7197 ) = { -3.94583333, 57.60000000, 0.00000000 };
Point ( 7198 ) = { -3.93750000, 57.60000000, 0.00000000 };
Point ( 7199 ) = { -3.92916667, 57.60000000, 0.00000000 };
Point ( 7200 ) = { -3.92083333, 57.60000000, 0.00000000 };
Point ( 7201 ) = { -3.91666667, 57.59583333, 0.00000000 };
Point ( 7202 ) = { -3.91250000, 57.59166667, 0.00000000 };
Point ( 7203 ) = { -3.90416667, 57.59166667, 0.00000000 };
Point ( 7204 ) = { -3.90000000, 57.59583333, 0.00000000 };
Point ( 7205 ) = { -3.89583333, 57.60000000, 0.00000000 };
Point ( 7206 ) = { -3.88750000, 57.60000000, 0.00000000 };
Point ( 7207 ) = { -3.87916667, 57.60000000, 0.00000000 };
Point ( 7208 ) = { -3.87500000, 57.59583333, 0.00000000 };
Point ( 7209 ) = { -3.87083333, 57.59166667, 0.00000000 };
Point ( 7210 ) = { -3.86250000, 57.59166667, 0.00000000 };
Point ( 7211 ) = { -3.85833333, 57.59583333, 0.00000000 };
Point ( 7212 ) = { -3.85416667, 57.60000000, 0.00000000 };
Point ( 7213 ) = { -3.84583333, 57.60000000, 0.00000000 };
Point ( 7214 ) = { -3.84166667, 57.60416667, 0.00000000 };
Point ( 7215 ) = { -3.83750000, 57.60833333, 0.00000000 };
Point ( 7216 ) = { -3.83333333, 57.61250000, 0.00000000 };
Point ( 7217 ) = { -3.82916667, 57.61666667, 0.00000000 };
Point ( 7218 ) = { -3.82083333, 57.61666667, 0.00000000 };
Point ( 7219 ) = { -3.81666667, 57.61250000, 0.00000000 };
Point ( 7220 ) = { -3.81250000, 57.60833333, 0.00000000 };
Point ( 7221 ) = { -3.80416667, 57.60833333, 0.00000000 };
Point ( 7222 ) = { -3.80000000, 57.61250000, 0.00000000 };
Point ( 7223 ) = { -3.80416667, 57.61666667, 0.00000000 };
Point ( 7224 ) = { -3.80833333, 57.62083333, 0.00000000 };
Point ( 7225 ) = { -3.80416667, 57.62500000, 0.00000000 };
Point ( 7226 ) = { -3.80000000, 57.62083333, 0.00000000 };
Point ( 7227 ) = { -3.79583333, 57.61666667, 0.00000000 };
Point ( 7228 ) = { -3.78750000, 57.61666667, 0.00000000 };
Point ( 7229 ) = { -3.78333333, 57.62083333, 0.00000000 };
Point ( 7230 ) = { -3.77916667, 57.62500000, 0.00000000 };
Point ( 7231 ) = { -3.77500000, 57.62916667, 0.00000000 };
Point ( 7232 ) = { -3.77083333, 57.63333333, 0.00000000 };
Point ( 7233 ) = { -3.76250000, 57.63333333, 0.00000000 };
Point ( 7234 ) = { -3.75416667, 57.63333333, 0.00000000 };
Point ( 7235 ) = { -3.75000000, 57.63750000, 0.00000000 };
Point ( 7236 ) = { -3.74583333, 57.64166667, 0.00000000 };
Point ( 7237 ) = { -3.73750000, 57.64166667, 0.00000000 };
Point ( 7238 ) = { -3.72916667, 57.64166667, 0.00000000 };
Point ( 7239 ) = { -3.72083333, 57.64166667, 0.00000000 };
Point ( 7240 ) = { -3.71666667, 57.64583333, 0.00000000 };
Point ( 7241 ) = { -3.71250000, 57.65000000, 0.00000000 };
Point ( 7242 ) = { -3.70416667, 57.65000000, 0.00000000 };
Point ( 7243 ) = { -3.70000000, 57.65416667, 0.00000000 };
Point ( 7244 ) = { -3.69583333, 57.65833333, 0.00000000 };
Point ( 7245 ) = { -3.68750000, 57.65833333, 0.00000000 };
Point ( 7246 ) = { -3.68333333, 57.66250000, 0.00000000 };
Point ( 7247 ) = { -3.67916667, 57.66666667, 0.00000000 };
Point ( 7248 ) = { -3.67083333, 57.66666667, 0.00000000 };
Point ( 7249 ) = { -3.66666667, 57.67083333, 0.00000000 };
Point ( 7250 ) = { -3.66250000, 57.67500000, 0.00000000 };
Point ( 7251 ) = { -3.65416667, 57.67500000, 0.00000000 };
Point ( 7252 ) = { -3.65000000, 57.67916667, 0.00000000 };
Point ( 7253 ) = { -3.64583333, 57.68333333, 0.00000000 };
Point ( 7254 ) = { -3.63750000, 57.68333333, 0.00000000 };
Point ( 7255 ) = { -3.62916667, 57.68333333, 0.00000000 };
Point ( 7256 ) = { -3.62500000, 57.68750000, 0.00000000 };
Point ( 7257 ) = { -3.62083333, 57.69166667, 0.00000000 };
Point ( 7258 ) = { -3.61250000, 57.69166667, 0.00000000 };
Point ( 7259 ) = { -3.60416667, 57.69166667, 0.00000000 };
Point ( 7260 ) = { -3.59583333, 57.69166667, 0.00000000 };
Point ( 7261 ) = { -3.58750000, 57.69166667, 0.00000000 };
Point ( 7262 ) = { -3.58333333, 57.68750000, 0.00000000 };
Point ( 7263 ) = { -3.57916667, 57.68333333, 0.00000000 };
Point ( 7264 ) = { -3.57083333, 57.68333333, 0.00000000 };
Point ( 7265 ) = { -3.56250000, 57.68333333, 0.00000000 };
Point ( 7266 ) = { -3.55416667, 57.68333333, 0.00000000 };
Point ( 7267 ) = { -3.54583333, 57.68333333, 0.00000000 };
Point ( 7268 ) = { -3.53750000, 57.68333333, 0.00000000 };
Point ( 7269 ) = { -3.53333333, 57.68750000, 0.00000000 };
Point ( 7270 ) = { -3.52916667, 57.69166667, 0.00000000 };
Point ( 7271 ) = { -3.52083333, 57.69166667, 0.00000000 };
Point ( 7272 ) = { -3.51666667, 57.69583333, 0.00000000 };
Point ( 7273 ) = { -3.51250000, 57.70000000, 0.00000000 };
Point ( 7274 ) = { -3.50833333, 57.70416667, 0.00000000 };
Point ( 7275 ) = { -3.50416667, 57.70833333, 0.00000000 };
Point ( 7276 ) = { -3.49583333, 57.70833333, 0.00000000 };
Point ( 7277 ) = { -3.49166667, 57.71250000, 0.00000000 };
Point ( 7278 ) = { -3.48750000, 57.71666667, 0.00000000 };
Point ( 7279 ) = { -3.47916667, 57.71666667, 0.00000000 };
Point ( 7280 ) = { -3.47083333, 57.71666667, 0.00000000 };
Point ( 7281 ) = { -3.46666667, 57.71250000, 0.00000000 };
Point ( 7282 ) = { -3.46250000, 57.70833333, 0.00000000 };
Point ( 7283 ) = { -3.45833333, 57.71250000, 0.00000000 };
Point ( 7284 ) = { -3.45416667, 57.71666667, 0.00000000 };
Point ( 7285 ) = { -3.44583333, 57.71666667, 0.00000000 };
Point ( 7286 ) = { -3.43750000, 57.71666667, 0.00000000 };
Point ( 7287 ) = { -3.43333333, 57.72083333, 0.00000000 };
Point ( 7288 ) = { -3.42916667, 57.72500000, 0.00000000 };
Point ( 7289 ) = { -3.42083333, 57.72500000, 0.00000000 };
Point ( 7290 ) = { -3.41250000, 57.72500000, 0.00000000 };
Point ( 7291 ) = { -3.40416667, 57.72500000, 0.00000000 };
Point ( 7292 ) = { -3.39583333, 57.72500000, 0.00000000 };
Point ( 7293 ) = { -3.38750000, 57.72500000, 0.00000000 };
Point ( 7294 ) = { -3.37916667, 57.72500000, 0.00000000 };
Point ( 7295 ) = { -3.37500000, 57.72916667, 0.00000000 };
Point ( 7296 ) = { -3.37083333, 57.73333333, 0.00000000 };
Point ( 7297 ) = { -3.36250000, 57.73333333, 0.00000000 };
Point ( 7298 ) = { -3.35416667, 57.73333333, 0.00000000 };
Point ( 7299 ) = { -3.34583333, 57.73333333, 0.00000000 };
Point ( 7300 ) = { -3.33750000, 57.73333333, 0.00000000 };
Point ( 7301 ) = { -3.32916667, 57.73333333, 0.00000000 };
Point ( 7302 ) = { -3.32083333, 57.73333333, 0.00000000 };
Point ( 7303 ) = { -3.31250000, 57.73333333, 0.00000000 };
Point ( 7304 ) = { -3.30416667, 57.73333333, 0.00000000 };
Point ( 7305 ) = { -3.29583333, 57.73333333, 0.00000000 };
Point ( 7306 ) = { -3.28750000, 57.73333333, 0.00000000 };
Point ( 7307 ) = { -3.28333333, 57.72916667, 0.00000000 };
Point ( 7308 ) = { -3.27916667, 57.72500000, 0.00000000 };
Point ( 7309 ) = { -3.27083333, 57.72500000, 0.00000000 };
Point ( 7310 ) = { -3.26666667, 57.72083333, 0.00000000 };
Point ( 7311 ) = { -3.26250000, 57.71666667, 0.00000000 };
Point ( 7312 ) = { -3.25416667, 57.71666667, 0.00000000 };
Point ( 7313 ) = { -3.25000000, 57.71250000, 0.00000000 };
Point ( 7314 ) = { -3.24583333, 57.70833333, 0.00000000 };
Point ( 7315 ) = { -3.23750000, 57.70833333, 0.00000000 };
Point ( 7316 ) = { -3.22916667, 57.70833333, 0.00000000 };
Point ( 7317 ) = { -3.22083333, 57.70833333, 0.00000000 };
Point ( 7318 ) = { -3.21666667, 57.70416667, 0.00000000 };
Point ( 7319 ) = { -3.21250000, 57.70000000, 0.00000000 };
Point ( 7320 ) = { -3.20416667, 57.70000000, 0.00000000 };
Point ( 7321 ) = { -3.19583333, 57.70000000, 0.00000000 };
Point ( 7322 ) = { -3.18750000, 57.70000000, 0.00000000 };
Point ( 7323 ) = { -3.17916667, 57.70000000, 0.00000000 };
Point ( 7324 ) = { -3.17083333, 57.70000000, 0.00000000 };
Point ( 7325 ) = { -3.16666667, 57.69583333, 0.00000000 };
Point ( 7326 ) = { -3.16250000, 57.69166667, 0.00000000 };
Point ( 7327 ) = { -3.15416667, 57.69166667, 0.00000000 };
Point ( 7328 ) = { -3.14583333, 57.69166667, 0.00000000 };
Point ( 7329 ) = { -3.13750000, 57.69166667, 0.00000000 };
Point ( 7330 ) = { -3.12916667, 57.69166667, 0.00000000 };
Point ( 7331 ) = { -3.12500000, 57.68750000, 0.00000000 };
Point ( 7332 ) = { -3.12083333, 57.68333333, 0.00000000 };
Point ( 7333 ) = { -3.11250000, 57.68333333, 0.00000000 };
Point ( 7334 ) = { -3.10416667, 57.68333333, 0.00000000 };
Point ( 7335 ) = { -3.09583333, 57.68333333, 0.00000000 };
Point ( 7336 ) = { -3.08750000, 57.68333333, 0.00000000 };
Point ( 7337 ) = { -3.07916667, 57.68333333, 0.00000000 };
Point ( 7338 ) = { -3.07083333, 57.68333333, 0.00000000 };
Point ( 7339 ) = { -3.06250000, 57.68333333, 0.00000000 };
Point ( 7340 ) = { -3.05833333, 57.68750000, 0.00000000 };
Point ( 7341 ) = { -3.05416667, 57.69166667, 0.00000000 };
Point ( 7342 ) = { -3.05000000, 57.68750000, 0.00000000 };
Point ( 7343 ) = { -3.04583333, 57.68333333, 0.00000000 };
Point ( 7344 ) = { -3.04166667, 57.67916667, 0.00000000 };
Point ( 7345 ) = { -3.03750000, 57.67500000, 0.00000000 };
Point ( 7346 ) = { -3.02916667, 57.67500000, 0.00000000 };
Point ( 7347 ) = { -3.02083333, 57.67500000, 0.00000000 };
Point ( 7348 ) = { -3.01250000, 57.67500000, 0.00000000 };
Point ( 7349 ) = { -3.00416667, 57.67500000, 0.00000000 };
Point ( 7350 ) = { -3.00000000, 57.67916667, 0.00000000 };
Point ( 7351 ) = { -2.99583333, 57.68333333, 0.00000000 };
Point ( 7352 ) = { -2.98750000, 57.68333333, 0.00000000 };
Point ( 7353 ) = { -2.97916667, 57.68333333, 0.00000000 };
Point ( 7354 ) = { -2.97083333, 57.68333333, 0.00000000 };
Point ( 7355 ) = { -2.96250000, 57.68333333, 0.00000000 };
Point ( 7356 ) = { -2.95416667, 57.68333333, 0.00000000 };
Point ( 7357 ) = { -2.95000000, 57.68750000, 0.00000000 };
Point ( 7358 ) = { -2.94583333, 57.69166667, 0.00000000 };
Point ( 7359 ) = { -2.94166667, 57.69583333, 0.00000000 };
Point ( 7360 ) = { -2.93750000, 57.70000000, 0.00000000 };
Point ( 7361 ) = { -2.92916667, 57.70000000, 0.00000000 };
Point ( 7362 ) = { -2.92083333, 57.70000000, 0.00000000 };
Point ( 7363 ) = { -2.91250000, 57.70000000, 0.00000000 };
Point ( 7364 ) = { -2.90416667, 57.70000000, 0.00000000 };
Point ( 7365 ) = { -2.90000000, 57.70416667, 0.00000000 };
Point ( 7366 ) = { -2.89583333, 57.70833333, 0.00000000 };
Point ( 7367 ) = { -2.88750000, 57.70833333, 0.00000000 };
Point ( 7368 ) = { -2.87916667, 57.70833333, 0.00000000 };
Point ( 7369 ) = { -2.87083333, 57.70833333, 0.00000000 };
Point ( 7370 ) = { -2.86250000, 57.70833333, 0.00000000 };
Point ( 7371 ) = { -2.85416667, 57.70833333, 0.00000000 };
Point ( 7372 ) = { -2.84583333, 57.70833333, 0.00000000 };
Point ( 7373 ) = { -2.84166667, 57.70416667, 0.00000000 };
Point ( 7374 ) = { -2.83750000, 57.70000000, 0.00000000 };
Point ( 7375 ) = { -2.82916667, 57.70000000, 0.00000000 };
Point ( 7376 ) = { -2.82083333, 57.70000000, 0.00000000 };
Point ( 7377 ) = { -2.81250000, 57.70000000, 0.00000000 };
Point ( 7378 ) = { -2.80416667, 57.70000000, 0.00000000 };
Point ( 7379 ) = { -2.79583333, 57.70000000, 0.00000000 };
Point ( 7380 ) = { -2.78750000, 57.70000000, 0.00000000 };
Point ( 7381 ) = { -2.77916667, 57.70000000, 0.00000000 };
Point ( 7382 ) = { -2.77083333, 57.70000000, 0.00000000 };
Point ( 7383 ) = { -2.76250000, 57.70000000, 0.00000000 };
Point ( 7384 ) = { -2.75416667, 57.70000000, 0.00000000 };
Point ( 7385 ) = { -2.75000000, 57.69583333, 0.00000000 };
Point ( 7386 ) = { -2.74583333, 57.69166667, 0.00000000 };
Point ( 7387 ) = { -2.73750000, 57.69166667, 0.00000000 };
Point ( 7388 ) = { -2.72916667, 57.69166667, 0.00000000 };
Point ( 7389 ) = { -2.72500000, 57.69583333, 0.00000000 };
Point ( 7390 ) = { -2.72083333, 57.70000000, 0.00000000 };
Point ( 7391 ) = { -2.71250000, 57.70000000, 0.00000000 };
Point ( 7392 ) = { -2.70833333, 57.69583333, 0.00000000 };
Point ( 7393 ) = { -2.70416667, 57.69166667, 0.00000000 };
Point ( 7394 ) = { -2.69583333, 57.69166667, 0.00000000 };
Point ( 7395 ) = { -2.68750000, 57.69166667, 0.00000000 };
Point ( 7396 ) = { -2.67916667, 57.69166667, 0.00000000 };
Point ( 7397 ) = { -2.67083333, 57.69166667, 0.00000000 };
Point ( 7398 ) = { -2.66250000, 57.69166667, 0.00000000 };
Point ( 7399 ) = { -2.65416667, 57.69166667, 0.00000000 };
Point ( 7400 ) = { -2.64583333, 57.69166667, 0.00000000 };
Point ( 7401 ) = { -2.63750000, 57.69166667, 0.00000000 };
Point ( 7402 ) = { -2.62916667, 57.69166667, 0.00000000 };
Point ( 7403 ) = { -2.62500000, 57.68750000, 0.00000000 };
Point ( 7404 ) = { -2.62083333, 57.68333333, 0.00000000 };
Point ( 7405 ) = { -2.61250000, 57.68333333, 0.00000000 };
Point ( 7406 ) = { -2.60416667, 57.68333333, 0.00000000 };
Point ( 7407 ) = { -2.59583333, 57.68333333, 0.00000000 };
Point ( 7408 ) = { -2.58750000, 57.68333333, 0.00000000 };
Point ( 7409 ) = { -2.57916667, 57.68333333, 0.00000000 };
Point ( 7410 ) = { -2.57083333, 57.68333333, 0.00000000 };
Point ( 7411 ) = { -2.56250000, 57.68333333, 0.00000000 };
Point ( 7412 ) = { -2.55833333, 57.67916667, 0.00000000 };
Point ( 7413 ) = { -2.55416667, 57.67500000, 0.00000000 };
Point ( 7414 ) = { -2.54583333, 57.67500000, 0.00000000 };
Point ( 7415 ) = { -2.53750000, 57.67500000, 0.00000000 };
Point ( 7416 ) = { -2.52916667, 57.67500000, 0.00000000 };
Point ( 7417 ) = { -2.52083333, 57.67500000, 0.00000000 };
Point ( 7418 ) = { -2.51250000, 57.67500000, 0.00000000 };
Point ( 7419 ) = { -2.50416667, 57.67500000, 0.00000000 };
Point ( 7420 ) = { -2.49583333, 57.67500000, 0.00000000 };
Point ( 7421 ) = { -2.48750000, 57.67500000, 0.00000000 };
Point ( 7422 ) = { -2.47916667, 57.67500000, 0.00000000 };
Point ( 7423 ) = { -2.47083333, 57.67500000, 0.00000000 };
Point ( 7424 ) = { -2.46250000, 57.67500000, 0.00000000 };
Point ( 7425 ) = { -2.45416667, 57.67500000, 0.00000000 };
Point ( 7426 ) = { -2.44583333, 57.67500000, 0.00000000 };
Point ( 7427 ) = { -2.43750000, 57.67500000, 0.00000000 };
Point ( 7428 ) = { -2.42916667, 57.67500000, 0.00000000 };
Point ( 7429 ) = { -2.42083333, 57.67500000, 0.00000000 };
Point ( 7430 ) = { -2.41250000, 57.67500000, 0.00000000 };
Point ( 7431 ) = { -2.40416667, 57.67500000, 0.00000000 };
Point ( 7432 ) = { -2.39583333, 57.67500000, 0.00000000 };
Point ( 7433 ) = { -2.38750000, 57.67500000, 0.00000000 };
Point ( 7434 ) = { -2.37916667, 57.67500000, 0.00000000 };
Point ( 7435 ) = { -2.37083333, 57.67500000, 0.00000000 };
Point ( 7436 ) = { -2.36666667, 57.67916667, 0.00000000 };
Point ( 7437 ) = { -2.36250000, 57.68333333, 0.00000000 };
Point ( 7438 ) = { -2.35416667, 57.68333333, 0.00000000 };
Point ( 7439 ) = { -2.35000000, 57.67916667, 0.00000000 };
Point ( 7440 ) = { -2.34583333, 57.67500000, 0.00000000 };
Point ( 7441 ) = { -2.33750000, 57.67500000, 0.00000000 };
Point ( 7442 ) = { -2.33333333, 57.67916667, 0.00000000 };
Point ( 7443 ) = { -2.33333333, 57.68750000, 0.00000000 };
Point ( 7444 ) = { -2.32916667, 57.69166667, 0.00000000 };
Point ( 7445 ) = { -2.32083333, 57.69166667, 0.00000000 };
Point ( 7446 ) = { -2.31666667, 57.69583333, 0.00000000 };
Point ( 7447 ) = { -2.31250000, 57.70000000, 0.00000000 };
Point ( 7448 ) = { -2.30416667, 57.70000000, 0.00000000 };
Point ( 7449 ) = { -2.29583333, 57.70000000, 0.00000000 };
Point ( 7450 ) = { -2.28750000, 57.70000000, 0.00000000 };
Point ( 7451 ) = { -2.28333333, 57.69583333, 0.00000000 };
Point ( 7452 ) = { -2.27916667, 57.69166667, 0.00000000 };
Point ( 7453 ) = { -2.27083333, 57.69166667, 0.00000000 };
Point ( 7454 ) = { -2.26250000, 57.69166667, 0.00000000 };
Point ( 7455 ) = { -2.25416667, 57.69166667, 0.00000000 };
Point ( 7456 ) = { -2.24583333, 57.69166667, 0.00000000 };
Point ( 7457 ) = { -2.23750000, 57.69166667, 0.00000000 };
Point ( 7458 ) = { -2.23333333, 57.68750000, 0.00000000 };
Point ( 7459 ) = { -2.22916667, 57.68333333, 0.00000000 };
Point ( 7460 ) = { -2.22083333, 57.68333333, 0.00000000 };
Point ( 7461 ) = { -2.21250000, 57.68333333, 0.00000000 };
Point ( 7462 ) = { -2.20416667, 57.68333333, 0.00000000 };
Point ( 7463 ) = { -2.20000000, 57.67916667, 0.00000000 };
Point ( 7464 ) = { -2.19583333, 57.67500000, 0.00000000 };
Point ( 7465 ) = { -2.18750000, 57.67500000, 0.00000000 };
Point ( 7466 ) = { -2.18333333, 57.67916667, 0.00000000 };
Point ( 7467 ) = { -2.17916667, 57.68333333, 0.00000000 };
Point ( 7468 ) = { -2.17083333, 57.68333333, 0.00000000 };
Point ( 7469 ) = { -2.16250000, 57.68333333, 0.00000000 };
Point ( 7470 ) = { -2.15833333, 57.68750000, 0.00000000 };
Point ( 7471 ) = { -2.15416667, 57.69166667, 0.00000000 };
Point ( 7472 ) = { -2.14583333, 57.69166667, 0.00000000 };
Point ( 7473 ) = { -2.14166667, 57.69583333, 0.00000000 };
Point ( 7474 ) = { -2.13750000, 57.70000000, 0.00000000 };
Point ( 7475 ) = { -2.12916667, 57.70000000, 0.00000000 };
Point ( 7476 ) = { -2.12083333, 57.70000000, 0.00000000 };
Point ( 7477 ) = { -2.11250000, 57.70000000, 0.00000000 };
Point ( 7478 ) = { -2.10416667, 57.70000000, 0.00000000 };
Point ( 7479 ) = { -2.09583333, 57.70000000, 0.00000000 };
Point ( 7480 ) = { -2.08750000, 57.70000000, 0.00000000 };
Point ( 7481 ) = { -2.07916667, 57.70000000, 0.00000000 };
Point ( 7482 ) = { -2.07083333, 57.70000000, 0.00000000 };
Point ( 7483 ) = { -2.06250000, 57.70000000, 0.00000000 };
Point ( 7484 ) = { -2.05416667, 57.70000000, 0.00000000 };
Point ( 7485 ) = { -2.04583333, 57.70000000, 0.00000000 };
Point ( 7486 ) = { -2.03750000, 57.70000000, 0.00000000 };
Point ( 7487 ) = { -2.02916667, 57.70000000, 0.00000000 };
Point ( 7488 ) = { -2.02083333, 57.70000000, 0.00000000 };
Point ( 7489 ) = { -2.01250000, 57.70000000, 0.00000000 };
Point ( 7490 ) = { -2.00416667, 57.70000000, 0.00000000 };
Point ( 7491 ) = { -2.00000000, 57.69583333, 0.00000000 };
Point ( 7492 ) = { -1.99583333, 57.69166667, 0.00000000 };
Point ( 7493 ) = { -1.99166667, 57.68750000, 0.00000000 };
Point ( 7494 ) = { -1.98750000, 57.68333333, 0.00000000 };
Point ( 7495 ) = { -1.97916667, 57.68333333, 0.00000000 };
Point ( 7496 ) = { -1.97083333, 57.68333333, 0.00000000 };
Point ( 7497 ) = { -1.96250000, 57.68333333, 0.00000000 };
Point ( 7498 ) = { -1.95416667, 57.68333333, 0.00000000 };
Point ( 7499 ) = { -1.94583333, 57.68333333, 0.00000000 };
Point ( 7500 ) = { -1.93750000, 57.68333333, 0.00000000 };
Point ( 7501 ) = { -1.92916667, 57.68333333, 0.00000000 };
Point ( 7502 ) = { -1.92500000, 57.67916667, 0.00000000 };
Point ( 7503 ) = { -1.92083333, 57.67500000, 0.00000000 };
Point ( 7504 ) = { -1.91666667, 57.67083333, 0.00000000 };
Point ( 7505 ) = { -1.91250000, 57.66666667, 0.00000000 };
Point ( 7506 ) = { -1.90416667, 57.66666667, 0.00000000 };
Point ( 7507 ) = { -1.90000000, 57.66250000, 0.00000000 };
Point ( 7508 ) = { -1.89583333, 57.65833333, 0.00000000 };
Point ( 7509 ) = { -1.89166667, 57.65416667, 0.00000000 };
Point ( 7510 ) = { -1.88750000, 57.65000000, 0.00000000 };
Point ( 7511 ) = { -1.88333333, 57.64583333, 0.00000000 };
Point ( 7512 ) = { -1.87916667, 57.64166667, 0.00000000 };
Point ( 7513 ) = { -1.87083333, 57.64166667, 0.00000000 };
Point ( 7514 ) = { -1.86666667, 57.63750000, 0.00000000 };
Point ( 7515 ) = { -1.86250000, 57.63333333, 0.00000000 };
Point ( 7516 ) = { -1.85416667, 57.63333333, 0.00000000 };
Point ( 7517 ) = { -1.85000000, 57.62916667, 0.00000000 };
Point ( 7518 ) = { -1.84583333, 57.62500000, 0.00000000 };
Point ( 7519 ) = { -1.83750000, 57.62500000, 0.00000000 };
Point ( 7520 ) = { -1.83333333, 57.62083333, 0.00000000 };
Point ( 7521 ) = { -1.82916667, 57.61666667, 0.00000000 };
Point ( 7522 ) = { -1.82083333, 57.61666667, 0.00000000 };
Point ( 7523 ) = { -1.81666667, 57.61250000, 0.00000000 };
Point ( 7524 ) = { -1.81666667, 57.60416667, 0.00000000 };
Point ( 7525 ) = { -1.81666667, 57.59583333, 0.00000000 };
Point ( 7526 ) = { -1.82083333, 57.59166667, 0.00000000 };
Point ( 7527 ) = { -1.82500000, 57.58750000, 0.00000000 };
Point ( 7528 ) = { -1.82083333, 57.58333333, 0.00000000 };
Point ( 7529 ) = { -1.81666667, 57.57916667, 0.00000000 };
Point ( 7530 ) = { -1.81666667, 57.57083333, 0.00000000 };
Point ( 7531 ) = { -1.81250000, 57.56666667, 0.00000000 };
Point ( 7532 ) = { -1.80833333, 57.56250000, 0.00000000 };
Point ( 7533 ) = { -1.80416667, 57.55833333, 0.00000000 };
Point ( 7534 ) = { -1.80000000, 57.55416667, 0.00000000 };
Point ( 7535 ) = { -1.80000000, 57.54583333, 0.00000000 };
Point ( 7536 ) = { -1.80000000, 57.53750000, 0.00000000 };
Point ( 7537 ) = { -1.80000000, 57.52916667, 0.00000000 };
Point ( 7538 ) = { -1.79583333, 57.52500000, 0.00000000 };
Point ( 7539 ) = { -1.79166667, 57.52083333, 0.00000000 };
Point ( 7540 ) = { -1.78750000, 57.51666667, 0.00000000 };
Point ( 7541 ) = { -1.77916667, 57.51666667, 0.00000000 };
Point ( 7542 ) = { -1.77500000, 57.51250000, 0.00000000 };
Point ( 7543 ) = { -1.77083333, 57.50833333, 0.00000000 };
Point ( 7544 ) = { -1.76666667, 57.50416667, 0.00000000 };
Point ( 7545 ) = { -1.77083333, 57.50000000, 0.00000000 };
Point ( 7546 ) = { -1.77916667, 57.50000000, 0.00000000 };
Point ( 7547 ) = { -1.78333333, 57.49583333, 0.00000000 };
Point ( 7548 ) = { -1.78333333, 57.48750000, 0.00000000 };
Point ( 7549 ) = { -1.77916667, 57.48333333, 0.00000000 };
Point ( 7550 ) = { -1.77500000, 57.47916667, 0.00000000 };
Point ( 7551 ) = { -1.77500000, 57.47083333, 0.00000000 };
Point ( 7552 ) = { -1.77500000, 57.46250000, 0.00000000 };
Point ( 7553 ) = { -1.77916667, 57.45833333, 0.00000000 };
Point ( 7554 ) = { -1.78333333, 57.45416667, 0.00000000 };
Point ( 7555 ) = { -1.78750000, 57.45000000, 0.00000000 };
Point ( 7556 ) = { -1.79166667, 57.44583333, 0.00000000 };
Point ( 7557 ) = { -1.79583333, 57.44166667, 0.00000000 };
Point ( 7558 ) = { -1.80000000, 57.43750000, 0.00000000 };
Point ( 7559 ) = { -1.80416667, 57.43333333, 0.00000000 };
Point ( 7560 ) = { -1.80833333, 57.42916667, 0.00000000 };
Point ( 7561 ) = { -1.81250000, 57.42500000, 0.00000000 };
Point ( 7562 ) = { -1.81666667, 57.42083333, 0.00000000 };
Point ( 7563 ) = { -1.82083333, 57.41666667, 0.00000000 };
Point ( 7564 ) = { -1.82500000, 57.41250000, 0.00000000 };
Point ( 7565 ) = { -1.82916667, 57.40833333, 0.00000000 };
Point ( 7566 ) = { -1.83750000, 57.40833333, 0.00000000 };
Point ( 7567 ) = { -1.84583333, 57.40833333, 0.00000000 };
Point ( 7568 ) = { -1.85000000, 57.40416667, 0.00000000 };
Point ( 7569 ) = { -1.85416667, 57.40000000, 0.00000000 };
Point ( 7570 ) = { -1.85833333, 57.39583333, 0.00000000 };
Point ( 7571 ) = { -1.85833333, 57.38750000, 0.00000000 };
Point ( 7572 ) = { -1.86250000, 57.38333333, 0.00000000 };
Point ( 7573 ) = { -1.86666667, 57.37916667, 0.00000000 };
Point ( 7574 ) = { -1.87083333, 57.37500000, 0.00000000 };
Point ( 7575 ) = { -1.87916667, 57.37500000, 0.00000000 };
Point ( 7576 ) = { -1.88333333, 57.37083333, 0.00000000 };
Point ( 7577 ) = { -1.88750000, 57.36666667, 0.00000000 };
Point ( 7578 ) = { -1.89166667, 57.36250000, 0.00000000 };
Point ( 7579 ) = { -1.89583333, 57.35833333, 0.00000000 };
Point ( 7580 ) = { -1.90416667, 57.35833333, 0.00000000 };
Point ( 7581 ) = { -1.90833333, 57.35416667, 0.00000000 };
Point ( 7582 ) = { -1.91250000, 57.35000000, 0.00000000 };
Point ( 7583 ) = { -1.91666667, 57.34583333, 0.00000000 };
Point ( 7584 ) = { -1.92083333, 57.34166667, 0.00000000 };
Point ( 7585 ) = { -1.92916667, 57.34166667, 0.00000000 };
Point ( 7586 ) = { -1.93333333, 57.33750000, 0.00000000 };
Point ( 7587 ) = { -1.93750000, 57.33333333, 0.00000000 };
Point ( 7588 ) = { -1.94166667, 57.32916667, 0.00000000 };
Point ( 7589 ) = { -1.94583333, 57.32500000, 0.00000000 };
Point ( 7590 ) = { -1.95416667, 57.32500000, 0.00000000 };
Point ( 7591 ) = { -1.95833333, 57.32083333, 0.00000000 };
Point ( 7592 ) = { -1.96250000, 57.31666667, 0.00000000 };
Point ( 7593 ) = { -1.97083333, 57.31666667, 0.00000000 };
Point ( 7594 ) = { -1.97500000, 57.31250000, 0.00000000 };
Point ( 7595 ) = { -1.97916667, 57.30833333, 0.00000000 };
Point ( 7596 ) = { -1.98333333, 57.30416667, 0.00000000 };
Point ( 7597 ) = { -1.98750000, 57.30000000, 0.00000000 };
Point ( 7598 ) = { -1.99166667, 57.29583333, 0.00000000 };
Point ( 7599 ) = { -1.99583333, 57.29166667, 0.00000000 };
Point ( 7600 ) = { -2.00000000, 57.28750000, 0.00000000 };
Point ( 7601 ) = { -2.00416667, 57.28333333, 0.00000000 };
Point ( 7602 ) = { -2.00833333, 57.27916667, 0.00000000 };
Point ( 7603 ) = { -2.00833333, 57.27083333, 0.00000000 };
Point ( 7604 ) = { -2.01250000, 57.26666667, 0.00000000 };
Point ( 7605 ) = { -2.01666667, 57.26250000, 0.00000000 };
Point ( 7606 ) = { -2.02083333, 57.25833333, 0.00000000 };
Point ( 7607 ) = { -2.02500000, 57.25416667, 0.00000000 };
Point ( 7608 ) = { -2.02916667, 57.25000000, 0.00000000 };
Point ( 7609 ) = { -2.03333333, 57.24583333, 0.00000000 };
Point ( 7610 ) = { -2.03333333, 57.23750000, 0.00000000 };
Point ( 7611 ) = { -2.03750000, 57.23333333, 0.00000000 };
Point ( 7612 ) = { -2.04166667, 57.22916667, 0.00000000 };
Point ( 7613 ) = { -2.04583333, 57.22500000, 0.00000000 };
Point ( 7614 ) = { -2.05000000, 57.22083333, 0.00000000 };
Point ( 7615 ) = { -2.05000000, 57.21250000, 0.00000000 };
Point ( 7616 ) = { -2.05416667, 57.20833333, 0.00000000 };
Point ( 7617 ) = { -2.05833333, 57.20416667, 0.00000000 };
Point ( 7618 ) = { -2.05833333, 57.19583333, 0.00000000 };
Point ( 7619 ) = { -2.05833333, 57.18750000, 0.00000000 };
Point ( 7620 ) = { -2.06250000, 57.18333333, 0.00000000 };
Point ( 7621 ) = { -2.06666667, 57.17916667, 0.00000000 };
Point ( 7622 ) = { -2.06666667, 57.17083333, 0.00000000 };
Point ( 7623 ) = { -2.06666667, 57.16250000, 0.00000000 };
Point ( 7624 ) = { -2.06666667, 57.15416667, 0.00000000 };
Point ( 7625 ) = { -2.06250000, 57.15000000, 0.00000000 };
Point ( 7626 ) = { -2.05416667, 57.15000000, 0.00000000 };
Point ( 7627 ) = { -2.05000000, 57.14583333, 0.00000000 };
Point ( 7628 ) = { -2.04583333, 57.14166667, 0.00000000 };
Point ( 7629 ) = { -2.04166667, 57.13750000, 0.00000000 };
Point ( 7630 ) = { -2.04583333, 57.13333333, 0.00000000 };
Point ( 7631 ) = { -2.05000000, 57.12916667, 0.00000000 };
Point ( 7632 ) = { -2.05000000, 57.12083333, 0.00000000 };
Point ( 7633 ) = { -2.05416667, 57.11666667, 0.00000000 };
Point ( 7634 ) = { -2.05833333, 57.11250000, 0.00000000 };
Point ( 7635 ) = { -2.05833333, 57.10416667, 0.00000000 };
Point ( 7636 ) = { -2.06250000, 57.10000000, 0.00000000 };
Point ( 7637 ) = { -2.06666667, 57.09583333, 0.00000000 };
Point ( 7638 ) = { -2.07083333, 57.09166667, 0.00000000 };
Point ( 7639 ) = { -2.07500000, 57.08750000, 0.00000000 };
Point ( 7640 ) = { -2.07916667, 57.08333333, 0.00000000 };
Point ( 7641 ) = { -2.08333333, 57.07916667, 0.00000000 };
Point ( 7642 ) = { -2.08750000, 57.07500000, 0.00000000 };
Point ( 7643 ) = { -2.09166667, 57.07083333, 0.00000000 };
Point ( 7644 ) = { -2.09166667, 57.06250000, 0.00000000 };
Point ( 7645 ) = { -2.09583333, 57.05833333, 0.00000000 };
Point ( 7646 ) = { -2.10416667, 57.05833333, 0.00000000 };
Point ( 7647 ) = { -2.10833333, 57.05416667, 0.00000000 };
Point ( 7648 ) = { -2.11250000, 57.05000000, 0.00000000 };
Point ( 7649 ) = { -2.11666667, 57.04583333, 0.00000000 };
Point ( 7650 ) = { -2.12083333, 57.04166667, 0.00000000 };
Point ( 7651 ) = { -2.12500000, 57.03750000, 0.00000000 };
Point ( 7652 ) = { -2.12916667, 57.03333333, 0.00000000 };
Point ( 7653 ) = { -2.13333333, 57.02916667, 0.00000000 };
Point ( 7654 ) = { -2.13750000, 57.02500000, 0.00000000 };
Point ( 7655 ) = { -2.14166667, 57.02083333, 0.00000000 };
Point ( 7656 ) = { -2.14583333, 57.01666667, 0.00000000 };
Point ( 7657 ) = { -2.15000000, 57.01250000, 0.00000000 };
Point ( 7658 ) = { -2.15416667, 57.00833333, 0.00000000 };
Point ( 7659 ) = { -2.15833333, 57.00416667, 0.00000000 };
Point ( 7660 ) = { -2.16250000, 57.00000000, 0.00000000 };
Point ( 7661 ) = { -2.16666667, 56.99583333, 0.00000000 };
Point ( 7662 ) = { -2.17083333, 56.99166667, 0.00000000 };
Point ( 7663 ) = { -2.17500000, 56.98750000, 0.00000000 };
Point ( 7664 ) = { -2.17500000, 56.97916667, 0.00000000 };
Point ( 7665 ) = { -2.17916667, 56.97500000, 0.00000000 };
Point ( 7666 ) = { -2.18333333, 56.97083333, 0.00000000 };
Point ( 7667 ) = { -2.18750000, 56.96666667, 0.00000000 };
Point ( 7668 ) = { -2.19166667, 56.96250000, 0.00000000 };
Point ( 7669 ) = { -2.19166667, 56.95416667, 0.00000000 };
Point ( 7670 ) = { -2.19166667, 56.94583333, 0.00000000 };
Point ( 7671 ) = { -2.19166667, 56.93750000, 0.00000000 };
Point ( 7672 ) = { -2.19166667, 56.92916667, 0.00000000 };
Point ( 7673 ) = { -2.19166667, 56.92083333, 0.00000000 };
Point ( 7674 ) = { -2.19166667, 56.91250000, 0.00000000 };
Point ( 7675 ) = { -2.19166667, 56.90416667, 0.00000000 };
Point ( 7676 ) = { -2.19583333, 56.90000000, 0.00000000 };
Point ( 7677 ) = { -2.20000000, 56.89583333, 0.00000000 };
Point ( 7678 ) = { -2.20416667, 56.89166667, 0.00000000 };
Point ( 7679 ) = { -2.20833333, 56.88750000, 0.00000000 };
Point ( 7680 ) = { -2.20833333, 56.87916667, 0.00000000 };
Point ( 7681 ) = { -2.21250000, 56.87500000, 0.00000000 };
Point ( 7682 ) = { -2.21666667, 56.87083333, 0.00000000 };
Point ( 7683 ) = { -2.22083333, 56.86666667, 0.00000000 };
Point ( 7684 ) = { -2.22500000, 56.86250000, 0.00000000 };
Point ( 7685 ) = { -2.22916667, 56.85833333, 0.00000000 };
Point ( 7686 ) = { -2.23333333, 56.85416667, 0.00000000 };
Point ( 7687 ) = { -2.23750000, 56.85000000, 0.00000000 };
Point ( 7688 ) = { -2.24166667, 56.84583333, 0.00000000 };
Point ( 7689 ) = { -2.24583333, 56.84166667, 0.00000000 };
Point ( 7690 ) = { -2.25416667, 56.84166667, 0.00000000 };
Point ( 7691 ) = { -2.25833333, 56.83750000, 0.00000000 };
Point ( 7692 ) = { -2.26250000, 56.83333333, 0.00000000 };
Point ( 7693 ) = { -2.27083333, 56.83333333, 0.00000000 };
Point ( 7694 ) = { -2.27500000, 56.82916667, 0.00000000 };
Point ( 7695 ) = { -2.27916667, 56.82500000, 0.00000000 };
Point ( 7696 ) = { -2.28333333, 56.82083333, 0.00000000 };
Point ( 7697 ) = { -2.28750000, 56.81666667, 0.00000000 };
Point ( 7698 ) = { -2.29166667, 56.81250000, 0.00000000 };
Point ( 7699 ) = { -2.29583333, 56.80833333, 0.00000000 };
Point ( 7700 ) = { -2.30000000, 56.80416667, 0.00000000 };
Point ( 7701 ) = { -2.30416667, 56.80000000, 0.00000000 };
Point ( 7702 ) = { -2.30833333, 56.79583333, 0.00000000 };
Point ( 7703 ) = { -2.31250000, 56.79166667, 0.00000000 };
Point ( 7704 ) = { -2.32083333, 56.79166667, 0.00000000 };
Point ( 7705 ) = { -2.32916667, 56.79166667, 0.00000000 };
Point ( 7706 ) = { -2.33333333, 56.78750000, 0.00000000 };
Point ( 7707 ) = { -2.33750000, 56.78333333, 0.00000000 };
Point ( 7708 ) = { -2.34583333, 56.78333333, 0.00000000 };
Point ( 7709 ) = { -2.35416667, 56.78333333, 0.00000000 };
Point ( 7710 ) = { -2.35833333, 56.77916667, 0.00000000 };
Point ( 7711 ) = { -2.36250000, 56.77500000, 0.00000000 };
Point ( 7712 ) = { -2.37083333, 56.77500000, 0.00000000 };
Point ( 7713 ) = { -2.37500000, 56.77083333, 0.00000000 };
Point ( 7714 ) = { -2.37916667, 56.76666667, 0.00000000 };
Point ( 7715 ) = { -2.38750000, 56.76666667, 0.00000000 };
Point ( 7716 ) = { -2.39583333, 56.76666667, 0.00000000 };
Point ( 7717 ) = { -2.40000000, 56.76250000, 0.00000000 };
Point ( 7718 ) = { -2.40416667, 56.75833333, 0.00000000 };
Point ( 7719 ) = { -2.41250000, 56.75833333, 0.00000000 };
Point ( 7720 ) = { -2.41666667, 56.75416667, 0.00000000 };
Point ( 7721 ) = { -2.41666667, 56.74583333, 0.00000000 };
Point ( 7722 ) = { -2.42083333, 56.74166667, 0.00000000 };
Point ( 7723 ) = { -2.42500000, 56.73750000, 0.00000000 };
Point ( 7724 ) = { -2.42916667, 56.73333333, 0.00000000 };
Point ( 7725 ) = { -2.43750000, 56.73333333, 0.00000000 };
Point ( 7726 ) = { -2.44166667, 56.72916667, 0.00000000 };
Point ( 7727 ) = { -2.44166667, 56.72083333, 0.00000000 };
Point ( 7728 ) = { -2.44166667, 56.71250000, 0.00000000 };
Point ( 7729 ) = { -2.43750000, 56.70833333, 0.00000000 };
Point ( 7730 ) = { -2.43333333, 56.70416667, 0.00000000 };
Point ( 7731 ) = { -2.43333333, 56.69583333, 0.00000000 };
Point ( 7732 ) = { -2.43333333, 56.68750000, 0.00000000 };
Point ( 7733 ) = { -2.43750000, 56.68333333, 0.00000000 };
Point ( 7734 ) = { -2.44166667, 56.67916667, 0.00000000 };
Point ( 7735 ) = { -2.44166667, 56.67083333, 0.00000000 };
Point ( 7736 ) = { -2.44583333, 56.66666667, 0.00000000 };
Point ( 7737 ) = { -2.45416667, 56.66666667, 0.00000000 };
Point ( 7738 ) = { -2.46250000, 56.66666667, 0.00000000 };
Point ( 7739 ) = { -2.47083333, 56.66666667, 0.00000000 };
Point ( 7740 ) = { -2.47500000, 56.66250000, 0.00000000 };
Point ( 7741 ) = { -2.47916667, 56.65833333, 0.00000000 };
Point ( 7742 ) = { -2.48750000, 56.65833333, 0.00000000 };
Point ( 7743 ) = { -2.49166667, 56.65416667, 0.00000000 };
Point ( 7744 ) = { -2.49583333, 56.65000000, 0.00000000 };
Point ( 7745 ) = { -2.50000000, 56.64583333, 0.00000000 };
Point ( 7746 ) = { -2.50000000, 56.63750000, 0.00000000 };
Point ( 7747 ) = { -2.49583333, 56.63333333, 0.00000000 };
Point ( 7748 ) = { -2.48750000, 56.63333333, 0.00000000 };
Point ( 7749 ) = { -2.47916667, 56.63333333, 0.00000000 };
Point ( 7750 ) = { -2.47500000, 56.62916667, 0.00000000 };
Point ( 7751 ) = { -2.47500000, 56.62083333, 0.00000000 };
Point ( 7752 ) = { -2.47916667, 56.61666667, 0.00000000 };
Point ( 7753 ) = { -2.48333333, 56.61250000, 0.00000000 };
Point ( 7754 ) = { -2.48750000, 56.60833333, 0.00000000 };
Point ( 7755 ) = { -2.49166667, 56.60416667, 0.00000000 };
Point ( 7756 ) = { -2.49583333, 56.60000000, 0.00000000 };
Point ( 7757 ) = { -2.50000000, 56.59583333, 0.00000000 };
Point ( 7758 ) = { -2.50416667, 56.59166667, 0.00000000 };
Point ( 7759 ) = { -2.50833333, 56.58750000, 0.00000000 };
Point ( 7760 ) = { -2.51250000, 56.58333333, 0.00000000 };
Point ( 7761 ) = { -2.51666667, 56.57916667, 0.00000000 };
Point ( 7762 ) = { -2.52083333, 56.57500000, 0.00000000 };
Point ( 7763 ) = { -2.52916667, 56.57500000, 0.00000000 };
Point ( 7764 ) = { -2.53333333, 56.57083333, 0.00000000 };
Point ( 7765 ) = { -2.53750000, 56.56666667, 0.00000000 };
Point ( 7766 ) = { -2.54166667, 56.56250000, 0.00000000 };
Point ( 7767 ) = { -2.54583333, 56.55833333, 0.00000000 };
Point ( 7768 ) = { -2.55416667, 56.55833333, 0.00000000 };
Point ( 7769 ) = { -2.55833333, 56.55416667, 0.00000000 };
Point ( 7770 ) = { -2.56250000, 56.55000000, 0.00000000 };
Point ( 7771 ) = { -2.57083333, 56.55000000, 0.00000000 };
Point ( 7772 ) = { -2.57500000, 56.54583333, 0.00000000 };
Point ( 7773 ) = { -2.57916667, 56.54166667, 0.00000000 };
Point ( 7774 ) = { -2.58750000, 56.54166667, 0.00000000 };
Point ( 7775 ) = { -2.59166667, 56.53750000, 0.00000000 };
Point ( 7776 ) = { -2.59583333, 56.53333333, 0.00000000 };
Point ( 7777 ) = { -2.60416667, 56.53333333, 0.00000000 };
Point ( 7778 ) = { -2.60833333, 56.52916667, 0.00000000 };
Point ( 7779 ) = { -2.61250000, 56.52500000, 0.00000000 };
Point ( 7780 ) = { -2.62083333, 56.52500000, 0.00000000 };
Point ( 7781 ) = { -2.62916667, 56.52500000, 0.00000000 };
Point ( 7782 ) = { -2.63333333, 56.52083333, 0.00000000 };
Point ( 7783 ) = { -2.63750000, 56.51666667, 0.00000000 };
Point ( 7784 ) = { -2.64166667, 56.51250000, 0.00000000 };
Point ( 7785 ) = { -2.64583333, 56.50833333, 0.00000000 };
Point ( 7786 ) = { -2.65416667, 56.50833333, 0.00000000 };
Point ( 7787 ) = { -2.65833333, 56.50416667, 0.00000000 };
Point ( 7788 ) = { -2.66250000, 56.50000000, 0.00000000 };
Point ( 7789 ) = { -2.66666667, 56.49583333, 0.00000000 };
Point ( 7790 ) = { -2.67083333, 56.49166667, 0.00000000 };
Point ( 7791 ) = { -2.67500000, 56.48750000, 0.00000000 };
Point ( 7792 ) = { -2.67500000, 56.47916667, 0.00000000 };
Point ( 7793 ) = { -2.67083333, 56.47500000, 0.00000000 };
Point ( 7794 ) = { -2.66250000, 56.47500000, 0.00000000 };
Point ( 7795 ) = { -2.65833333, 56.47083333, 0.00000000 };
Point ( 7796 ) = { -2.65833333, 56.46250000, 0.00000000 };
Point ( 7797 ) = { -2.66250000, 56.45833333, 0.00000000 };
Point ( 7798 ) = { -2.67083333, 56.45833333, 0.00000000 };
Point ( 7799 ) = { -2.67916667, 56.45833333, 0.00000000 };
Point ( 7800 ) = { -2.68750000, 56.45833333, 0.00000000 };
Point ( 7801 ) = { -2.69166667, 56.45416667, 0.00000000 };
Point ( 7802 ) = { -2.69166667, 56.44583333, 0.00000000 };
Point ( 7803 ) = { -2.69166667, 56.43750000, 0.00000000 };
Point ( 7804 ) = { -2.68750000, 56.43333333, 0.00000000 };
Point ( 7805 ) = { -2.68333333, 56.42916667, 0.00000000 };
Point ( 7806 ) = { -2.68750000, 56.42500000, 0.00000000 };
Point ( 7807 ) = { -2.69583333, 56.42500000, 0.00000000 };
Point ( 7808 ) = { -2.70000000, 56.42083333, 0.00000000 };
Point ( 7809 ) = { -2.70416667, 56.41666667, 0.00000000 };
Point ( 7810 ) = { -2.71250000, 56.41666667, 0.00000000 };
Point ( 7811 ) = { -2.72083333, 56.41666667, 0.00000000 };
Point ( 7812 ) = { -2.72500000, 56.41250000, 0.00000000 };
Point ( 7813 ) = { -2.72916667, 56.40833333, 0.00000000 };
Point ( 7814 ) = { -2.73333333, 56.40416667, 0.00000000 };
Point ( 7815 ) = { -2.73750000, 56.40000000, 0.00000000 };
Point ( 7816 ) = { -2.74583333, 56.40000000, 0.00000000 };
Point ( 7817 ) = { -2.75000000, 56.39583333, 0.00000000 };
Point ( 7818 ) = { -2.75000000, 56.38750000, 0.00000000 };
Point ( 7819 ) = { -2.75000000, 56.37916667, 0.00000000 };
Point ( 7820 ) = { -2.75000000, 56.37083333, 0.00000000 };
Point ( 7821 ) = { -2.75000000, 56.36250000, 0.00000000 };
Point ( 7822 ) = { -2.74583333, 56.35833333, 0.00000000 };
Point ( 7823 ) = { -2.74166667, 56.35416667, 0.00000000 };
Point ( 7824 ) = { -2.74583333, 56.35000000, 0.00000000 };
Point ( 7825 ) = { -2.75000000, 56.34583333, 0.00000000 };
Point ( 7826 ) = { -2.74583333, 56.34166667, 0.00000000 };
Point ( 7827 ) = { -2.73750000, 56.34166667, 0.00000000 };
Point ( 7828 ) = { -2.73333333, 56.33750000, 0.00000000 };
Point ( 7829 ) = { -2.72916667, 56.33333333, 0.00000000 };
Point ( 7830 ) = { -2.72083333, 56.33333333, 0.00000000 };
Point ( 7831 ) = { -2.71250000, 56.33333333, 0.00000000 };
Point ( 7832 ) = { -2.70416667, 56.33333333, 0.00000000 };
Point ( 7833 ) = { -2.69583333, 56.33333333, 0.00000000 };
Point ( 7834 ) = { -2.68750000, 56.33333333, 0.00000000 };
Point ( 7835 ) = { -2.67916667, 56.33333333, 0.00000000 };
Point ( 7836 ) = { -2.67500000, 56.32916667, 0.00000000 };
Point ( 7837 ) = { -2.67083333, 56.32500000, 0.00000000 };
Point ( 7838 ) = { -2.66250000, 56.32500000, 0.00000000 };
Point ( 7839 ) = { -2.65416667, 56.32500000, 0.00000000 };
Point ( 7840 ) = { -2.65000000, 56.32083333, 0.00000000 };
Point ( 7841 ) = { -2.64583333, 56.31666667, 0.00000000 };
Point ( 7842 ) = { -2.64166667, 56.31250000, 0.00000000 };
Point ( 7843 ) = { -2.63750000, 56.30833333, 0.00000000 };
Point ( 7844 ) = { -2.62916667, 56.30833333, 0.00000000 };
Point ( 7845 ) = { -2.62083333, 56.30833333, 0.00000000 };
Point ( 7846 ) = { -2.61666667, 56.30416667, 0.00000000 };
Point ( 7847 ) = { -2.61250000, 56.30000000, 0.00000000 };
Point ( 7848 ) = { -2.60416667, 56.30000000, 0.00000000 };
Point ( 7849 ) = { -2.59583333, 56.30000000, 0.00000000 };
Point ( 7850 ) = { -2.58750000, 56.30000000, 0.00000000 };
Point ( 7851 ) = { -2.57916667, 56.30000000, 0.00000000 };
Point ( 7852 ) = { -2.57500000, 56.29583333, 0.00000000 };
Point ( 7853 ) = { -2.57500000, 56.28750000, 0.00000000 };
Point ( 7854 ) = { -2.57916667, 56.28333333, 0.00000000 };
Point ( 7855 ) = { -2.58333333, 56.27916667, 0.00000000 };
Point ( 7856 ) = { -2.58333333, 56.27083333, 0.00000000 };
Point ( 7857 ) = { -2.58750000, 56.26666667, 0.00000000 };
Point ( 7858 ) = { -2.59166667, 56.26250000, 0.00000000 };
Point ( 7859 ) = { -2.59583333, 56.25833333, 0.00000000 };
Point ( 7860 ) = { -2.60416667, 56.25833333, 0.00000000 };
Point ( 7861 ) = { -2.61250000, 56.25833333, 0.00000000 };
Point ( 7862 ) = { -2.61666667, 56.25416667, 0.00000000 };
Point ( 7863 ) = { -2.62083333, 56.25000000, 0.00000000 };
Point ( 7864 ) = { -2.62500000, 56.24583333, 0.00000000 };
Point ( 7865 ) = { -2.62916667, 56.24166667, 0.00000000 };
Point ( 7866 ) = { -2.63750000, 56.24166667, 0.00000000 };
Point ( 7867 ) = { -2.64583333, 56.24166667, 0.00000000 };
Point ( 7868 ) = { -2.65000000, 56.23750000, 0.00000000 };
Point ( 7869 ) = { -2.65416667, 56.23333333, 0.00000000 };
Point ( 7870 ) = { -2.65833333, 56.22916667, 0.00000000 };
Point ( 7871 ) = { -2.66250000, 56.22500000, 0.00000000 };
Point ( 7872 ) = { -2.67083333, 56.22500000, 0.00000000 };
Point ( 7873 ) = { -2.67916667, 56.22500000, 0.00000000 };
Point ( 7874 ) = { -2.68333333, 56.22083333, 0.00000000 };
Point ( 7875 ) = { -2.68750000, 56.21666667, 0.00000000 };
Point ( 7876 ) = { -2.69583333, 56.21666667, 0.00000000 };
Point ( 7877 ) = { -2.70000000, 56.21250000, 0.00000000 };
Point ( 7878 ) = { -2.70416667, 56.20833333, 0.00000000 };
Point ( 7879 ) = { -2.71250000, 56.20833333, 0.00000000 };
Point ( 7880 ) = { -2.72083333, 56.20833333, 0.00000000 };
Point ( 7881 ) = { -2.72916667, 56.20833333, 0.00000000 };
Point ( 7882 ) = { -2.73750000, 56.20833333, 0.00000000 };
Point ( 7883 ) = { -2.74166667, 56.20416667, 0.00000000 };
Point ( 7884 ) = { -2.74583333, 56.20000000, 0.00000000 };
Point ( 7885 ) = { -2.75416667, 56.20000000, 0.00000000 };
Point ( 7886 ) = { -2.76250000, 56.20000000, 0.00000000 };
Point ( 7887 ) = { -2.77083333, 56.20000000, 0.00000000 };
Point ( 7888 ) = { -2.77500000, 56.19583333, 0.00000000 };
Point ( 7889 ) = { -2.77916667, 56.19166667, 0.00000000 };
Point ( 7890 ) = { -2.78750000, 56.19166667, 0.00000000 };
Point ( 7891 ) = { -2.79166667, 56.18750000, 0.00000000 };
Point ( 7892 ) = { -2.79583333, 56.18333333, 0.00000000 };
Point ( 7893 ) = { -2.80416667, 56.18333333, 0.00000000 };
Point ( 7894 ) = { -2.81250000, 56.18333333, 0.00000000 };
Point ( 7895 ) = { -2.82083333, 56.18333333, 0.00000000 };
Point ( 7896 ) = { -2.82916667, 56.18333333, 0.00000000 };
Point ( 7897 ) = { -2.83750000, 56.18333333, 0.00000000 };
Point ( 7898 ) = { -2.84583333, 56.18333333, 0.00000000 };
Point ( 7899 ) = { -2.85000000, 56.17916667, 0.00000000 };
Point ( 7900 ) = { -2.85416667, 56.17500000, 0.00000000 };
Point ( 7901 ) = { -2.86250000, 56.17500000, 0.00000000 };
Point ( 7902 ) = { -2.86666667, 56.17916667, 0.00000000 };
Point ( 7903 ) = { -2.87083333, 56.18333333, 0.00000000 };
Point ( 7904 ) = { -2.87500000, 56.18750000, 0.00000000 };
Point ( 7905 ) = { -2.87916667, 56.19166667, 0.00000000 };
Point ( 7906 ) = { -2.88750000, 56.19166667, 0.00000000 };
Point ( 7907 ) = { -2.89583333, 56.19166667, 0.00000000 };
Point ( 7908 ) = { -2.90416667, 56.19166667, 0.00000000 };
Point ( 7909 ) = { -2.91250000, 56.19166667, 0.00000000 };
Point ( 7910 ) = { -2.92083333, 56.19166667, 0.00000000 };
Point ( 7911 ) = { -2.92916667, 56.19166667, 0.00000000 };
Point ( 7912 ) = { -2.93750000, 56.19166667, 0.00000000 };
Point ( 7913 ) = { -2.94583333, 56.19166667, 0.00000000 };
Point ( 7914 ) = { -2.95416667, 56.19166667, 0.00000000 };
Point ( 7915 ) = { -2.95833333, 56.18750000, 0.00000000 };
Point ( 7916 ) = { -2.96250000, 56.18333333, 0.00000000 };
Point ( 7917 ) = { -2.97083333, 56.18333333, 0.00000000 };
Point ( 7918 ) = { -2.97916667, 56.18333333, 0.00000000 };
Point ( 7919 ) = { -2.98333333, 56.17916667, 0.00000000 };
Point ( 7920 ) = { -2.98750000, 56.17500000, 0.00000000 };
Point ( 7921 ) = { -2.99583333, 56.17500000, 0.00000000 };
Point ( 7922 ) = { -3.00000000, 56.17083333, 0.00000000 };
Point ( 7923 ) = { -3.00416667, 56.16666667, 0.00000000 };
Point ( 7924 ) = { -3.01250000, 56.16666667, 0.00000000 };
Point ( 7925 ) = { -3.01666667, 56.16250000, 0.00000000 };
Point ( 7926 ) = { -3.02083333, 56.15833333, 0.00000000 };
Point ( 7927 ) = { -3.02916667, 56.15833333, 0.00000000 };
Point ( 7928 ) = { -3.03750000, 56.15833333, 0.00000000 };
Point ( 7929 ) = { -3.04166667, 56.15416667, 0.00000000 };
Point ( 7930 ) = { -3.04583333, 56.15000000, 0.00000000 };
Point ( 7931 ) = { -3.05000000, 56.14583333, 0.00000000 };
Point ( 7932 ) = { -3.05416667, 56.14166667, 0.00000000 };
Point ( 7933 ) = { -3.06250000, 56.14166667, 0.00000000 };
Point ( 7934 ) = { -3.06666667, 56.13750000, 0.00000000 };
Point ( 7935 ) = { -3.07083333, 56.13333333, 0.00000000 };
Point ( 7936 ) = { -3.07500000, 56.12916667, 0.00000000 };
Point ( 7937 ) = { -3.07916667, 56.12500000, 0.00000000 };
Point ( 7938 ) = { -3.08333333, 56.12083333, 0.00000000 };
Point ( 7939 ) = { -3.08750000, 56.11666667, 0.00000000 };
Point ( 7940 ) = { -3.09583333, 56.11666667, 0.00000000 };
Point ( 7941 ) = { -3.10000000, 56.11250000, 0.00000000 };
Point ( 7942 ) = { -3.10416667, 56.10833333, 0.00000000 };
Point ( 7943 ) = { -3.11250000, 56.10833333, 0.00000000 };
Point ( 7944 ) = { -3.11666667, 56.10416667, 0.00000000 };
Point ( 7945 ) = { -3.12083333, 56.10000000, 0.00000000 };
Point ( 7946 ) = { -3.12916667, 56.10000000, 0.00000000 };
Point ( 7947 ) = { -3.13333333, 56.09583333, 0.00000000 };
Point ( 7948 ) = { -3.13750000, 56.09166667, 0.00000000 };
Point ( 7949 ) = { -3.14583333, 56.09166667, 0.00000000 };
Point ( 7950 ) = { -3.15000000, 56.08750000, 0.00000000 };
Point ( 7951 ) = { -3.15000000, 56.07916667, 0.00000000 };
Point ( 7952 ) = { -3.15416667, 56.07500000, 0.00000000 };
Point ( 7953 ) = { -3.15833333, 56.07083333, 0.00000000 };
Point ( 7954 ) = { -3.16250000, 56.06666667, 0.00000000 };
Point ( 7955 ) = { -3.16666667, 56.06250000, 0.00000000 };
Point ( 7956 ) = { -3.17083333, 56.05833333, 0.00000000 };
Point ( 7957 ) = { -3.17916667, 56.05833333, 0.00000000 };
Point ( 7958 ) = { -3.18333333, 56.05416667, 0.00000000 };
Point ( 7959 ) = { -3.18750000, 56.05000000, 0.00000000 };
Point ( 7960 ) = { -3.19583333, 56.05000000, 0.00000000 };
Point ( 7961 ) = { -3.20416667, 56.05000000, 0.00000000 };
Point ( 7962 ) = { -3.21250000, 56.05000000, 0.00000000 };
Point ( 7963 ) = { -3.22083333, 56.05000000, 0.00000000 };
Point ( 7964 ) = { -3.22500000, 56.04583333, 0.00000000 };
Point ( 7965 ) = { -3.22916667, 56.04166667, 0.00000000 };
Point ( 7966 ) = { -3.23750000, 56.04166667, 0.00000000 };
Point ( 7967 ) = { -3.24166667, 56.03750000, 0.00000000 };
Point ( 7968 ) = { -3.23750000, 56.03333333, 0.00000000 };
Point ( 7969 ) = { -3.22916667, 56.03333333, 0.00000000 };
Point ( 7970 ) = { -3.22500000, 56.02916667, 0.00000000 };
Point ( 7971 ) = { -3.22083333, 56.02500000, 0.00000000 };
Point ( 7972 ) = { -3.21250000, 56.02500000, 0.00000000 };
Point ( 7973 ) = { -3.20833333, 56.02083333, 0.00000000 };
Point ( 7974 ) = { -3.20416667, 56.01666667, 0.00000000 };
Point ( 7975 ) = { -3.19583333, 56.01666667, 0.00000000 };
Point ( 7976 ) = { -3.18750000, 56.01666667, 0.00000000 };
Point ( 7977 ) = { -3.17916667, 56.01666667, 0.00000000 };
Point ( 7978 ) = { -3.17083333, 56.01666667, 0.00000000 };
Point ( 7979 ) = { -3.16250000, 56.01666667, 0.00000000 };
Point ( 7980 ) = { -3.15416667, 56.01666667, 0.00000000 };
Point ( 7981 ) = { -3.14583333, 56.01666667, 0.00000000 };
Point ( 7982 ) = { -3.14166667, 56.02083333, 0.00000000 };
Point ( 7983 ) = { -3.14166667, 56.02916667, 0.00000000 };
Point ( 7984 ) = { -3.14166667, 56.03750000, 0.00000000 };
Point ( 7985 ) = { -3.13750000, 56.04166667, 0.00000000 };
Point ( 7986 ) = { -3.12916667, 56.04166667, 0.00000000 };
Point ( 7987 ) = { -3.12500000, 56.03750000, 0.00000000 };
Point ( 7988 ) = { -3.12083333, 56.03333333, 0.00000000 };
Point ( 7989 ) = { -3.11666667, 56.02916667, 0.00000000 };
Point ( 7990 ) = { -3.11666667, 56.02083333, 0.00000000 };
Point ( 7991 ) = { -3.12083333, 56.01666667, 0.00000000 };
Point ( 7992 ) = { -3.12916667, 56.01666667, 0.00000000 };
Point ( 7993 ) = { -3.13750000, 56.01666667, 0.00000000 };
Point ( 7994 ) = { -3.14166667, 56.01250000, 0.00000000 };
Point ( 7995 ) = { -3.13750000, 56.00833333, 0.00000000 };
Point ( 7996 ) = { -3.13333333, 56.00416667, 0.00000000 };
Point ( 7997 ) = { -3.12916667, 56.00000000, 0.00000000 };
Point ( 7998 ) = { -3.12083333, 56.00000000, 0.00000000 };
Point ( 7999 ) = { -3.11666667, 55.99583333, 0.00000000 };
Point ( 8000 ) = { -3.11250000, 55.99166667, 0.00000000 };
Point ( 8001 ) = { -3.10833333, 55.98750000, 0.00000000 };
Point ( 8002 ) = { -3.10416667, 55.98333333, 0.00000000 };
Point ( 8003 ) = { -3.09583333, 55.98333333, 0.00000000 };
Point ( 8004 ) = { -3.08750000, 55.98333333, 0.00000000 };
Point ( 8005 ) = { -3.08333333, 55.97916667, 0.00000000 };
Point ( 8006 ) = { -3.07916667, 55.97500000, 0.00000000 };
Point ( 8007 ) = { -3.07083333, 55.97500000, 0.00000000 };
Point ( 8008 ) = { -3.06250000, 55.97500000, 0.00000000 };
Point ( 8009 ) = { -3.05416667, 55.97500000, 0.00000000 };
Point ( 8010 ) = { -3.04583333, 55.97500000, 0.00000000 };
Point ( 8011 ) = { -3.03750000, 55.97500000, 0.00000000 };
Point ( 8012 ) = { -3.02916667, 55.97500000, 0.00000000 };
Point ( 8013 ) = { -3.02083333, 55.97500000, 0.00000000 };
Point ( 8014 ) = { -3.01250000, 55.97500000, 0.00000000 };
Point ( 8015 ) = { -3.00416667, 55.97500000, 0.00000000 };
Point ( 8016 ) = { -3.00000000, 55.97083333, 0.00000000 };
Point ( 8017 ) = { -2.99583333, 55.96666667, 0.00000000 };
Point ( 8018 ) = { -2.98750000, 55.96666667, 0.00000000 };
Point ( 8019 ) = { -2.98333333, 55.97083333, 0.00000000 };
Point ( 8020 ) = { -2.98333333, 55.97916667, 0.00000000 };
Point ( 8021 ) = { -2.97916667, 55.98333333, 0.00000000 };
Point ( 8022 ) = { -2.97083333, 55.98333333, 0.00000000 };
Point ( 8023 ) = { -2.96666667, 55.98750000, 0.00000000 };
Point ( 8024 ) = { -2.96250000, 55.99166667, 0.00000000 };
Point ( 8025 ) = { -2.95416667, 55.99166667, 0.00000000 };
Point ( 8026 ) = { -2.94583333, 55.99166667, 0.00000000 };
Point ( 8027 ) = { -2.94166667, 55.99583333, 0.00000000 };
Point ( 8028 ) = { -2.93750000, 56.00000000, 0.00000000 };
Point ( 8029 ) = { -2.93333333, 56.00416667, 0.00000000 };
Point ( 8030 ) = { -2.92916667, 56.00833333, 0.00000000 };
Point ( 8031 ) = { -2.92500000, 56.01250000, 0.00000000 };
Point ( 8032 ) = { -2.92083333, 56.01666667, 0.00000000 };
Point ( 8033 ) = { -2.91666667, 56.02083333, 0.00000000 };
Point ( 8034 ) = { -2.91250000, 56.02500000, 0.00000000 };
Point ( 8035 ) = { -2.90833333, 56.02916667, 0.00000000 };
Point ( 8036 ) = { -2.90416667, 56.03333333, 0.00000000 };
Point ( 8037 ) = { -2.89583333, 56.03333333, 0.00000000 };
Point ( 8038 ) = { -2.89166667, 56.03750000, 0.00000000 };
Point ( 8039 ) = { -2.88750000, 56.04166667, 0.00000000 };
Point ( 8040 ) = { -2.87916667, 56.04166667, 0.00000000 };
Point ( 8041 ) = { -2.87500000, 56.04583333, 0.00000000 };
Point ( 8042 ) = { -2.87083333, 56.05000000, 0.00000000 };
Point ( 8043 ) = { -2.86250000, 56.05000000, 0.00000000 };
Point ( 8044 ) = { -2.85416667, 56.05000000, 0.00000000 };
Point ( 8045 ) = { -2.84583333, 56.05000000, 0.00000000 };
Point ( 8046 ) = { -2.84166667, 56.05416667, 0.00000000 };
Point ( 8047 ) = { -2.83750000, 56.05833333, 0.00000000 };
Point ( 8048 ) = { -2.83333333, 56.06250000, 0.00000000 };
Point ( 8049 ) = { -2.82916667, 56.06666667, 0.00000000 };
Point ( 8050 ) = { -2.82083333, 56.06666667, 0.00000000 };
Point ( 8051 ) = { -2.81666667, 56.07083333, 0.00000000 };
Point ( 8052 ) = { -2.81250000, 56.07500000, 0.00000000 };
Point ( 8053 ) = { -2.80416667, 56.07500000, 0.00000000 };
Point ( 8054 ) = { -2.79583333, 56.07500000, 0.00000000 };
Point ( 8055 ) = { -2.78750000, 56.07500000, 0.00000000 };
Point ( 8056 ) = { -2.77916667, 56.07500000, 0.00000000 };
Point ( 8057 ) = { -2.77083333, 56.07500000, 0.00000000 };
Point ( 8058 ) = { -2.76250000, 56.07500000, 0.00000000 };
Point ( 8059 ) = { -2.75833333, 56.07083333, 0.00000000 };
Point ( 8060 ) = { -2.75416667, 56.06666667, 0.00000000 };
Point ( 8061 ) = { -2.74583333, 56.06666667, 0.00000000 };
Point ( 8062 ) = { -2.73750000, 56.06666667, 0.00000000 };
Point ( 8063 ) = { -2.73333333, 56.07083333, 0.00000000 };
Point ( 8064 ) = { -2.72916667, 56.07500000, 0.00000000 };
Point ( 8065 ) = { -2.72083333, 56.07500000, 0.00000000 };
Point ( 8066 ) = { -2.71666667, 56.07083333, 0.00000000 };
Point ( 8067 ) = { -2.71250000, 56.06666667, 0.00000000 };
Point ( 8068 ) = { -2.70416667, 56.06666667, 0.00000000 };
Point ( 8069 ) = { -2.69583333, 56.06666667, 0.00000000 };
Point ( 8070 ) = { -2.68750000, 56.06666667, 0.00000000 };
Point ( 8071 ) = { -2.67916667, 56.06666667, 0.00000000 };
Point ( 8072 ) = { -2.67083333, 56.06666667, 0.00000000 };
Point ( 8073 ) = { -2.66250000, 56.06666667, 0.00000000 };
Point ( 8074 ) = { -2.65416667, 56.06666667, 0.00000000 };
Point ( 8075 ) = { -2.64583333, 56.06666667, 0.00000000 };
Point ( 8076 ) = { -2.64166667, 56.06250000, 0.00000000 };
Point ( 8077 ) = { -2.63750000, 56.05833333, 0.00000000 };
Point ( 8078 ) = { -2.62916667, 56.05833333, 0.00000000 };
Point ( 8079 ) = { -2.62083333, 56.05833333, 0.00000000 };
Point ( 8080 ) = { -2.61666667, 56.05416667, 0.00000000 };
Point ( 8081 ) = { -2.61250000, 56.05000000, 0.00000000 };
Point ( 8082 ) = { -2.60416667, 56.05000000, 0.00000000 };
Point ( 8083 ) = { -2.60000000, 56.04583333, 0.00000000 };
Point ( 8084 ) = { -2.59583333, 56.04166667, 0.00000000 };
Point ( 8085 ) = { -2.59166667, 56.03750000, 0.00000000 };
Point ( 8086 ) = { -2.58750000, 56.03333333, 0.00000000 };
Point ( 8087 ) = { -2.57916667, 56.03333333, 0.00000000 };
Point ( 8088 ) = { -2.57500000, 56.02916667, 0.00000000 };
Point ( 8089 ) = { -2.57083333, 56.02500000, 0.00000000 };
Point ( 8090 ) = { -2.56250000, 56.02500000, 0.00000000 };
Point ( 8091 ) = { -2.55833333, 56.02083333, 0.00000000 };
Point ( 8092 ) = { -2.55416667, 56.01666667, 0.00000000 };
Point ( 8093 ) = { -2.54583333, 56.01666667, 0.00000000 };
Point ( 8094 ) = { -2.53750000, 56.01666667, 0.00000000 };
Point ( 8095 ) = { -2.52916667, 56.01666667, 0.00000000 };
Point ( 8096 ) = { -2.52083333, 56.01666667, 0.00000000 };
Point ( 8097 ) = { -2.51666667, 56.01250000, 0.00000000 };
Point ( 8098 ) = { -2.51250000, 56.00833333, 0.00000000 };
Point ( 8099 ) = { -2.50416667, 56.00833333, 0.00000000 };
Point ( 8100 ) = { -2.49583333, 56.00833333, 0.00000000 };
Point ( 8101 ) = { -2.48750000, 56.00833333, 0.00000000 };
Point ( 8102 ) = { -2.47916667, 56.00833333, 0.00000000 };
Point ( 8103 ) = { -2.47500000, 56.00416667, 0.00000000 };
Point ( 8104 ) = { -2.47083333, 56.00000000, 0.00000000 };
Point ( 8105 ) = { -2.46250000, 56.00000000, 0.00000000 };
Point ( 8106 ) = { -2.45416667, 56.00000000, 0.00000000 };
Point ( 8107 ) = { -2.44583333, 56.00000000, 0.00000000 };
Point ( 8108 ) = { -2.44166667, 55.99583333, 0.00000000 };
Point ( 8109 ) = { -2.43750000, 55.99166667, 0.00000000 };
Point ( 8110 ) = { -2.43333333, 55.98750000, 0.00000000 };
Point ( 8111 ) = { -2.42916667, 55.98333333, 0.00000000 };
Point ( 8112 ) = { -2.42083333, 55.98333333, 0.00000000 };
Point ( 8113 ) = { -2.41250000, 55.98333333, 0.00000000 };
Point ( 8114 ) = { -2.40833333, 55.97916667, 0.00000000 };
Point ( 8115 ) = { -2.40416667, 55.97500000, 0.00000000 };
Point ( 8116 ) = { -2.39583333, 55.97500000, 0.00000000 };
Point ( 8117 ) = { -2.39166667, 55.97083333, 0.00000000 };
Point ( 8118 ) = { -2.38750000, 55.96666667, 0.00000000 };
Point ( 8119 ) = { -2.38333333, 55.96250000, 0.00000000 };
Point ( 8120 ) = { -2.37916667, 55.95833333, 0.00000000 };
Point ( 8121 ) = { -2.37083333, 55.95833333, 0.00000000 };
Point ( 8122 ) = { -2.36666667, 55.95416667, 0.00000000 };
Point ( 8123 ) = { -2.36250000, 55.95000000, 0.00000000 };
Point ( 8124 ) = { -2.35416667, 55.95000000, 0.00000000 };
Point ( 8125 ) = { -2.35000000, 55.94583333, 0.00000000 };
Point ( 8126 ) = { -2.34583333, 55.94166667, 0.00000000 };
Point ( 8127 ) = { -2.33750000, 55.94166667, 0.00000000 };
Point ( 8128 ) = { -2.32916667, 55.94166667, 0.00000000 };
Point ( 8129 ) = { -2.32083333, 55.94166667, 0.00000000 };
Point ( 8130 ) = { -2.31250000, 55.94166667, 0.00000000 };
Point ( 8131 ) = { -2.30833333, 55.93750000, 0.00000000 };
Point ( 8132 ) = { -2.30416667, 55.93333333, 0.00000000 };
Point ( 8133 ) = { -2.29583333, 55.93333333, 0.00000000 };
Point ( 8134 ) = { -2.28750000, 55.93333333, 0.00000000 };
Point ( 8135 ) = { -2.27916667, 55.93333333, 0.00000000 };
Point ( 8136 ) = { -2.27500000, 55.92916667, 0.00000000 };
Point ( 8137 ) = { -2.27083333, 55.92500000, 0.00000000 };
Point ( 8138 ) = { -2.26250000, 55.92500000, 0.00000000 };
Point ( 8139 ) = { -2.25416667, 55.92500000, 0.00000000 };
Point ( 8140 ) = { -2.25000000, 55.92916667, 0.00000000 };
Point ( 8141 ) = { -2.24583333, 55.93333333, 0.00000000 };
Point ( 8142 ) = { -2.23750000, 55.93333333, 0.00000000 };
Point ( 8143 ) = { -2.23333333, 55.93750000, 0.00000000 };
Point ( 8144 ) = { -2.22916667, 55.94166667, 0.00000000 };
Point ( 8145 ) = { -2.22083333, 55.94166667, 0.00000000 };
Point ( 8146 ) = { -2.21666667, 55.93750000, 0.00000000 };
Point ( 8147 ) = { -2.21250000, 55.93333333, 0.00000000 };
Point ( 8148 ) = { -2.20416667, 55.93333333, 0.00000000 };
Point ( 8149 ) = { -2.20000000, 55.92916667, 0.00000000 };
Point ( 8150 ) = { -2.19583333, 55.92500000, 0.00000000 };
Point ( 8151 ) = { -2.18750000, 55.92500000, 0.00000000 };
Point ( 8152 ) = { -2.17916667, 55.92500000, 0.00000000 };
Point ( 8153 ) = { -2.17500000, 55.92083333, 0.00000000 };
Point ( 8154 ) = { -2.17083333, 55.91666667, 0.00000000 };
Point ( 8155 ) = { -2.16666667, 55.92083333, 0.00000000 };
Point ( 8156 ) = { -2.16250000, 55.92500000, 0.00000000 };
Point ( 8157 ) = { -2.15416667, 55.92500000, 0.00000000 };
Point ( 8158 ) = { -2.14583333, 55.92500000, 0.00000000 };
Point ( 8159 ) = { -2.14166667, 55.92083333, 0.00000000 };
Point ( 8160 ) = { -2.13750000, 55.91666667, 0.00000000 };
Point ( 8161 ) = { -2.12916667, 55.91666667, 0.00000000 };
Point ( 8162 ) = { -2.12500000, 55.91250000, 0.00000000 };
Point ( 8163 ) = { -2.12500000, 55.90416667, 0.00000000 };
Point ( 8164 ) = { -2.12500000, 55.89583333, 0.00000000 };
Point ( 8165 ) = { -2.12500000, 55.88750000, 0.00000000 };
Point ( 8166 ) = { -2.12083333, 55.88333333, 0.00000000 };
Point ( 8167 ) = { -2.11250000, 55.88333333, 0.00000000 };
Point ( 8168 ) = { -2.10416667, 55.88333333, 0.00000000 };
Point ( 8169 ) = { -2.09583333, 55.88333333, 0.00000000 };
Point ( 8170 ) = { -2.09166667, 55.87916667, 0.00000000 };
Point ( 8171 ) = { -2.08750000, 55.87500000, 0.00000000 };
Point ( 8172 ) = { -2.07916667, 55.87500000, 0.00000000 };
Point ( 8173 ) = { -2.07500000, 55.87083333, 0.00000000 };
Point ( 8174 ) = { -2.07083333, 55.86666667, 0.00000000 };
Point ( 8175 ) = { -2.06666667, 55.86250000, 0.00000000 };
Point ( 8176 ) = { -2.06666667, 55.85416667, 0.00000000 };
Point ( 8177 ) = { -2.06250000, 55.85000000, 0.00000000 };
Point ( 8178 ) = { -2.05833333, 55.84583333, 0.00000000 };
Point ( 8179 ) = { -2.05416667, 55.84166667, 0.00000000 };
Point ( 8180 ) = { -2.05000000, 55.83750000, 0.00000000 };
Point ( 8181 ) = { -2.05000000, 55.82916667, 0.00000000 };
Point ( 8182 ) = { -2.04583333, 55.82500000, 0.00000000 };
Point ( 8183 ) = { -2.03750000, 55.82500000, 0.00000000 };
Point ( 8184 ) = { -2.03333333, 55.82083333, 0.00000000 };
Point ( 8185 ) = { -2.02916667, 55.81666667, 0.00000000 };
Point ( 8186 ) = { -2.02500000, 55.81250000, 0.00000000 };
Point ( 8187 ) = { -2.02083333, 55.80833333, 0.00000000 };
Point ( 8188 ) = { -2.01666667, 55.80416667, 0.00000000 };
Point ( 8189 ) = { -2.01250000, 55.80000000, 0.00000000 };
Point ( 8190 ) = { -2.00833333, 55.79583333, 0.00000000 };
Point ( 8191 ) = { -2.00416667, 55.79166667, 0.00000000 };
Point ( 8192 ) = { -2.00000000, 55.78750000, 0.00000000 };
Point ( 8193 ) = { -1.99583333, 55.78333333, 0.00000000 };
Point ( 8194 ) = { -1.98750000, 55.78333333, 0.00000000 };
Point ( 8195 ) = { -1.98333333, 55.77916667, 0.00000000 };
Point ( 8196 ) = { -1.97916667, 55.77500000, 0.00000000 };
Point ( 8197 ) = { -1.97500000, 55.77083333, 0.00000000 };
Point ( 8198 ) = { -1.97500000, 55.76250000, 0.00000000 };
Point ( 8199 ) = { -1.97083333, 55.75833333, 0.00000000 };
Point ( 8200 ) = { -1.96666667, 55.75416667, 0.00000000 };
Point ( 8201 ) = { -1.96250000, 55.75000000, 0.00000000 };
Point ( 8202 ) = { -1.95833333, 55.74583333, 0.00000000 };
Point ( 8203 ) = { -1.95416667, 55.74166667, 0.00000000 };
Point ( 8204 ) = { -1.94583333, 55.74166667, 0.00000000 };
Point ( 8205 ) = { -1.94166667, 55.73750000, 0.00000000 };
Point ( 8206 ) = { -1.93750000, 55.73333333, 0.00000000 };
Point ( 8207 ) = { -1.93333333, 55.72916667, 0.00000000 };
Point ( 8208 ) = { -1.92916667, 55.72500000, 0.00000000 };
Point ( 8209 ) = { -1.92083333, 55.72500000, 0.00000000 };
Point ( 8210 ) = { -1.91666667, 55.72083333, 0.00000000 };
Point ( 8211 ) = { -1.91250000, 55.71666667, 0.00000000 };
Point ( 8212 ) = { -1.90416667, 55.71666667, 0.00000000 };
Point ( 8213 ) = { -1.89583333, 55.71666667, 0.00000000 };
Point ( 8214 ) = { -1.88750000, 55.71666667, 0.00000000 };
Point ( 8215 ) = { -1.88333333, 55.71250000, 0.00000000 };
Point ( 8216 ) = { -1.87916667, 55.70833333, 0.00000000 };
Point ( 8217 ) = { -1.87083333, 55.70833333, 0.00000000 };
Point ( 8218 ) = { -1.86666667, 55.71250000, 0.00000000 };
Point ( 8219 ) = { -1.86250000, 55.71666667, 0.00000000 };
Point ( 8220 ) = { -1.85416667, 55.71666667, 0.00000000 };
Point ( 8221 ) = { -1.84583333, 55.71666667, 0.00000000 };
Point ( 8222 ) = { -1.83750000, 55.71666667, 0.00000000 };
Point ( 8223 ) = { -1.83333333, 55.71250000, 0.00000000 };
Point ( 8224 ) = { -1.82916667, 55.70833333, 0.00000000 };
Point ( 8225 ) = { -1.82500000, 55.70416667, 0.00000000 };
Point ( 8226 ) = { -1.82083333, 55.70000000, 0.00000000 };
Point ( 8227 ) = { -1.81250000, 55.70000000, 0.00000000 };
Point ( 8228 ) = { -1.80416667, 55.70000000, 0.00000000 };
Point ( 8229 ) = { -1.79583333, 55.70000000, 0.00000000 };
Point ( 8230 ) = { -1.78750000, 55.70000000, 0.00000000 };
Point ( 8231 ) = { -1.78333333, 55.69583333, 0.00000000 };
Point ( 8232 ) = { -1.77916667, 55.69166667, 0.00000000 };
Point ( 8233 ) = { -1.77083333, 55.69166667, 0.00000000 };
Point ( 8234 ) = { -1.76666667, 55.68750000, 0.00000000 };
Point ( 8235 ) = { -1.76250000, 55.68333333, 0.00000000 };
Point ( 8236 ) = { -1.75833333, 55.67916667, 0.00000000 };
Point ( 8237 ) = { -1.75833333, 55.67083333, 0.00000000 };
Point ( 8238 ) = { -1.75833333, 55.66250000, 0.00000000 };
Point ( 8239 ) = { -1.75833333, 55.65416667, 0.00000000 };
Point ( 8240 ) = { -1.75416667, 55.65000000, 0.00000000 };
Point ( 8241 ) = { -1.75000000, 55.64583333, 0.00000000 };
Point ( 8242 ) = { -1.74583333, 55.64166667, 0.00000000 };
Point ( 8243 ) = { -1.74166667, 55.63750000, 0.00000000 };
Point ( 8244 ) = { -1.73750000, 55.63333333, 0.00000000 };
Point ( 8245 ) = { -1.72916667, 55.63333333, 0.00000000 };
Point ( 8246 ) = { -1.72500000, 55.62916667, 0.00000000 };
Point ( 8247 ) = { -1.72083333, 55.62500000, 0.00000000 };
Point ( 8248 ) = { -1.71250000, 55.62500000, 0.00000000 };
Point ( 8249 ) = { -1.70416667, 55.62500000, 0.00000000 };
Point ( 8250 ) = { -1.70000000, 55.62083333, 0.00000000 };
Point ( 8251 ) = { -1.69583333, 55.61666667, 0.00000000 };
Point ( 8252 ) = { -1.69166667, 55.61250000, 0.00000000 };
Point ( 8253 ) = { -1.68750000, 55.60833333, 0.00000000 };
Point ( 8254 ) = { -1.67916667, 55.60833333, 0.00000000 };
Point ( 8255 ) = { -1.67500000, 55.60416667, 0.00000000 };
Point ( 8256 ) = { -1.67083333, 55.60000000, 0.00000000 };
Point ( 8257 ) = { -1.66250000, 55.60000000, 0.00000000 };
Point ( 8258 ) = { -1.65833333, 55.59583333, 0.00000000 };
Point ( 8259 ) = { -1.65416667, 55.59166667, 0.00000000 };
Point ( 8260 ) = { -1.64583333, 55.59166667, 0.00000000 };
Point ( 8261 ) = { -1.64166667, 55.58750000, 0.00000000 };
Point ( 8262 ) = { -1.63750000, 55.58333333, 0.00000000 };
Point ( 8263 ) = { -1.62916667, 55.58333333, 0.00000000 };
Point ( 8264 ) = { -1.62500000, 55.57916667, 0.00000000 };
Point ( 8265 ) = { -1.62500000, 55.57083333, 0.00000000 };
Point ( 8266 ) = { -1.62083333, 55.56666667, 0.00000000 };
Point ( 8267 ) = { -1.61666667, 55.56250000, 0.00000000 };
Point ( 8268 ) = { -1.61666667, 55.55416667, 0.00000000 };
Point ( 8269 ) = { -1.61666667, 55.54583333, 0.00000000 };
Point ( 8270 ) = { -1.61666667, 55.53750000, 0.00000000 };
Point ( 8271 ) = { -1.61250000, 55.53333333, 0.00000000 };
Point ( 8272 ) = { -1.60833333, 55.52916667, 0.00000000 };
Point ( 8273 ) = { -1.60833333, 55.52083333, 0.00000000 };
Point ( 8274 ) = { -1.60416667, 55.51666667, 0.00000000 };
Point ( 8275 ) = { -1.60000000, 55.51250000, 0.00000000 };
Point ( 8276 ) = { -1.60000000, 55.50416667, 0.00000000 };
Point ( 8277 ) = { -1.59583333, 55.50000000, 0.00000000 };
Point ( 8278 ) = { -1.59166667, 55.49583333, 0.00000000 };
Point ( 8279 ) = { -1.59166667, 55.48750000, 0.00000000 };
Point ( 8280 ) = { -1.58750000, 55.48333333, 0.00000000 };
Point ( 8281 ) = { -1.58333333, 55.47916667, 0.00000000 };
Point ( 8282 ) = { -1.58333333, 55.47083333, 0.00000000 };
Point ( 8283 ) = { -1.58333333, 55.46250000, 0.00000000 };
Point ( 8284 ) = { -1.58333333, 55.45416667, 0.00000000 };
Point ( 8285 ) = { -1.58333333, 55.44583333, 0.00000000 };
Point ( 8286 ) = { -1.57916667, 55.44166667, 0.00000000 };
Point ( 8287 ) = { -1.57500000, 55.43750000, 0.00000000 };
Point ( 8288 ) = { -1.57083333, 55.43333333, 0.00000000 };
Point ( 8289 ) = { -1.56666667, 55.42916667, 0.00000000 };
Point ( 8290 ) = { -1.56250000, 55.42500000, 0.00000000 };
Point ( 8291 ) = { -1.55833333, 55.42083333, 0.00000000 };
Point ( 8292 ) = { -1.55833333, 55.41250000, 0.00000000 };
Point ( 8293 ) = { -1.55833333, 55.40416667, 0.00000000 };
Point ( 8294 ) = { -1.55833333, 55.39583333, 0.00000000 };
Point ( 8295 ) = { -1.56250000, 55.39166667, 0.00000000 };
Point ( 8296 ) = { -1.57083333, 55.39166667, 0.00000000 };
Point ( 8297 ) = { -1.57500000, 55.38750000, 0.00000000 };
Point ( 8298 ) = { -1.57500000, 55.37916667, 0.00000000 };
Point ( 8299 ) = { -1.57500000, 55.37083333, 0.00000000 };
Point ( 8300 ) = { -1.57500000, 55.36250000, 0.00000000 };
Point ( 8301 ) = { -1.57083333, 55.35833333, 0.00000000 };
Point ( 8302 ) = { -1.56666667, 55.35416667, 0.00000000 };
Point ( 8303 ) = { -1.56250000, 55.35000000, 0.00000000 };
Point ( 8304 ) = { -1.55416667, 55.35000000, 0.00000000 };
Point ( 8305 ) = { -1.55000000, 55.34583333, 0.00000000 };
Point ( 8306 ) = { -1.54583333, 55.34166667, 0.00000000 };
Point ( 8307 ) = { -1.53750000, 55.34166667, 0.00000000 };
Point ( 8308 ) = { -1.53333333, 55.33750000, 0.00000000 };
Point ( 8309 ) = { -1.53333333, 55.32916667, 0.00000000 };
Point ( 8310 ) = { -1.53333333, 55.32083333, 0.00000000 };
Point ( 8311 ) = { -1.53333333, 55.31250000, 0.00000000 };
Point ( 8312 ) = { -1.53333333, 55.30416667, 0.00000000 };
Point ( 8313 ) = { -1.53333333, 55.29583333, 0.00000000 };
Point ( 8314 ) = { -1.53750000, 55.29166667, 0.00000000 };
Point ( 8315 ) = { -1.54583333, 55.29166667, 0.00000000 };
Point ( 8316 ) = { -1.55000000, 55.28750000, 0.00000000 };
Point ( 8317 ) = { -1.55000000, 55.27916667, 0.00000000 };
Point ( 8318 ) = { -1.55000000, 55.27083333, 0.00000000 };
Point ( 8319 ) = { -1.54583333, 55.26666667, 0.00000000 };
Point ( 8320 ) = { -1.54166667, 55.26250000, 0.00000000 };
Point ( 8321 ) = { -1.54166667, 55.25416667, 0.00000000 };
Point ( 8322 ) = { -1.53750000, 55.25000000, 0.00000000 };
Point ( 8323 ) = { -1.53333333, 55.24583333, 0.00000000 };
Point ( 8324 ) = { -1.52916667, 55.24166667, 0.00000000 };
Point ( 8325 ) = { -1.52500000, 55.23750000, 0.00000000 };
Point ( 8326 ) = { -1.52083333, 55.23333333, 0.00000000 };
Point ( 8327 ) = { -1.51666667, 55.22916667, 0.00000000 };
Point ( 8328 ) = { -1.51666667, 55.22083333, 0.00000000 };
Point ( 8329 ) = { -1.51250000, 55.21666667, 0.00000000 };
Point ( 8330 ) = { -1.50833333, 55.21250000, 0.00000000 };
Point ( 8331 ) = { -1.50416667, 55.20833333, 0.00000000 };
Point ( 8332 ) = { -1.50000000, 55.20416667, 0.00000000 };
Point ( 8333 ) = { -1.49583333, 55.20000000, 0.00000000 };
Point ( 8334 ) = { -1.49166667, 55.19583333, 0.00000000 };
Point ( 8335 ) = { -1.49166667, 55.18750000, 0.00000000 };
Point ( 8336 ) = { -1.49583333, 55.18333333, 0.00000000 };
Point ( 8337 ) = { -1.50000000, 55.17916667, 0.00000000 };
Point ( 8338 ) = { -1.50000000, 55.17083333, 0.00000000 };
Point ( 8339 ) = { -1.50000000, 55.16250000, 0.00000000 };
Point ( 8340 ) = { -1.50000000, 55.15416667, 0.00000000 };
Point ( 8341 ) = { -1.50000000, 55.14583333, 0.00000000 };
Point ( 8342 ) = { -1.49583333, 55.14166667, 0.00000000 };
Point ( 8343 ) = { -1.48750000, 55.14166667, 0.00000000 };
Point ( 8344 ) = { -1.48333333, 55.13750000, 0.00000000 };
Point ( 8345 ) = { -1.48333333, 55.12916667, 0.00000000 };
Point ( 8346 ) = { -1.47916667, 55.12500000, 0.00000000 };
Point ( 8347 ) = { -1.47500000, 55.12083333, 0.00000000 };
Point ( 8348 ) = { -1.47500000, 55.11250000, 0.00000000 };
Point ( 8349 ) = { -1.47500000, 55.10416667, 0.00000000 };
Point ( 8350 ) = { -1.47083333, 55.10000000, 0.00000000 };
Point ( 8351 ) = { -1.46666667, 55.09583333, 0.00000000 };
Point ( 8352 ) = { -1.46250000, 55.09166667, 0.00000000 };
Point ( 8353 ) = { -1.45833333, 55.08750000, 0.00000000 };
Point ( 8354 ) = { -1.45416667, 55.08333333, 0.00000000 };
Point ( 8355 ) = { -1.45000000, 55.07916667, 0.00000000 };
Point ( 8356 ) = { -1.44583333, 55.07500000, 0.00000000 };
Point ( 8357 ) = { -1.44166667, 55.07083333, 0.00000000 };
Point ( 8358 ) = { -1.43750000, 55.06666667, 0.00000000 };
Point ( 8359 ) = { -1.43333333, 55.06250000, 0.00000000 };
Point ( 8360 ) = { -1.42916667, 55.05833333, 0.00000000 };
Point ( 8361 ) = { -1.42500000, 55.05416667, 0.00000000 };
Point ( 8362 ) = { -1.42500000, 55.04583333, 0.00000000 };
Point ( 8363 ) = { -1.42083333, 55.04166667, 0.00000000 };
Point ( 8364 ) = { -1.41666667, 55.03750000, 0.00000000 };
Point ( 8365 ) = { -1.41250000, 55.03333333, 0.00000000 };
Point ( 8366 ) = { -1.40833333, 55.02916667, 0.00000000 };
Point ( 8367 ) = { -1.40833333, 55.02083333, 0.00000000 };
Point ( 8368 ) = { -1.40416667, 55.01666667, 0.00000000 };
Point ( 8369 ) = { -1.40000000, 55.01250000, 0.00000000 };
Point ( 8370 ) = { -1.40000000, 55.00416667, 0.00000000 };
Point ( 8371 ) = { -1.39583333, 55.00000000, 0.00000000 };
Point ( 8372 ) = { -1.39166667, 54.99583333, 0.00000000 };
Point ( 8373 ) = { -1.38750000, 54.99166667, 0.00000000 };
Point ( 8374 ) = { -1.37916667, 54.99166667, 0.00000000 };
Point ( 8375 ) = { -1.37500000, 54.98750000, 0.00000000 };
Point ( 8376 ) = { -1.37083333, 54.98333333, 0.00000000 };
Point ( 8377 ) = { -1.36666667, 54.97916667, 0.00000000 };
Point ( 8378 ) = { -1.36250000, 54.97500000, 0.00000000 };
Point ( 8379 ) = { -1.35416667, 54.97500000, 0.00000000 };
Point ( 8380 ) = { -1.35000000, 54.97083333, 0.00000000 };
Point ( 8381 ) = { -1.35000000, 54.96250000, 0.00000000 };
Point ( 8382 ) = { -1.34583333, 54.95833333, 0.00000000 };
Point ( 8383 ) = { -1.34166667, 54.95416667, 0.00000000 };
Point ( 8384 ) = { -1.34166667, 54.94583333, 0.00000000 };
Point ( 8385 ) = { -1.34583333, 54.94166667, 0.00000000 };
Point ( 8386 ) = { -1.35000000, 54.93750000, 0.00000000 };
Point ( 8387 ) = { -1.35000000, 54.92916667, 0.00000000 };
Point ( 8388 ) = { -1.35000000, 54.92083333, 0.00000000 };
Point ( 8389 ) = { -1.34583333, 54.91666667, 0.00000000 };
Point ( 8390 ) = { -1.34166667, 54.91250000, 0.00000000 };
Point ( 8391 ) = { -1.33750000, 54.90833333, 0.00000000 };
Point ( 8392 ) = { -1.33333333, 54.90416667, 0.00000000 };
Point ( 8393 ) = { -1.33333333, 54.89583333, 0.00000000 };
Point ( 8394 ) = { -1.33750000, 54.89166667, 0.00000000 };
Point ( 8395 ) = { -1.34166667, 54.88750000, 0.00000000 };
Point ( 8396 ) = { -1.34166667, 54.87916667, 0.00000000 };
Point ( 8397 ) = { -1.33750000, 54.87500000, 0.00000000 };
Point ( 8398 ) = { -1.33333333, 54.87083333, 0.00000000 };
Point ( 8399 ) = { -1.33333333, 54.86250000, 0.00000000 };
Point ( 8400 ) = { -1.32916667, 54.85833333, 0.00000000 };
Point ( 8401 ) = { -1.32500000, 54.85416667, 0.00000000 };
Point ( 8402 ) = { -1.32500000, 54.84583333, 0.00000000 };
Point ( 8403 ) = { -1.32083333, 54.84166667, 0.00000000 };
Point ( 8404 ) = { -1.31666667, 54.83750000, 0.00000000 };
Point ( 8405 ) = { -1.31250000, 54.83333333, 0.00000000 };
Point ( 8406 ) = { -1.30833333, 54.82916667, 0.00000000 };
Point ( 8407 ) = { -1.30833333, 54.82083333, 0.00000000 };
Point ( 8408 ) = { -1.30416667, 54.81666667, 0.00000000 };
Point ( 8409 ) = { -1.30000000, 54.81250000, 0.00000000 };
Point ( 8410 ) = { -1.30000000, 54.80416667, 0.00000000 };
Point ( 8411 ) = { -1.30000000, 54.79583333, 0.00000000 };
Point ( 8412 ) = { -1.29583333, 54.79166667, 0.00000000 };
Point ( 8413 ) = { -1.29166667, 54.78750000, 0.00000000 };
Point ( 8414 ) = { -1.28750000, 54.78333333, 0.00000000 };
Point ( 8415 ) = { -1.28333333, 54.77916667, 0.00000000 };
Point ( 8416 ) = { -1.28333333, 54.77083333, 0.00000000 };
Point ( 8417 ) = { -1.27916667, 54.76666667, 0.00000000 };
Point ( 8418 ) = { -1.27083333, 54.76666667, 0.00000000 };
Point ( 8419 ) = { -1.26666667, 54.76250000, 0.00000000 };
Point ( 8420 ) = { -1.26250000, 54.75833333, 0.00000000 };
Point ( 8421 ) = { -1.25833333, 54.75416667, 0.00000000 };
Point ( 8422 ) = { -1.25416667, 54.75000000, 0.00000000 };
Point ( 8423 ) = { -1.25000000, 54.74583333, 0.00000000 };
Point ( 8424 ) = { -1.24583333, 54.74166667, 0.00000000 };
Point ( 8425 ) = { -1.24166667, 54.73750000, 0.00000000 };
Point ( 8426 ) = { -1.23750000, 54.73333333, 0.00000000 };
Point ( 8427 ) = { -1.23333333, 54.72916667, 0.00000000 };
Point ( 8428 ) = { -1.22916667, 54.72500000, 0.00000000 };
Point ( 8429 ) = { -1.22083333, 54.72500000, 0.00000000 };
Point ( 8430 ) = { -1.21250000, 54.72500000, 0.00000000 };
Point ( 8431 ) = { -1.20416667, 54.72500000, 0.00000000 };
Point ( 8432 ) = { -1.20000000, 54.72083333, 0.00000000 };
Point ( 8433 ) = { -1.19583333, 54.71666667, 0.00000000 };
Point ( 8434 ) = { -1.18750000, 54.71666667, 0.00000000 };
Point ( 8435 ) = { -1.18333333, 54.71250000, 0.00000000 };
Point ( 8436 ) = { -1.17916667, 54.70833333, 0.00000000 };
Point ( 8437 ) = { -1.17500000, 54.70416667, 0.00000000 };
Point ( 8438 ) = { -1.17083333, 54.70000000, 0.00000000 };
Point ( 8439 ) = { -1.16666667, 54.69583333, 0.00000000 };
Point ( 8440 ) = { -1.16666667, 54.68750000, 0.00000000 };
Point ( 8441 ) = { -1.16666667, 54.67916667, 0.00000000 };
Point ( 8442 ) = { -1.16666667, 54.67083333, 0.00000000 };
Point ( 8443 ) = { -1.16250000, 54.66666667, 0.00000000 };
Point ( 8444 ) = { -1.15833333, 54.66250000, 0.00000000 };
Point ( 8445 ) = { -1.16250000, 54.65833333, 0.00000000 };
Point ( 8446 ) = { -1.16666667, 54.65416667, 0.00000000 };
Point ( 8447 ) = { -1.16666667, 54.64583333, 0.00000000 };
Point ( 8448 ) = { -1.16666667, 54.63750000, 0.00000000 };
Point ( 8449 ) = { -1.16250000, 54.63333333, 0.00000000 };
Point ( 8450 ) = { -1.15416667, 54.63333333, 0.00000000 };
Point ( 8451 ) = { -1.15000000, 54.63750000, 0.00000000 };
Point ( 8452 ) = { -1.14583333, 54.64166667, 0.00000000 };
Point ( 8453 ) = { -1.14166667, 54.64583333, 0.00000000 };
Point ( 8454 ) = { -1.13750000, 54.65000000, 0.00000000 };
Point ( 8455 ) = { -1.12916667, 54.65000000, 0.00000000 };
Point ( 8456 ) = { -1.12500000, 54.64583333, 0.00000000 };
Point ( 8457 ) = { -1.12083333, 54.64166667, 0.00000000 };
Point ( 8458 ) = { -1.11250000, 54.64166667, 0.00000000 };
Point ( 8459 ) = { -1.10416667, 54.64166667, 0.00000000 };
Point ( 8460 ) = { -1.09583333, 54.64166667, 0.00000000 };
Point ( 8461 ) = { -1.09166667, 54.63750000, 0.00000000 };
Point ( 8462 ) = { -1.08750000, 54.63333333, 0.00000000 };
Point ( 8463 ) = { -1.07916667, 54.63333333, 0.00000000 };
Point ( 8464 ) = { -1.07083333, 54.63333333, 0.00000000 };
Point ( 8465 ) = { -1.06666667, 54.62916667, 0.00000000 };
Point ( 8466 ) = { -1.06250000, 54.62500000, 0.00000000 };
Point ( 8467 ) = { -1.05416667, 54.62500000, 0.00000000 };
Point ( 8468 ) = { -1.05000000, 54.62083333, 0.00000000 };
Point ( 8469 ) = { -1.04583333, 54.61666667, 0.00000000 };
Point ( 8470 ) = { -1.03750000, 54.61666667, 0.00000000 };
Point ( 8471 ) = { -1.02916667, 54.61666667, 0.00000000 };
Point ( 8472 ) = { -1.02083333, 54.61666667, 0.00000000 };
Point ( 8473 ) = { -1.01250000, 54.61666667, 0.00000000 };
Point ( 8474 ) = { -1.00833333, 54.61250000, 0.00000000 };
Point ( 8475 ) = { -1.00416667, 54.60833333, 0.00000000 };
Point ( 8476 ) = { -1.00000000, 54.60416667, 0.00000000 };
Point ( 8477 ) = { -0.99583333, 54.60000000, 0.00000000 };
Point ( 8478 ) = { -0.98750000, 54.60000000, 0.00000000 };
Point ( 8479 ) = { -0.97916667, 54.60000000, 0.00000000 };
Point ( 8480 ) = { -0.97083333, 54.60000000, 0.00000000 };
Point ( 8481 ) = { -0.96250000, 54.60000000, 0.00000000 };
Point ( 8482 ) = { -0.95416667, 54.60000000, 0.00000000 };
Point ( 8483 ) = { -0.94583333, 54.60000000, 0.00000000 };
Point ( 8484 ) = { -0.93750000, 54.60000000, 0.00000000 };
Point ( 8485 ) = { -0.92916667, 54.60000000, 0.00000000 };
Point ( 8486 ) = { -0.92083333, 54.60000000, 0.00000000 };
Point ( 8487 ) = { -0.91666667, 54.59583333, 0.00000000 };
Point ( 8488 ) = { -0.91250000, 54.59166667, 0.00000000 };
Point ( 8489 ) = { -0.90416667, 54.59166667, 0.00000000 };
Point ( 8490 ) = { -0.89583333, 54.59166667, 0.00000000 };
Point ( 8491 ) = { -0.88750000, 54.59166667, 0.00000000 };
Point ( 8492 ) = { -0.87916667, 54.59166667, 0.00000000 };
Point ( 8493 ) = { -0.87500000, 54.58750000, 0.00000000 };
Point ( 8494 ) = { -0.87083333, 54.58333333, 0.00000000 };
Point ( 8495 ) = { -0.86250000, 54.58333333, 0.00000000 };
Point ( 8496 ) = { -0.85416667, 54.58333333, 0.00000000 };
Point ( 8497 ) = { -0.84583333, 54.58333333, 0.00000000 };
Point ( 8498 ) = { -0.84166667, 54.57916667, 0.00000000 };
Point ( 8499 ) = { -0.83750000, 54.57500000, 0.00000000 };
Point ( 8500 ) = { -0.82916667, 54.57500000, 0.00000000 };
Point ( 8501 ) = { -0.82083333, 54.57500000, 0.00000000 };
Point ( 8502 ) = { -0.81666667, 54.57083333, 0.00000000 };
Point ( 8503 ) = { -0.81250000, 54.56666667, 0.00000000 };
Point ( 8504 ) = { -0.80416667, 54.56666667, 0.00000000 };
Point ( 8505 ) = { -0.79583333, 54.56666667, 0.00000000 };
Point ( 8506 ) = { -0.78750000, 54.56666667, 0.00000000 };
Point ( 8507 ) = { -0.77916667, 54.56666667, 0.00000000 };
Point ( 8508 ) = { -0.77500000, 54.56250000, 0.00000000 };
Point ( 8509 ) = { -0.77083333, 54.55833333, 0.00000000 };
Point ( 8510 ) = { -0.76666667, 54.55416667, 0.00000000 };
Point ( 8511 ) = { -0.76250000, 54.55000000, 0.00000000 };
Point ( 8512 ) = { -0.75416667, 54.55000000, 0.00000000 };
Point ( 8513 ) = { -0.75000000, 54.54583333, 0.00000000 };
Point ( 8514 ) = { -0.74583333, 54.54166667, 0.00000000 };
Point ( 8515 ) = { -0.73750000, 54.54166667, 0.00000000 };
Point ( 8516 ) = { -0.72916667, 54.54166667, 0.00000000 };
Point ( 8517 ) = { -0.72500000, 54.53750000, 0.00000000 };
Point ( 8518 ) = { -0.72083333, 54.53333333, 0.00000000 };
Point ( 8519 ) = { -0.71250000, 54.53333333, 0.00000000 };
Point ( 8520 ) = { -0.70416667, 54.53333333, 0.00000000 };
Point ( 8521 ) = { -0.70000000, 54.52916667, 0.00000000 };
Point ( 8522 ) = { -0.69583333, 54.52500000, 0.00000000 };
Point ( 8523 ) = { -0.68750000, 54.52500000, 0.00000000 };
Point ( 8524 ) = { -0.67916667, 54.52500000, 0.00000000 };
Point ( 8525 ) = { -0.67500000, 54.52083333, 0.00000000 };
Point ( 8526 ) = { -0.67083333, 54.51666667, 0.00000000 };
Point ( 8527 ) = { -0.66666667, 54.51250000, 0.00000000 };
Point ( 8528 ) = { -0.66250000, 54.50833333, 0.00000000 };
Point ( 8529 ) = { -0.65416667, 54.50833333, 0.00000000 };
Point ( 8530 ) = { -0.65000000, 54.50416667, 0.00000000 };
Point ( 8531 ) = { -0.64583333, 54.50000000, 0.00000000 };
Point ( 8532 ) = { -0.63750000, 54.50000000, 0.00000000 };
Point ( 8533 ) = { -0.62916667, 54.50000000, 0.00000000 };
Point ( 8534 ) = { -0.62083333, 54.50000000, 0.00000000 };
Point ( 8535 ) = { -0.61250000, 54.50000000, 0.00000000 };
Point ( 8536 ) = { -0.60833333, 54.49583333, 0.00000000 };
Point ( 8537 ) = { -0.60416667, 54.49166667, 0.00000000 };
Point ( 8538 ) = { -0.59583333, 54.49166667, 0.00000000 };
Point ( 8539 ) = { -0.59166667, 54.48750000, 0.00000000 };
Point ( 8540 ) = { -0.58750000, 54.48333333, 0.00000000 };
Point ( 8541 ) = { -0.57916667, 54.48333333, 0.00000000 };
Point ( 8542 ) = { -0.57083333, 54.48333333, 0.00000000 };
Point ( 8543 ) = { -0.56250000, 54.48333333, 0.00000000 };
Point ( 8544 ) = { -0.55833333, 54.47916667, 0.00000000 };
Point ( 8545 ) = { -0.55833333, 54.47083333, 0.00000000 };
Point ( 8546 ) = { -0.55416667, 54.46666667, 0.00000000 };
Point ( 8547 ) = { -0.54583333, 54.46666667, 0.00000000 };
Point ( 8548 ) = { -0.54166667, 54.46250000, 0.00000000 };
Point ( 8549 ) = { -0.53750000, 54.45833333, 0.00000000 };
Point ( 8550 ) = { -0.52916667, 54.45833333, 0.00000000 };
Point ( 8551 ) = { -0.52500000, 54.45416667, 0.00000000 };
Point ( 8552 ) = { -0.52083333, 54.45000000, 0.00000000 };
Point ( 8553 ) = { -0.51666667, 54.44583333, 0.00000000 };
Point ( 8554 ) = { -0.51666667, 54.43750000, 0.00000000 };
Point ( 8555 ) = { -0.52083333, 54.43333333, 0.00000000 };
Point ( 8556 ) = { -0.52500000, 54.42916667, 0.00000000 };
Point ( 8557 ) = { -0.52500000, 54.42083333, 0.00000000 };
Point ( 8558 ) = { -0.52083333, 54.41666667, 0.00000000 };
Point ( 8559 ) = { -0.51250000, 54.41666667, 0.00000000 };
Point ( 8560 ) = { -0.50416667, 54.41666667, 0.00000000 };
Point ( 8561 ) = { -0.49583333, 54.41666667, 0.00000000 };
Point ( 8562 ) = { -0.49166667, 54.41250000, 0.00000000 };
Point ( 8563 ) = { -0.48750000, 54.40833333, 0.00000000 };
Point ( 8564 ) = { -0.47916667, 54.40833333, 0.00000000 };
Point ( 8565 ) = { -0.47083333, 54.40833333, 0.00000000 };
Point ( 8566 ) = { -0.46666667, 54.40416667, 0.00000000 };
Point ( 8567 ) = { -0.46666667, 54.39583333, 0.00000000 };
Point ( 8568 ) = { -0.46250000, 54.39166667, 0.00000000 };
Point ( 8569 ) = { -0.45833333, 54.38750000, 0.00000000 };
Point ( 8570 ) = { -0.45416667, 54.38333333, 0.00000000 };
Point ( 8571 ) = { -0.44583333, 54.38333333, 0.00000000 };
Point ( 8572 ) = { -0.44166667, 54.37916667, 0.00000000 };
Point ( 8573 ) = { -0.44166667, 54.37083333, 0.00000000 };
Point ( 8574 ) = { -0.44166667, 54.36250000, 0.00000000 };
Point ( 8575 ) = { -0.43750000, 54.35833333, 0.00000000 };
Point ( 8576 ) = { -0.43333333, 54.35416667, 0.00000000 };
Point ( 8577 ) = { -0.42916667, 54.35000000, 0.00000000 };
Point ( 8578 ) = { -0.42083333, 54.35000000, 0.00000000 };
Point ( 8579 ) = { -0.41666667, 54.34583333, 0.00000000 };
Point ( 8580 ) = { -0.41666667, 54.33750000, 0.00000000 };
Point ( 8581 ) = { -0.41666667, 54.32916667, 0.00000000 };
Point ( 8582 ) = { -0.41250000, 54.32500000, 0.00000000 };
Point ( 8583 ) = { -0.40416667, 54.32500000, 0.00000000 };
Point ( 8584 ) = { -0.40000000, 54.32083333, 0.00000000 };
Point ( 8585 ) = { -0.40000000, 54.31250000, 0.00000000 };
Point ( 8586 ) = { -0.39583333, 54.30833333, 0.00000000 };
Point ( 8587 ) = { -0.39166667, 54.30416667, 0.00000000 };
Point ( 8588 ) = { -0.39583333, 54.30000000, 0.00000000 };
Point ( 8589 ) = { -0.40416667, 54.30000000, 0.00000000 };
Point ( 8590 ) = { -0.40833333, 54.29583333, 0.00000000 };
Point ( 8591 ) = { -0.40416667, 54.29166667, 0.00000000 };
Point ( 8592 ) = { -0.39583333, 54.29166667, 0.00000000 };
Point ( 8593 ) = { -0.38750000, 54.29166667, 0.00000000 };
Point ( 8594 ) = { -0.38333333, 54.28750000, 0.00000000 };
Point ( 8595 ) = { -0.37916667, 54.28333333, 0.00000000 };
Point ( 8596 ) = { -0.37500000, 54.27916667, 0.00000000 };
Point ( 8597 ) = { -0.37083333, 54.27500000, 0.00000000 };
Point ( 8598 ) = { -0.36666667, 54.27083333, 0.00000000 };
Point ( 8599 ) = { -0.36250000, 54.26666667, 0.00000000 };
Point ( 8600 ) = { -0.35833333, 54.26250000, 0.00000000 };
Point ( 8601 ) = { -0.35416667, 54.25833333, 0.00000000 };
Point ( 8602 ) = { -0.34583333, 54.25833333, 0.00000000 };
Point ( 8603 ) = { -0.33750000, 54.25833333, 0.00000000 };
Point ( 8604 ) = { -0.33333333, 54.25416667, 0.00000000 };
Point ( 8605 ) = { -0.33750000, 54.25000000, 0.00000000 };
Point ( 8606 ) = { -0.34583333, 54.25000000, 0.00000000 };
Point ( 8607 ) = { -0.35416667, 54.25000000, 0.00000000 };
Point ( 8608 ) = { -0.35833333, 54.24583333, 0.00000000 };
Point ( 8609 ) = { -0.35416667, 54.24166667, 0.00000000 };
Point ( 8610 ) = { -0.34583333, 54.24166667, 0.00000000 };
Point ( 8611 ) = { -0.33750000, 54.24166667, 0.00000000 };
Point ( 8612 ) = { -0.32916667, 54.24166667, 0.00000000 };
Point ( 8613 ) = { -0.32083333, 54.24166667, 0.00000000 };
Point ( 8614 ) = { -0.31666667, 54.23750000, 0.00000000 };
Point ( 8615 ) = { -0.31250000, 54.23333333, 0.00000000 };
Point ( 8616 ) = { -0.30416667, 54.23333333, 0.00000000 };
Point ( 8617 ) = { -0.30000000, 54.22916667, 0.00000000 };
Point ( 8618 ) = { -0.29583333, 54.22500000, 0.00000000 };
Point ( 8619 ) = { -0.28750000, 54.22500000, 0.00000000 };
Point ( 8620 ) = { -0.27916667, 54.22500000, 0.00000000 };
Point ( 8621 ) = { -0.27083333, 54.22500000, 0.00000000 };
Point ( 8622 ) = { -0.26666667, 54.22083333, 0.00000000 };
Point ( 8623 ) = { -0.26250000, 54.21666667, 0.00000000 };
Point ( 8624 ) = { -0.25833333, 54.21250000, 0.00000000 };
Point ( 8625 ) = { -0.25416667, 54.20833333, 0.00000000 };
Point ( 8626 ) = { -0.25000000, 54.20416667, 0.00000000 };
Point ( 8627 ) = { -0.25416667, 54.20000000, 0.00000000 };
Point ( 8628 ) = { -0.25833333, 54.19583333, 0.00000000 };
Point ( 8629 ) = { -0.25416667, 54.19166667, 0.00000000 };
Point ( 8630 ) = { -0.24583333, 54.19166667, 0.00000000 };
Point ( 8631 ) = { -0.23750000, 54.19166667, 0.00000000 };
Point ( 8632 ) = { -0.23333333, 54.18750000, 0.00000000 };
Point ( 8633 ) = { -0.22916667, 54.18333333, 0.00000000 };
Point ( 8634 ) = { -0.22500000, 54.17916667, 0.00000000 };
Point ( 8635 ) = { -0.22083333, 54.17500000, 0.00000000 };
Point ( 8636 ) = { -0.21250000, 54.17500000, 0.00000000 };
Point ( 8637 ) = { -0.20416667, 54.17500000, 0.00000000 };
Point ( 8638 ) = { -0.19583333, 54.17500000, 0.00000000 };
Point ( 8639 ) = { -0.19166667, 54.17083333, 0.00000000 };
Point ( 8640 ) = { -0.19583333, 54.16666667, 0.00000000 };
Point ( 8641 ) = { -0.20416667, 54.16666667, 0.00000000 };
Point ( 8642 ) = { -0.21250000, 54.16666667, 0.00000000 };
Point ( 8643 ) = { -0.22083333, 54.16666667, 0.00000000 };
Point ( 8644 ) = { -0.22500000, 54.16250000, 0.00000000 };
Point ( 8645 ) = { -0.22083333, 54.15833333, 0.00000000 };
Point ( 8646 ) = { -0.21250000, 54.15833333, 0.00000000 };
Point ( 8647 ) = { -0.20416667, 54.15833333, 0.00000000 };
Point ( 8648 ) = { -0.19583333, 54.15833333, 0.00000000 };
Point ( 8649 ) = { -0.18750000, 54.15833333, 0.00000000 };
Point ( 8650 ) = { -0.17916667, 54.15833333, 0.00000000 };
Point ( 8651 ) = { -0.17500000, 54.15416667, 0.00000000 };
Point ( 8652 ) = { -0.17083333, 54.15000000, 0.00000000 };
Point ( 8653 ) = { -0.16250000, 54.15000000, 0.00000000 };
Point ( 8654 ) = { -0.15416667, 54.15000000, 0.00000000 };
Point ( 8655 ) = { -0.15000000, 54.14583333, 0.00000000 };
Point ( 8656 ) = { -0.14583333, 54.14166667, 0.00000000 };
Point ( 8657 ) = { -0.13750000, 54.14166667, 0.00000000 };
Point ( 8658 ) = { -0.12916667, 54.14166667, 0.00000000 };
Point ( 8659 ) = { -0.12500000, 54.13750000, 0.00000000 };
Point ( 8660 ) = { -0.12083333, 54.13333333, 0.00000000 };
Point ( 8661 ) = { -0.11250000, 54.13333333, 0.00000000 };
Point ( 8662 ) = { -0.10416667, 54.13333333, 0.00000000 };
Point ( 8663 ) = { -0.09583333, 54.13333333, 0.00000000 };
Point ( 8664 ) = { -0.09166667, 54.12916667, 0.00000000 };
Point ( 8665 ) = { -0.08750000, 54.12500000, 0.00000000 };
Point ( 8666 ) = { -0.07916667, 54.12500000, 0.00000000 };
Point ( 8667 ) = { -0.07500000, 54.12083333, 0.00000000 };
Point ( 8668 ) = { -0.07500000, 54.11250000, 0.00000000 };
Point ( 8669 ) = { -0.07916667, 54.10833333, 0.00000000 };
Point ( 8670 ) = { -0.08750000, 54.10833333, 0.00000000 };
Point ( 8671 ) = { -0.09166667, 54.10416667, 0.00000000 };
Point ( 8672 ) = { -0.09583333, 54.10000000, 0.00000000 };
Point ( 8673 ) = { -0.10416667, 54.10000000, 0.00000000 };
Point ( 8674 ) = { -0.11250000, 54.10000000, 0.00000000 };
Point ( 8675 ) = { -0.12083333, 54.10000000, 0.00000000 };
Point ( 8676 ) = { -0.12916667, 54.10000000, 0.00000000 };
Point ( 8677 ) = { -0.13750000, 54.10000000, 0.00000000 };
Point ( 8678 ) = { -0.14583333, 54.10000000, 0.00000000 };
Point ( 8679 ) = { -0.15416667, 54.10000000, 0.00000000 };
Point ( 8680 ) = { -0.15833333, 54.09583333, 0.00000000 };
Point ( 8681 ) = { -0.16250000, 54.09166667, 0.00000000 };
Point ( 8682 ) = { -0.17083333, 54.09166667, 0.00000000 };
Point ( 8683 ) = { -0.17500000, 54.08750000, 0.00000000 };
Point ( 8684 ) = { -0.17916667, 54.08333333, 0.00000000 };
Point ( 8685 ) = { -0.18333333, 54.07916667, 0.00000000 };
Point ( 8686 ) = { -0.18750000, 54.07500000, 0.00000000 };
Point ( 8687 ) = { -0.19583333, 54.07500000, 0.00000000 };
Point ( 8688 ) = { -0.20000000, 54.07083333, 0.00000000 };
Point ( 8689 ) = { -0.20416667, 54.06666667, 0.00000000 };
Point ( 8690 ) = { -0.20833333, 54.06250000, 0.00000000 };
Point ( 8691 ) = { -0.20833333, 54.05416667, 0.00000000 };
Point ( 8692 ) = { -0.20833333, 54.04583333, 0.00000000 };
Point ( 8693 ) = { -0.21250000, 54.04166667, 0.00000000 };
Point ( 8694 ) = { -0.21666667, 54.03750000, 0.00000000 };
Point ( 8695 ) = { -0.21666667, 54.02916667, 0.00000000 };
Point ( 8696 ) = { -0.21250000, 54.02500000, 0.00000000 };
Point ( 8697 ) = { -0.20833333, 54.02083333, 0.00000000 };
Point ( 8698 ) = { -0.20833333, 54.01250000, 0.00000000 };
Point ( 8699 ) = { -0.20833333, 54.00416667, 0.00000000 };
Point ( 8700 ) = { -0.20416667, 54.00000000, 0.00000000 };
Point ( 8701 ) = { -0.20000000, 53.99583333, 0.00000000 };
Point ( 8702 ) = { -0.19583333, 53.99166667, 0.00000000 };
Point ( 8703 ) = { -0.19166667, 53.98750000, 0.00000000 };
Point ( 8704 ) = { -0.19166667, 53.97916667, 0.00000000 };
Point ( 8705 ) = { -0.19166667, 53.97083333, 0.00000000 };
Point ( 8706 ) = { -0.18750000, 53.96666667, 0.00000000 };
Point ( 8707 ) = { -0.17916667, 53.96666667, 0.00000000 };
Point ( 8708 ) = { -0.17500000, 53.96250000, 0.00000000 };
Point ( 8709 ) = { -0.17500000, 53.95416667, 0.00000000 };
Point ( 8710 ) = { -0.17083333, 53.95000000, 0.00000000 };
Point ( 8711 ) = { -0.16666667, 53.94583333, 0.00000000 };
Point ( 8712 ) = { -0.16250000, 53.94166667, 0.00000000 };
Point ( 8713 ) = { -0.15833333, 53.93750000, 0.00000000 };
Point ( 8714 ) = { -0.15416667, 53.93333333, 0.00000000 };
Point ( 8715 ) = { -0.15000000, 53.92916667, 0.00000000 };
Point ( 8716 ) = { -0.14583333, 53.92500000, 0.00000000 };
Point ( 8717 ) = { -0.14166667, 53.92083333, 0.00000000 };
Point ( 8718 ) = { -0.14166667, 53.91250000, 0.00000000 };
Point ( 8719 ) = { -0.14166667, 53.90416667, 0.00000000 };
Point ( 8720 ) = { -0.13750000, 53.90000000, 0.00000000 };
Point ( 8721 ) = { -0.13333333, 53.89583333, 0.00000000 };
Point ( 8722 ) = { -0.12916667, 53.89166667, 0.00000000 };
Point ( 8723 ) = { -0.12500000, 53.88750000, 0.00000000 };
Point ( 8724 ) = { -0.12083333, 53.88333333, 0.00000000 };
Point ( 8725 ) = { -0.11666667, 53.87916667, 0.00000000 };
Point ( 8726 ) = { -0.11250000, 53.87500000, 0.00000000 };
Point ( 8727 ) = { -0.10833333, 53.87083333, 0.00000000 };
Point ( 8728 ) = { -0.10416667, 53.86666667, 0.00000000 };
Point ( 8729 ) = { -0.10000000, 53.86250000, 0.00000000 };
Point ( 8730 ) = { -0.09583333, 53.85833333, 0.00000000 };
Point ( 8731 ) = { -0.08750000, 53.85833333, 0.00000000 };
Point ( 8732 ) = { -0.08333333, 53.85416667, 0.00000000 };
Point ( 8733 ) = { -0.07916667, 53.85000000, 0.00000000 };
Point ( 8734 ) = { -0.07500000, 53.84583333, 0.00000000 };
Point ( 8735 ) = { -0.07083333, 53.84166667, 0.00000000 };
Point ( 8736 ) = { -0.06666667, 53.83750000, 0.00000000 };
Point ( 8737 ) = { -0.06250000, 53.83333333, 0.00000000 };
Point ( 8738 ) = { -0.05416667, 53.83333333, 0.00000000 };
Point ( 8739 ) = { -0.05000000, 53.82916667, 0.00000000 };
Point ( 8740 ) = { -0.05000000, 53.82083333, 0.00000000 };
Point ( 8741 ) = { -0.04583333, 53.81666667, 0.00000000 };
Point ( 8742 ) = { -0.03750000, 53.81666667, 0.00000000 };
Point ( 8743 ) = { -0.03333333, 53.81250000, 0.00000000 };
Point ( 8744 ) = { -0.02916667, 53.80833333, 0.00000000 };
Point ( 8745 ) = { -0.02083333, 53.80833333, 0.00000000 };
Point ( 8746 ) = { -0.01250000, 53.80833333, 0.00000000 };
Point ( 8747 ) = { -0.00833333, 53.80416667, 0.00000000 };
Point ( 8748 ) = { -0.00416667, 53.80000000, 0.00000000 };
Point ( 8749 ) = { 0.00000000, 53.79583333, 0.00000000 };
Point ( 8750 ) = { 0.00416667, 53.79166667, 0.00000000 };
Point ( 8751 ) = { 0.00833333, 53.78750000, 0.00000000 };
Point ( 8752 ) = { 0.00833333, 53.77916667, 0.00000000 };
Point ( 8753 ) = { 0.01250000, 53.77500000, 0.00000000 };
Point ( 8754 ) = { 0.02083333, 53.77500000, 0.00000000 };
Point ( 8755 ) = { 0.02500000, 53.77083333, 0.00000000 };
Point ( 8756 ) = { 0.02916667, 53.76666667, 0.00000000 };
Point ( 8757 ) = { 0.03333333, 53.76250000, 0.00000000 };
Point ( 8758 ) = { 0.03750000, 53.75833333, 0.00000000 };
Point ( 8759 ) = { 0.04166667, 53.75416667, 0.00000000 };
Point ( 8760 ) = { 0.04166667, 53.74583333, 0.00000000 };
Point ( 8761 ) = { 0.04583333, 53.74166667, 0.00000000 };
Point ( 8762 ) = { 0.05416667, 53.74166667, 0.00000000 };
Point ( 8763 ) = { 0.05833333, 53.73750000, 0.00000000 };
Point ( 8764 ) = { 0.06250000, 53.73333333, 0.00000000 };
Point ( 8765 ) = { 0.06666667, 53.72916667, 0.00000000 };
Point ( 8766 ) = { 0.07083333, 53.72500000, 0.00000000 };
Point ( 8767 ) = { 0.07500000, 53.72083333, 0.00000000 };
Point ( 8768 ) = { 0.07916667, 53.71666667, 0.00000000 };
Point ( 8769 ) = { 0.08333333, 53.71250000, 0.00000000 };
Point ( 8770 ) = { 0.08750000, 53.70833333, 0.00000000 };
Point ( 8771 ) = { 0.09166667, 53.70416667, 0.00000000 };
Point ( 8772 ) = { 0.09166667, 53.69583333, 0.00000000 };
Point ( 8773 ) = { 0.09583333, 53.69166667, 0.00000000 };
Point ( 8774 ) = { 0.10416667, 53.69166667, 0.00000000 };
Point ( 8775 ) = { 0.11250000, 53.69166667, 0.00000000 };
Point ( 8776 ) = { 0.11666667, 53.68750000, 0.00000000 };
Point ( 8777 ) = { 0.12083333, 53.68333333, 0.00000000 };
Point ( 8778 ) = { 0.12500000, 53.67916667, 0.00000000 };
Point ( 8779 ) = { 0.12500000, 53.67083333, 0.00000000 };
Point ( 8780 ) = { 0.12916667, 53.66666667, 0.00000000 };
Point ( 8781 ) = { 0.13333333, 53.66250000, 0.00000000 };
Point ( 8782 ) = { 0.13333333, 53.65416667, 0.00000000 };
Point ( 8783 ) = { 0.13750000, 53.65000000, 0.00000000 };
Point ( 8784 ) = { 0.14166667, 53.64583333, 0.00000000 };
Point ( 8785 ) = { 0.14583333, 53.64166667, 0.00000000 };
Point ( 8786 ) = { 0.15000000, 53.63750000, 0.00000000 };
Point ( 8787 ) = { 0.15416667, 53.63333333, 0.00000000 };
Point ( 8788 ) = { 0.15833333, 53.62916667, 0.00000000 };
Point ( 8789 ) = { 0.15833333, 53.62083333, 0.00000000 };
Point ( 8790 ) = { 0.15833333, 53.61250000, 0.00000000 };
Point ( 8791 ) = { 0.15833333, 53.60416667, 0.00000000 };
Point ( 8792 ) = { 0.15833333, 53.59583333, 0.00000000 };
Point ( 8793 ) = { 0.15416667, 53.59166667, 0.00000000 };
Point ( 8794 ) = { 0.14583333, 53.59166667, 0.00000000 };
Point ( 8795 ) = { 0.14166667, 53.58750000, 0.00000000 };
Point ( 8796 ) = { 0.13750000, 53.58333333, 0.00000000 };
Point ( 8797 ) = { 0.12916667, 53.58333333, 0.00000000 };
Point ( 8798 ) = { 0.12500000, 53.57916667, 0.00000000 };
Point ( 8799 ) = { 0.12083333, 53.57500000, 0.00000000 };
Point ( 8800 ) = { 0.11666667, 53.57083333, 0.00000000 };
Point ( 8801 ) = { 0.11250000, 53.56666667, 0.00000000 };
Point ( 8802 ) = { 0.10833333, 53.57083333, 0.00000000 };
Point ( 8803 ) = { 0.10833333, 53.57916667, 0.00000000 };
Point ( 8804 ) = { 0.11250000, 53.58333333, 0.00000000 };
Point ( 8805 ) = { 0.11666667, 53.58750000, 0.00000000 };
Point ( 8806 ) = { 0.12083333, 53.59166667, 0.00000000 };
Point ( 8807 ) = { 0.12916667, 53.59166667, 0.00000000 };
Point ( 8808 ) = { 0.13333333, 53.59583333, 0.00000000 };
Point ( 8809 ) = { 0.12916667, 53.60000000, 0.00000000 };
Point ( 8810 ) = { 0.12500000, 53.60416667, 0.00000000 };
Point ( 8811 ) = { 0.12500000, 53.61250000, 0.00000000 };
Point ( 8812 ) = { 0.12083333, 53.61666667, 0.00000000 };
Point ( 8813 ) = { 0.11666667, 53.62083333, 0.00000000 };
Point ( 8814 ) = { 0.11250000, 53.62500000, 0.00000000 };
Point ( 8815 ) = { 0.10416667, 53.62500000, 0.00000000 };
Point ( 8816 ) = { 0.09583333, 53.62500000, 0.00000000 };
Point ( 8817 ) = { 0.08750000, 53.62500000, 0.00000000 };
Point ( 8818 ) = { 0.07916667, 53.62500000, 0.00000000 };
Point ( 8819 ) = { 0.07500000, 53.62083333, 0.00000000 };
Point ( 8820 ) = { 0.07916667, 53.61666667, 0.00000000 };
Point ( 8821 ) = { 0.08750000, 53.61666667, 0.00000000 };
Point ( 8822 ) = { 0.09583333, 53.61666667, 0.00000000 };
Point ( 8823 ) = { 0.10000000, 53.61250000, 0.00000000 };
Point ( 8824 ) = { 0.09583333, 53.60833333, 0.00000000 };
Point ( 8825 ) = { 0.08750000, 53.60833333, 0.00000000 };
Point ( 8826 ) = { 0.08333333, 53.60416667, 0.00000000 };
Point ( 8827 ) = { 0.07916667, 53.60000000, 0.00000000 };
Point ( 8828 ) = { 0.07083333, 53.60000000, 0.00000000 };
Point ( 8829 ) = { 0.06250000, 53.60000000, 0.00000000 };
Point ( 8830 ) = { 0.05416667, 53.60000000, 0.00000000 };
Point ( 8831 ) = { 0.05000000, 53.60416667, 0.00000000 };
Point ( 8832 ) = { 0.04583333, 53.60833333, 0.00000000 };
Point ( 8833 ) = { 0.03750000, 53.60833333, 0.00000000 };
Point ( 8834 ) = { 0.02916667, 53.60833333, 0.00000000 };
Point ( 8835 ) = { 0.02500000, 53.60416667, 0.00000000 };
Point ( 8836 ) = { 0.02083333, 53.60000000, 0.00000000 };
Point ( 8837 ) = { 0.01250000, 53.60000000, 0.00000000 };
Point ( 8838 ) = { 0.00833333, 53.59583333, 0.00000000 };
Point ( 8839 ) = { 0.00833333, 53.58750000, 0.00000000 };
Point ( 8840 ) = { 0.01250000, 53.58333333, 0.00000000 };
Point ( 8841 ) = { 0.01666667, 53.57916667, 0.00000000 };
Point ( 8842 ) = { 0.01666667, 53.57083333, 0.00000000 };
Point ( 8843 ) = { 0.01666667, 53.56250000, 0.00000000 };
Point ( 8844 ) = { 0.02083333, 53.55833333, 0.00000000 };
Point ( 8845 ) = { 0.02916667, 53.55833333, 0.00000000 };
Point ( 8846 ) = { 0.03333333, 53.55416667, 0.00000000 };
Point ( 8847 ) = { 0.03750000, 53.55000000, 0.00000000 };
Point ( 8848 ) = { 0.04583333, 53.55000000, 0.00000000 };
Point ( 8849 ) = { 0.05000000, 53.54583333, 0.00000000 };
Point ( 8850 ) = { 0.05000000, 53.53750000, 0.00000000 };
Point ( 8851 ) = { 0.04583333, 53.53333333, 0.00000000 };
Point ( 8852 ) = { 0.03750000, 53.53333333, 0.00000000 };
Point ( 8853 ) = { 0.03333333, 53.53750000, 0.00000000 };
Point ( 8854 ) = { 0.02916667, 53.54166667, 0.00000000 };
Point ( 8855 ) = { 0.02500000, 53.54583333, 0.00000000 };
Point ( 8856 ) = { 0.02083333, 53.55000000, 0.00000000 };
Point ( 8857 ) = { 0.01250000, 53.55000000, 0.00000000 };
Point ( 8858 ) = { 0.00833333, 53.54583333, 0.00000000 };
Point ( 8859 ) = { 0.00833333, 53.53750000, 0.00000000 };
Point ( 8860 ) = { 0.01250000, 53.53333333, 0.00000000 };
Point ( 8861 ) = { 0.01666667, 53.52916667, 0.00000000 };
Point ( 8862 ) = { 0.02083333, 53.52500000, 0.00000000 };
Point ( 8863 ) = { 0.02500000, 53.52083333, 0.00000000 };
Point ( 8864 ) = { 0.02916667, 53.51666667, 0.00000000 };
Point ( 8865 ) = { 0.03333333, 53.52083333, 0.00000000 };
Point ( 8866 ) = { 0.03750000, 53.52500000, 0.00000000 };
Point ( 8867 ) = { 0.04166667, 53.52083333, 0.00000000 };
Point ( 8868 ) = { 0.04583333, 53.51666667, 0.00000000 };
Point ( 8869 ) = { 0.05416667, 53.51666667, 0.00000000 };
Point ( 8870 ) = { 0.06250000, 53.51666667, 0.00000000 };
Point ( 8871 ) = { 0.06666667, 53.51250000, 0.00000000 };
Point ( 8872 ) = { 0.07083333, 53.50833333, 0.00000000 };
Point ( 8873 ) = { 0.07500000, 53.50416667, 0.00000000 };
Point ( 8874 ) = { 0.07916667, 53.50000000, 0.00000000 };
Point ( 8875 ) = { 0.08333333, 53.49583333, 0.00000000 };
Point ( 8876 ) = { 0.08750000, 53.49166667, 0.00000000 };
Point ( 8877 ) = { 0.09166667, 53.49583333, 0.00000000 };
Point ( 8878 ) = { 0.09583333, 53.50000000, 0.00000000 };
Point ( 8879 ) = { 0.10000000, 53.49583333, 0.00000000 };
Point ( 8880 ) = { 0.10416667, 53.49166667, 0.00000000 };
Point ( 8881 ) = { 0.11250000, 53.49166667, 0.00000000 };
Point ( 8882 ) = { 0.11666667, 53.49583333, 0.00000000 };
Point ( 8883 ) = { 0.11666667, 53.50416667, 0.00000000 };
Point ( 8884 ) = { 0.11250000, 53.50833333, 0.00000000 };
Point ( 8885 ) = { 0.10416667, 53.50833333, 0.00000000 };
Point ( 8886 ) = { 0.10000000, 53.51250000, 0.00000000 };
Point ( 8887 ) = { 0.09583333, 53.51666667, 0.00000000 };
Point ( 8888 ) = { 0.09166667, 53.52083333, 0.00000000 };
Point ( 8889 ) = { 0.09583333, 53.52500000, 0.00000000 };
Point ( 8890 ) = { 0.10416667, 53.52500000, 0.00000000 };
Point ( 8891 ) = { 0.11250000, 53.52500000, 0.00000000 };
Point ( 8892 ) = { 0.12083333, 53.52500000, 0.00000000 };
Point ( 8893 ) = { 0.12916667, 53.52500000, 0.00000000 };
Point ( 8894 ) = { 0.13750000, 53.52500000, 0.00000000 };
Point ( 8895 ) = { 0.14583333, 53.52500000, 0.00000000 };
Point ( 8896 ) = { 0.15416667, 53.52500000, 0.00000000 };
Point ( 8897 ) = { 0.16250000, 53.52500000, 0.00000000 };
Point ( 8898 ) = { 0.17083333, 53.52500000, 0.00000000 };
Point ( 8899 ) = { 0.17916667, 53.52500000, 0.00000000 };
Point ( 8900 ) = { 0.18750000, 53.52500000, 0.00000000 };
Point ( 8901 ) = { 0.19583333, 53.52500000, 0.00000000 };
Point ( 8902 ) = { 0.20416667, 53.52500000, 0.00000000 };
Point ( 8903 ) = { 0.20833333, 53.52916667, 0.00000000 };
Point ( 8904 ) = { 0.21250000, 53.53333333, 0.00000000 };
Point ( 8905 ) = { 0.21666667, 53.52916667, 0.00000000 };
Point ( 8906 ) = { 0.22083333, 53.52500000, 0.00000000 };
Point ( 8907 ) = { 0.22500000, 53.52916667, 0.00000000 };
Point ( 8908 ) = { 0.22916667, 53.53333333, 0.00000000 };
Point ( 8909 ) = { 0.23750000, 53.53333333, 0.00000000 };
Point ( 8910 ) = { 0.24166667, 53.53750000, 0.00000000 };
Point ( 8911 ) = { 0.24583333, 53.54166667, 0.00000000 };
Point ( 8912 ) = { 0.25416667, 53.54166667, 0.00000000 };
Point ( 8913 ) = { 0.25833333, 53.53750000, 0.00000000 };
Point ( 8914 ) = { 0.26250000, 53.53333333, 0.00000000 };
Point ( 8915 ) = { 0.27083333, 53.53333333, 0.00000000 };
Point ( 8916 ) = { 0.27916667, 53.53333333, 0.00000000 };
Point ( 8917 ) = { 0.28750000, 53.53333333, 0.00000000 };
Point ( 8918 ) = { 0.29583333, 53.53333333, 0.00000000 };
Point ( 8919 ) = { 0.30416667, 53.53333333, 0.00000000 };
Point ( 8920 ) = { 0.30833333, 53.52916667, 0.00000000 };
Point ( 8921 ) = { 0.31250000, 53.52500000, 0.00000000 };
Point ( 8922 ) = { 0.31666667, 53.52083333, 0.00000000 };
Point ( 8923 ) = { 0.32083333, 53.51666667, 0.00000000 };
Point ( 8924 ) = { 0.32916667, 53.51666667, 0.00000000 };
Point ( 8925 ) = { 0.33333333, 53.51250000, 0.00000000 };
Point ( 8926 ) = { 0.33333333, 53.50416667, 0.00000000 };
Point ( 8927 ) = { 0.32916667, 53.50000000, 0.00000000 };
Point ( 8928 ) = { 0.32083333, 53.50000000, 0.00000000 };
Point ( 8929 ) = { 0.31666667, 53.49583333, 0.00000000 };
Point ( 8930 ) = { 0.32083333, 53.49166667, 0.00000000 };
Point ( 8931 ) = { 0.32916667, 53.49166667, 0.00000000 };
Point ( 8932 ) = { 0.33333333, 53.48750000, 0.00000000 };
Point ( 8933 ) = { 0.33333333, 53.47916667, 0.00000000 };
Point ( 8934 ) = { 0.33750000, 53.47500000, 0.00000000 };
Point ( 8935 ) = { 0.34583333, 53.47500000, 0.00000000 };
Point ( 8936 ) = { 0.35000000, 53.47083333, 0.00000000 };
Point ( 8937 ) = { 0.35416667, 53.46666667, 0.00000000 };
Point ( 8938 ) = { 0.36250000, 53.46666667, 0.00000000 };
Point ( 8939 ) = { 0.37083333, 53.46666667, 0.00000000 };
Point ( 8940 ) = { 0.37916667, 53.46666667, 0.00000000 };
Point ( 8941 ) = { 0.38750000, 53.46666667, 0.00000000 };
Point ( 8942 ) = { 0.39166667, 53.46250000, 0.00000000 };
Point ( 8943 ) = { 0.39583333, 53.45833333, 0.00000000 };
Point ( 8944 ) = { 0.40416667, 53.45833333, 0.00000000 };
Point ( 8945 ) = { 0.41250000, 53.45833333, 0.00000000 };
Point ( 8946 ) = { 0.41666667, 53.45416667, 0.00000000 };
Point ( 8947 ) = { 0.42083333, 53.45000000, 0.00000000 };
Point ( 8948 ) = { 0.42500000, 53.44583333, 0.00000000 };
Point ( 8949 ) = { 0.42083333, 53.44166667, 0.00000000 };
Point ( 8950 ) = { 0.41666667, 53.43750000, 0.00000000 };
Point ( 8951 ) = { 0.42083333, 53.43333333, 0.00000000 };
Point ( 8952 ) = { 0.42916667, 53.43333333, 0.00000000 };
Point ( 8953 ) = { 0.43333333, 53.42916667, 0.00000000 };
Point ( 8954 ) = { 0.43333333, 53.42083333, 0.00000000 };
Point ( 8955 ) = { 0.43750000, 53.41666667, 0.00000000 };
Point ( 8956 ) = { 0.44166667, 53.41250000, 0.00000000 };
Point ( 8957 ) = { 0.43750000, 53.40833333, 0.00000000 };
Point ( 8958 ) = { 0.43333333, 53.40416667, 0.00000000 };
Point ( 8959 ) = { 0.43333333, 53.39583333, 0.00000000 };
Point ( 8960 ) = { 0.42916667, 53.39166667, 0.00000000 };
Point ( 8961 ) = { 0.42083333, 53.39166667, 0.00000000 };
Point ( 8962 ) = { 0.41666667, 53.39583333, 0.00000000 };
Point ( 8963 ) = { 0.41250000, 53.40000000, 0.00000000 };
Point ( 8964 ) = { 0.40833333, 53.40416667, 0.00000000 };
Point ( 8965 ) = { 0.40416667, 53.40833333, 0.00000000 };
Point ( 8966 ) = { 0.40000000, 53.41250000, 0.00000000 };
Point ( 8967 ) = { 0.40000000, 53.42083333, 0.00000000 };
Point ( 8968 ) = { 0.40000000, 53.42916667, 0.00000000 };
Point ( 8969 ) = { 0.39583333, 53.43333333, 0.00000000 };
Point ( 8970 ) = { 0.39166667, 53.42916667, 0.00000000 };
Point ( 8971 ) = { 0.38750000, 53.42500000, 0.00000000 };
Point ( 8972 ) = { 0.37916667, 53.42500000, 0.00000000 };
Point ( 8973 ) = { 0.37500000, 53.42083333, 0.00000000 };
Point ( 8974 ) = { 0.37083333, 53.41666667, 0.00000000 };
Point ( 8975 ) = { 0.36250000, 53.41666667, 0.00000000 };
Point ( 8976 ) = { 0.35833333, 53.41250000, 0.00000000 };
Point ( 8977 ) = { 0.35416667, 53.40833333, 0.00000000 };
Point ( 8978 ) = { 0.35000000, 53.40416667, 0.00000000 };
Point ( 8979 ) = { 0.35000000, 53.39583333, 0.00000000 };
Point ( 8980 ) = { 0.35000000, 53.38750000, 0.00000000 };
Point ( 8981 ) = { 0.34583333, 53.38333333, 0.00000000 };
Point ( 8982 ) = { 0.34166667, 53.37916667, 0.00000000 };
Point ( 8983 ) = { 0.33750000, 53.37500000, 0.00000000 };
Point ( 8984 ) = { 0.32916667, 53.37500000, 0.00000000 };
Point ( 8985 ) = { 0.32500000, 53.37083333, 0.00000000 };
Point ( 8986 ) = { 0.32083333, 53.36666667, 0.00000000 };
Point ( 8987 ) = { 0.31666667, 53.36250000, 0.00000000 };
Point ( 8988 ) = { 0.31666667, 53.35416667, 0.00000000 };
Point ( 8989 ) = { 0.32083333, 53.35000000, 0.00000000 };
Point ( 8990 ) = { 0.32500000, 53.34583333, 0.00000000 };
Point ( 8991 ) = { 0.32500000, 53.33750000, 0.00000000 };
Point ( 8992 ) = { 0.32500000, 53.32916667, 0.00000000 };
Point ( 8993 ) = { 0.32083333, 53.32500000, 0.00000000 };
Point ( 8994 ) = { 0.31250000, 53.32500000, 0.00000000 };
Point ( 8995 ) = { 0.30833333, 53.32916667, 0.00000000 };
Point ( 8996 ) = { 0.30416667, 53.33333333, 0.00000000 };
Point ( 8997 ) = { 0.29583333, 53.33333333, 0.00000000 };
Point ( 8998 ) = { 0.29166667, 53.33750000, 0.00000000 };
Point ( 8999 ) = { 0.28750000, 53.34166667, 0.00000000 };
Point ( 9000 ) = { 0.28333333, 53.34583333, 0.00000000 };
Point ( 9001 ) = { 0.27916667, 53.35000000, 0.00000000 };
Point ( 9002 ) = { 0.27500000, 53.35416667, 0.00000000 };
Point ( 9003 ) = { 0.27083333, 53.35833333, 0.00000000 };
Point ( 9004 ) = { 0.26666667, 53.36250000, 0.00000000 };
Point ( 9005 ) = { 0.27083333, 53.36666667, 0.00000000 };
Point ( 9006 ) = { 0.27500000, 53.37083333, 0.00000000 };
Point ( 9007 ) = { 0.27500000, 53.37916667, 0.00000000 };
Point ( 9008 ) = { 0.27916667, 53.38333333, 0.00000000 };
Point ( 9009 ) = { 0.28333333, 53.37916667, 0.00000000 };
Point ( 9010 ) = { 0.28750000, 53.37500000, 0.00000000 };
Point ( 9011 ) = { 0.29583333, 53.37500000, 0.00000000 };
Point ( 9012 ) = { 0.30416667, 53.37500000, 0.00000000 };
Point ( 9013 ) = { 0.31250000, 53.37500000, 0.00000000 };
Point ( 9014 ) = { 0.31666667, 53.37916667, 0.00000000 };
Point ( 9015 ) = { 0.31666667, 53.38750000, 0.00000000 };
Point ( 9016 ) = { 0.31666667, 53.39583333, 0.00000000 };
Point ( 9017 ) = { 0.32083333, 53.40000000, 0.00000000 };
Point ( 9018 ) = { 0.32500000, 53.40416667, 0.00000000 };
Point ( 9019 ) = { 0.32500000, 53.41250000, 0.00000000 };
Point ( 9020 ) = { 0.32083333, 53.41666667, 0.00000000 };
Point ( 9021 ) = { 0.31666667, 53.42083333, 0.00000000 };
Point ( 9022 ) = { 0.31666667, 53.42916667, 0.00000000 };
Point ( 9023 ) = { 0.32083333, 53.43333333, 0.00000000 };
Point ( 9024 ) = { 0.32500000, 53.43750000, 0.00000000 };
Point ( 9025 ) = { 0.32500000, 53.44583333, 0.00000000 };
Point ( 9026 ) = { 0.32083333, 53.45000000, 0.00000000 };
Point ( 9027 ) = { 0.31250000, 53.45000000, 0.00000000 };
Point ( 9028 ) = { 0.30416667, 53.45000000, 0.00000000 };
Point ( 9029 ) = { 0.30000000, 53.45416667, 0.00000000 };
Point ( 9030 ) = { 0.29583333, 53.45833333, 0.00000000 };
Point ( 9031 ) = { 0.28750000, 53.45833333, 0.00000000 };
Point ( 9032 ) = { 0.28333333, 53.45416667, 0.00000000 };
Point ( 9033 ) = { 0.28333333, 53.44583333, 0.00000000 };
Point ( 9034 ) = { 0.28333333, 53.43750000, 0.00000000 };
Point ( 9035 ) = { 0.28333333, 53.42916667, 0.00000000 };
Point ( 9036 ) = { 0.27916667, 53.42500000, 0.00000000 };
Point ( 9037 ) = { 0.27500000, 53.42916667, 0.00000000 };
Point ( 9038 ) = { 0.27083333, 53.43333333, 0.00000000 };
Point ( 9039 ) = { 0.26666667, 53.43750000, 0.00000000 };
Point ( 9040 ) = { 0.26250000, 53.44166667, 0.00000000 };
Point ( 9041 ) = { 0.25416667, 53.44166667, 0.00000000 };
Point ( 9042 ) = { 0.25000000, 53.43750000, 0.00000000 };
Point ( 9043 ) = { 0.25416667, 53.43333333, 0.00000000 };
Point ( 9044 ) = { 0.25833333, 53.42916667, 0.00000000 };
Point ( 9045 ) = { 0.25833333, 53.42083333, 0.00000000 };
Point ( 9046 ) = { 0.25833333, 53.41250000, 0.00000000 };
Point ( 9047 ) = { 0.25416667, 53.40833333, 0.00000000 };
Point ( 9048 ) = { 0.24583333, 53.40833333, 0.00000000 };
Point ( 9049 ) = { 0.24166667, 53.41250000, 0.00000000 };
Point ( 9050 ) = { 0.23750000, 53.41666667, 0.00000000 };
Point ( 9051 ) = { 0.22916667, 53.41666667, 0.00000000 };
Point ( 9052 ) = { 0.22083333, 53.41666667, 0.00000000 };
Point ( 9053 ) = { 0.21666667, 53.41250000, 0.00000000 };
Point ( 9054 ) = { 0.22083333, 53.40833333, 0.00000000 };
Point ( 9055 ) = { 0.22916667, 53.40833333, 0.00000000 };
Point ( 9056 ) = { 0.23333333, 53.40416667, 0.00000000 };
Point ( 9057 ) = { 0.22916667, 53.40000000, 0.00000000 };
Point ( 9058 ) = { 0.22500000, 53.39583333, 0.00000000 };
Point ( 9059 ) = { 0.22916667, 53.39166667, 0.00000000 };
Point ( 9060 ) = { 0.23750000, 53.39166667, 0.00000000 };
Point ( 9061 ) = { 0.24166667, 53.38750000, 0.00000000 };
Point ( 9062 ) = { 0.24166667, 53.37916667, 0.00000000 };
Point ( 9063 ) = { 0.24583333, 53.37500000, 0.00000000 };
Point ( 9064 ) = { 0.25000000, 53.37083333, 0.00000000 };
Point ( 9065 ) = { 0.25000000, 53.36250000, 0.00000000 };
Point ( 9066 ) = { 0.25416667, 53.35833333, 0.00000000 };
Point ( 9067 ) = { 0.25833333, 53.35416667, 0.00000000 };
Point ( 9068 ) = { 0.26250000, 53.35000000, 0.00000000 };
Point ( 9069 ) = { 0.26666667, 53.34583333, 0.00000000 };
Point ( 9070 ) = { 0.27083333, 53.34166667, 0.00000000 };
Point ( 9071 ) = { 0.27500000, 53.33750000, 0.00000000 };
Point ( 9072 ) = { 0.27916667, 53.33333333, 0.00000000 };
Point ( 9073 ) = { 0.28333333, 53.32916667, 0.00000000 };
Point ( 9074 ) = { 0.28333333, 53.32083333, 0.00000000 };
Point ( 9075 ) = { 0.28750000, 53.31666667, 0.00000000 };
Point ( 9076 ) = { 0.29166667, 53.31250000, 0.00000000 };
Point ( 9077 ) = { 0.29166667, 53.30416667, 0.00000000 };
Point ( 9078 ) = { 0.29583333, 53.30000000, 0.00000000 };
Point ( 9079 ) = { 0.30000000, 53.29583333, 0.00000000 };
Point ( 9080 ) = { 0.30416667, 53.29166667, 0.00000000 };
Point ( 9081 ) = { 0.30833333, 53.28750000, 0.00000000 };
Point ( 9082 ) = { 0.31250000, 53.28333333, 0.00000000 };
Point ( 9083 ) = { 0.31666667, 53.27916667, 0.00000000 };
Point ( 9084 ) = { 0.32083333, 53.27500000, 0.00000000 };
Point ( 9085 ) = { 0.32500000, 53.27083333, 0.00000000 };
Point ( 9086 ) = { 0.32500000, 53.26250000, 0.00000000 };
Point ( 9087 ) = { 0.32916667, 53.25833333, 0.00000000 };
Point ( 9088 ) = { 0.33750000, 53.25833333, 0.00000000 };
Point ( 9089 ) = { 0.34166667, 53.26250000, 0.00000000 };
Point ( 9090 ) = { 0.34583333, 53.26666667, 0.00000000 };
Point ( 9091 ) = { 0.35000000, 53.27083333, 0.00000000 };
Point ( 9092 ) = { 0.35416667, 53.27500000, 0.00000000 };
Point ( 9093 ) = { 0.35833333, 53.27916667, 0.00000000 };
Point ( 9094 ) = { 0.35833333, 53.28750000, 0.00000000 };
Point ( 9095 ) = { 0.35833333, 53.29583333, 0.00000000 };
Point ( 9096 ) = { 0.35416667, 53.30000000, 0.00000000 };
Point ( 9097 ) = { 0.35000000, 53.30416667, 0.00000000 };
Point ( 9098 ) = { 0.35416667, 53.30833333, 0.00000000 };
Point ( 9099 ) = { 0.36250000, 53.30833333, 0.00000000 };
Point ( 9100 ) = { 0.37083333, 53.30833333, 0.00000000 };
Point ( 9101 ) = { 0.37916667, 53.30833333, 0.00000000 };
Point ( 9102 ) = { 0.38333333, 53.30416667, 0.00000000 };
Point ( 9103 ) = { 0.38333333, 53.29583333, 0.00000000 };
Point ( 9104 ) = { 0.38750000, 53.29166667, 0.00000000 };
Point ( 9105 ) = { 0.39583333, 53.29166667, 0.00000000 };
Point ( 9106 ) = { 0.40000000, 53.28750000, 0.00000000 };
Point ( 9107 ) = { 0.40416667, 53.28333333, 0.00000000 };
Point ( 9108 ) = { 0.40833333, 53.27916667, 0.00000000 };
Point ( 9109 ) = { 0.41250000, 53.27500000, 0.00000000 };
Point ( 9110 ) = { 0.41666667, 53.27083333, 0.00000000 };
Point ( 9111 ) = { 0.42083333, 53.26666667, 0.00000000 };
Point ( 9112 ) = { 0.42500000, 53.26250000, 0.00000000 };
Point ( 9113 ) = { 0.42916667, 53.25833333, 0.00000000 };
Point ( 9114 ) = { 0.43333333, 53.25416667, 0.00000000 };
Point ( 9115 ) = { 0.43333333, 53.24583333, 0.00000000 };
Point ( 9116 ) = { 0.43750000, 53.24166667, 0.00000000 };
Point ( 9117 ) = { 0.44583333, 53.24166667, 0.00000000 };
Point ( 9118 ) = { 0.45000000, 53.23750000, 0.00000000 };
Point ( 9119 ) = { 0.45000000, 53.22916667, 0.00000000 };
Point ( 9120 ) = { 0.45000000, 53.22083333, 0.00000000 };
Point ( 9121 ) = { 0.45000000, 53.21250000, 0.00000000 };
Point ( 9122 ) = { 0.45000000, 53.20416667, 0.00000000 };
Point ( 9123 ) = { 0.44583333, 53.20000000, 0.00000000 };
Point ( 9124 ) = { 0.44166667, 53.19583333, 0.00000000 };
Point ( 9125 ) = { 0.43750000, 53.19166667, 0.00000000 };
Point ( 9126 ) = { 0.43333333, 53.18750000, 0.00000000 };
Point ( 9127 ) = { 0.42916667, 53.18333333, 0.00000000 };
Point ( 9128 ) = { 0.42500000, 53.17916667, 0.00000000 };
Point ( 9129 ) = { 0.42500000, 53.17083333, 0.00000000 };
Point ( 9130 ) = { 0.42083333, 53.16666667, 0.00000000 };
Point ( 9131 ) = { 0.41666667, 53.16250000, 0.00000000 };
Point ( 9132 ) = { 0.41666667, 53.15416667, 0.00000000 };
Point ( 9133 ) = { 0.41666667, 53.14583333, 0.00000000 };
Point ( 9134 ) = { 0.41666667, 53.13750000, 0.00000000 };
Point ( 9135 ) = { 0.41250000, 53.13333333, 0.00000000 };
Point ( 9136 ) = { 0.40416667, 53.13333333, 0.00000000 };
Point ( 9137 ) = { 0.40000000, 53.12916667, 0.00000000 };
Point ( 9138 ) = { 0.40416667, 53.12500000, 0.00000000 };
Point ( 9139 ) = { 0.40833333, 53.12083333, 0.00000000 };
Point ( 9140 ) = { 0.40833333, 53.11250000, 0.00000000 };
Point ( 9141 ) = { 0.40833333, 53.10416667, 0.00000000 };
Point ( 9142 ) = { 0.41250000, 53.10000000, 0.00000000 };
Point ( 9143 ) = { 0.41666667, 53.09583333, 0.00000000 };
Point ( 9144 ) = { 0.41666667, 53.08750000, 0.00000000 };
Point ( 9145 ) = { 0.41666667, 53.07916667, 0.00000000 };
Point ( 9146 ) = { 0.41666667, 53.07083333, 0.00000000 };
Point ( 9147 ) = { 0.41250000, 53.06666667, 0.00000000 };
Point ( 9148 ) = { 0.40833333, 53.06250000, 0.00000000 };
Point ( 9149 ) = { 0.40833333, 53.05416667, 0.00000000 };
Point ( 9150 ) = { 0.40833333, 53.04583333, 0.00000000 };
Point ( 9151 ) = { 0.40416667, 53.04166667, 0.00000000 };
Point ( 9152 ) = { 0.39583333, 53.04166667, 0.00000000 };
Point ( 9153 ) = { 0.39166667, 53.03750000, 0.00000000 };
Point ( 9154 ) = { 0.38750000, 53.03333333, 0.00000000 };
Point ( 9155 ) = { 0.38333333, 53.02916667, 0.00000000 };
Point ( 9156 ) = { 0.37916667, 53.02500000, 0.00000000 };
Point ( 9157 ) = { 0.37500000, 53.02083333, 0.00000000 };
Point ( 9158 ) = { 0.37083333, 53.01666667, 0.00000000 };
Point ( 9159 ) = { 0.36250000, 53.01666667, 0.00000000 };
Point ( 9160 ) = { 0.35833333, 53.01250000, 0.00000000 };
Point ( 9161 ) = { 0.35416667, 53.00833333, 0.00000000 };
Point ( 9162 ) = { 0.34583333, 53.00833333, 0.00000000 };
Point ( 9163 ) = { 0.34166667, 53.00416667, 0.00000000 };
Point ( 9164 ) = { 0.33750000, 53.00000000, 0.00000000 };
Point ( 9165 ) = { 0.33333333, 52.99583333, 0.00000000 };
Point ( 9166 ) = { 0.32916667, 52.99166667, 0.00000000 };
Point ( 9167 ) = { 0.32083333, 52.99166667, 0.00000000 };
Point ( 9168 ) = { 0.31666667, 52.98750000, 0.00000000 };
Point ( 9169 ) = { 0.31250000, 52.98333333, 0.00000000 };
Point ( 9170 ) = { 0.30416667, 52.98333333, 0.00000000 };
Point ( 9171 ) = { 0.30000000, 52.97916667, 0.00000000 };
Point ( 9172 ) = { 0.29583333, 52.97500000, 0.00000000 };
Point ( 9173 ) = { 0.28750000, 52.97500000, 0.00000000 };
Point ( 9174 ) = { 0.27916667, 52.97500000, 0.00000000 };
Point ( 9175 ) = { 0.27500000, 52.97083333, 0.00000000 };
Point ( 9176 ) = { 0.27083333, 52.96666667, 0.00000000 };
Point ( 9177 ) = { 0.26250000, 52.96666667, 0.00000000 };
Point ( 9178 ) = { 0.25833333, 52.96250000, 0.00000000 };
Point ( 9179 ) = { 0.25416667, 52.95833333, 0.00000000 };
Point ( 9180 ) = { 0.25000000, 52.95416667, 0.00000000 };
Point ( 9181 ) = { 0.24583333, 52.95000000, 0.00000000 };
Point ( 9182 ) = { 0.24166667, 52.94583333, 0.00000000 };
Point ( 9183 ) = { 0.24166667, 52.93750000, 0.00000000 };
Point ( 9184 ) = { 0.24166667, 52.92916667, 0.00000000 };
Point ( 9185 ) = { 0.24166667, 52.92083333, 0.00000000 };
Point ( 9186 ) = { 0.24583333, 52.91666667, 0.00000000 };
Point ( 9187 ) = { 0.25416667, 52.91666667, 0.00000000 };
Point ( 9188 ) = { 0.26250000, 52.91666667, 0.00000000 };
Point ( 9189 ) = { 0.27083333, 52.91666667, 0.00000000 };
Point ( 9190 ) = { 0.27500000, 52.92083333, 0.00000000 };
Point ( 9191 ) = { 0.27916667, 52.92500000, 0.00000000 };
Point ( 9192 ) = { 0.28750000, 52.92500000, 0.00000000 };
Point ( 9193 ) = { 0.29166667, 52.92916667, 0.00000000 };
Point ( 9194 ) = { 0.29166667, 52.93750000, 0.00000000 };
Point ( 9195 ) = { 0.29583333, 52.94166667, 0.00000000 };
Point ( 9196 ) = { 0.30416667, 52.94166667, 0.00000000 };
Point ( 9197 ) = { 0.30833333, 52.93750000, 0.00000000 };
Point ( 9198 ) = { 0.31250000, 52.93333333, 0.00000000 };
Point ( 9199 ) = { 0.31666667, 52.92916667, 0.00000000 };
Point ( 9200 ) = { 0.32083333, 52.92500000, 0.00000000 };
Point ( 9201 ) = { 0.32916667, 52.92500000, 0.00000000 };
Point ( 9202 ) = { 0.33750000, 52.92500000, 0.00000000 };
Point ( 9203 ) = { 0.34583333, 52.92500000, 0.00000000 };
Point ( 9204 ) = { 0.35416667, 52.92500000, 0.00000000 };
Point ( 9205 ) = { 0.36250000, 52.92500000, 0.00000000 };
Point ( 9206 ) = { 0.37083333, 52.92500000, 0.00000000 };
Point ( 9207 ) = { 0.37916667, 52.92500000, 0.00000000 };
Point ( 9208 ) = { 0.38333333, 52.92916667, 0.00000000 };
Point ( 9209 ) = { 0.38750000, 52.93333333, 0.00000000 };
Point ( 9210 ) = { 0.39166667, 52.93750000, 0.00000000 };
Point ( 9211 ) = { 0.39583333, 52.94166667, 0.00000000 };
Point ( 9212 ) = { 0.40000000, 52.94583333, 0.00000000 };
Point ( 9213 ) = { 0.40416667, 52.95000000, 0.00000000 };
Point ( 9214 ) = { 0.40833333, 52.95416667, 0.00000000 };
Point ( 9215 ) = { 0.41250000, 52.95833333, 0.00000000 };
Point ( 9216 ) = { 0.41666667, 52.96250000, 0.00000000 };
Point ( 9217 ) = { 0.42083333, 52.96666667, 0.00000000 };
Point ( 9218 ) = { 0.42500000, 52.97083333, 0.00000000 };
Point ( 9219 ) = { 0.42916667, 52.97500000, 0.00000000 };
Point ( 9220 ) = { 0.43333333, 52.97916667, 0.00000000 };
Point ( 9221 ) = { 0.43333333, 52.98750000, 0.00000000 };
Point ( 9222 ) = { 0.43750000, 52.99166667, 0.00000000 };
Point ( 9223 ) = { 0.44583333, 52.99166667, 0.00000000 };
Point ( 9224 ) = { 0.45000000, 52.99583333, 0.00000000 };
Point ( 9225 ) = { 0.45416667, 53.00000000, 0.00000000 };
Point ( 9226 ) = { 0.45833333, 53.00416667, 0.00000000 };
Point ( 9227 ) = { 0.46250000, 53.00833333, 0.00000000 };
Point ( 9228 ) = { 0.46666667, 53.01250000, 0.00000000 };
Point ( 9229 ) = { 0.47083333, 53.01666667, 0.00000000 };
Point ( 9230 ) = { 0.47916667, 53.01666667, 0.00000000 };
Point ( 9231 ) = { 0.48333333, 53.02083333, 0.00000000 };
Point ( 9232 ) = { 0.48750000, 53.02500000, 0.00000000 };
Point ( 9233 ) = { 0.49583333, 53.02500000, 0.00000000 };
Point ( 9234 ) = { 0.50416667, 53.02500000, 0.00000000 };
Point ( 9235 ) = { 0.51250000, 53.02500000, 0.00000000 };
Point ( 9236 ) = { 0.52083333, 53.02500000, 0.00000000 };
Point ( 9237 ) = { 0.52916667, 53.02500000, 0.00000000 };
Point ( 9238 ) = { 0.53750000, 53.02500000, 0.00000000 };
Point ( 9239 ) = { 0.54166667, 53.02916667, 0.00000000 };
Point ( 9240 ) = { 0.54583333, 53.03333333, 0.00000000 };
Point ( 9241 ) = { 0.55416667, 53.03333333, 0.00000000 };
Point ( 9242 ) = { 0.56250000, 53.03333333, 0.00000000 };
Point ( 9243 ) = { 0.57083333, 53.03333333, 0.00000000 };
Point ( 9244 ) = { 0.57500000, 53.03750000, 0.00000000 };
Point ( 9245 ) = { 0.57916667, 53.04166667, 0.00000000 };
Point ( 9246 ) = { 0.58750000, 53.04166667, 0.00000000 };
Point ( 9247 ) = { 0.59166667, 53.04583333, 0.00000000 };
Point ( 9248 ) = { 0.58750000, 53.05000000, 0.00000000 };
Point ( 9249 ) = { 0.58333333, 53.05416667, 0.00000000 };
Point ( 9250 ) = { 0.58333333, 53.06250000, 0.00000000 };
Point ( 9251 ) = { 0.58333333, 53.07083333, 0.00000000 };
Point ( 9252 ) = { 0.58333333, 53.07916667, 0.00000000 };
Point ( 9253 ) = { 0.58333333, 53.08750000, 0.00000000 };
Point ( 9254 ) = { 0.58333333, 53.09583333, 0.00000000 };
Point ( 9255 ) = { 0.58333333, 53.10416667, 0.00000000 };
Point ( 9256 ) = { 0.58333333, 53.11250000, 0.00000000 };
Point ( 9257 ) = { 0.58750000, 53.11666667, 0.00000000 };
Point ( 9258 ) = { 0.59583333, 53.11666667, 0.00000000 };
Point ( 9259 ) = { 0.60000000, 53.12083333, 0.00000000 };
Point ( 9260 ) = { 0.60416667, 53.12500000, 0.00000000 };
Point ( 9261 ) = { 0.60833333, 53.12916667, 0.00000000 };
Point ( 9262 ) = { 0.61250000, 53.13333333, 0.00000000 };
Point ( 9263 ) = { 0.62083333, 53.13333333, 0.00000000 };
Point ( 9264 ) = { 0.62500000, 53.12916667, 0.00000000 };
Point ( 9265 ) = { 0.62916667, 53.12500000, 0.00000000 };
Point ( 9266 ) = { 0.63750000, 53.12500000, 0.00000000 };
Point ( 9267 ) = { 0.64166667, 53.12083333, 0.00000000 };
Point ( 9268 ) = { 0.64583333, 53.11666667, 0.00000000 };
Point ( 9269 ) = { 0.65416667, 53.11666667, 0.00000000 };
Point ( 9270 ) = { 0.65833333, 53.11250000, 0.00000000 };
Point ( 9271 ) = { 0.66250000, 53.10833333, 0.00000000 };
Point ( 9272 ) = { 0.67083333, 53.10833333, 0.00000000 };
Point ( 9273 ) = { 0.67916667, 53.10833333, 0.00000000 };
Point ( 9274 ) = { 0.68750000, 53.10833333, 0.00000000 };
Point ( 9275 ) = { 0.69583333, 53.10833333, 0.00000000 };
Point ( 9276 ) = { 0.70416667, 53.10833333, 0.00000000 };
Point ( 9277 ) = { 0.70833333, 53.11250000, 0.00000000 };
Point ( 9278 ) = { 0.71250000, 53.11666667, 0.00000000 };
Point ( 9279 ) = { 0.71666667, 53.12083333, 0.00000000 };
Point ( 9280 ) = { 0.71666667, 53.12916667, 0.00000000 };
Point ( 9281 ) = { 0.71250000, 53.13333333, 0.00000000 };
Point ( 9282 ) = { 0.70833333, 53.13750000, 0.00000000 };
Point ( 9283 ) = { 0.70416667, 53.14166667, 0.00000000 };
Point ( 9284 ) = { 0.69583333, 53.14166667, 0.00000000 };
Point ( 9285 ) = { 0.69166667, 53.14583333, 0.00000000 };
Point ( 9286 ) = { 0.68750000, 53.15000000, 0.00000000 };
Point ( 9287 ) = { 0.67916667, 53.15000000, 0.00000000 };
Point ( 9288 ) = { 0.67500000, 53.15416667, 0.00000000 };
Point ( 9289 ) = { 0.67083333, 53.15833333, 0.00000000 };
Point ( 9290 ) = { 0.66250000, 53.15833333, 0.00000000 };
Point ( 9291 ) = { 0.65833333, 53.16250000, 0.00000000 };
Point ( 9292 ) = { 0.65833333, 53.17083333, 0.00000000 };
Point ( 9293 ) = { 0.66250000, 53.17500000, 0.00000000 };
Point ( 9294 ) = { 0.67083333, 53.17500000, 0.00000000 };
Point ( 9295 ) = { 0.67500000, 53.17916667, 0.00000000 };
Point ( 9296 ) = { 0.67916667, 53.18333333, 0.00000000 };
Point ( 9297 ) = { 0.68333333, 53.18750000, 0.00000000 };
Point ( 9298 ) = { 0.68333333, 53.19583333, 0.00000000 };
Point ( 9299 ) = { 0.67916667, 53.20000000, 0.00000000 };
Point ( 9300 ) = { 0.67500000, 53.20416667, 0.00000000 };
Point ( 9301 ) = { 0.67916667, 53.20833333, 0.00000000 };
Point ( 9302 ) = { 0.68333333, 53.21250000, 0.00000000 };
Point ( 9303 ) = { 0.68333333, 53.22083333, 0.00000000 };
Point ( 9304 ) = { 0.68750000, 53.22500000, 0.00000000 };
Point ( 9305 ) = { 0.69166667, 53.22916667, 0.00000000 };
Point ( 9306 ) = { 0.69583333, 53.23333333, 0.00000000 };
Point ( 9307 ) = { 0.70416667, 53.23333333, 0.00000000 };
Point ( 9308 ) = { 0.70833333, 53.22916667, 0.00000000 };
Point ( 9309 ) = { 0.71250000, 53.22500000, 0.00000000 };
Point ( 9310 ) = { 0.71666667, 53.22083333, 0.00000000 };
Point ( 9311 ) = { 0.72083333, 53.21666667, 0.00000000 };
Point ( 9312 ) = { 0.72500000, 53.21250000, 0.00000000 };
Point ( 9313 ) = { 0.72916667, 53.20833333, 0.00000000 };
Point ( 9314 ) = { 0.73750000, 53.20833333, 0.00000000 };
Point ( 9315 ) = { 0.74166667, 53.20416667, 0.00000000 };
Point ( 9316 ) = { 0.74583333, 53.20000000, 0.00000000 };
Point ( 9317 ) = { 0.75416667, 53.20000000, 0.00000000 };
Point ( 9318 ) = { 0.75833333, 53.19583333, 0.00000000 };
Point ( 9319 ) = { 0.76250000, 53.19166667, 0.00000000 };
Point ( 9320 ) = { 0.77083333, 53.19166667, 0.00000000 };
Point ( 9321 ) = { 0.77916667, 53.19166667, 0.00000000 };
Point ( 9322 ) = { 0.78333333, 53.18750000, 0.00000000 };
Point ( 9323 ) = { 0.78750000, 53.18333333, 0.00000000 };
Point ( 9324 ) = { 0.79583333, 53.18333333, 0.00000000 };
Point ( 9325 ) = { 0.80000000, 53.17916667, 0.00000000 };
Point ( 9326 ) = { 0.79583333, 53.17500000, 0.00000000 };
Point ( 9327 ) = { 0.78750000, 53.17500000, 0.00000000 };
Point ( 9328 ) = { 0.78333333, 53.17083333, 0.00000000 };
Point ( 9329 ) = { 0.78333333, 53.16250000, 0.00000000 };
Point ( 9330 ) = { 0.78333333, 53.15416667, 0.00000000 };
Point ( 9331 ) = { 0.77916667, 53.15000000, 0.00000000 };
Point ( 9332 ) = { 0.77500000, 53.14583333, 0.00000000 };
Point ( 9333 ) = { 0.77500000, 53.13750000, 0.00000000 };
Point ( 9334 ) = { 0.77916667, 53.13333333, 0.00000000 };
Point ( 9335 ) = { 0.78333333, 53.12916667, 0.00000000 };
Point ( 9336 ) = { 0.78750000, 53.12500000, 0.00000000 };
Point ( 9337 ) = { 0.79583333, 53.12500000, 0.00000000 };
Point ( 9338 ) = { 0.80416667, 53.12500000, 0.00000000 };
Point ( 9339 ) = { 0.80833333, 53.12083333, 0.00000000 };
Point ( 9340 ) = { 0.81250000, 53.11666667, 0.00000000 };
Point ( 9341 ) = { 0.81666667, 53.11250000, 0.00000000 };
Point ( 9342 ) = { 0.81666667, 53.10416667, 0.00000000 };
Point ( 9343 ) = { 0.82083333, 53.10000000, 0.00000000 };
Point ( 9344 ) = { 0.82500000, 53.09583333, 0.00000000 };
Point ( 9345 ) = { 0.82083333, 53.09166667, 0.00000000 };
Point ( 9346 ) = { 0.81666667, 53.09583333, 0.00000000 };
Point ( 9347 ) = { 0.81250000, 53.10000000, 0.00000000 };
Point ( 9348 ) = { 0.80833333, 53.09583333, 0.00000000 };
Point ( 9349 ) = { 0.80416667, 53.09166667, 0.00000000 };
Point ( 9350 ) = { 0.80000000, 53.08750000, 0.00000000 };
Point ( 9351 ) = { 0.80000000, 53.07916667, 0.00000000 };
Point ( 9352 ) = { 0.80000000, 53.07083333, 0.00000000 };
Point ( 9353 ) = { 0.80416667, 53.06666667, 0.00000000 };
Point ( 9354 ) = { 0.81250000, 53.06666667, 0.00000000 };
Point ( 9355 ) = { 0.81666667, 53.06250000, 0.00000000 };
Point ( 9356 ) = { 0.82083333, 53.05833333, 0.00000000 };
Point ( 9357 ) = { 0.82916667, 53.05833333, 0.00000000 };
Point ( 9358 ) = { 0.83333333, 53.06250000, 0.00000000 };
Point ( 9359 ) = { 0.83333333, 53.07083333, 0.00000000 };
Point ( 9360 ) = { 0.83333333, 53.07916667, 0.00000000 };
Point ( 9361 ) = { 0.83333333, 53.08750000, 0.00000000 };
Point ( 9362 ) = { 0.83333333, 53.09583333, 0.00000000 };
Point ( 9363 ) = { 0.83333333, 53.10416667, 0.00000000 };
Point ( 9364 ) = { 0.83750000, 53.10833333, 0.00000000 };
Point ( 9365 ) = { 0.84166667, 53.10416667, 0.00000000 };
Point ( 9366 ) = { 0.84166667, 53.09583333, 0.00000000 };
Point ( 9367 ) = { 0.84166667, 53.08750000, 0.00000000 };
Point ( 9368 ) = { 0.84166667, 53.07916667, 0.00000000 };
Point ( 9369 ) = { 0.84166667, 53.07083333, 0.00000000 };
Point ( 9370 ) = { 0.84166667, 53.06250000, 0.00000000 };
Point ( 9371 ) = { 0.84583333, 53.05833333, 0.00000000 };
Point ( 9372 ) = { 0.85416667, 53.05833333, 0.00000000 };
Point ( 9373 ) = { 0.85833333, 53.05416667, 0.00000000 };
Point ( 9374 ) = { 0.86250000, 53.05000000, 0.00000000 };
Point ( 9375 ) = { 0.86666667, 53.05416667, 0.00000000 };
Point ( 9376 ) = { 0.87083333, 53.05833333, 0.00000000 };
Point ( 9377 ) = { 0.87500000, 53.06250000, 0.00000000 };
Point ( 9378 ) = { 0.87916667, 53.06666667, 0.00000000 };
Point ( 9379 ) = { 0.88750000, 53.06666667, 0.00000000 };
Point ( 9380 ) = { 0.89166667, 53.06250000, 0.00000000 };
Point ( 9381 ) = { 0.89583333, 53.05833333, 0.00000000 };
Point ( 9382 ) = { 0.90000000, 53.05416667, 0.00000000 };
Point ( 9383 ) = { 0.90416667, 53.05000000, 0.00000000 };
Point ( 9384 ) = { 0.91250000, 53.05000000, 0.00000000 };
Point ( 9385 ) = { 0.91666667, 53.04583333, 0.00000000 };
Point ( 9386 ) = { 0.91250000, 53.04166667, 0.00000000 };
Point ( 9387 ) = { 0.90833333, 53.03750000, 0.00000000 };
Point ( 9388 ) = { 0.90416667, 53.03333333, 0.00000000 };
Point ( 9389 ) = { 0.89583333, 53.03333333, 0.00000000 };
Point ( 9390 ) = { 0.88750000, 53.03333333, 0.00000000 };
Point ( 9391 ) = { 0.88333333, 53.02916667, 0.00000000 };
Point ( 9392 ) = { 0.87916667, 53.02500000, 0.00000000 };
Point ( 9393 ) = { 0.87500000, 53.02083333, 0.00000000 };
Point ( 9394 ) = { 0.87083333, 53.01666667, 0.00000000 };
Point ( 9395 ) = { 0.86666667, 53.02083333, 0.00000000 };
Point ( 9396 ) = { 0.86666667, 53.02916667, 0.00000000 };
Point ( 9397 ) = { 0.86250000, 53.03333333, 0.00000000 };
Point ( 9398 ) = { 0.85833333, 53.02916667, 0.00000000 };
Point ( 9399 ) = { 0.85416667, 53.02500000, 0.00000000 };
Point ( 9400 ) = { 0.85000000, 53.02083333, 0.00000000 };
Point ( 9401 ) = { 0.84583333, 53.01666667, 0.00000000 };
Point ( 9402 ) = { 0.84166667, 53.01250000, 0.00000000 };
Point ( 9403 ) = { 0.84166667, 53.00416667, 0.00000000 };
Point ( 9404 ) = { 0.83750000, 53.00000000, 0.00000000 };
Point ( 9405 ) = { 0.82916667, 53.00000000, 0.00000000 };
Point ( 9406 ) = { 0.82500000, 52.99583333, 0.00000000 };
Point ( 9407 ) = { 0.82083333, 52.99166667, 0.00000000 };
Point ( 9408 ) = { 0.81250000, 52.99166667, 0.00000000 };
Point ( 9409 ) = { 0.80833333, 52.98750000, 0.00000000 };
Point ( 9410 ) = { 0.80833333, 52.97916667, 0.00000000 };
Point ( 9411 ) = { 0.81250000, 52.97500000, 0.00000000 };
Point ( 9412 ) = { 0.81666667, 52.97916667, 0.00000000 };
Point ( 9413 ) = { 0.82083333, 52.98333333, 0.00000000 };
Point ( 9414 ) = { 0.82916667, 52.98333333, 0.00000000 };
Point ( 9415 ) = { 0.83750000, 52.98333333, 0.00000000 };
Point ( 9416 ) = { 0.84166667, 52.97916667, 0.00000000 };
Point ( 9417 ) = { 0.84583333, 52.97500000, 0.00000000 };
Point ( 9418 ) = { 0.85416667, 52.97500000, 0.00000000 };
Point ( 9419 ) = { 0.86250000, 52.97500000, 0.00000000 };
Point ( 9420 ) = { 0.86666667, 52.97916667, 0.00000000 };
Point ( 9421 ) = { 0.87083333, 52.98333333, 0.00000000 };
Point ( 9422 ) = { 0.87500000, 52.97916667, 0.00000000 };
Point ( 9423 ) = { 0.87916667, 52.97500000, 0.00000000 };
Point ( 9424 ) = { 0.88750000, 52.97500000, 0.00000000 };
Point ( 9425 ) = { 0.89583333, 52.97500000, 0.00000000 };
Point ( 9426 ) = { 0.90416667, 52.97500000, 0.00000000 };
Point ( 9427 ) = { 0.90833333, 52.97083333, 0.00000000 };
Point ( 9428 ) = { 0.91250000, 52.96666667, 0.00000000 };
Point ( 9429 ) = { 0.91666667, 52.97083333, 0.00000000 };
Point ( 9430 ) = { 0.92083333, 52.97500000, 0.00000000 };
Point ( 9431 ) = { 0.92500000, 52.97083333, 0.00000000 };
Point ( 9432 ) = { 0.92916667, 52.96666667, 0.00000000 };
Point ( 9433 ) = { 0.93750000, 52.96666667, 0.00000000 };
Point ( 9434 ) = { 0.94583333, 52.96666667, 0.00000000 };
Point ( 9435 ) = { 0.95416667, 52.96666667, 0.00000000 };
Point ( 9436 ) = { 0.95833333, 52.97083333, 0.00000000 };
Point ( 9437 ) = { 0.96250000, 52.97500000, 0.00000000 };
Point ( 9438 ) = { 0.96666667, 52.97916667, 0.00000000 };
Point ( 9439 ) = { 0.97083333, 52.98333333, 0.00000000 };
Point ( 9440 ) = { 0.97916667, 52.98333333, 0.00000000 };
Point ( 9441 ) = { 0.98750000, 52.98333333, 0.00000000 };
Point ( 9442 ) = { 0.99166667, 52.97916667, 0.00000000 };
Point ( 9443 ) = { 0.99583333, 52.97500000, 0.00000000 };
Point ( 9444 ) = { 1.00416667, 52.97500000, 0.00000000 };
Point ( 9445 ) = { 1.01250000, 52.97500000, 0.00000000 };
Point ( 9446 ) = { 1.02083333, 52.97500000, 0.00000000 };
Point ( 9447 ) = { 1.02916667, 52.97500000, 0.00000000 };
Point ( 9448 ) = { 1.03750000, 52.97500000, 0.00000000 };
Point ( 9449 ) = { 1.04583333, 52.97500000, 0.00000000 };
Point ( 9450 ) = { 1.05416667, 52.97500000, 0.00000000 };
Point ( 9451 ) = { 1.06250000, 52.97500000, 0.00000000 };
Point ( 9452 ) = { 1.07083333, 52.97500000, 0.00000000 };
Point ( 9453 ) = { 1.07916667, 52.97500000, 0.00000000 };
Point ( 9454 ) = { 1.08750000, 52.97500000, 0.00000000 };
Point ( 9455 ) = { 1.09166667, 52.97083333, 0.00000000 };
Point ( 9456 ) = { 1.09583333, 52.96666667, 0.00000000 };
Point ( 9457 ) = { 1.10416667, 52.96666667, 0.00000000 };
Point ( 9458 ) = { 1.11250000, 52.96666667, 0.00000000 };
Point ( 9459 ) = { 1.12083333, 52.96666667, 0.00000000 };
Point ( 9460 ) = { 1.12500000, 52.96250000, 0.00000000 };
Point ( 9461 ) = { 1.12916667, 52.95833333, 0.00000000 };
Point ( 9462 ) = { 1.13750000, 52.95833333, 0.00000000 };
Point ( 9463 ) = { 1.14583333, 52.95833333, 0.00000000 };
Point ( 9464 ) = { 1.15416667, 52.95833333, 0.00000000 };
Point ( 9465 ) = { 1.16250000, 52.95833333, 0.00000000 };
Point ( 9466 ) = { 1.17083333, 52.95833333, 0.00000000 };
Point ( 9467 ) = { 1.17916667, 52.95833333, 0.00000000 };
Point ( 9468 ) = { 1.18750000, 52.95833333, 0.00000000 };
Point ( 9469 ) = { 1.19583333, 52.95833333, 0.00000000 };
Point ( 9470 ) = { 1.20416667, 52.95833333, 0.00000000 };
Point ( 9471 ) = { 1.21250000, 52.95833333, 0.00000000 };
Point ( 9472 ) = { 1.22083333, 52.95833333, 0.00000000 };
Point ( 9473 ) = { 1.22916667, 52.95833333, 0.00000000 };
Point ( 9474 ) = { 1.23750000, 52.95833333, 0.00000000 };
Point ( 9475 ) = { 1.24583333, 52.95833333, 0.00000000 };
Point ( 9476 ) = { 1.25416667, 52.95833333, 0.00000000 };
Point ( 9477 ) = { 1.26250000, 52.95833333, 0.00000000 };
Point ( 9478 ) = { 1.26666667, 52.95416667, 0.00000000 };
Point ( 9479 ) = { 1.27083333, 52.95000000, 0.00000000 };
Point ( 9480 ) = { 1.27916667, 52.95000000, 0.00000000 };
Point ( 9481 ) = { 1.28333333, 52.94583333, 0.00000000 };
Point ( 9482 ) = { 1.28750000, 52.94166667, 0.00000000 };
Point ( 9483 ) = { 1.29583333, 52.94166667, 0.00000000 };
Point ( 9484 ) = { 1.30000000, 52.93750000, 0.00000000 };
Point ( 9485 ) = { 1.30416667, 52.93333333, 0.00000000 };
Point ( 9486 ) = { 1.31250000, 52.93333333, 0.00000000 };
Point ( 9487 ) = { 1.32083333, 52.93333333, 0.00000000 };
Point ( 9488 ) = { 1.32916667, 52.93333333, 0.00000000 };
Point ( 9489 ) = { 1.33750000, 52.93333333, 0.00000000 };
Point ( 9490 ) = { 1.34166667, 52.92916667, 0.00000000 };
Point ( 9491 ) = { 1.34583333, 52.92500000, 0.00000000 };
Point ( 9492 ) = { 1.35416667, 52.92500000, 0.00000000 };
Point ( 9493 ) = { 1.36250000, 52.92500000, 0.00000000 };
Point ( 9494 ) = { 1.37083333, 52.92500000, 0.00000000 };
Point ( 9495 ) = { 1.37916667, 52.92500000, 0.00000000 };
Point ( 9496 ) = { 1.38750000, 52.92500000, 0.00000000 };
Point ( 9497 ) = { 1.39583333, 52.92500000, 0.00000000 };
Point ( 9498 ) = { 1.40000000, 52.92083333, 0.00000000 };
Point ( 9499 ) = { 1.40416667, 52.91666667, 0.00000000 };
Point ( 9500 ) = { 1.40833333, 52.92083333, 0.00000000 };
Point ( 9501 ) = { 1.41250000, 52.92500000, 0.00000000 };
Point ( 9502 ) = { 1.41666667, 52.92083333, 0.00000000 };
Point ( 9503 ) = { 1.41666667, 52.91250000, 0.00000000 };
Point ( 9504 ) = { 1.42083333, 52.90833333, 0.00000000 };
Point ( 9505 ) = { 1.42916667, 52.90833333, 0.00000000 };
Point ( 9506 ) = { 1.43750000, 52.90833333, 0.00000000 };
Point ( 9507 ) = { 1.44166667, 52.90416667, 0.00000000 };
Point ( 9508 ) = { 1.44166667, 52.89583333, 0.00000000 };
Point ( 9509 ) = { 1.44166667, 52.88750000, 0.00000000 };
Point ( 9510 ) = { 1.44583333, 52.88333333, 0.00000000 };
Point ( 9511 ) = { 1.45416667, 52.88333333, 0.00000000 };
Point ( 9512 ) = { 1.45833333, 52.87916667, 0.00000000 };
Point ( 9513 ) = { 1.46250000, 52.87500000, 0.00000000 };
Point ( 9514 ) = { 1.47083333, 52.87500000, 0.00000000 };
Point ( 9515 ) = { 1.47500000, 52.87083333, 0.00000000 };
Point ( 9516 ) = { 1.47916667, 52.86666667, 0.00000000 };
Point ( 9517 ) = { 1.48333333, 52.86250000, 0.00000000 };
Point ( 9518 ) = { 1.48750000, 52.85833333, 0.00000000 };
Point ( 9519 ) = { 1.49166667, 52.85416667, 0.00000000 };
Point ( 9520 ) = { 1.49583333, 52.85000000, 0.00000000 };
Point ( 9521 ) = { 1.50000000, 52.84583333, 0.00000000 };
Point ( 9522 ) = { 1.50416667, 52.84166667, 0.00000000 };
Point ( 9523 ) = { 1.51250000, 52.84166667, 0.00000000 };
Point ( 9524 ) = { 1.51666667, 52.83750000, 0.00000000 };
Point ( 9525 ) = { 1.52083333, 52.83333333, 0.00000000 };
Point ( 9526 ) = { 1.52916667, 52.83333333, 0.00000000 };
Point ( 9527 ) = { 1.53333333, 52.82916667, 0.00000000 };
Point ( 9528 ) = { 1.53750000, 52.82500000, 0.00000000 };
Point ( 9529 ) = { 1.54583333, 52.82500000, 0.00000000 };
Point ( 9530 ) = { 1.55000000, 52.82083333, 0.00000000 };
Point ( 9531 ) = { 1.55416667, 52.81666667, 0.00000000 };
Point ( 9532 ) = { 1.55833333, 52.81250000, 0.00000000 };
Point ( 9533 ) = { 1.56250000, 52.80833333, 0.00000000 };
Point ( 9534 ) = { 1.57083333, 52.80833333, 0.00000000 };
Point ( 9535 ) = { 1.57500000, 52.80416667, 0.00000000 };
Point ( 9536 ) = { 1.57916667, 52.80000000, 0.00000000 };
Point ( 9537 ) = { 1.58750000, 52.80000000, 0.00000000 };
Point ( 9538 ) = { 1.59166667, 52.79583333, 0.00000000 };
Point ( 9539 ) = { 1.59583333, 52.79166667, 0.00000000 };
Point ( 9540 ) = { 1.60416667, 52.79166667, 0.00000000 };
Point ( 9541 ) = { 1.60833333, 52.78750000, 0.00000000 };
Point ( 9542 ) = { 1.61250000, 52.78333333, 0.00000000 };
Point ( 9543 ) = { 1.62083333, 52.78333333, 0.00000000 };
Point ( 9544 ) = { 1.62500000, 52.77916667, 0.00000000 };
Point ( 9545 ) = { 1.62916667, 52.77500000, 0.00000000 };
Point ( 9546 ) = { 1.63750000, 52.77500000, 0.00000000 };
Point ( 9547 ) = { 1.64166667, 52.77083333, 0.00000000 };
Point ( 9548 ) = { 1.64583333, 52.76666667, 0.00000000 };
Point ( 9549 ) = { 1.65000000, 52.76250000, 0.00000000 };
Point ( 9550 ) = { 1.65416667, 52.75833333, 0.00000000 };
Point ( 9551 ) = { 1.66250000, 52.75833333, 0.00000000 };
Point ( 9552 ) = { 1.67083333, 52.75833333, 0.00000000 };
Point ( 9553 ) = { 1.67916667, 52.75833333, 0.00000000 };
Point ( 9554 ) = { 1.68750000, 52.75833333, 0.00000000 };
Point ( 9555 ) = { 1.69166667, 52.75416667, 0.00000000 };
Point ( 9556 ) = { 1.69583333, 52.75000000, 0.00000000 };
Point ( 9557 ) = { 1.70000000, 52.74583333, 0.00000000 };
Point ( 9558 ) = { 1.70416667, 52.74166667, 0.00000000 };
Point ( 9559 ) = { 1.70833333, 52.73750000, 0.00000000 };
Point ( 9560 ) = { 1.70833333, 52.72916667, 0.00000000 };
Point ( 9561 ) = { 1.70833333, 52.72083333, 0.00000000 };
Point ( 9562 ) = { 1.70833333, 52.71250000, 0.00000000 };
Point ( 9563 ) = { 1.70833333, 52.70416667, 0.00000000 };
Point ( 9564 ) = { 1.71250000, 52.70000000, 0.00000000 };
Point ( 9565 ) = { 1.71666667, 52.69583333, 0.00000000 };
Point ( 9566 ) = { 1.71666667, 52.68750000, 0.00000000 };
Point ( 9567 ) = { 1.72083333, 52.68333333, 0.00000000 };
Point ( 9568 ) = { 1.72500000, 52.67916667, 0.00000000 };
Point ( 9569 ) = { 1.72500000, 52.67083333, 0.00000000 };
Point ( 9570 ) = { 1.72916667, 52.66666667, 0.00000000 };
Point ( 9571 ) = { 1.73750000, 52.66666667, 0.00000000 };
Point ( 9572 ) = { 1.74166667, 52.67083333, 0.00000000 };
Point ( 9573 ) = { 1.74166667, 52.67916667, 0.00000000 };
Point ( 9574 ) = { 1.73750000, 52.68333333, 0.00000000 };
Point ( 9575 ) = { 1.73333333, 52.68750000, 0.00000000 };
Point ( 9576 ) = { 1.73333333, 52.69583333, 0.00000000 };
Point ( 9577 ) = { 1.73750000, 52.70000000, 0.00000000 };
Point ( 9578 ) = { 1.74583333, 52.70000000, 0.00000000 };
Point ( 9579 ) = { 1.75416667, 52.70000000, 0.00000000 };
Point ( 9580 ) = { 1.75833333, 52.69583333, 0.00000000 };
Point ( 9581 ) = { 1.75833333, 52.68750000, 0.00000000 };
Point ( 9582 ) = { 1.75833333, 52.67916667, 0.00000000 };
Point ( 9583 ) = { 1.75833333, 52.67083333, 0.00000000 };
Point ( 9584 ) = { 1.75833333, 52.66250000, 0.00000000 };
Point ( 9585 ) = { 1.75416667, 52.65833333, 0.00000000 };
Point ( 9586 ) = { 1.75000000, 52.65416667, 0.00000000 };
Point ( 9587 ) = { 1.75000000, 52.64583333, 0.00000000 };
Point ( 9588 ) = { 1.74583333, 52.64166667, 0.00000000 };
Point ( 9589 ) = { 1.74166667, 52.63750000, 0.00000000 };
Point ( 9590 ) = { 1.74583333, 52.63333333, 0.00000000 };
Point ( 9591 ) = { 1.75000000, 52.62916667, 0.00000000 };
Point ( 9592 ) = { 1.75000000, 52.62083333, 0.00000000 };
Point ( 9593 ) = { 1.75000000, 52.61250000, 0.00000000 };
Point ( 9594 ) = { 1.75000000, 52.60416667, 0.00000000 };
Point ( 9595 ) = { 1.74583333, 52.60000000, 0.00000000 };
Point ( 9596 ) = { 1.74166667, 52.59583333, 0.00000000 };
Point ( 9597 ) = { 1.74166667, 52.58750000, 0.00000000 };
Point ( 9598 ) = { 1.74166667, 52.57916667, 0.00000000 };
Point ( 9599 ) = { 1.74583333, 52.57500000, 0.00000000 };
Point ( 9600 ) = { 1.75000000, 52.57083333, 0.00000000 };
Point ( 9601 ) = { 1.75000000, 52.56250000, 0.00000000 };
Point ( 9602 ) = { 1.75416667, 52.55833333, 0.00000000 };
Point ( 9603 ) = { 1.75833333, 52.55416667, 0.00000000 };
Point ( 9604 ) = { 1.75833333, 52.54583333, 0.00000000 };
Point ( 9605 ) = { 1.76250000, 52.54166667, 0.00000000 };
Point ( 9606 ) = { 1.76666667, 52.53750000, 0.00000000 };
Point ( 9607 ) = { 1.76666667, 52.52916667, 0.00000000 };
Point ( 9608 ) = { 1.76666667, 52.52083333, 0.00000000 };
Point ( 9609 ) = { 1.76250000, 52.51666667, 0.00000000 };
Point ( 9610 ) = { 1.75833333, 52.51250000, 0.00000000 };
Point ( 9611 ) = { 1.76250000, 52.50833333, 0.00000000 };
Point ( 9612 ) = { 1.76666667, 52.50416667, 0.00000000 };
Point ( 9613 ) = { 1.76666667, 52.49583333, 0.00000000 };
Point ( 9614 ) = { 1.77083333, 52.49166667, 0.00000000 };
Point ( 9615 ) = { 1.77500000, 52.48750000, 0.00000000 };
Point ( 9616 ) = { 1.77916667, 52.48333333, 0.00000000 };
Point ( 9617 ) = { 1.78333333, 52.48750000, 0.00000000 };
Point ( 9618 ) = { 1.78750000, 52.49166667, 0.00000000 };
Point ( 9619 ) = { 1.79166667, 52.49583333, 0.00000000 };
Point ( 9620 ) = { 1.78750000, 52.50000000, 0.00000000 };
Point ( 9621 ) = { 1.78333333, 52.50416667, 0.00000000 };
Point ( 9622 ) = { 1.78750000, 52.50833333, 0.00000000 };
Point ( 9623 ) = { 1.79166667, 52.51250000, 0.00000000 };
Point ( 9624 ) = { 1.78750000, 52.51666667, 0.00000000 };
Point ( 9625 ) = { 1.78333333, 52.52083333, 0.00000000 };
Point ( 9626 ) = { 1.78333333, 52.52916667, 0.00000000 };
Point ( 9627 ) = { 1.78333333, 52.53750000, 0.00000000 };
Point ( 9628 ) = { 1.78333333, 52.54583333, 0.00000000 };
Point ( 9629 ) = { 1.78750000, 52.55000000, 0.00000000 };
Point ( 9630 ) = { 1.79583333, 52.55000000, 0.00000000 };
Point ( 9631 ) = { 1.80000000, 52.54583333, 0.00000000 };
Point ( 9632 ) = { 1.80416667, 52.54166667, 0.00000000 };
Point ( 9633 ) = { 1.80833333, 52.53750000, 0.00000000 };
Point ( 9634 ) = { 1.81250000, 52.53333333, 0.00000000 };
Point ( 9635 ) = { 1.81666667, 52.52916667, 0.00000000 };
Point ( 9636 ) = { 1.82083333, 52.52500000, 0.00000000 };
Point ( 9637 ) = { 1.82500000, 52.52083333, 0.00000000 };
Point ( 9638 ) = { 1.82500000, 52.51250000, 0.00000000 };
Point ( 9639 ) = { 1.82500000, 52.50416667, 0.00000000 };
Point ( 9640 ) = { 1.82083333, 52.50000000, 0.00000000 };
Point ( 9641 ) = { 1.81666667, 52.49583333, 0.00000000 };
Point ( 9642 ) = { 1.81250000, 52.49166667, 0.00000000 };
Point ( 9643 ) = { 1.80833333, 52.48750000, 0.00000000 };
Point ( 9644 ) = { 1.80416667, 52.48333333, 0.00000000 };
Point ( 9645 ) = { 1.80000000, 52.47916667, 0.00000000 };
Point ( 9646 ) = { 1.79583333, 52.47500000, 0.00000000 };
Point ( 9647 ) = { 1.79166667, 52.47083333, 0.00000000 };
Point ( 9648 ) = { 1.79166667, 52.46250000, 0.00000000 };
Point ( 9649 ) = { 1.79166667, 52.45416667, 0.00000000 };
Point ( 9650 ) = { 1.79166667, 52.44583333, 0.00000000 };
Point ( 9651 ) = { 1.78750000, 52.44166667, 0.00000000 };
Point ( 9652 ) = { 1.78333333, 52.43750000, 0.00000000 };
Point ( 9653 ) = { 1.77916667, 52.43333333, 0.00000000 };
Point ( 9654 ) = { 1.77500000, 52.42916667, 0.00000000 };
Point ( 9655 ) = { 1.77500000, 52.42083333, 0.00000000 };
Point ( 9656 ) = { 1.77083333, 52.41666667, 0.00000000 };
Point ( 9657 ) = { 1.76666667, 52.41250000, 0.00000000 };
Point ( 9658 ) = { 1.76250000, 52.40833333, 0.00000000 };
Point ( 9659 ) = { 1.75833333, 52.40416667, 0.00000000 };
Point ( 9660 ) = { 1.75416667, 52.40000000, 0.00000000 };
Point ( 9661 ) = { 1.74583333, 52.40000000, 0.00000000 };
Point ( 9662 ) = { 1.74166667, 52.39583333, 0.00000000 };
Point ( 9663 ) = { 1.74166667, 52.38750000, 0.00000000 };
Point ( 9664 ) = { 1.73750000, 52.38333333, 0.00000000 };
Point ( 9665 ) = { 1.73333333, 52.37916667, 0.00000000 };
Point ( 9666 ) = { 1.72916667, 52.37500000, 0.00000000 };
Point ( 9667 ) = { 1.72500000, 52.37083333, 0.00000000 };
Point ( 9668 ) = { 1.72083333, 52.36666667, 0.00000000 };
Point ( 9669 ) = { 1.71666667, 52.36250000, 0.00000000 };
Point ( 9670 ) = { 1.71250000, 52.35833333, 0.00000000 };
Point ( 9671 ) = { 1.70833333, 52.35416667, 0.00000000 };
Point ( 9672 ) = { 1.70416667, 52.35000000, 0.00000000 };
Point ( 9673 ) = { 1.70000000, 52.34583333, 0.00000000 };
Point ( 9674 ) = { 1.70000000, 52.33750000, 0.00000000 };
Point ( 9675 ) = { 1.70000000, 52.32916667, 0.00000000 };
Point ( 9676 ) = { 1.70000000, 52.32083333, 0.00000000 };
Point ( 9677 ) = { 1.69583333, 52.31666667, 0.00000000 };
Point ( 9678 ) = { 1.68750000, 52.31666667, 0.00000000 };
Point ( 9679 ) = { 1.68333333, 52.31250000, 0.00000000 };
Point ( 9680 ) = { 1.67916667, 52.30833333, 0.00000000 };
Point ( 9681 ) = { 1.67500000, 52.30416667, 0.00000000 };
Point ( 9682 ) = { 1.67083333, 52.30000000, 0.00000000 };
Point ( 9683 ) = { 1.66666667, 52.29583333, 0.00000000 };
Point ( 9684 ) = { 1.66666667, 52.28750000, 0.00000000 };
Point ( 9685 ) = { 1.67083333, 52.28333333, 0.00000000 };
Point ( 9686 ) = { 1.67500000, 52.27916667, 0.00000000 };
Point ( 9687 ) = { 1.67500000, 52.27083333, 0.00000000 };
Point ( 9688 ) = { 1.67500000, 52.26250000, 0.00000000 };
Point ( 9689 ) = { 1.67083333, 52.25833333, 0.00000000 };
Point ( 9690 ) = { 1.66666667, 52.25416667, 0.00000000 };
Point ( 9691 ) = { 1.66666667, 52.24583333, 0.00000000 };
Point ( 9692 ) = { 1.66666667, 52.23750000, 0.00000000 };
Point ( 9693 ) = { 1.66250000, 52.23333333, 0.00000000 };
Point ( 9694 ) = { 1.65833333, 52.22916667, 0.00000000 };
Point ( 9695 ) = { 1.65833333, 52.22083333, 0.00000000 };
Point ( 9696 ) = { 1.65833333, 52.21250000, 0.00000000 };
Point ( 9697 ) = { 1.65833333, 52.20416667, 0.00000000 };
Point ( 9698 ) = { 1.65833333, 52.19583333, 0.00000000 };
Point ( 9699 ) = { 1.65416667, 52.19166667, 0.00000000 };
Point ( 9700 ) = { 1.65000000, 52.18750000, 0.00000000 };
Point ( 9701 ) = { 1.64583333, 52.18333333, 0.00000000 };
Point ( 9702 ) = { 1.64166667, 52.17916667, 0.00000000 };
Point ( 9703 ) = { 1.64166667, 52.17083333, 0.00000000 };
Point ( 9704 ) = { 1.63750000, 52.16666667, 0.00000000 };
Point ( 9705 ) = { 1.63333333, 52.16250000, 0.00000000 };
Point ( 9706 ) = { 1.62916667, 52.15833333, 0.00000000 };
Point ( 9707 ) = { 1.62500000, 52.15416667, 0.00000000 };
Point ( 9708 ) = { 1.62083333, 52.15000000, 0.00000000 };
Point ( 9709 ) = { 1.61250000, 52.15000000, 0.00000000 };
Point ( 9710 ) = { 1.60833333, 52.14583333, 0.00000000 };
Point ( 9711 ) = { 1.60416667, 52.14166667, 0.00000000 };
Point ( 9712 ) = { 1.60000000, 52.13750000, 0.00000000 };
Point ( 9713 ) = { 1.60000000, 52.12916667, 0.00000000 };
Point ( 9714 ) = { 1.59583333, 52.12500000, 0.00000000 };
Point ( 9715 ) = { 1.59166667, 52.12083333, 0.00000000 };
Point ( 9716 ) = { 1.59583333, 52.11666667, 0.00000000 };
Point ( 9717 ) = { 1.60000000, 52.11250000, 0.00000000 };
Point ( 9718 ) = { 1.60000000, 52.10416667, 0.00000000 };
Point ( 9719 ) = { 1.60000000, 52.09583333, 0.00000000 };
Point ( 9720 ) = { 1.59583333, 52.09166667, 0.00000000 };
Point ( 9721 ) = { 1.59166667, 52.08750000, 0.00000000 };
Point ( 9722 ) = { 1.58750000, 52.08333333, 0.00000000 };
Point ( 9723 ) = { 1.57916667, 52.08333333, 0.00000000 };
Point ( 9724 ) = { 1.57500000, 52.07916667, 0.00000000 };
Point ( 9725 ) = { 1.57083333, 52.07500000, 0.00000000 };
Point ( 9726 ) = { 1.56666667, 52.07083333, 0.00000000 };
Point ( 9727 ) = { 1.56250000, 52.06666667, 0.00000000 };
Point ( 9728 ) = { 1.55416667, 52.06666667, 0.00000000 };
Point ( 9729 ) = { 1.55000000, 52.06250000, 0.00000000 };
Point ( 9730 ) = { 1.55416667, 52.05833333, 0.00000000 };
Point ( 9731 ) = { 1.55833333, 52.05416667, 0.00000000 };
Point ( 9732 ) = { 1.55416667, 52.05000000, 0.00000000 };
Point ( 9733 ) = { 1.55000000, 52.04583333, 0.00000000 };
Point ( 9734 ) = { 1.55000000, 52.03750000, 0.00000000 };
Point ( 9735 ) = { 1.55000000, 52.02916667, 0.00000000 };
Point ( 9736 ) = { 1.55416667, 52.02500000, 0.00000000 };
Point ( 9737 ) = { 1.56250000, 52.02500000, 0.00000000 };
Point ( 9738 ) = { 1.57083333, 52.02500000, 0.00000000 };
Point ( 9739 ) = { 1.57500000, 52.02916667, 0.00000000 };
Point ( 9740 ) = { 1.57916667, 52.03333333, 0.00000000 };
Point ( 9741 ) = { 1.58333333, 52.02916667, 0.00000000 };
Point ( 9742 ) = { 1.58333333, 52.02083333, 0.00000000 };
Point ( 9743 ) = { 1.57916667, 52.01666667, 0.00000000 };
Point ( 9744 ) = { 1.57500000, 52.01250000, 0.00000000 };
Point ( 9745 ) = { 1.57083333, 52.00833333, 0.00000000 };
Point ( 9746 ) = { 1.56666667, 52.00416667, 0.00000000 };
Point ( 9747 ) = { 1.56250000, 52.00000000, 0.00000000 };
Point ( 9748 ) = { 1.55833333, 51.99583333, 0.00000000 };
Point ( 9749 ) = { 1.55416667, 51.99166667, 0.00000000 };
Point ( 9750 ) = { 1.55000000, 51.98750000, 0.00000000 };
Point ( 9751 ) = { 1.54583333, 51.98333333, 0.00000000 };
Point ( 9752 ) = { 1.53750000, 51.98333333, 0.00000000 };
Point ( 9753 ) = { 1.53333333, 51.97916667, 0.00000000 };
Point ( 9754 ) = { 1.53333333, 51.97083333, 0.00000000 };
Point ( 9755 ) = { 1.52916667, 51.96666667, 0.00000000 };
Point ( 9756 ) = { 1.52083333, 51.96666667, 0.00000000 };
Point ( 9757 ) = { 1.51250000, 51.96666667, 0.00000000 };
Point ( 9758 ) = { 1.50416667, 51.96666667, 0.00000000 };
Point ( 9759 ) = { 1.50000000, 51.97083333, 0.00000000 };
Point ( 9760 ) = { 1.50000000, 51.97916667, 0.00000000 };
Point ( 9761 ) = { 1.50416667, 51.98333333, 0.00000000 };
Point ( 9762 ) = { 1.50833333, 51.98750000, 0.00000000 };
Point ( 9763 ) = { 1.51250000, 51.99166667, 0.00000000 };
Point ( 9764 ) = { 1.52083333, 51.99166667, 0.00000000 };
Point ( 9765 ) = { 1.52500000, 51.98750000, 0.00000000 };
Point ( 9766 ) = { 1.52916667, 51.98333333, 0.00000000 };
Point ( 9767 ) = { 1.53333333, 51.98750000, 0.00000000 };
Point ( 9768 ) = { 1.53750000, 51.99166667, 0.00000000 };
Point ( 9769 ) = { 1.54166667, 51.99583333, 0.00000000 };
Point ( 9770 ) = { 1.54166667, 52.00416667, 0.00000000 };
Point ( 9771 ) = { 1.54166667, 52.01250000, 0.00000000 };
Point ( 9772 ) = { 1.54166667, 52.02083333, 0.00000000 };
Point ( 9773 ) = { 1.53750000, 52.02500000, 0.00000000 };
Point ( 9774 ) = { 1.53333333, 52.02083333, 0.00000000 };
Point ( 9775 ) = { 1.52916667, 52.01666667, 0.00000000 };
Point ( 9776 ) = { 1.52500000, 52.02083333, 0.00000000 };
Point ( 9777 ) = { 1.52083333, 52.02500000, 0.00000000 };
Point ( 9778 ) = { 1.51250000, 52.02500000, 0.00000000 };
Point ( 9779 ) = { 1.50416667, 52.02500000, 0.00000000 };
Point ( 9780 ) = { 1.50000000, 52.02916667, 0.00000000 };
Point ( 9781 ) = { 1.49583333, 52.03333333, 0.00000000 };
Point ( 9782 ) = { 1.49166667, 52.02916667, 0.00000000 };
Point ( 9783 ) = { 1.48750000, 52.02500000, 0.00000000 };
Point ( 9784 ) = { 1.48333333, 52.02083333, 0.00000000 };
Point ( 9785 ) = { 1.48333333, 52.01250000, 0.00000000 };
Point ( 9786 ) = { 1.47916667, 52.00833333, 0.00000000 };
Point ( 9787 ) = { 1.47500000, 52.00416667, 0.00000000 };
Point ( 9788 ) = { 1.47083333, 52.00000000, 0.00000000 };
Point ( 9789 ) = { 1.46666667, 51.99583333, 0.00000000 };
Point ( 9790 ) = { 1.46666667, 51.98750000, 0.00000000 };
Point ( 9791 ) = { 1.46250000, 51.98333333, 0.00000000 };
Point ( 9792 ) = { 1.45416667, 51.98333333, 0.00000000 };
Point ( 9793 ) = { 1.44583333, 51.98333333, 0.00000000 };
Point ( 9794 ) = { 1.44166667, 51.97916667, 0.00000000 };
Point ( 9795 ) = { 1.43750000, 51.97500000, 0.00000000 };
Point ( 9796 ) = { 1.43333333, 51.97083333, 0.00000000 };
Point ( 9797 ) = { 1.42916667, 51.96666667, 0.00000000 };
Point ( 9798 ) = { 1.42500000, 51.97083333, 0.00000000 };
Point ( 9799 ) = { 1.42083333, 51.97500000, 0.00000000 };
Point ( 9800 ) = { 1.41250000, 51.97500000, 0.00000000 };
Point ( 9801 ) = { 1.40833333, 51.97916667, 0.00000000 };
Point ( 9802 ) = { 1.40416667, 51.98333333, 0.00000000 };
Point ( 9803 ) = { 1.40000000, 51.97916667, 0.00000000 };
Point ( 9804 ) = { 1.40000000, 51.97083333, 0.00000000 };
Point ( 9805 ) = { 1.40000000, 51.96250000, 0.00000000 };
Point ( 9806 ) = { 1.39583333, 51.95833333, 0.00000000 };
Point ( 9807 ) = { 1.38750000, 51.95833333, 0.00000000 };
Point ( 9808 ) = { 1.37916667, 51.95833333, 0.00000000 };
Point ( 9809 ) = { 1.37500000, 51.95416667, 0.00000000 };
Point ( 9810 ) = { 1.37083333, 51.95000000, 0.00000000 };
Point ( 9811 ) = { 1.36250000, 51.95000000, 0.00000000 };
Point ( 9812 ) = { 1.35416667, 51.95000000, 0.00000000 };
Point ( 9813 ) = { 1.35000000, 51.94583333, 0.00000000 };
Point ( 9814 ) = { 1.35000000, 51.93750000, 0.00000000 };
Point ( 9815 ) = { 1.34583333, 51.93333333, 0.00000000 };
Point ( 9816 ) = { 1.33750000, 51.93333333, 0.00000000 };
Point ( 9817 ) = { 1.32916667, 51.93333333, 0.00000000 };
Point ( 9818 ) = { 1.32083333, 51.93333333, 0.00000000 };
Point ( 9819 ) = { 1.31666667, 51.92916667, 0.00000000 };
Point ( 9820 ) = { 1.31666667, 51.92083333, 0.00000000 };
Point ( 9821 ) = { 1.32083333, 51.91666667, 0.00000000 };
Point ( 9822 ) = { 1.32916667, 51.91666667, 0.00000000 };
Point ( 9823 ) = { 1.33750000, 51.91666667, 0.00000000 };
Point ( 9824 ) = { 1.34166667, 51.91250000, 0.00000000 };
Point ( 9825 ) = { 1.34166667, 51.90416667, 0.00000000 };
Point ( 9826 ) = { 1.34583333, 51.90000000, 0.00000000 };
Point ( 9827 ) = { 1.35000000, 51.90416667, 0.00000000 };
Point ( 9828 ) = { 1.35416667, 51.90833333, 0.00000000 };
Point ( 9829 ) = { 1.36250000, 51.90833333, 0.00000000 };
Point ( 9830 ) = { 1.37083333, 51.90833333, 0.00000000 };
Point ( 9831 ) = { 1.37916667, 51.90833333, 0.00000000 };
Point ( 9832 ) = { 1.38750000, 51.90833333, 0.00000000 };
Point ( 9833 ) = { 1.39583333, 51.90833333, 0.00000000 };
Point ( 9834 ) = { 1.40416667, 51.90833333, 0.00000000 };
Point ( 9835 ) = { 1.40833333, 51.90416667, 0.00000000 };
Point ( 9836 ) = { 1.40416667, 51.90000000, 0.00000000 };
Point ( 9837 ) = { 1.40000000, 51.89583333, 0.00000000 };
Point ( 9838 ) = { 1.40416667, 51.89166667, 0.00000000 };
Point ( 9839 ) = { 1.40833333, 51.88750000, 0.00000000 };
Point ( 9840 ) = { 1.41250000, 51.88333333, 0.00000000 };
Point ( 9841 ) = { 1.41666667, 51.88750000, 0.00000000 };
Point ( 9842 ) = { 1.42083333, 51.89166667, 0.00000000 };
Point ( 9843 ) = { 1.42500000, 51.88750000, 0.00000000 };
Point ( 9844 ) = { 1.42916667, 51.88333333, 0.00000000 };
Point ( 9845 ) = { 1.43750000, 51.88333333, 0.00000000 };
Point ( 9846 ) = { 1.44166667, 51.88750000, 0.00000000 };
Point ( 9847 ) = { 1.43750000, 51.89166667, 0.00000000 };
Point ( 9848 ) = { 1.43333333, 51.89583333, 0.00000000 };
Point ( 9849 ) = { 1.43750000, 51.90000000, 0.00000000 };
Point ( 9850 ) = { 1.44166667, 51.90416667, 0.00000000 };
Point ( 9851 ) = { 1.44583333, 51.90833333, 0.00000000 };
Point ( 9852 ) = { 1.45416667, 51.90833333, 0.00000000 };
Point ( 9853 ) = { 1.46250000, 51.90833333, 0.00000000 };
Point ( 9854 ) = { 1.47083333, 51.90833333, 0.00000000 };
Point ( 9855 ) = { 1.47916667, 51.90833333, 0.00000000 };
Point ( 9856 ) = { 1.48750000, 51.90833333, 0.00000000 };
Point ( 9857 ) = { 1.49583333, 51.90833333, 0.00000000 };
Point ( 9858 ) = { 1.50416667, 51.90833333, 0.00000000 };
Point ( 9859 ) = { 1.50833333, 51.90416667, 0.00000000 };
Point ( 9860 ) = { 1.50416667, 51.90000000, 0.00000000 };
Point ( 9861 ) = { 1.50000000, 51.89583333, 0.00000000 };
Point ( 9862 ) = { 1.49583333, 51.89166667, 0.00000000 };
Point ( 9863 ) = { 1.48750000, 51.89166667, 0.00000000 };
Point ( 9864 ) = { 1.47916667, 51.89166667, 0.00000000 };
Point ( 9865 ) = { 1.47500000, 51.88750000, 0.00000000 };
Point ( 9866 ) = { 1.47083333, 51.88333333, 0.00000000 };
Point ( 9867 ) = { 1.46250000, 51.88333333, 0.00000000 };
Point ( 9868 ) = { 1.45416667, 51.88333333, 0.00000000 };
Point ( 9869 ) = { 1.45000000, 51.87916667, 0.00000000 };
Point ( 9870 ) = { 1.44583333, 51.87500000, 0.00000000 };
Point ( 9871 ) = { 1.44166667, 51.87083333, 0.00000000 };
Point ( 9872 ) = { 1.44583333, 51.86666667, 0.00000000 };
Point ( 9873 ) = { 1.45416667, 51.86666667, 0.00000000 };
Point ( 9874 ) = { 1.45833333, 51.86250000, 0.00000000 };
Point ( 9875 ) = { 1.45833333, 51.85416667, 0.00000000 };
Point ( 9876 ) = { 1.45416667, 51.85000000, 0.00000000 };
Point ( 9877 ) = { 1.44583333, 51.85000000, 0.00000000 };
Point ( 9878 ) = { 1.43750000, 51.85000000, 0.00000000 };
Point ( 9879 ) = { 1.42916667, 51.85000000, 0.00000000 };
Point ( 9880 ) = { 1.42500000, 51.84583333, 0.00000000 };
Point ( 9881 ) = { 1.42083333, 51.84166667, 0.00000000 };
Point ( 9882 ) = { 1.41666667, 51.84583333, 0.00000000 };
Point ( 9883 ) = { 1.41250000, 51.85000000, 0.00000000 };
Point ( 9884 ) = { 1.40833333, 51.84583333, 0.00000000 };
Point ( 9885 ) = { 1.40416667, 51.84166667, 0.00000000 };
Point ( 9886 ) = { 1.39583333, 51.84166667, 0.00000000 };
Point ( 9887 ) = { 1.38750000, 51.84166667, 0.00000000 };
Point ( 9888 ) = { 1.38333333, 51.83750000, 0.00000000 };
Point ( 9889 ) = { 1.37916667, 51.83333333, 0.00000000 };
Point ( 9890 ) = { 1.37083333, 51.83333333, 0.00000000 };
Point ( 9891 ) = { 1.36666667, 51.82916667, 0.00000000 };
Point ( 9892 ) = { 1.36250000, 51.82500000, 0.00000000 };
Point ( 9893 ) = { 1.35416667, 51.82500000, 0.00000000 };
Point ( 9894 ) = { 1.35000000, 51.82083333, 0.00000000 };
Point ( 9895 ) = { 1.34583333, 51.81666667, 0.00000000 };
Point ( 9896 ) = { 1.33750000, 51.81666667, 0.00000000 };
Point ( 9897 ) = { 1.33333333, 51.81250000, 0.00000000 };
Point ( 9898 ) = { 1.33750000, 51.80833333, 0.00000000 };
Point ( 9899 ) = { 1.34166667, 51.80416667, 0.00000000 };
Point ( 9900 ) = { 1.34583333, 51.80000000, 0.00000000 };
Point ( 9901 ) = { 1.35416667, 51.80000000, 0.00000000 };
Point ( 9902 ) = { 1.36250000, 51.80000000, 0.00000000 };
Point ( 9903 ) = { 1.36666667, 51.80416667, 0.00000000 };
Point ( 9904 ) = { 1.37083333, 51.80833333, 0.00000000 };
Point ( 9905 ) = { 1.37916667, 51.80833333, 0.00000000 };
Point ( 9906 ) = { 1.38750000, 51.80833333, 0.00000000 };
Point ( 9907 ) = { 1.39166667, 51.81250000, 0.00000000 };
Point ( 9908 ) = { 1.39583333, 51.81666667, 0.00000000 };
Point ( 9909 ) = { 1.40416667, 51.81666667, 0.00000000 };
Point ( 9910 ) = { 1.40833333, 51.82083333, 0.00000000 };
Point ( 9911 ) = { 1.41250000, 51.82500000, 0.00000000 };
Point ( 9912 ) = { 1.42083333, 51.82500000, 0.00000000 };
Point ( 9913 ) = { 1.42916667, 51.82500000, 0.00000000 };
Point ( 9914 ) = { 1.43750000, 51.82500000, 0.00000000 };
Point ( 9915 ) = { 1.44166667, 51.82083333, 0.00000000 };
Point ( 9916 ) = { 1.43750000, 51.81666667, 0.00000000 };
Point ( 9917 ) = { 1.42916667, 51.81666667, 0.00000000 };
Point ( 9918 ) = { 1.42500000, 51.81250000, 0.00000000 };
Point ( 9919 ) = { 1.42083333, 51.80833333, 0.00000000 };
Point ( 9920 ) = { 1.41666667, 51.80416667, 0.00000000 };
Point ( 9921 ) = { 1.41250000, 51.80000000, 0.00000000 };
Point ( 9922 ) = { 1.40833333, 51.79583333, 0.00000000 };
Point ( 9923 ) = { 1.40416667, 51.79166667, 0.00000000 };
Point ( 9924 ) = { 1.40000000, 51.78750000, 0.00000000 };
Point ( 9925 ) = { 1.39583333, 51.78333333, 0.00000000 };
Point ( 9926 ) = { 1.39166667, 51.77916667, 0.00000000 };
Point ( 9927 ) = { 1.38750000, 51.77500000, 0.00000000 };
Point ( 9928 ) = { 1.37916667, 51.77500000, 0.00000000 };
Point ( 9929 ) = { 1.37500000, 51.77083333, 0.00000000 };
Point ( 9930 ) = { 1.37083333, 51.76666667, 0.00000000 };
Point ( 9931 ) = { 1.36250000, 51.76666667, 0.00000000 };
Point ( 9932 ) = { 1.35833333, 51.76250000, 0.00000000 };
Point ( 9933 ) = { 1.35416667, 51.75833333, 0.00000000 };
Point ( 9934 ) = { 1.34583333, 51.75833333, 0.00000000 };
Point ( 9935 ) = { 1.34166667, 51.75416667, 0.00000000 };
Point ( 9936 ) = { 1.33750000, 51.75000000, 0.00000000 };
Point ( 9937 ) = { 1.32916667, 51.75000000, 0.00000000 };
Point ( 9938 ) = { 1.32083333, 51.75000000, 0.00000000 };
Point ( 9939 ) = { 1.31666667, 51.74583333, 0.00000000 };
Point ( 9940 ) = { 1.31250000, 51.74166667, 0.00000000 };
Point ( 9941 ) = { 1.30416667, 51.74166667, 0.00000000 };
Point ( 9942 ) = { 1.29583333, 51.74166667, 0.00000000 };
Point ( 9943 ) = { 1.29166667, 51.73750000, 0.00000000 };
Point ( 9944 ) = { 1.28750000, 51.73333333, 0.00000000 };
Point ( 9945 ) = { 1.27916667, 51.73333333, 0.00000000 };
Point ( 9946 ) = { 1.27083333, 51.73333333, 0.00000000 };
Point ( 9947 ) = { 1.26250000, 51.73333333, 0.00000000 };
Point ( 9948 ) = { 1.25833333, 51.72916667, 0.00000000 };
Point ( 9949 ) = { 1.25416667, 51.72500000, 0.00000000 };
Point ( 9950 ) = { 1.25000000, 51.72083333, 0.00000000 };
Point ( 9951 ) = { 1.24583333, 51.71666667, 0.00000000 };
Point ( 9952 ) = { 1.23750000, 51.71666667, 0.00000000 };
Point ( 9953 ) = { 1.22916667, 51.71666667, 0.00000000 };
Point ( 9954 ) = { 1.22083333, 51.71666667, 0.00000000 };
Point ( 9955 ) = { 1.21250000, 51.71666667, 0.00000000 };
Point ( 9956 ) = { 1.20416667, 51.71666667, 0.00000000 };
Point ( 9957 ) = { 1.19583333, 51.71666667, 0.00000000 };
Point ( 9958 ) = { 1.19166667, 51.71250000, 0.00000000 };
Point ( 9959 ) = { 1.19166667, 51.70416667, 0.00000000 };
Point ( 9960 ) = { 1.18750000, 51.70000000, 0.00000000 };
Point ( 9961 ) = { 1.17916667, 51.70000000, 0.00000000 };
Point ( 9962 ) = { 1.17083333, 51.70000000, 0.00000000 };
Point ( 9963 ) = { 1.16666667, 51.69583333, 0.00000000 };
Point ( 9964 ) = { 1.16250000, 51.69166667, 0.00000000 };
Point ( 9965 ) = { 1.15833333, 51.69583333, 0.00000000 };
Point ( 9966 ) = { 1.15416667, 51.70000000, 0.00000000 };
Point ( 9967 ) = { 1.15000000, 51.69583333, 0.00000000 };
Point ( 9968 ) = { 1.15000000, 51.68750000, 0.00000000 };
Point ( 9969 ) = { 1.15000000, 51.67916667, 0.00000000 };
Point ( 9970 ) = { 1.14583333, 51.67500000, 0.00000000 };
Point ( 9971 ) = { 1.14166667, 51.67083333, 0.00000000 };
Point ( 9972 ) = { 1.14166667, 51.66250000, 0.00000000 };
Point ( 9973 ) = { 1.13750000, 51.65833333, 0.00000000 };
Point ( 9974 ) = { 1.13333333, 51.65416667, 0.00000000 };
Point ( 9975 ) = { 1.12916667, 51.65000000, 0.00000000 };
Point ( 9976 ) = { 1.12500000, 51.64583333, 0.00000000 };
Point ( 9977 ) = { 1.12083333, 51.64166667, 0.00000000 };
Point ( 9978 ) = { 1.11250000, 51.64166667, 0.00000000 };
Point ( 9979 ) = { 1.10833333, 51.63750000, 0.00000000 };
Point ( 9980 ) = { 1.10833333, 51.62916667, 0.00000000 };
Point ( 9981 ) = { 1.11250000, 51.62500000, 0.00000000 };
Point ( 9982 ) = { 1.12083333, 51.62500000, 0.00000000 };
Point ( 9983 ) = { 1.12916667, 51.62500000, 0.00000000 };
Point ( 9984 ) = { 1.13333333, 51.62916667, 0.00000000 };
Point ( 9985 ) = { 1.13750000, 51.63333333, 0.00000000 };
Point ( 9986 ) = { 1.14583333, 51.63333333, 0.00000000 };
Point ( 9987 ) = { 1.15416667, 51.63333333, 0.00000000 };
Point ( 9988 ) = { 1.16250000, 51.63333333, 0.00000000 };
Point ( 9989 ) = { 1.16666667, 51.63750000, 0.00000000 };
Point ( 9990 ) = { 1.17083333, 51.64166667, 0.00000000 };
Point ( 9991 ) = { 1.17916667, 51.64166667, 0.00000000 };
Point ( 9992 ) = { 1.18333333, 51.64583333, 0.00000000 };
Point ( 9993 ) = { 1.18750000, 51.65000000, 0.00000000 };
Point ( 9994 ) = { 1.19166667, 51.65416667, 0.00000000 };
Point ( 9995 ) = { 1.19583333, 51.65833333, 0.00000000 };
Point ( 9996 ) = { 1.20416667, 51.65833333, 0.00000000 };
Point ( 9997 ) = { 1.21250000, 51.65833333, 0.00000000 };
Point ( 9998 ) = { 1.21666667, 51.66250000, 0.00000000 };
Point ( 9999 ) = { 1.22083333, 51.66666667, 0.00000000 };
Point ( 10000 ) = { 1.22916667, 51.66666667, 0.00000000 };
Point ( 10001 ) = { 1.23750000, 51.66666667, 0.00000000 };
Point ( 10002 ) = { 1.24166667, 51.66250000, 0.00000000 };
Point ( 10003 ) = { 1.24583333, 51.65833333, 0.00000000 };
Point ( 10004 ) = { 1.25000000, 51.65416667, 0.00000000 };
Point ( 10005 ) = { 1.24583333, 51.65000000, 0.00000000 };
Point ( 10006 ) = { 1.23750000, 51.65000000, 0.00000000 };
Point ( 10007 ) = { 1.23333333, 51.64583333, 0.00000000 };
Point ( 10008 ) = { 1.23333333, 51.63750000, 0.00000000 };
Point ( 10009 ) = { 1.22916667, 51.63333333, 0.00000000 };
Point ( 10010 ) = { 1.22083333, 51.63333333, 0.00000000 };
Point ( 10011 ) = { 1.21666667, 51.62916667, 0.00000000 };
Point ( 10012 ) = { 1.21250000, 51.62500000, 0.00000000 };
Point ( 10013 ) = { 1.20833333, 51.62083333, 0.00000000 };
Point ( 10014 ) = { 1.20416667, 51.61666667, 0.00000000 };
Point ( 10015 ) = { 1.19583333, 51.61666667, 0.00000000 };
Point ( 10016 ) = { 1.19166667, 51.61250000, 0.00000000 };
Point ( 10017 ) = { 1.18750000, 51.60833333, 0.00000000 };
Point ( 10018 ) = { 1.18333333, 51.60416667, 0.00000000 };
Point ( 10019 ) = { 1.17916667, 51.60000000, 0.00000000 };
Point ( 10020 ) = { 1.17083333, 51.60000000, 0.00000000 };
Point ( 10021 ) = { 1.16666667, 51.59583333, 0.00000000 };
Point ( 10022 ) = { 1.16250000, 51.59166667, 0.00000000 };
Point ( 10023 ) = { 1.15416667, 51.59166667, 0.00000000 };
Point ( 10024 ) = { 1.15000000, 51.58750000, 0.00000000 };
Point ( 10025 ) = { 1.14583333, 51.58333333, 0.00000000 };
Point ( 10026 ) = { 1.13750000, 51.58333333, 0.00000000 };
Point ( 10027 ) = { 1.12916667, 51.58333333, 0.00000000 };
Point ( 10028 ) = { 1.12500000, 51.57916667, 0.00000000 };
Point ( 10029 ) = { 1.12083333, 51.57500000, 0.00000000 };
Point ( 10030 ) = { 1.11250000, 51.57500000, 0.00000000 };
Point ( 10031 ) = { 1.10416667, 51.57500000, 0.00000000 };
Point ( 10032 ) = { 1.10000000, 51.57083333, 0.00000000 };
Point ( 10033 ) = { 1.09583333, 51.56666667, 0.00000000 };
Point ( 10034 ) = { 1.09166667, 51.56250000, 0.00000000 };
Point ( 10035 ) = { 1.08750000, 51.55833333, 0.00000000 };
Point ( 10036 ) = { 1.08333333, 51.55416667, 0.00000000 };
Point ( 10037 ) = { 1.08333333, 51.54583333, 0.00000000 };
Point ( 10038 ) = { 1.07916667, 51.54166667, 0.00000000 };
Point ( 10039 ) = { 1.07500000, 51.54583333, 0.00000000 };
Point ( 10040 ) = { 1.07500000, 51.55416667, 0.00000000 };
Point ( 10041 ) = { 1.07083333, 51.55833333, 0.00000000 };
Point ( 10042 ) = { 1.06666667, 51.56250000, 0.00000000 };
Point ( 10043 ) = { 1.07083333, 51.56666667, 0.00000000 };
Point ( 10044 ) = { 1.07500000, 51.57083333, 0.00000000 };
Point ( 10045 ) = { 1.07083333, 51.57500000, 0.00000000 };
Point ( 10046 ) = { 1.06250000, 51.57500000, 0.00000000 };
Point ( 10047 ) = { 1.05416667, 51.57500000, 0.00000000 };
Point ( 10048 ) = { 1.04583333, 51.57500000, 0.00000000 };
Point ( 10049 ) = { 1.04166667, 51.57083333, 0.00000000 };
Point ( 10050 ) = { 1.03750000, 51.56666667, 0.00000000 };
Point ( 10051 ) = { 1.03333333, 51.56250000, 0.00000000 };
Point ( 10052 ) = { 1.03333333, 51.55416667, 0.00000000 };
Point ( 10053 ) = { 1.03750000, 51.55000000, 0.00000000 };
Point ( 10054 ) = { 1.04583333, 51.55000000, 0.00000000 };
Point ( 10055 ) = { 1.05000000, 51.54583333, 0.00000000 };
Point ( 10056 ) = { 1.05416667, 51.54166667, 0.00000000 };
Point ( 10057 ) = { 1.06250000, 51.54166667, 0.00000000 };
Point ( 10058 ) = { 1.06666667, 51.53750000, 0.00000000 };
Point ( 10059 ) = { 1.06250000, 51.53333333, 0.00000000 };
Point ( 10060 ) = { 1.05416667, 51.53333333, 0.00000000 };
Point ( 10061 ) = { 1.04583333, 51.53333333, 0.00000000 };
Point ( 10062 ) = { 1.04166667, 51.52916667, 0.00000000 };
Point ( 10063 ) = { 1.03750000, 51.52500000, 0.00000000 };
Point ( 10064 ) = { 1.02916667, 51.52500000, 0.00000000 };
Point ( 10065 ) = { 1.02083333, 51.52500000, 0.00000000 };
Point ( 10066 ) = { 1.01250000, 51.52500000, 0.00000000 };
Point ( 10067 ) = { 1.00416667, 51.52500000, 0.00000000 };
Point ( 10068 ) = { 1.00000000, 51.52916667, 0.00000000 };
Point ( 10069 ) = { 1.00000000, 51.53750000, 0.00000000 };
Point ( 10070 ) = { 0.99583333, 51.54166667, 0.00000000 };
Point ( 10071 ) = { 0.99166667, 51.53750000, 0.00000000 };
Point ( 10072 ) = { 0.98750000, 51.53333333, 0.00000000 };
Point ( 10073 ) = { 0.97916667, 51.53333333, 0.00000000 };
Point ( 10074 ) = { 0.97500000, 51.52916667, 0.00000000 };
Point ( 10075 ) = { 0.97083333, 51.52500000, 0.00000000 };
Point ( 10076 ) = { 0.96666667, 51.52083333, 0.00000000 };
Point ( 10077 ) = { 0.96250000, 51.51666667, 0.00000000 };
Point ( 10078 ) = { 0.95416667, 51.51666667, 0.00000000 };
Point ( 10079 ) = { 0.94583333, 51.51666667, 0.00000000 };
Point ( 10080 ) = { 0.93750000, 51.51666667, 0.00000000 };
Point ( 10081 ) = { 0.92916667, 51.51666667, 0.00000000 };
Point ( 10082 ) = { 0.92083333, 51.51666667, 0.00000000 };
Point ( 10083 ) = { 0.91250000, 51.51666667, 0.00000000 };
Point ( 10084 ) = { 0.90416667, 51.51666667, 0.00000000 };
Point ( 10085 ) = { 0.90000000, 51.51250000, 0.00000000 };
Point ( 10086 ) = { 0.89583333, 51.50833333, 0.00000000 };
Point ( 10087 ) = { 0.88750000, 51.50833333, 0.00000000 };
Point ( 10088 ) = { 0.87916667, 51.50833333, 0.00000000 };
Point ( 10089 ) = { 0.87083333, 51.50833333, 0.00000000 };
Point ( 10090 ) = { 0.86666667, 51.50416667, 0.00000000 };
Point ( 10091 ) = { 0.86250000, 51.50000000, 0.00000000 };
Point ( 10092 ) = { 0.85416667, 51.50000000, 0.00000000 };
Point ( 10093 ) = { 0.84583333, 51.50000000, 0.00000000 };
Point ( 10094 ) = { 0.83750000, 51.50000000, 0.00000000 };
Point ( 10095 ) = { 0.82916667, 51.50000000, 0.00000000 };
Point ( 10096 ) = { 0.82083333, 51.50000000, 0.00000000 };
Point ( 10097 ) = { 0.81250000, 51.50000000, 0.00000000 };
Point ( 10098 ) = { 0.80416667, 51.50000000, 0.00000000 };
Point ( 10099 ) = { 0.80000000, 51.50416667, 0.00000000 };
Point ( 10100 ) = { 0.79583333, 51.50833333, 0.00000000 };
Point ( 10101 ) = { 0.79166667, 51.50416667, 0.00000000 };
Point ( 10102 ) = { 0.78750000, 51.50000000, 0.00000000 };
Point ( 10103 ) = { 0.77916667, 51.50000000, 0.00000000 };
Point ( 10104 ) = { 0.77500000, 51.50416667, 0.00000000 };
Point ( 10105 ) = { 0.77500000, 51.51250000, 0.00000000 };
Point ( 10106 ) = { 0.77083333, 51.51666667, 0.00000000 };
Point ( 10107 ) = { 0.76250000, 51.51666667, 0.00000000 };
Point ( 10108 ) = { 0.75416667, 51.51666667, 0.00000000 };
Point ( 10109 ) = { 0.74583333, 51.51666667, 0.00000000 };
Point ( 10110 ) = { 0.73750000, 51.51666667, 0.00000000 };
Point ( 10111 ) = { 0.72916667, 51.51666667, 0.00000000 };
Point ( 10112 ) = { 0.72083333, 51.51666667, 0.00000000 };
Point ( 10113 ) = { 0.71666667, 51.52083333, 0.00000000 };
Point ( 10114 ) = { 0.71250000, 51.52500000, 0.00000000 };
Point ( 10115 ) = { 0.70833333, 51.52916667, 0.00000000 };
Point ( 10116 ) = { 0.70416667, 51.53333333, 0.00000000 };
Point ( 10117 ) = { 0.69583333, 51.53333333, 0.00000000 };
Point ( 10118 ) = { 0.68750000, 51.53333333, 0.00000000 };
Point ( 10119 ) = { 0.67916667, 51.53333333, 0.00000000 };
Point ( 10120 ) = { 0.67083333, 51.53333333, 0.00000000 };
Point ( 10121 ) = { 0.66250000, 51.53333333, 0.00000000 };
Point ( 10122 ) = { 0.65416667, 51.53333333, 0.00000000 };
Point ( 10123 ) = { 0.64583333, 51.53333333, 0.00000000 };
Point ( 10124 ) = { 0.63750000, 51.53333333, 0.00000000 };
Point ( 10125 ) = { 0.62916667, 51.53333333, 0.00000000 };
Point ( 10126 ) = { 0.62500000, 51.52916667, 0.00000000 };
Point ( 10127 ) = { 0.62916667, 51.52500000, 0.00000000 };
Point ( 10128 ) = { 0.63750000, 51.52500000, 0.00000000 };
Point ( 10129 ) = { 0.64166667, 51.52083333, 0.00000000 };
Point ( 10130 ) = { 0.64583333, 51.51666667, 0.00000000 };
Point ( 10131 ) = { 0.65000000, 51.52083333, 0.00000000 };
Point ( 10132 ) = { 0.65416667, 51.52500000, 0.00000000 };
Point ( 10133 ) = { 0.65833333, 51.52083333, 0.00000000 };
Point ( 10134 ) = { 0.66250000, 51.51666667, 0.00000000 };
Point ( 10135 ) = { 0.67083333, 51.51666667, 0.00000000 };
Point ( 10136 ) = { 0.67916667, 51.51666667, 0.00000000 };
Point ( 10137 ) = { 0.68750000, 51.51666667, 0.00000000 };
Point ( 10138 ) = { 0.69166667, 51.52083333, 0.00000000 };
Point ( 10139 ) = { 0.69583333, 51.52500000, 0.00000000 };
Point ( 10140 ) = { 0.70000000, 51.52083333, 0.00000000 };
Point ( 10141 ) = { 0.70000000, 51.51250000, 0.00000000 };
Point ( 10142 ) = { 0.70000000, 51.50416667, 0.00000000 };
Point ( 10143 ) = { 0.70000000, 51.49583333, 0.00000000 };
Point ( 10144 ) = { 0.70416667, 51.49166667, 0.00000000 };
Point ( 10145 ) = { 0.71250000, 51.49166667, 0.00000000 };
Point ( 10146 ) = { 0.72083333, 51.49166667, 0.00000000 };
Point ( 10147 ) = { 0.72500000, 51.48750000, 0.00000000 };
Point ( 10148 ) = { 0.72916667, 51.48333333, 0.00000000 };
Point ( 10149 ) = { 0.73333333, 51.48750000, 0.00000000 };
Point ( 10150 ) = { 0.73750000, 51.49166667, 0.00000000 };
Point ( 10151 ) = { 0.74166667, 51.48750000, 0.00000000 };
Point ( 10152 ) = { 0.74583333, 51.48333333, 0.00000000 };
Point ( 10153 ) = { 0.75416667, 51.48333333, 0.00000000 };
Point ( 10154 ) = { 0.76250000, 51.48333333, 0.00000000 };
Point ( 10155 ) = { 0.77083333, 51.48333333, 0.00000000 };
Point ( 10156 ) = { 0.77500000, 51.47916667, 0.00000000 };
Point ( 10157 ) = { 0.77916667, 51.47500000, 0.00000000 };
Point ( 10158 ) = { 0.78750000, 51.47500000, 0.00000000 };
Point ( 10159 ) = { 0.79166667, 51.47083333, 0.00000000 };
Point ( 10160 ) = { 0.79583333, 51.46666667, 0.00000000 };
Point ( 10161 ) = { 0.80416667, 51.46666667, 0.00000000 };
Point ( 10162 ) = { 0.80833333, 51.46250000, 0.00000000 };
Point ( 10163 ) = { 0.81250000, 51.45833333, 0.00000000 };
Point ( 10164 ) = { 0.82083333, 51.45833333, 0.00000000 };
Point ( 10165 ) = { 0.82916667, 51.45833333, 0.00000000 };
Point ( 10166 ) = { 0.83333333, 51.45416667, 0.00000000 };
Point ( 10167 ) = { 0.83750000, 51.45000000, 0.00000000 };
Point ( 10168 ) = { 0.84583333, 51.45000000, 0.00000000 };
Point ( 10169 ) = { 0.85416667, 51.45000000, 0.00000000 };
Point ( 10170 ) = { 0.85833333, 51.45416667, 0.00000000 };
Point ( 10171 ) = { 0.86250000, 51.45833333, 0.00000000 };
Point ( 10172 ) = { 0.87083333, 51.45833333, 0.00000000 };
Point ( 10173 ) = { 0.87916667, 51.45833333, 0.00000000 };
Point ( 10174 ) = { 0.88750000, 51.45833333, 0.00000000 };
Point ( 10175 ) = { 0.89583333, 51.45833333, 0.00000000 };
Point ( 10176 ) = { 0.90416667, 51.45833333, 0.00000000 };
Point ( 10177 ) = { 0.91250000, 51.45833333, 0.00000000 };
Point ( 10178 ) = { 0.92083333, 51.45833333, 0.00000000 };
Point ( 10179 ) = { 0.92916667, 51.45833333, 0.00000000 };
Point ( 10180 ) = { 0.93750000, 51.45833333, 0.00000000 };
Point ( 10181 ) = { 0.94166667, 51.46250000, 0.00000000 };
Point ( 10182 ) = { 0.94583333, 51.46666667, 0.00000000 };
Point ( 10183 ) = { 0.95416667, 51.46666667, 0.00000000 };
Point ( 10184 ) = { 0.96250000, 51.46666667, 0.00000000 };
Point ( 10185 ) = { 0.96666667, 51.47083333, 0.00000000 };
Point ( 10186 ) = { 0.97083333, 51.47500000, 0.00000000 };
Point ( 10187 ) = { 0.97916667, 51.47500000, 0.00000000 };
Point ( 10188 ) = { 0.98750000, 51.47500000, 0.00000000 };
Point ( 10189 ) = { 0.99583333, 51.47500000, 0.00000000 };
Point ( 10190 ) = { 1.00416667, 51.47500000, 0.00000000 };
Point ( 10191 ) = { 1.01250000, 51.47500000, 0.00000000 };
Point ( 10192 ) = { 1.02083333, 51.47500000, 0.00000000 };
Point ( 10193 ) = { 1.02500000, 51.47916667, 0.00000000 };
Point ( 10194 ) = { 1.02916667, 51.48333333, 0.00000000 };
Point ( 10195 ) = { 1.03750000, 51.48333333, 0.00000000 };
Point ( 10196 ) = { 1.04583333, 51.48333333, 0.00000000 };
Point ( 10197 ) = { 1.05416667, 51.48333333, 0.00000000 };
Point ( 10198 ) = { 1.06250000, 51.48333333, 0.00000000 };
Point ( 10199 ) = { 1.07083333, 51.48333333, 0.00000000 };
Point ( 10200 ) = { 1.07916667, 51.48333333, 0.00000000 };
Point ( 10201 ) = { 1.08750000, 51.48333333, 0.00000000 };
Point ( 10202 ) = { 1.09583333, 51.48333333, 0.00000000 };
Point ( 10203 ) = { 1.10416667, 51.48333333, 0.00000000 };
Point ( 10204 ) = { 1.10833333, 51.48750000, 0.00000000 };
Point ( 10205 ) = { 1.11250000, 51.49166667, 0.00000000 };
Point ( 10206 ) = { 1.11666667, 51.49583333, 0.00000000 };
Point ( 10207 ) = { 1.12083333, 51.50000000, 0.00000000 };
Point ( 10208 ) = { 1.12500000, 51.50416667, 0.00000000 };
Point ( 10209 ) = { 1.12916667, 51.50833333, 0.00000000 };
Point ( 10210 ) = { 1.13750000, 51.50833333, 0.00000000 };
Point ( 10211 ) = { 1.14166667, 51.51250000, 0.00000000 };
Point ( 10212 ) = { 1.14583333, 51.51666667, 0.00000000 };
Point ( 10213 ) = { 1.15416667, 51.51666667, 0.00000000 };
Point ( 10214 ) = { 1.16250000, 51.51666667, 0.00000000 };
Point ( 10215 ) = { 1.17083333, 51.51666667, 0.00000000 };
Point ( 10216 ) = { 1.17916667, 51.51666667, 0.00000000 };
Point ( 10217 ) = { 1.18333333, 51.52083333, 0.00000000 };
Point ( 10218 ) = { 1.18750000, 51.52500000, 0.00000000 };
Point ( 10219 ) = { 1.19583333, 51.52500000, 0.00000000 };
Point ( 10220 ) = { 1.20000000, 51.52916667, 0.00000000 };
Point ( 10221 ) = { 1.20000000, 51.53750000, 0.00000000 };
Point ( 10222 ) = { 1.20416667, 51.54166667, 0.00000000 };
Point ( 10223 ) = { 1.20833333, 51.54583333, 0.00000000 };
Point ( 10224 ) = { 1.20833333, 51.55416667, 0.00000000 };
Point ( 10225 ) = { 1.21250000, 51.55833333, 0.00000000 };
Point ( 10226 ) = { 1.22083333, 51.55833333, 0.00000000 };
Point ( 10227 ) = { 1.22916667, 51.55833333, 0.00000000 };
Point ( 10228 ) = { 1.23750000, 51.55833333, 0.00000000 };
Point ( 10229 ) = { 1.24583333, 51.55833333, 0.00000000 };
Point ( 10230 ) = { 1.25000000, 51.56250000, 0.00000000 };
Point ( 10231 ) = { 1.25416667, 51.56666667, 0.00000000 };
Point ( 10232 ) = { 1.26250000, 51.56666667, 0.00000000 };
Point ( 10233 ) = { 1.26666667, 51.57083333, 0.00000000 };
Point ( 10234 ) = { 1.27083333, 51.57500000, 0.00000000 };
Point ( 10235 ) = { 1.27500000, 51.57916667, 0.00000000 };
Point ( 10236 ) = { 1.27916667, 51.58333333, 0.00000000 };
Point ( 10237 ) = { 1.28750000, 51.58333333, 0.00000000 };
Point ( 10238 ) = { 1.29166667, 51.58750000, 0.00000000 };
Point ( 10239 ) = { 1.29583333, 51.59166667, 0.00000000 };
Point ( 10240 ) = { 1.30000000, 51.59583333, 0.00000000 };
Point ( 10241 ) = { 1.30416667, 51.60000000, 0.00000000 };
Point ( 10242 ) = { 1.31250000, 51.60000000, 0.00000000 };
Point ( 10243 ) = { 1.32083333, 51.60000000, 0.00000000 };
Point ( 10244 ) = { 1.32916667, 51.60000000, 0.00000000 };
Point ( 10245 ) = { 1.33750000, 51.60000000, 0.00000000 };
Point ( 10246 ) = { 1.34583333, 51.60000000, 0.00000000 };
Point ( 10247 ) = { 1.35000000, 51.60416667, 0.00000000 };
Point ( 10248 ) = { 1.35416667, 51.60833333, 0.00000000 };
Point ( 10249 ) = { 1.36250000, 51.60833333, 0.00000000 };
Point ( 10250 ) = { 1.36666667, 51.61250000, 0.00000000 };
Point ( 10251 ) = { 1.37083333, 51.61666667, 0.00000000 };
Point ( 10252 ) = { 1.37500000, 51.62083333, 0.00000000 };
Point ( 10253 ) = { 1.37916667, 51.62500000, 0.00000000 };
Point ( 10254 ) = { 1.38333333, 51.62916667, 0.00000000 };
Point ( 10255 ) = { 1.38750000, 51.63333333, 0.00000000 };
Point ( 10256 ) = { 1.39583333, 51.63333333, 0.00000000 };
Point ( 10257 ) = { 1.40000000, 51.63750000, 0.00000000 };
Point ( 10258 ) = { 1.40416667, 51.64166667, 0.00000000 };
Point ( 10259 ) = { 1.41250000, 51.64166667, 0.00000000 };
Point ( 10260 ) = { 1.41666667, 51.64583333, 0.00000000 };
Point ( 10261 ) = { 1.42083333, 51.65000000, 0.00000000 };
Point ( 10262 ) = { 1.42916667, 51.65000000, 0.00000000 };
Point ( 10263 ) = { 1.43333333, 51.65416667, 0.00000000 };
Point ( 10264 ) = { 1.43750000, 51.65833333, 0.00000000 };
Point ( 10265 ) = { 1.44166667, 51.66250000, 0.00000000 };
Point ( 10266 ) = { 1.44583333, 51.66666667, 0.00000000 };
Point ( 10267 ) = { 1.45416667, 51.66666667, 0.00000000 };
Point ( 10268 ) = { 1.45833333, 51.67083333, 0.00000000 };
Point ( 10269 ) = { 1.46250000, 51.67500000, 0.00000000 };
Point ( 10270 ) = { 1.46666667, 51.67916667, 0.00000000 };
Point ( 10271 ) = { 1.47083333, 51.68333333, 0.00000000 };
Point ( 10272 ) = { 1.47500000, 51.68750000, 0.00000000 };
Point ( 10273 ) = { 1.47916667, 51.69166667, 0.00000000 };
Point ( 10274 ) = { 1.48750000, 51.69166667, 0.00000000 };
Point ( 10275 ) = { 1.49166667, 51.69583333, 0.00000000 };
Point ( 10276 ) = { 1.49583333, 51.70000000, 0.00000000 };
Point ( 10277 ) = { 1.50000000, 51.70416667, 0.00000000 };
Point ( 10278 ) = { 1.50000000, 51.71250000, 0.00000000 };
Point ( 10279 ) = { 1.50416667, 51.71666667, 0.00000000 };
Point ( 10280 ) = { 1.51250000, 51.71666667, 0.00000000 };
Point ( 10281 ) = { 1.51666667, 51.72083333, 0.00000000 };
Point ( 10282 ) = { 1.52083333, 51.72500000, 0.00000000 };
Point ( 10283 ) = { 1.52500000, 51.72916667, 0.00000000 };
Point ( 10284 ) = { 1.52916667, 51.73333333, 0.00000000 };
Point ( 10285 ) = { 1.53333333, 51.73750000, 0.00000000 };
Point ( 10286 ) = { 1.53750000, 51.74166667, 0.00000000 };
Point ( 10287 ) = { 1.54166667, 51.74583333, 0.00000000 };
Point ( 10288 ) = { 1.54583333, 51.75000000, 0.00000000 };
Point ( 10289 ) = { 1.55000000, 51.75416667, 0.00000000 };
Point ( 10290 ) = { 1.55416667, 51.75833333, 0.00000000 };
Point ( 10291 ) = { 1.55833333, 51.76250000, 0.00000000 };
Point ( 10292 ) = { 1.56250000, 51.76666667, 0.00000000 };
Point ( 10293 ) = { 1.57083333, 51.76666667, 0.00000000 };
Point ( 10294 ) = { 1.57500000, 51.77083333, 0.00000000 };
Point ( 10295 ) = { 1.57916667, 51.77500000, 0.00000000 };
Point ( 10296 ) = { 1.58750000, 51.77500000, 0.00000000 };
Point ( 10297 ) = { 1.59166667, 51.77916667, 0.00000000 };
Point ( 10298 ) = { 1.59583333, 51.78333333, 0.00000000 };
Point ( 10299 ) = { 1.60000000, 51.78750000, 0.00000000 };
Point ( 10300 ) = { 1.60416667, 51.79166667, 0.00000000 };
Point ( 10301 ) = { 1.61250000, 51.79166667, 0.00000000 };
Point ( 10302 ) = { 1.61666667, 51.78750000, 0.00000000 };
Point ( 10303 ) = { 1.61666667, 51.77916667, 0.00000000 };
Point ( 10304 ) = { 1.62083333, 51.77500000, 0.00000000 };
Point ( 10305 ) = { 1.62916667, 51.77500000, 0.00000000 };
Point ( 10306 ) = { 1.63750000, 51.77500000, 0.00000000 };
Point ( 10307 ) = { 1.64166667, 51.77083333, 0.00000000 };
Point ( 10308 ) = { 1.63750000, 51.76666667, 0.00000000 };
Point ( 10309 ) = { 1.63333333, 51.76250000, 0.00000000 };
Point ( 10310 ) = { 1.63333333, 51.75416667, 0.00000000 };
Point ( 10311 ) = { 1.62916667, 51.75000000, 0.00000000 };
Point ( 10312 ) = { 1.62083333, 51.75000000, 0.00000000 };
Point ( 10313 ) = { 1.61666667, 51.74583333, 0.00000000 };
Point ( 10314 ) = { 1.61250000, 51.74166667, 0.00000000 };
Point ( 10315 ) = { 1.60416667, 51.74166667, 0.00000000 };
Point ( 10316 ) = { 1.59583333, 51.74166667, 0.00000000 };
Point ( 10317 ) = { 1.59166667, 51.73750000, 0.00000000 };
Point ( 10318 ) = { 1.58750000, 51.73333333, 0.00000000 };
Point ( 10319 ) = { 1.58333333, 51.72916667, 0.00000000 };
Point ( 10320 ) = { 1.57916667, 51.72500000, 0.00000000 };
Point ( 10321 ) = { 1.57083333, 51.72500000, 0.00000000 };
Point ( 10322 ) = { 1.56666667, 51.72083333, 0.00000000 };
Point ( 10323 ) = { 1.56250000, 51.71666667, 0.00000000 };
Point ( 10324 ) = { 1.55416667, 51.71666667, 0.00000000 };
Point ( 10325 ) = { 1.55000000, 51.71250000, 0.00000000 };
Point ( 10326 ) = { 1.54583333, 51.70833333, 0.00000000 };
Point ( 10327 ) = { 1.54166667, 51.70416667, 0.00000000 };
Point ( 10328 ) = { 1.53750000, 51.70000000, 0.00000000 };
Point ( 10329 ) = { 1.53333333, 51.69583333, 0.00000000 };
Point ( 10330 ) = { 1.52916667, 51.69166667, 0.00000000 };
Point ( 10331 ) = { 1.52500000, 51.68750000, 0.00000000 };
Point ( 10332 ) = { 1.52083333, 51.68333333, 0.00000000 };
Point ( 10333 ) = { 1.51666667, 51.67916667, 0.00000000 };
Point ( 10334 ) = { 1.51250000, 51.67500000, 0.00000000 };
Point ( 10335 ) = { 1.50833333, 51.67083333, 0.00000000 };
Point ( 10336 ) = { 1.50833333, 51.66250000, 0.00000000 };
Point ( 10337 ) = { 1.50833333, 51.65416667, 0.00000000 };
Point ( 10338 ) = { 1.50416667, 51.65000000, 0.00000000 };
Point ( 10339 ) = { 1.50000000, 51.64583333, 0.00000000 };
Point ( 10340 ) = { 1.50000000, 51.63750000, 0.00000000 };
Point ( 10341 ) = { 1.49583333, 51.63333333, 0.00000000 };
Point ( 10342 ) = { 1.48750000, 51.63333333, 0.00000000 };
Point ( 10343 ) = { 1.48333333, 51.62916667, 0.00000000 };
Point ( 10344 ) = { 1.47916667, 51.62500000, 0.00000000 };
Point ( 10345 ) = { 1.47500000, 51.62083333, 0.00000000 };
Point ( 10346 ) = { 1.47083333, 51.61666667, 0.00000000 };
Point ( 10347 ) = { 1.46666667, 51.61250000, 0.00000000 };
Point ( 10348 ) = { 1.46250000, 51.60833333, 0.00000000 };
Point ( 10349 ) = { 1.45833333, 51.60416667, 0.00000000 };
Point ( 10350 ) = { 1.45416667, 51.60000000, 0.00000000 };
Point ( 10351 ) = { 1.44583333, 51.60000000, 0.00000000 };
Point ( 10352 ) = { 1.44166667, 51.59583333, 0.00000000 };
Point ( 10353 ) = { 1.43750000, 51.59166667, 0.00000000 };
Point ( 10354 ) = { 1.43333333, 51.58750000, 0.00000000 };
Point ( 10355 ) = { 1.42916667, 51.58333333, 0.00000000 };
Point ( 10356 ) = { 1.42083333, 51.58333333, 0.00000000 };
Point ( 10357 ) = { 1.41666667, 51.57916667, 0.00000000 };
Point ( 10358 ) = { 1.41250000, 51.57500000, 0.00000000 };
Point ( 10359 ) = { 1.40833333, 51.57083333, 0.00000000 };
Point ( 10360 ) = { 1.40833333, 51.56250000, 0.00000000 };
Point ( 10361 ) = { 1.40416667, 51.55833333, 0.00000000 };
Point ( 10362 ) = { 1.40000000, 51.55416667, 0.00000000 };
Point ( 10363 ) = { 1.39583333, 51.55000000, 0.00000000 };
Point ( 10364 ) = { 1.38750000, 51.55000000, 0.00000000 };
Point ( 10365 ) = { 1.38333333, 51.54583333, 0.00000000 };
Point ( 10366 ) = { 1.37916667, 51.54166667, 0.00000000 };
Point ( 10367 ) = { 1.37500000, 51.53750000, 0.00000000 };
Point ( 10368 ) = { 1.37083333, 51.53333333, 0.00000000 };
Point ( 10369 ) = { 1.36666667, 51.52916667, 0.00000000 };
Point ( 10370 ) = { 1.36250000, 51.52500000, 0.00000000 };
Point ( 10371 ) = { 1.35416667, 51.52500000, 0.00000000 };
Point ( 10372 ) = { 1.35000000, 51.52083333, 0.00000000 };
Point ( 10373 ) = { 1.34583333, 51.51666667, 0.00000000 };
Point ( 10374 ) = { 1.33750000, 51.51666667, 0.00000000 };
Point ( 10375 ) = { 1.32916667, 51.51666667, 0.00000000 };
Point ( 10376 ) = { 1.32083333, 51.51666667, 0.00000000 };
Point ( 10377 ) = { 1.31250000, 51.51666667, 0.00000000 };
Point ( 10378 ) = { 1.30416667, 51.51666667, 0.00000000 };
Point ( 10379 ) = { 1.30000000, 51.51250000, 0.00000000 };
Point ( 10380 ) = { 1.30000000, 51.50416667, 0.00000000 };
Point ( 10381 ) = { 1.30416667, 51.50000000, 0.00000000 };
Point ( 10382 ) = { 1.31250000, 51.50000000, 0.00000000 };
Point ( 10383 ) = { 1.31666667, 51.49583333, 0.00000000 };
Point ( 10384 ) = { 1.31250000, 51.49166667, 0.00000000 };
Point ( 10385 ) = { 1.30416667, 51.49166667, 0.00000000 };
Point ( 10386 ) = { 1.29583333, 51.49166667, 0.00000000 };
Point ( 10387 ) = { 1.29166667, 51.48750000, 0.00000000 };
Point ( 10388 ) = { 1.29166667, 51.47916667, 0.00000000 };
Point ( 10389 ) = { 1.29166667, 51.47083333, 0.00000000 };
Point ( 10390 ) = { 1.29166667, 51.46250000, 0.00000000 };
Point ( 10391 ) = { 1.29583333, 51.45833333, 0.00000000 };
Point ( 10392 ) = { 1.30000000, 51.45416667, 0.00000000 };
Point ( 10393 ) = { 1.30416667, 51.45000000, 0.00000000 };
Point ( 10394 ) = { 1.30833333, 51.45416667, 0.00000000 };
Point ( 10395 ) = { 1.31250000, 51.45833333, 0.00000000 };
Point ( 10396 ) = { 1.32083333, 51.45833333, 0.00000000 };
Point ( 10397 ) = { 1.32916667, 51.45833333, 0.00000000 };
Point ( 10398 ) = { 1.33750000, 51.45833333, 0.00000000 };
Point ( 10399 ) = { 1.34583333, 51.45833333, 0.00000000 };
Point ( 10400 ) = { 1.35416667, 51.45833333, 0.00000000 };
Point ( 10401 ) = { 1.36250000, 51.45833333, 0.00000000 };
Point ( 10402 ) = { 1.37083333, 51.45833333, 0.00000000 };
Point ( 10403 ) = { 1.37916667, 51.45833333, 0.00000000 };
Point ( 10404 ) = { 1.38750000, 51.45833333, 0.00000000 };
Point ( 10405 ) = { 1.39583333, 51.45833333, 0.00000000 };
Point ( 10406 ) = { 1.40416667, 51.45833333, 0.00000000 };
Point ( 10407 ) = { 1.41250000, 51.45833333, 0.00000000 };
Point ( 10408 ) = { 1.41666667, 51.45416667, 0.00000000 };
Point ( 10409 ) = { 1.42083333, 51.45000000, 0.00000000 };
Point ( 10410 ) = { 1.42916667, 51.45000000, 0.00000000 };
Point ( 10411 ) = { 1.43750000, 51.45000000, 0.00000000 };
Point ( 10412 ) = { 1.44583333, 51.45000000, 0.00000000 };
Point ( 10413 ) = { 1.45000000, 51.44583333, 0.00000000 };
Point ( 10414 ) = { 1.45000000, 51.43750000, 0.00000000 };
Point ( 10415 ) = { 1.44583333, 51.43333333, 0.00000000 };
Point ( 10416 ) = { 1.43750000, 51.43333333, 0.00000000 };
Point ( 10417 ) = { 1.42916667, 51.43333333, 0.00000000 };
Point ( 10418 ) = { 1.42083333, 51.43333333, 0.00000000 };
Point ( 10419 ) = { 1.41666667, 51.42916667, 0.00000000 };
Point ( 10420 ) = { 1.41250000, 51.42500000, 0.00000000 };
Point ( 10421 ) = { 1.40416667, 51.42500000, 0.00000000 };
Point ( 10422 ) = { 1.39583333, 51.42500000, 0.00000000 };
Point ( 10423 ) = { 1.38750000, 51.42500000, 0.00000000 };
Point ( 10424 ) = { 1.37916667, 51.42500000, 0.00000000 };
Point ( 10425 ) = { 1.37083333, 51.42500000, 0.00000000 };
Point ( 10426 ) = { 1.36250000, 51.42500000, 0.00000000 };
Point ( 10427 ) = { 1.35833333, 51.42083333, 0.00000000 };
Point ( 10428 ) = { 1.35416667, 51.41666667, 0.00000000 };
Point ( 10429 ) = { 1.34583333, 51.41666667, 0.00000000 };
Point ( 10430 ) = { 1.34166667, 51.41250000, 0.00000000 };
Point ( 10431 ) = { 1.34583333, 51.40833333, 0.00000000 };
Point ( 10432 ) = { 1.35416667, 51.40833333, 0.00000000 };
Point ( 10433 ) = { 1.35833333, 51.40416667, 0.00000000 };
Point ( 10434 ) = { 1.36250000, 51.40000000, 0.00000000 };
Point ( 10435 ) = { 1.36666667, 51.40416667, 0.00000000 };
Point ( 10436 ) = { 1.37083333, 51.40833333, 0.00000000 };
Point ( 10437 ) = { 1.37916667, 51.40833333, 0.00000000 };
Point ( 10438 ) = { 1.38333333, 51.40416667, 0.00000000 };
Point ( 10439 ) = { 1.38750000, 51.40000000, 0.00000000 };
Point ( 10440 ) = { 1.39166667, 51.40416667, 0.00000000 };
Point ( 10441 ) = { 1.39583333, 51.40833333, 0.00000000 };
Point ( 10442 ) = { 1.40416667, 51.40833333, 0.00000000 };
Point ( 10443 ) = { 1.41250000, 51.40833333, 0.00000000 };
Point ( 10444 ) = { 1.42083333, 51.40833333, 0.00000000 };
Point ( 10445 ) = { 1.42916667, 51.40833333, 0.00000000 };
Point ( 10446 ) = { 1.43750000, 51.40833333, 0.00000000 };
Point ( 10447 ) = { 1.44166667, 51.40416667, 0.00000000 };
Point ( 10448 ) = { 1.44583333, 51.40000000, 0.00000000 };
Point ( 10449 ) = { 1.45000000, 51.39583333, 0.00000000 };
Point ( 10450 ) = { 1.45416667, 51.39166667, 0.00000000 };
Point ( 10451 ) = { 1.46250000, 51.39166667, 0.00000000 };
Point ( 10452 ) = { 1.46666667, 51.38750000, 0.00000000 };
Point ( 10453 ) = { 1.47083333, 51.38333333, 0.00000000 };
Point ( 10454 ) = { 1.47916667, 51.38333333, 0.00000000 };
Point ( 10455 ) = { 1.48750000, 51.38333333, 0.00000000 };
Point ( 10456 ) = { 1.49583333, 51.38333333, 0.00000000 };
Point ( 10457 ) = { 1.50000000, 51.37916667, 0.00000000 };
Point ( 10458 ) = { 1.50000000, 51.37083333, 0.00000000 };
Point ( 10459 ) = { 1.50416667, 51.36666667, 0.00000000 };
Point ( 10460 ) = { 1.50833333, 51.36250000, 0.00000000 };
Point ( 10461 ) = { 1.50833333, 51.35416667, 0.00000000 };
Point ( 10462 ) = { 1.51250000, 51.35000000, 0.00000000 };
Point ( 10463 ) = { 1.52083333, 51.35000000, 0.00000000 };
Point ( 10464 ) = { 1.52500000, 51.34583333, 0.00000000 };
Point ( 10465 ) = { 1.52083333, 51.34166667, 0.00000000 };
Point ( 10466 ) = { 1.51250000, 51.34166667, 0.00000000 };
Point ( 10467 ) = { 1.50833333, 51.33750000, 0.00000000 };
Point ( 10468 ) = { 1.50833333, 51.32916667, 0.00000000 };
Point ( 10469 ) = { 1.50833333, 51.32083333, 0.00000000 };
Point ( 10470 ) = { 1.50416667, 51.31666667, 0.00000000 };
Point ( 10471 ) = { 1.50000000, 51.31250000, 0.00000000 };
Point ( 10472 ) = { 1.49583333, 51.30833333, 0.00000000 };
Point ( 10473 ) = { 1.48750000, 51.30833333, 0.00000000 };
Point ( 10474 ) = { 1.47916667, 51.30833333, 0.00000000 };
Point ( 10475 ) = { 1.47500000, 51.30416667, 0.00000000 };
Point ( 10476 ) = { 1.47083333, 51.30000000, 0.00000000 };
Point ( 10477 ) = { 1.46250000, 51.30000000, 0.00000000 };
Point ( 10478 ) = { 1.45833333, 51.29583333, 0.00000000 };
Point ( 10479 ) = { 1.45833333, 51.28750000, 0.00000000 };
Point ( 10480 ) = { 1.45416667, 51.28333333, 0.00000000 };
Point ( 10481 ) = { 1.45000000, 51.27916667, 0.00000000 };
Point ( 10482 ) = { 1.45000000, 51.27083333, 0.00000000 };
Point ( 10483 ) = { 1.45000000, 51.26250000, 0.00000000 };
Point ( 10484 ) = { 1.45000000, 51.25416667, 0.00000000 };
Point ( 10485 ) = { 1.44583333, 51.25000000, 0.00000000 };
Point ( 10486 ) = { 1.44166667, 51.24583333, 0.00000000 };
Point ( 10487 ) = { 1.43750000, 51.24166667, 0.00000000 };
Point ( 10488 ) = { 1.42916667, 51.24166667, 0.00000000 };
Point ( 10489 ) = { 1.42500000, 51.23750000, 0.00000000 };
Point ( 10490 ) = { 1.42500000, 51.22916667, 0.00000000 };
Point ( 10491 ) = { 1.42500000, 51.22083333, 0.00000000 };
Point ( 10492 ) = { 1.42500000, 51.21250000, 0.00000000 };
Point ( 10493 ) = { 1.42500000, 51.20416667, 0.00000000 };
Point ( 10494 ) = { 1.42500000, 51.19583333, 0.00000000 };
Point ( 10495 ) = { 1.42083333, 51.19166667, 0.00000000 };
Point ( 10496 ) = { 1.41666667, 51.18750000, 0.00000000 };
Point ( 10497 ) = { 1.41666667, 51.17916667, 0.00000000 };
Point ( 10498 ) = { 1.41250000, 51.17500000, 0.00000000 };
Point ( 10499 ) = { 1.40833333, 51.17083333, 0.00000000 };
Point ( 10500 ) = { 1.40833333, 51.16250000, 0.00000000 };
Point ( 10501 ) = { 1.40416667, 51.15833333, 0.00000000 };
Point ( 10502 ) = { 1.40000000, 51.15416667, 0.00000000 };
Point ( 10503 ) = { 1.39583333, 51.15000000, 0.00000000 };
Point ( 10504 ) = { 1.38750000, 51.15000000, 0.00000000 };
Point ( 10505 ) = { 1.38333333, 51.14583333, 0.00000000 };
Point ( 10506 ) = { 1.38333333, 51.13750000, 0.00000000 };
Point ( 10507 ) = { 1.37916667, 51.13333333, 0.00000000 };
Point ( 10508 ) = { 1.37083333, 51.13333333, 0.00000000 };
Point ( 10509 ) = { 1.36250000, 51.13333333, 0.00000000 };
Point ( 10510 ) = { 1.35416667, 51.13333333, 0.00000000 };
Point ( 10511 ) = { 1.35000000, 51.12916667, 0.00000000 };
Point ( 10512 ) = { 1.35000000, 51.12083333, 0.00000000 };
Point ( 10513 ) = { 1.34583333, 51.11666667, 0.00000000 };
Point ( 10514 ) = { 1.33750000, 51.11666667, 0.00000000 };
Point ( 10515 ) = { 1.32916667, 51.11666667, 0.00000000 };
Point ( 10516 ) = { 1.32500000, 51.11250000, 0.00000000 };
Point ( 10517 ) = { 1.32083333, 51.10833333, 0.00000000 };
Point ( 10518 ) = { 1.31250000, 51.10833333, 0.00000000 };
Point ( 10519 ) = { 1.30416667, 51.10833333, 0.00000000 };
Point ( 10520 ) = { 1.29583333, 51.10833333, 0.00000000 };
Point ( 10521 ) = { 1.28750000, 51.10833333, 0.00000000 };
Point ( 10522 ) = { 1.28333333, 51.10416667, 0.00000000 };
Point ( 10523 ) = { 1.27916667, 51.10000000, 0.00000000 };
Point ( 10524 ) = { 1.27083333, 51.10000000, 0.00000000 };
Point ( 10525 ) = { 1.26250000, 51.10000000, 0.00000000 };
Point ( 10526 ) = { 1.25416667, 51.10000000, 0.00000000 };
Point ( 10527 ) = { 1.24583333, 51.10000000, 0.00000000 };
Point ( 10528 ) = { 1.23750000, 51.10000000, 0.00000000 };
Point ( 10529 ) = { 1.22916667, 51.10000000, 0.00000000 };
Point ( 10530 ) = { 1.22500000, 51.09583333, 0.00000000 };
Point ( 10531 ) = { 1.22500000, 51.08750000, 0.00000000 };
Point ( 10532 ) = { 1.22083333, 51.08333333, 0.00000000 };
Point ( 10533 ) = { 1.21250000, 51.08333333, 0.00000000 };
Point ( 10534 ) = { 1.20416667, 51.08333333, 0.00000000 };
Point ( 10535 ) = { 1.20000000, 51.07916667, 0.00000000 };
Point ( 10536 ) = { 1.19583333, 51.07500000, 0.00000000 };
Point ( 10537 ) = { 1.18750000, 51.07500000, 0.00000000 };
Point ( 10538 ) = { 1.17916667, 51.07500000, 0.00000000 };
Point ( 10539 ) = { 1.17083333, 51.07500000, 0.00000000 };
Point ( 10540 ) = { 1.16666667, 51.07083333, 0.00000000 };
Point ( 10541 ) = { 1.16250000, 51.06666667, 0.00000000 };
Point ( 10542 ) = { 1.15416667, 51.06666667, 0.00000000 };
Point ( 10543 ) = { 1.14583333, 51.06666667, 0.00000000 };
Point ( 10544 ) = { 1.13750000, 51.06666667, 0.00000000 };
Point ( 10545 ) = { 1.13333333, 51.06250000, 0.00000000 };
Point ( 10546 ) = { 1.12916667, 51.05833333, 0.00000000 };
Point ( 10547 ) = { 1.12083333, 51.05833333, 0.00000000 };
Point ( 10548 ) = { 1.11666667, 51.05416667, 0.00000000 };
Point ( 10549 ) = { 1.11250000, 51.05000000, 0.00000000 };
Point ( 10550 ) = { 1.10416667, 51.05000000, 0.00000000 };
Point ( 10551 ) = { 1.10000000, 51.04583333, 0.00000000 };
Point ( 10552 ) = { 1.09583333, 51.04166667, 0.00000000 };
Point ( 10553 ) = { 1.09166667, 51.03750000, 0.00000000 };
Point ( 10554 ) = { 1.08750000, 51.03333333, 0.00000000 };
Point ( 10555 ) = { 1.07916667, 51.03333333, 0.00000000 };
Point ( 10556 ) = { 1.07500000, 51.02916667, 0.00000000 };
Point ( 10557 ) = { 1.07083333, 51.02500000, 0.00000000 };
Point ( 10558 ) = { 1.06666667, 51.02083333, 0.00000000 };
Point ( 10559 ) = { 1.06250000, 51.01666667, 0.00000000 };
Point ( 10560 ) = { 1.05416667, 51.01666667, 0.00000000 };
Point ( 10561 ) = { 1.05000000, 51.01250000, 0.00000000 };
Point ( 10562 ) = { 1.04583333, 51.00833333, 0.00000000 };
Point ( 10563 ) = { 1.04166667, 51.00416667, 0.00000000 };
Point ( 10564 ) = { 1.03750000, 51.00000000, 0.00000000 };
Point ( 10565 ) = { 1.03333333, 50.99583333, 0.00000000 };
Point ( 10566 ) = { 1.03333333, 50.98750000, 0.00000000 };
Point ( 10567 ) = { 1.02916667, 50.98333333, 0.00000000 };
Point ( 10568 ) = { 1.02500000, 50.97916667, 0.00000000 };
Point ( 10569 ) = { 1.02083333, 50.97500000, 0.00000000 };
Point ( 10570 ) = { 1.01666667, 50.97083333, 0.00000000 };
Point ( 10571 ) = { 1.01666667, 50.96250000, 0.00000000 };
Point ( 10572 ) = { 1.01666667, 50.95416667, 0.00000000 };
Point ( 10573 ) = { 1.01250000, 50.95000000, 0.00000000 };
Point ( 10574 ) = { 1.00833333, 50.94583333, 0.00000000 };
Point ( 10575 ) = { 1.00416667, 50.94166667, 0.00000000 };
Point ( 10576 ) = { 1.00000000, 50.93750000, 0.00000000 };
Point ( 10577 ) = { 1.00000000, 50.92916667, 0.00000000 };
Point ( 10578 ) = { 0.99583333, 50.92500000, 0.00000000 };
Point ( 10579 ) = { 0.98750000, 50.92500000, 0.00000000 };
Point ( 10580 ) = { 0.98333333, 50.92083333, 0.00000000 };
Point ( 10581 ) = { 0.98333333, 50.91250000, 0.00000000 };
Point ( 10582 ) = { 0.97916667, 50.90833333, 0.00000000 };
Point ( 10583 ) = { 0.97083333, 50.90833333, 0.00000000 };
Point ( 10584 ) = { 0.96250000, 50.90833333, 0.00000000 };
Point ( 10585 ) = { 0.95416667, 50.90833333, 0.00000000 };
Point ( 10586 ) = { 0.94583333, 50.90833333, 0.00000000 };
Point ( 10587 ) = { 0.93750000, 50.90833333, 0.00000000 };
Point ( 10588 ) = { 0.92916667, 50.90833333, 0.00000000 };
Point ( 10589 ) = { 0.92083333, 50.90833333, 0.00000000 };
Point ( 10590 ) = { 0.91666667, 50.90416667, 0.00000000 };
Point ( 10591 ) = { 0.91250000, 50.90000000, 0.00000000 };
Point ( 10592 ) = { 0.90416667, 50.90000000, 0.00000000 };
Point ( 10593 ) = { 0.89583333, 50.90000000, 0.00000000 };
Point ( 10594 ) = { 0.88750000, 50.90000000, 0.00000000 };
Point ( 10595 ) = { 0.87916667, 50.90000000, 0.00000000 };
Point ( 10596 ) = { 0.87083333, 50.90000000, 0.00000000 };
Point ( 10597 ) = { 0.86250000, 50.90000000, 0.00000000 };
Point ( 10598 ) = { 0.85833333, 50.90416667, 0.00000000 };
Point ( 10599 ) = { 0.85416667, 50.90833333, 0.00000000 };
Point ( 10600 ) = { 0.85000000, 50.91250000, 0.00000000 };
Point ( 10601 ) = { 0.85000000, 50.92083333, 0.00000000 };
Point ( 10602 ) = { 0.84583333, 50.92500000, 0.00000000 };
Point ( 10603 ) = { 0.83750000, 50.92500000, 0.00000000 };
Point ( 10604 ) = { 0.82916667, 50.92500000, 0.00000000 };
Point ( 10605 ) = { 0.82500000, 50.92083333, 0.00000000 };
Point ( 10606 ) = { 0.82083333, 50.91666667, 0.00000000 };
Point ( 10607 ) = { 0.81666667, 50.91250000, 0.00000000 };
Point ( 10608 ) = { 0.81250000, 50.90833333, 0.00000000 };
Point ( 10609 ) = { 0.80416667, 50.90833333, 0.00000000 };
Point ( 10610 ) = { 0.79583333, 50.90833333, 0.00000000 };
Point ( 10611 ) = { 0.79166667, 50.90416667, 0.00000000 };
Point ( 10612 ) = { 0.78750000, 50.90000000, 0.00000000 };
Point ( 10613 ) = { 0.77916667, 50.90000000, 0.00000000 };
Point ( 10614 ) = { 0.77083333, 50.90000000, 0.00000000 };
Point ( 10615 ) = { 0.76250000, 50.90000000, 0.00000000 };
Point ( 10616 ) = { 0.75833333, 50.89583333, 0.00000000 };
Point ( 10617 ) = { 0.75416667, 50.89166667, 0.00000000 };
Point ( 10618 ) = { 0.75000000, 50.88750000, 0.00000000 };
Point ( 10619 ) = { 0.74583333, 50.88333333, 0.00000000 };
Point ( 10620 ) = { 0.74166667, 50.87916667, 0.00000000 };
Point ( 10621 ) = { 0.73750000, 50.87500000, 0.00000000 };
Point ( 10622 ) = { 0.73333333, 50.87083333, 0.00000000 };
Point ( 10623 ) = { 0.72916667, 50.86666667, 0.00000000 };
Point ( 10624 ) = { 0.72083333, 50.86666667, 0.00000000 };
Point ( 10625 ) = { 0.71666667, 50.86250000, 0.00000000 };
Point ( 10626 ) = { 0.71250000, 50.85833333, 0.00000000 };
Point ( 10627 ) = { 0.70416667, 50.85833333, 0.00000000 };
Point ( 10628 ) = { 0.70000000, 50.86250000, 0.00000000 };
Point ( 10629 ) = { 0.69583333, 50.86666667, 0.00000000 };
Point ( 10630 ) = { 0.68750000, 50.86666667, 0.00000000 };
Point ( 10631 ) = { 0.67916667, 50.86666667, 0.00000000 };
Point ( 10632 ) = { 0.67500000, 50.86250000, 0.00000000 };
Point ( 10633 ) = { 0.67500000, 50.85416667, 0.00000000 };
Point ( 10634 ) = { 0.67500000, 50.84583333, 0.00000000 };
Point ( 10635 ) = { 0.67083333, 50.84166667, 0.00000000 };
Point ( 10636 ) = { 0.66250000, 50.84166667, 0.00000000 };
Point ( 10637 ) = { 0.65416667, 50.84166667, 0.00000000 };
Point ( 10638 ) = { 0.64583333, 50.84166667, 0.00000000 };
Point ( 10639 ) = { 0.63750000, 50.84166667, 0.00000000 };
Point ( 10640 ) = { 0.62916667, 50.84166667, 0.00000000 };
Point ( 10641 ) = { 0.62500000, 50.83750000, 0.00000000 };
Point ( 10642 ) = { 0.62500000, 50.82916667, 0.00000000 };
Point ( 10643 ) = { 0.62083333, 50.82500000, 0.00000000 };
Point ( 10644 ) = { 0.61666667, 50.82916667, 0.00000000 };
Point ( 10645 ) = { 0.61666667, 50.83750000, 0.00000000 };
Point ( 10646 ) = { 0.61250000, 50.84166667, 0.00000000 };
Point ( 10647 ) = { 0.60416667, 50.84166667, 0.00000000 };
Point ( 10648 ) = { 0.59583333, 50.84166667, 0.00000000 };
Point ( 10649 ) = { 0.59166667, 50.83750000, 0.00000000 };
Point ( 10650 ) = { 0.59166667, 50.82916667, 0.00000000 };
Point ( 10651 ) = { 0.58750000, 50.82500000, 0.00000000 };
Point ( 10652 ) = { 0.57916667, 50.82500000, 0.00000000 };
Point ( 10653 ) = { 0.57500000, 50.82083333, 0.00000000 };
Point ( 10654 ) = { 0.57083333, 50.81666667, 0.00000000 };
Point ( 10655 ) = { 0.56250000, 50.81666667, 0.00000000 };
Point ( 10656 ) = { 0.55833333, 50.82083333, 0.00000000 };
Point ( 10657 ) = { 0.55416667, 50.82500000, 0.00000000 };
Point ( 10658 ) = { 0.54583333, 50.82500000, 0.00000000 };
Point ( 10659 ) = { 0.54166667, 50.82083333, 0.00000000 };
Point ( 10660 ) = { 0.53750000, 50.81666667, 0.00000000 };
Point ( 10661 ) = { 0.52916667, 50.81666667, 0.00000000 };
Point ( 10662 ) = { 0.52083333, 50.81666667, 0.00000000 };
Point ( 10663 ) = { 0.51666667, 50.81250000, 0.00000000 };
Point ( 10664 ) = { 0.51250000, 50.80833333, 0.00000000 };
Point ( 10665 ) = { 0.50416667, 50.80833333, 0.00000000 };
Point ( 10666 ) = { 0.49583333, 50.80833333, 0.00000000 };
Point ( 10667 ) = { 0.49166667, 50.80416667, 0.00000000 };
Point ( 10668 ) = { 0.48750000, 50.80000000, 0.00000000 };
Point ( 10669 ) = { 0.48333333, 50.79583333, 0.00000000 };
Point ( 10670 ) = { 0.47916667, 50.79166667, 0.00000000 };
Point ( 10671 ) = { 0.47083333, 50.79166667, 0.00000000 };
Point ( 10672 ) = { 0.46250000, 50.79166667, 0.00000000 };
Point ( 10673 ) = { 0.45416667, 50.79166667, 0.00000000 };
Point ( 10674 ) = { 0.44583333, 50.79166667, 0.00000000 };
Point ( 10675 ) = { 0.43750000, 50.79166667, 0.00000000 };
Point ( 10676 ) = { 0.42916667, 50.79166667, 0.00000000 };
Point ( 10677 ) = { 0.42500000, 50.78750000, 0.00000000 };
Point ( 10678 ) = { 0.42083333, 50.78333333, 0.00000000 };
Point ( 10679 ) = { 0.41250000, 50.78333333, 0.00000000 };
Point ( 10680 ) = { 0.40416667, 50.78333333, 0.00000000 };
Point ( 10681 ) = { 0.40000000, 50.77916667, 0.00000000 };
Point ( 10682 ) = { 0.39583333, 50.77500000, 0.00000000 };
Point ( 10683 ) = { 0.38750000, 50.77500000, 0.00000000 };
Point ( 10684 ) = { 0.37916667, 50.77500000, 0.00000000 };
Point ( 10685 ) = { 0.37083333, 50.77500000, 0.00000000 };
Point ( 10686 ) = { 0.36250000, 50.77500000, 0.00000000 };
Point ( 10687 ) = { 0.35833333, 50.77083333, 0.00000000 };
Point ( 10688 ) = { 0.35416667, 50.76666667, 0.00000000 };
Point ( 10689 ) = { 0.34583333, 50.76666667, 0.00000000 };
Point ( 10690 ) = { 0.33750000, 50.76666667, 0.00000000 };
Point ( 10691 ) = { 0.32916667, 50.76666667, 0.00000000 };
Point ( 10692 ) = { 0.32083333, 50.76666667, 0.00000000 };
Point ( 10693 ) = { 0.31666667, 50.76250000, 0.00000000 };
Point ( 10694 ) = { 0.31250000, 50.75833333, 0.00000000 };
Point ( 10695 ) = { 0.30833333, 50.75416667, 0.00000000 };
Point ( 10696 ) = { 0.30416667, 50.75000000, 0.00000000 };
Point ( 10697 ) = { 0.29583333, 50.75000000, 0.00000000 };
Point ( 10698 ) = { 0.29166667, 50.74583333, 0.00000000 };
Point ( 10699 ) = { 0.28750000, 50.74166667, 0.00000000 };
Point ( 10700 ) = { 0.27916667, 50.74166667, 0.00000000 };
Point ( 10701 ) = { 0.27500000, 50.73750000, 0.00000000 };
Point ( 10702 ) = { 0.27083333, 50.73333333, 0.00000000 };
Point ( 10703 ) = { 0.26250000, 50.73333333, 0.00000000 };
Point ( 10704 ) = { 0.25416667, 50.73333333, 0.00000000 };
Point ( 10705 ) = { 0.24583333, 50.73333333, 0.00000000 };
Point ( 10706 ) = { 0.23750000, 50.73333333, 0.00000000 };
Point ( 10707 ) = { 0.22916667, 50.73333333, 0.00000000 };
Point ( 10708 ) = { 0.22083333, 50.73333333, 0.00000000 };
Point ( 10709 ) = { 0.21250000, 50.73333333, 0.00000000 };
Point ( 10710 ) = { 0.20416667, 50.73333333, 0.00000000 };
Point ( 10711 ) = { 0.19583333, 50.73333333, 0.00000000 };
Point ( 10712 ) = { 0.18750000, 50.73333333, 0.00000000 };
Point ( 10713 ) = { 0.18333333, 50.73750000, 0.00000000 };
Point ( 10714 ) = { 0.17916667, 50.74166667, 0.00000000 };
Point ( 10715 ) = { 0.17500000, 50.74583333, 0.00000000 };
Point ( 10716 ) = { 0.17083333, 50.75000000, 0.00000000 };
Point ( 10717 ) = { 0.16250000, 50.75000000, 0.00000000 };
Point ( 10718 ) = { 0.15416667, 50.75000000, 0.00000000 };
Point ( 10719 ) = { 0.14583333, 50.75000000, 0.00000000 };
Point ( 10720 ) = { 0.13750000, 50.75000000, 0.00000000 };
Point ( 10721 ) = { 0.13333333, 50.75416667, 0.00000000 };
Point ( 10722 ) = { 0.12916667, 50.75833333, 0.00000000 };
Point ( 10723 ) = { 0.12083333, 50.75833333, 0.00000000 };
Point ( 10724 ) = { 0.11250000, 50.75833333, 0.00000000 };
Point ( 10725 ) = { 0.10416667, 50.75833333, 0.00000000 };
Point ( 10726 ) = { 0.09583333, 50.75833333, 0.00000000 };
Point ( 10727 ) = { 0.09166667, 50.76250000, 0.00000000 };
Point ( 10728 ) = { 0.08750000, 50.76666667, 0.00000000 };
Point ( 10729 ) = { 0.07916667, 50.76666667, 0.00000000 };
Point ( 10730 ) = { 0.07083333, 50.76666667, 0.00000000 };
Point ( 10731 ) = { 0.06666667, 50.77083333, 0.00000000 };
Point ( 10732 ) = { 0.06250000, 50.77500000, 0.00000000 };
Point ( 10733 ) = { 0.05416667, 50.77500000, 0.00000000 };
Point ( 10734 ) = { 0.04583333, 50.77500000, 0.00000000 };
Point ( 10735 ) = { 0.03750000, 50.77500000, 0.00000000 };
Point ( 10736 ) = { 0.03333333, 50.77916667, 0.00000000 };
Point ( 10737 ) = { 0.02916667, 50.78333333, 0.00000000 };
Point ( 10738 ) = { 0.02083333, 50.78333333, 0.00000000 };
Point ( 10739 ) = { 0.01250000, 50.78333333, 0.00000000 };
Point ( 10740 ) = { 0.00416667, 50.78333333, 0.00000000 };
Point ( 10741 ) = { -0.00416667, 50.78333333, 0.00000000 };
Point ( 10742 ) = { -0.00833333, 50.77916667, 0.00000000 };
Point ( 10743 ) = { -0.01250000, 50.77500000, 0.00000000 };
Point ( 10744 ) = { -0.01666667, 50.77916667, 0.00000000 };
Point ( 10745 ) = { -0.02083333, 50.78333333, 0.00000000 };
Point ( 10746 ) = { -0.02916667, 50.78333333, 0.00000000 };
Point ( 10747 ) = { -0.03750000, 50.78333333, 0.00000000 };
Point ( 10748 ) = { -0.04583333, 50.78333333, 0.00000000 };
Point ( 10749 ) = { -0.05000000, 50.78750000, 0.00000000 };
Point ( 10750 ) = { -0.05416667, 50.79166667, 0.00000000 };
Point ( 10751 ) = { -0.05833333, 50.79583333, 0.00000000 };
Point ( 10752 ) = { -0.06250000, 50.80000000, 0.00000000 };
Point ( 10753 ) = { -0.06666667, 50.79583333, 0.00000000 };
Point ( 10754 ) = { -0.07083333, 50.79166667, 0.00000000 };
Point ( 10755 ) = { -0.07916667, 50.79166667, 0.00000000 };
Point ( 10756 ) = { -0.08750000, 50.79166667, 0.00000000 };
Point ( 10757 ) = { -0.09166667, 50.79583333, 0.00000000 };
Point ( 10758 ) = { -0.09583333, 50.80000000, 0.00000000 };
Point ( 10759 ) = { -0.10000000, 50.79583333, 0.00000000 };
Point ( 10760 ) = { -0.10416667, 50.79166667, 0.00000000 };
Point ( 10761 ) = { -0.10833333, 50.79583333, 0.00000000 };
Point ( 10762 ) = { -0.11250000, 50.80000000, 0.00000000 };
Point ( 10763 ) = { -0.11666667, 50.79583333, 0.00000000 };
Point ( 10764 ) = { -0.12083333, 50.79166667, 0.00000000 };
Point ( 10765 ) = { -0.12500000, 50.79583333, 0.00000000 };
Point ( 10766 ) = { -0.12916667, 50.80000000, 0.00000000 };
Point ( 10767 ) = { -0.13750000, 50.80000000, 0.00000000 };
Point ( 10768 ) = { -0.14583333, 50.80000000, 0.00000000 };
Point ( 10769 ) = { -0.15416667, 50.80000000, 0.00000000 };
Point ( 10770 ) = { -0.16250000, 50.80000000, 0.00000000 };
Point ( 10771 ) = { -0.17083333, 50.80000000, 0.00000000 };
Point ( 10772 ) = { -0.17916667, 50.80000000, 0.00000000 };
Point ( 10773 ) = { -0.18750000, 50.80000000, 0.00000000 };
Point ( 10774 ) = { -0.19166667, 50.79583333, 0.00000000 };
Point ( 10775 ) = { -0.19583333, 50.79166667, 0.00000000 };
Point ( 10776 ) = { -0.20416667, 50.79166667, 0.00000000 };
Point ( 10777 ) = { -0.21250000, 50.79166667, 0.00000000 };
Point ( 10778 ) = { -0.22083333, 50.79166667, 0.00000000 };
Point ( 10779 ) = { -0.22916667, 50.79166667, 0.00000000 };
Point ( 10780 ) = { -0.23750000, 50.79166667, 0.00000000 };
Point ( 10781 ) = { -0.24166667, 50.78750000, 0.00000000 };
Point ( 10782 ) = { -0.24583333, 50.78333333, 0.00000000 };
Point ( 10783 ) = { -0.25416667, 50.78333333, 0.00000000 };
Point ( 10784 ) = { -0.26250000, 50.78333333, 0.00000000 };
Point ( 10785 ) = { -0.26666667, 50.77916667, 0.00000000 };
Point ( 10786 ) = { -0.27083333, 50.77500000, 0.00000000 };
Point ( 10787 ) = { -0.27916667, 50.77500000, 0.00000000 };
Point ( 10788 ) = { -0.28750000, 50.77500000, 0.00000000 };
Point ( 10789 ) = { -0.29166667, 50.77083333, 0.00000000 };
Point ( 10790 ) = { -0.29583333, 50.76666667, 0.00000000 };
Point ( 10791 ) = { -0.30416667, 50.76666667, 0.00000000 };
Point ( 10792 ) = { -0.31250000, 50.76666667, 0.00000000 };
Point ( 10793 ) = { -0.32083333, 50.76666667, 0.00000000 };
Point ( 10794 ) = { -0.32916667, 50.76666667, 0.00000000 };
Point ( 10795 ) = { -0.33750000, 50.76666667, 0.00000000 };
Point ( 10796 ) = { -0.34583333, 50.76666667, 0.00000000 };
Point ( 10797 ) = { -0.35416667, 50.76666667, 0.00000000 };
Point ( 10798 ) = { -0.35833333, 50.76250000, 0.00000000 };
Point ( 10799 ) = { -0.36250000, 50.75833333, 0.00000000 };
Point ( 10800 ) = { -0.37083333, 50.75833333, 0.00000000 };
Point ( 10801 ) = { -0.37916667, 50.75833333, 0.00000000 };
Point ( 10802 ) = { -0.38333333, 50.75416667, 0.00000000 };
Point ( 10803 ) = { -0.38750000, 50.75000000, 0.00000000 };
Point ( 10804 ) = { -0.39583333, 50.75000000, 0.00000000 };
Point ( 10805 ) = { -0.40416667, 50.75000000, 0.00000000 };
Point ( 10806 ) = { -0.40833333, 50.74583333, 0.00000000 };
Point ( 10807 ) = { -0.41250000, 50.74166667, 0.00000000 };
Point ( 10808 ) = { -0.42083333, 50.74166667, 0.00000000 };
Point ( 10809 ) = { -0.42500000, 50.74583333, 0.00000000 };
Point ( 10810 ) = { -0.42916667, 50.75000000, 0.00000000 };
Point ( 10811 ) = { -0.43750000, 50.75000000, 0.00000000 };
Point ( 10812 ) = { -0.44166667, 50.74583333, 0.00000000 };
Point ( 10813 ) = { -0.44583333, 50.74166667, 0.00000000 };
Point ( 10814 ) = { -0.45416667, 50.74166667, 0.00000000 };
Point ( 10815 ) = { -0.46250000, 50.74166667, 0.00000000 };
Point ( 10816 ) = { -0.47083333, 50.74166667, 0.00000000 };
Point ( 10817 ) = { -0.47500000, 50.73750000, 0.00000000 };
Point ( 10818 ) = { -0.47916667, 50.73333333, 0.00000000 };
Point ( 10819 ) = { -0.48333333, 50.73750000, 0.00000000 };
Point ( 10820 ) = { -0.48750000, 50.74166667, 0.00000000 };
Point ( 10821 ) = { -0.49166667, 50.73750000, 0.00000000 };
Point ( 10822 ) = { -0.49583333, 50.73333333, 0.00000000 };
Point ( 10823 ) = { -0.50000000, 50.73750000, 0.00000000 };
Point ( 10824 ) = { -0.50416667, 50.74166667, 0.00000000 };
Point ( 10825 ) = { -0.50833333, 50.74583333, 0.00000000 };
Point ( 10826 ) = { -0.51250000, 50.75000000, 0.00000000 };
Point ( 10827 ) = { -0.52083333, 50.75000000, 0.00000000 };
Point ( 10828 ) = { -0.52916667, 50.75000000, 0.00000000 };
Point ( 10829 ) = { -0.53750000, 50.75000000, 0.00000000 };
Point ( 10830 ) = { -0.54166667, 50.74583333, 0.00000000 };
Point ( 10831 ) = { -0.54583333, 50.74166667, 0.00000000 };
Point ( 10832 ) = { -0.55000000, 50.74583333, 0.00000000 };
Point ( 10833 ) = { -0.55416667, 50.75000000, 0.00000000 };
Point ( 10834 ) = { -0.56250000, 50.75000000, 0.00000000 };
Point ( 10835 ) = { -0.56666667, 50.74583333, 0.00000000 };
Point ( 10836 ) = { -0.57083333, 50.74166667, 0.00000000 };
Point ( 10837 ) = { -0.57500000, 50.74583333, 0.00000000 };
Point ( 10838 ) = { -0.57916667, 50.75000000, 0.00000000 };
Point ( 10839 ) = { -0.58750000, 50.75000000, 0.00000000 };
Point ( 10840 ) = { -0.59583333, 50.75000000, 0.00000000 };
Point ( 10841 ) = { -0.60416667, 50.75000000, 0.00000000 };
Point ( 10842 ) = { -0.61250000, 50.75000000, 0.00000000 };
Point ( 10843 ) = { -0.62083333, 50.75000000, 0.00000000 };
Point ( 10844 ) = { -0.62916667, 50.75000000, 0.00000000 };
Point ( 10845 ) = { -0.63333333, 50.74583333, 0.00000000 };
Point ( 10846 ) = { -0.63750000, 50.74166667, 0.00000000 };
Point ( 10847 ) = { -0.64583333, 50.74166667, 0.00000000 };
Point ( 10848 ) = { -0.65000000, 50.73750000, 0.00000000 };
Point ( 10849 ) = { -0.65416667, 50.73333333, 0.00000000 };
Point ( 10850 ) = { -0.66250000, 50.73333333, 0.00000000 };
Point ( 10851 ) = { -0.67083333, 50.73333333, 0.00000000 };
Point ( 10852 ) = { -0.67916667, 50.73333333, 0.00000000 };
Point ( 10853 ) = { -0.68333333, 50.72916667, 0.00000000 };
Point ( 10854 ) = { -0.68333333, 50.72083333, 0.00000000 };
Point ( 10855 ) = { -0.67916667, 50.71666667, 0.00000000 };
Point ( 10856 ) = { -0.67500000, 50.71250000, 0.00000000 };
Point ( 10857 ) = { -0.67500000, 50.70416667, 0.00000000 };
Point ( 10858 ) = { -0.67500000, 50.69583333, 0.00000000 };
Point ( 10859 ) = { -0.67916667, 50.69166667, 0.00000000 };
Point ( 10860 ) = { -0.68750000, 50.69166667, 0.00000000 };
Point ( 10861 ) = { -0.69166667, 50.68750000, 0.00000000 };
Point ( 10862 ) = { -0.69583333, 50.68333333, 0.00000000 };
Point ( 10863 ) = { -0.70416667, 50.68333333, 0.00000000 };
Point ( 10864 ) = { -0.70833333, 50.67916667, 0.00000000 };
Point ( 10865 ) = { -0.71250000, 50.67500000, 0.00000000 };
Point ( 10866 ) = { -0.72083333, 50.67500000, 0.00000000 };
Point ( 10867 ) = { -0.72916667, 50.67500000, 0.00000000 };
Point ( 10868 ) = { -0.73750000, 50.67500000, 0.00000000 };
Point ( 10869 ) = { -0.74583333, 50.67500000, 0.00000000 };
Point ( 10870 ) = { -0.75000000, 50.67083333, 0.00000000 };
Point ( 10871 ) = { -0.75416667, 50.66666667, 0.00000000 };
Point ( 10872 ) = { -0.75833333, 50.67083333, 0.00000000 };
Point ( 10873 ) = { -0.76250000, 50.67500000, 0.00000000 };
Point ( 10874 ) = { -0.77083333, 50.67500000, 0.00000000 };
Point ( 10875 ) = { -0.77916667, 50.67500000, 0.00000000 };
Point ( 10876 ) = { -0.78750000, 50.67500000, 0.00000000 };
Point ( 10877 ) = { -0.79583333, 50.67500000, 0.00000000 };
Point ( 10878 ) = { -0.80416667, 50.67500000, 0.00000000 };
Point ( 10879 ) = { -0.81250000, 50.67500000, 0.00000000 };
Point ( 10880 ) = { -0.82083333, 50.67500000, 0.00000000 };
Point ( 10881 ) = { -0.82500000, 50.67916667, 0.00000000 };
Point ( 10882 ) = { -0.82916667, 50.68333333, 0.00000000 };
Point ( 10883 ) = { -0.83333333, 50.68750000, 0.00000000 };
Point ( 10884 ) = { -0.82916667, 50.69166667, 0.00000000 };
Point ( 10885 ) = { -0.82500000, 50.69583333, 0.00000000 };
Point ( 10886 ) = { -0.82500000, 50.70416667, 0.00000000 };
Point ( 10887 ) = { -0.82916667, 50.70833333, 0.00000000 };
Point ( 10888 ) = { -0.83333333, 50.71250000, 0.00000000 };
Point ( 10889 ) = { -0.83333333, 50.72083333, 0.00000000 };
Point ( 10890 ) = { -0.83750000, 50.72500000, 0.00000000 };
Point ( 10891 ) = { -0.84166667, 50.72916667, 0.00000000 };
Point ( 10892 ) = { -0.84583333, 50.73333333, 0.00000000 };
Point ( 10893 ) = { -0.85416667, 50.73333333, 0.00000000 };
Point ( 10894 ) = { -0.86250000, 50.73333333, 0.00000000 };
Point ( 10895 ) = { -0.86666667, 50.73750000, 0.00000000 };
Point ( 10896 ) = { -0.87083333, 50.74166667, 0.00000000 };
Point ( 10897 ) = { -0.87916667, 50.74166667, 0.00000000 };
Point ( 10898 ) = { -0.88750000, 50.74166667, 0.00000000 };
Point ( 10899 ) = { -0.89583333, 50.74166667, 0.00000000 };
Point ( 10900 ) = { -0.90416667, 50.74166667, 0.00000000 };
Point ( 10901 ) = { -0.91250000, 50.74166667, 0.00000000 };
Point ( 10902 ) = { -0.92083333, 50.74166667, 0.00000000 };
Point ( 10903 ) = { -0.92916667, 50.74166667, 0.00000000 };
Point ( 10904 ) = { -0.93750000, 50.74166667, 0.00000000 };
Point ( 10905 ) = { -0.94583333, 50.74166667, 0.00000000 };
Point ( 10906 ) = { -0.95000000, 50.73750000, 0.00000000 };
Point ( 10907 ) = { -0.95416667, 50.73333333, 0.00000000 };
Point ( 10908 ) = { -0.96250000, 50.73333333, 0.00000000 };
Point ( 10909 ) = { -0.97083333, 50.73333333, 0.00000000 };
Point ( 10910 ) = { -0.97916667, 50.73333333, 0.00000000 };
Point ( 10911 ) = { -0.98333333, 50.72916667, 0.00000000 };
Point ( 10912 ) = { -0.98750000, 50.72500000, 0.00000000 };
Point ( 10913 ) = { -0.99583333, 50.72500000, 0.00000000 };
Point ( 10914 ) = { -1.00416667, 50.72500000, 0.00000000 };
Point ( 10915 ) = { -1.00833333, 50.72916667, 0.00000000 };
Point ( 10916 ) = { -1.01250000, 50.73333333, 0.00000000 };
Point ( 10917 ) = { -1.02083333, 50.73333333, 0.00000000 };
Point ( 10918 ) = { -1.02916667, 50.73333333, 0.00000000 };
Point ( 10919 ) = { -1.03750000, 50.73333333, 0.00000000 };
Point ( 10920 ) = { -1.04166667, 50.73750000, 0.00000000 };
Point ( 10921 ) = { -1.04583333, 50.74166667, 0.00000000 };
Point ( 10922 ) = { -1.05416667, 50.74166667, 0.00000000 };
Point ( 10923 ) = { -1.05833333, 50.74583333, 0.00000000 };
Point ( 10924 ) = { -1.05833333, 50.75416667, 0.00000000 };
Point ( 10925 ) = { -1.05833333, 50.76250000, 0.00000000 };
Point ( 10926 ) = { -1.06250000, 50.76666667, 0.00000000 };
Point ( 10927 ) = { -1.07083333, 50.76666667, 0.00000000 };
Point ( 10928 ) = { -1.07500000, 50.76250000, 0.00000000 };
Point ( 10929 ) = { -1.07916667, 50.75833333, 0.00000000 };
Point ( 10930 ) = { -1.08333333, 50.76250000, 0.00000000 };
Point ( 10931 ) = { -1.08750000, 50.76666667, 0.00000000 };
Point ( 10932 ) = { -1.09583333, 50.76666667, 0.00000000 };
Point ( 10933 ) = { -1.10416667, 50.76666667, 0.00000000 };
Point ( 10934 ) = { -1.11250000, 50.76666667, 0.00000000 };
Point ( 10935 ) = { -1.12083333, 50.76666667, 0.00000000 };
Point ( 10936 ) = { -1.12500000, 50.77083333, 0.00000000 };
Point ( 10937 ) = { -1.12916667, 50.77500000, 0.00000000 };
Point ( 10938 ) = { -1.13750000, 50.77500000, 0.00000000 };
Point ( 10939 ) = { -1.14583333, 50.77500000, 0.00000000 };
Point ( 10940 ) = { -1.15000000, 50.77916667, 0.00000000 };
Point ( 10941 ) = { -1.15416667, 50.78333333, 0.00000000 };
Point ( 10942 ) = { -1.16250000, 50.78333333, 0.00000000 };
Point ( 10943 ) = { -1.17083333, 50.78333333, 0.00000000 };
Point ( 10944 ) = { -1.17916667, 50.78333333, 0.00000000 };
Point ( 10945 ) = { -1.18750000, 50.78333333, 0.00000000 };
Point ( 10946 ) = { -1.19583333, 50.78333333, 0.00000000 };
Point ( 10947 ) = { -1.20000000, 50.78750000, 0.00000000 };
Point ( 10948 ) = { -1.20416667, 50.79166667, 0.00000000 };
Point ( 10949 ) = { -1.21250000, 50.79166667, 0.00000000 };
Point ( 10950 ) = { -1.22083333, 50.79166667, 0.00000000 };
Point ( 10951 ) = { -1.22916667, 50.79166667, 0.00000000 };
Point ( 10952 ) = { -1.23750000, 50.79166667, 0.00000000 };
Point ( 10953 ) = { -1.24583333, 50.79166667, 0.00000000 };
Point ( 10954 ) = { -1.25416667, 50.79166667, 0.00000000 };
Point ( 10955 ) = { -1.25833333, 50.79583333, 0.00000000 };
Point ( 10956 ) = { -1.26250000, 50.80000000, 0.00000000 };
Point ( 10957 ) = { -1.26666667, 50.80416667, 0.00000000 };
Point ( 10958 ) = { -1.27083333, 50.80833333, 0.00000000 };
Point ( 10959 ) = { -1.27500000, 50.80416667, 0.00000000 };
Point ( 10960 ) = { -1.27500000, 50.79583333, 0.00000000 };
Point ( 10961 ) = { -1.27916667, 50.79166667, 0.00000000 };
Point ( 10962 ) = { -1.28750000, 50.79166667, 0.00000000 };
Point ( 10963 ) = { -1.29583333, 50.79166667, 0.00000000 };
Point ( 10964 ) = { -1.30416667, 50.79166667, 0.00000000 };
Point ( 10965 ) = { -1.30833333, 50.79583333, 0.00000000 };
Point ( 10966 ) = { -1.31250000, 50.80000000, 0.00000000 };
Point ( 10967 ) = { -1.32083333, 50.80000000, 0.00000000 };
Point ( 10968 ) = { -1.32500000, 50.79583333, 0.00000000 };
Point ( 10969 ) = { -1.32916667, 50.79166667, 0.00000000 };
Point ( 10970 ) = { -1.33333333, 50.78750000, 0.00000000 };
Point ( 10971 ) = { -1.33750000, 50.78333333, 0.00000000 };
Point ( 10972 ) = { -1.34166667, 50.77916667, 0.00000000 };
Point ( 10973 ) = { -1.34583333, 50.77500000, 0.00000000 };
Point ( 10974 ) = { -1.35416667, 50.77500000, 0.00000000 };
Point ( 10975 ) = { -1.35833333, 50.77083333, 0.00000000 };
Point ( 10976 ) = { -1.36250000, 50.76666667, 0.00000000 };
Point ( 10977 ) = { -1.37083333, 50.76666667, 0.00000000 };
Point ( 10978 ) = { -1.37916667, 50.76666667, 0.00000000 };
Point ( 10979 ) = { -1.38333333, 50.76250000, 0.00000000 };
Point ( 10980 ) = { -1.38750000, 50.75833333, 0.00000000 };
Point ( 10981 ) = { -1.39583333, 50.75833333, 0.00000000 };
Point ( 10982 ) = { -1.40416667, 50.75833333, 0.00000000 };
Point ( 10983 ) = { -1.41250000, 50.75833333, 0.00000000 };
Point ( 10984 ) = { -1.42083333, 50.75833333, 0.00000000 };
Point ( 10985 ) = { -1.42500000, 50.75416667, 0.00000000 };
Point ( 10986 ) = { -1.42916667, 50.75000000, 0.00000000 };
Point ( 10987 ) = { -1.43750000, 50.75000000, 0.00000000 };
Point ( 10988 ) = { -1.44583333, 50.75000000, 0.00000000 };
Point ( 10989 ) = { -1.45000000, 50.74583333, 0.00000000 };
Point ( 10990 ) = { -1.45416667, 50.74166667, 0.00000000 };
Point ( 10991 ) = { -1.46250000, 50.74166667, 0.00000000 };
Point ( 10992 ) = { -1.47083333, 50.74166667, 0.00000000 };
Point ( 10993 ) = { -1.47500000, 50.73750000, 0.00000000 };
Point ( 10994 ) = { -1.47916667, 50.73333333, 0.00000000 };
Point ( 10995 ) = { -1.48750000, 50.73333333, 0.00000000 };
Point ( 10996 ) = { -1.49583333, 50.73333333, 0.00000000 };
Point ( 10997 ) = { -1.50000000, 50.72916667, 0.00000000 };
Point ( 10998 ) = { -1.50416667, 50.72500000, 0.00000000 };
Point ( 10999 ) = { -1.51250000, 50.72500000, 0.00000000 };
Point ( 11000 ) = { -1.52083333, 50.72500000, 0.00000000 };
Point ( 11001 ) = { -1.52916667, 50.72500000, 0.00000000 };
Point ( 11002 ) = { -1.53333333, 50.72083333, 0.00000000 };
Point ( 11003 ) = { -1.53750000, 50.71666667, 0.00000000 };
Point ( 11004 ) = { -1.54583333, 50.71666667, 0.00000000 };
Point ( 11005 ) = { -1.55000000, 50.72083333, 0.00000000 };
Point ( 11006 ) = { -1.55416667, 50.72500000, 0.00000000 };
Point ( 11007 ) = { -1.55833333, 50.72083333, 0.00000000 };
Point ( 11008 ) = { -1.56250000, 50.71666667, 0.00000000 };
Point ( 11009 ) = { -1.56666667, 50.71250000, 0.00000000 };
Point ( 11010 ) = { -1.56666667, 50.70416667, 0.00000000 };
Point ( 11011 ) = { -1.57083333, 50.70000000, 0.00000000 };
Point ( 11012 ) = { -1.57500000, 50.69583333, 0.00000000 };
Point ( 11013 ) = { -1.57916667, 50.69166667, 0.00000000 };
Point ( 11014 ) = { -1.58333333, 50.68750000, 0.00000000 };
Point ( 11015 ) = { -1.58750000, 50.68333333, 0.00000000 };
Point ( 11016 ) = { -1.59583333, 50.68333333, 0.00000000 };
Point ( 11017 ) = { -1.60000000, 50.67916667, 0.00000000 };
Point ( 11018 ) = { -1.60416667, 50.67500000, 0.00000000 };
Point ( 11019 ) = { -1.60833333, 50.67083333, 0.00000000 };
Point ( 11020 ) = { -1.61250000, 50.66666667, 0.00000000 };
Point ( 11021 ) = { -1.62083333, 50.66666667, 0.00000000 };
Point ( 11022 ) = { -1.62500000, 50.67083333, 0.00000000 };
Point ( 11023 ) = { -1.62083333, 50.67500000, 0.00000000 };
Point ( 11024 ) = { -1.61666667, 50.67916667, 0.00000000 };
Point ( 11025 ) = { -1.61666667, 50.68750000, 0.00000000 };
Point ( 11026 ) = { -1.61250000, 50.69166667, 0.00000000 };
Point ( 11027 ) = { -1.60833333, 50.69583333, 0.00000000 };
Point ( 11028 ) = { -1.61250000, 50.70000000, 0.00000000 };
Point ( 11029 ) = { -1.62083333, 50.70000000, 0.00000000 };
Point ( 11030 ) = { -1.62916667, 50.70000000, 0.00000000 };
Point ( 11031 ) = { -1.63750000, 50.70000000, 0.00000000 };
Point ( 11032 ) = { -1.64583333, 50.70000000, 0.00000000 };
Point ( 11033 ) = { -1.65416667, 50.70000000, 0.00000000 };
Point ( 11034 ) = { -1.65833333, 50.70416667, 0.00000000 };
Point ( 11035 ) = { -1.66250000, 50.70833333, 0.00000000 };
Point ( 11036 ) = { -1.67083333, 50.70833333, 0.00000000 };
Point ( 11037 ) = { -1.67916667, 50.70833333, 0.00000000 };
Point ( 11038 ) = { -1.68750000, 50.70833333, 0.00000000 };
Point ( 11039 ) = { -1.69583333, 50.70833333, 0.00000000 };
Point ( 11040 ) = { -1.70416667, 50.70833333, 0.00000000 };
Point ( 11041 ) = { -1.71250000, 50.70833333, 0.00000000 };
Point ( 11042 ) = { -1.72083333, 50.70833333, 0.00000000 };
Point ( 11043 ) = { -1.72916667, 50.70833333, 0.00000000 };
Point ( 11044 ) = { -1.73333333, 50.70416667, 0.00000000 };
Point ( 11045 ) = { -1.73750000, 50.70000000, 0.00000000 };
Point ( 11046 ) = { -1.74583333, 50.70000000, 0.00000000 };
Point ( 11047 ) = { -1.75416667, 50.70000000, 0.00000000 };
Point ( 11048 ) = { -1.76250000, 50.70000000, 0.00000000 };
Point ( 11049 ) = { -1.76666667, 50.70416667, 0.00000000 };
Point ( 11050 ) = { -1.77083333, 50.70833333, 0.00000000 };
Point ( 11051 ) = { -1.77916667, 50.70833333, 0.00000000 };
Point ( 11052 ) = { -1.78750000, 50.70833333, 0.00000000 };
Point ( 11053 ) = { -1.79583333, 50.70833333, 0.00000000 };
Point ( 11054 ) = { -1.80416667, 50.70833333, 0.00000000 };
Point ( 11055 ) = { -1.81250000, 50.70833333, 0.00000000 };
Point ( 11056 ) = { -1.81666667, 50.70416667, 0.00000000 };
Point ( 11057 ) = { -1.82083333, 50.70000000, 0.00000000 };
Point ( 11058 ) = { -1.82500000, 50.70416667, 0.00000000 };
Point ( 11059 ) = { -1.82916667, 50.70833333, 0.00000000 };
Point ( 11060 ) = { -1.83750000, 50.70833333, 0.00000000 };
Point ( 11061 ) = { -1.84583333, 50.70833333, 0.00000000 };
Point ( 11062 ) = { -1.85416667, 50.70833333, 0.00000000 };
Point ( 11063 ) = { -1.86250000, 50.70833333, 0.00000000 };
Point ( 11064 ) = { -1.87083333, 50.70833333, 0.00000000 };
Point ( 11065 ) = { -1.87500000, 50.70416667, 0.00000000 };
Point ( 11066 ) = { -1.87916667, 50.70000000, 0.00000000 };
Point ( 11067 ) = { -1.88333333, 50.69583333, 0.00000000 };
Point ( 11068 ) = { -1.88750000, 50.69166667, 0.00000000 };
Point ( 11069 ) = { -1.89583333, 50.69166667, 0.00000000 };
Point ( 11070 ) = { -1.90000000, 50.68750000, 0.00000000 };
Point ( 11071 ) = { -1.90416667, 50.68333333, 0.00000000 };
Point ( 11072 ) = { -1.90833333, 50.67916667, 0.00000000 };
Point ( 11073 ) = { -1.91250000, 50.67500000, 0.00000000 };
Point ( 11074 ) = { -1.91666667, 50.67083333, 0.00000000 };
Point ( 11075 ) = { -1.91666667, 50.66250000, 0.00000000 };
Point ( 11076 ) = { -1.91666667, 50.65416667, 0.00000000 };
Point ( 11077 ) = { -1.91666667, 50.64583333, 0.00000000 };
Point ( 11078 ) = { -1.91666667, 50.63750000, 0.00000000 };
Point ( 11079 ) = { -1.92083333, 50.63333333, 0.00000000 };
Point ( 11080 ) = { -1.92500000, 50.62916667, 0.00000000 };
Point ( 11081 ) = { -1.92916667, 50.62500000, 0.00000000 };
Point ( 11082 ) = { -1.93750000, 50.62500000, 0.00000000 };
Point ( 11083 ) = { -1.94166667, 50.62083333, 0.00000000 };
Point ( 11084 ) = { -1.94166667, 50.61250000, 0.00000000 };
Point ( 11085 ) = { -1.94166667, 50.60416667, 0.00000000 };
Point ( 11086 ) = { -1.94583333, 50.60000000, 0.00000000 };
Point ( 11087 ) = { -1.95000000, 50.59583333, 0.00000000 };
Point ( 11088 ) = { -1.95416667, 50.59166667, 0.00000000 };
Point ( 11089 ) = { -1.96250000, 50.59166667, 0.00000000 };
Point ( 11090 ) = { -1.96666667, 50.58750000, 0.00000000 };
Point ( 11091 ) = { -1.97083333, 50.58333333, 0.00000000 };
Point ( 11092 ) = { -1.97916667, 50.58333333, 0.00000000 };
Point ( 11093 ) = { -1.98750000, 50.58333333, 0.00000000 };
Point ( 11094 ) = { -1.99583333, 50.58333333, 0.00000000 };
Point ( 11095 ) = { -2.00416667, 50.58333333, 0.00000000 };
Point ( 11096 ) = { -2.01250000, 50.58333333, 0.00000000 };
Point ( 11097 ) = { -2.02083333, 50.58333333, 0.00000000 };
Point ( 11098 ) = { -2.02916667, 50.58333333, 0.00000000 };
Point ( 11099 ) = { -2.03333333, 50.57916667, 0.00000000 };
Point ( 11100 ) = { -2.03750000, 50.57500000, 0.00000000 };
Point ( 11101 ) = { -2.04583333, 50.57500000, 0.00000000 };
Point ( 11102 ) = { -2.05416667, 50.57500000, 0.00000000 };
Point ( 11103 ) = { -2.06250000, 50.57500000, 0.00000000 };
Point ( 11104 ) = { -2.06666667, 50.57916667, 0.00000000 };
Point ( 11105 ) = { -2.07083333, 50.58333333, 0.00000000 };
Point ( 11106 ) = { -2.07916667, 50.58333333, 0.00000000 };
Point ( 11107 ) = { -2.08750000, 50.58333333, 0.00000000 };
Point ( 11108 ) = { -2.09166667, 50.58750000, 0.00000000 };
Point ( 11109 ) = { -2.09583333, 50.59166667, 0.00000000 };
Point ( 11110 ) = { -2.10416667, 50.59166667, 0.00000000 };
Point ( 11111 ) = { -2.11250000, 50.59166667, 0.00000000 };
Point ( 11112 ) = { -2.12083333, 50.59166667, 0.00000000 };
Point ( 11113 ) = { -2.12500000, 50.59583333, 0.00000000 };
Point ( 11114 ) = { -2.12916667, 50.60000000, 0.00000000 };
Point ( 11115 ) = { -2.13750000, 50.60000000, 0.00000000 };
Point ( 11116 ) = { -2.14583333, 50.60000000, 0.00000000 };
Point ( 11117 ) = { -2.15000000, 50.60416667, 0.00000000 };
Point ( 11118 ) = { -2.15416667, 50.60833333, 0.00000000 };
Point ( 11119 ) = { -2.16250000, 50.60833333, 0.00000000 };
Point ( 11120 ) = { -2.17083333, 50.60833333, 0.00000000 };
Point ( 11121 ) = { -2.17916667, 50.60833333, 0.00000000 };
Point ( 11122 ) = { -2.18333333, 50.61250000, 0.00000000 };
Point ( 11123 ) = { -2.18750000, 50.61666667, 0.00000000 };
Point ( 11124 ) = { -2.19583333, 50.61666667, 0.00000000 };
Point ( 11125 ) = { -2.20416667, 50.61666667, 0.00000000 };
Point ( 11126 ) = { -2.21250000, 50.61666667, 0.00000000 };
Point ( 11127 ) = { -2.22083333, 50.61666667, 0.00000000 };
Point ( 11128 ) = { -2.22500000, 50.61250000, 0.00000000 };
Point ( 11129 ) = { -2.22916667, 50.60833333, 0.00000000 };
Point ( 11130 ) = { -2.23750000, 50.60833333, 0.00000000 };
Point ( 11131 ) = { -2.24583333, 50.60833333, 0.00000000 };
Point ( 11132 ) = { -2.25416667, 50.60833333, 0.00000000 };
Point ( 11133 ) = { -2.25833333, 50.61250000, 0.00000000 };
Point ( 11134 ) = { -2.26250000, 50.61666667, 0.00000000 };
Point ( 11135 ) = { -2.27083333, 50.61666667, 0.00000000 };
Point ( 11136 ) = { -2.27916667, 50.61666667, 0.00000000 };
Point ( 11137 ) = { -2.28750000, 50.61666667, 0.00000000 };
Point ( 11138 ) = { -2.29583333, 50.61666667, 0.00000000 };
Point ( 11139 ) = { -2.30000000, 50.62083333, 0.00000000 };
Point ( 11140 ) = { -2.30416667, 50.62500000, 0.00000000 };
Point ( 11141 ) = { -2.31250000, 50.62500000, 0.00000000 };
Point ( 11142 ) = { -2.32083333, 50.62500000, 0.00000000 };
Point ( 11143 ) = { -2.32500000, 50.62083333, 0.00000000 };
Point ( 11144 ) = { -2.32916667, 50.61666667, 0.00000000 };
Point ( 11145 ) = { -2.33333333, 50.62083333, 0.00000000 };
Point ( 11146 ) = { -2.33750000, 50.62500000, 0.00000000 };
Point ( 11147 ) = { -2.34583333, 50.62500000, 0.00000000 };
Point ( 11148 ) = { -2.35416667, 50.62500000, 0.00000000 };
Point ( 11149 ) = { -2.36250000, 50.62500000, 0.00000000 };
Point ( 11150 ) = { -2.37083333, 50.62500000, 0.00000000 };
Point ( 11151 ) = { -2.37916667, 50.62500000, 0.00000000 };
Point ( 11152 ) = { -2.38750000, 50.62500000, 0.00000000 };
Point ( 11153 ) = { -2.39583333, 50.62500000, 0.00000000 };
Point ( 11154 ) = { -2.40416667, 50.62500000, 0.00000000 };
Point ( 11155 ) = { -2.41250000, 50.62500000, 0.00000000 };
Point ( 11156 ) = { -2.42083333, 50.62500000, 0.00000000 };
Point ( 11157 ) = { -2.42500000, 50.62083333, 0.00000000 };
Point ( 11158 ) = { -2.42916667, 50.61666667, 0.00000000 };
Point ( 11159 ) = { -2.43333333, 50.61250000, 0.00000000 };
Point ( 11160 ) = { -2.43750000, 50.60833333, 0.00000000 };
Point ( 11161 ) = { -2.44166667, 50.60416667, 0.00000000 };
Point ( 11162 ) = { -2.44583333, 50.60000000, 0.00000000 };
Point ( 11163 ) = { -2.45000000, 50.59583333, 0.00000000 };
Point ( 11164 ) = { -2.45000000, 50.58750000, 0.00000000 };
Point ( 11165 ) = { -2.45000000, 50.57916667, 0.00000000 };
Point ( 11166 ) = { -2.44583333, 50.57500000, 0.00000000 };
Point ( 11167 ) = { -2.43750000, 50.57500000, 0.00000000 };
Point ( 11168 ) = { -2.42916667, 50.57500000, 0.00000000 };
Point ( 11169 ) = { -2.42500000, 50.57083333, 0.00000000 };
Point ( 11170 ) = { -2.42083333, 50.56666667, 0.00000000 };
Point ( 11171 ) = { -2.41666667, 50.56250000, 0.00000000 };
Point ( 11172 ) = { -2.41666667, 50.55416667, 0.00000000 };
Point ( 11173 ) = { -2.41666667, 50.54583333, 0.00000000 };
Point ( 11174 ) = { -2.41666667, 50.53750000, 0.00000000 };
Point ( 11175 ) = { -2.42083333, 50.53333333, 0.00000000 };
Point ( 11176 ) = { -2.42916667, 50.53333333, 0.00000000 };
Point ( 11177 ) = { -2.43333333, 50.52916667, 0.00000000 };
Point ( 11178 ) = { -2.43750000, 50.52500000, 0.00000000 };
Point ( 11179 ) = { -2.44166667, 50.52083333, 0.00000000 };
Point ( 11180 ) = { -2.44583333, 50.51666667, 0.00000000 };
Point ( 11181 ) = { -2.45000000, 50.51250000, 0.00000000 };
Point ( 11182 ) = { -2.45416667, 50.50833333, 0.00000000 };
Point ( 11183 ) = { -2.45833333, 50.51250000, 0.00000000 };
Point ( 11184 ) = { -2.46250000, 50.51666667, 0.00000000 };
Point ( 11185 ) = { -2.46666667, 50.52083333, 0.00000000 };
Point ( 11186 ) = { -2.46250000, 50.52500000, 0.00000000 };
Point ( 11187 ) = { -2.45833333, 50.52916667, 0.00000000 };
Point ( 11188 ) = { -2.45833333, 50.53750000, 0.00000000 };
Point ( 11189 ) = { -2.45833333, 50.54583333, 0.00000000 };
Point ( 11190 ) = { -2.45833333, 50.55416667, 0.00000000 };
Point ( 11191 ) = { -2.45833333, 50.56250000, 0.00000000 };
Point ( 11192 ) = { -2.45416667, 50.56666667, 0.00000000 };
Point ( 11193 ) = { -2.45000000, 50.57083333, 0.00000000 };
Point ( 11194 ) = { -2.45416667, 50.57500000, 0.00000000 };
Point ( 11195 ) = { -2.45833333, 50.57916667, 0.00000000 };
Point ( 11196 ) = { -2.46250000, 50.58333333, 0.00000000 };
Point ( 11197 ) = { -2.47083333, 50.58333333, 0.00000000 };
Point ( 11198 ) = { -2.47916667, 50.58333333, 0.00000000 };
Point ( 11199 ) = { -2.48750000, 50.58333333, 0.00000000 };
Point ( 11200 ) = { -2.49166667, 50.58750000, 0.00000000 };
Point ( 11201 ) = { -2.49583333, 50.59166667, 0.00000000 };
Point ( 11202 ) = { -2.50000000, 50.59583333, 0.00000000 };
Point ( 11203 ) = { -2.50416667, 50.60000000, 0.00000000 };
Point ( 11204 ) = { -2.50833333, 50.60416667, 0.00000000 };
Point ( 11205 ) = { -2.51250000, 50.60833333, 0.00000000 };
Point ( 11206 ) = { -2.52083333, 50.60833333, 0.00000000 };
Point ( 11207 ) = { -2.52500000, 50.61250000, 0.00000000 };
Point ( 11208 ) = { -2.52916667, 50.61666667, 0.00000000 };
Point ( 11209 ) = { -2.53750000, 50.61666667, 0.00000000 };
Point ( 11210 ) = { -2.54583333, 50.61666667, 0.00000000 };
Point ( 11211 ) = { -2.55000000, 50.62083333, 0.00000000 };
Point ( 11212 ) = { -2.55416667, 50.62500000, 0.00000000 };
Point ( 11213 ) = { -2.56250000, 50.62500000, 0.00000000 };
Point ( 11214 ) = { -2.56666667, 50.62916667, 0.00000000 };
Point ( 11215 ) = { -2.57083333, 50.63333333, 0.00000000 };
Point ( 11216 ) = { -2.57916667, 50.63333333, 0.00000000 };
Point ( 11217 ) = { -2.58333333, 50.63750000, 0.00000000 };
Point ( 11218 ) = { -2.58750000, 50.64166667, 0.00000000 };
Point ( 11219 ) = { -2.59583333, 50.64166667, 0.00000000 };
Point ( 11220 ) = { -2.60000000, 50.64583333, 0.00000000 };
Point ( 11221 ) = { -2.60416667, 50.65000000, 0.00000000 };
Point ( 11222 ) = { -2.61250000, 50.65000000, 0.00000000 };
Point ( 11223 ) = { -2.62083333, 50.65000000, 0.00000000 };
Point ( 11224 ) = { -2.62500000, 50.65416667, 0.00000000 };
Point ( 11225 ) = { -2.62916667, 50.65833333, 0.00000000 };
Point ( 11226 ) = { -2.63750000, 50.65833333, 0.00000000 };
Point ( 11227 ) = { -2.64583333, 50.65833333, 0.00000000 };
Point ( 11228 ) = { -2.65000000, 50.66250000, 0.00000000 };
Point ( 11229 ) = { -2.65416667, 50.66666667, 0.00000000 };
Point ( 11230 ) = { -2.66250000, 50.66666667, 0.00000000 };
Point ( 11231 ) = { -2.66666667, 50.67083333, 0.00000000 };
Point ( 11232 ) = { -2.67083333, 50.67500000, 0.00000000 };
Point ( 11233 ) = { -2.67916667, 50.67500000, 0.00000000 };
Point ( 11234 ) = { -2.68750000, 50.67500000, 0.00000000 };
Point ( 11235 ) = { -2.69166667, 50.67916667, 0.00000000 };
Point ( 11236 ) = { -2.69583333, 50.68333333, 0.00000000 };
Point ( 11237 ) = { -2.70416667, 50.68333333, 0.00000000 };
Point ( 11238 ) = { -2.71250000, 50.68333333, 0.00000000 };
Point ( 11239 ) = { -2.72083333, 50.68333333, 0.00000000 };
Point ( 11240 ) = { -2.72500000, 50.68750000, 0.00000000 };
Point ( 11241 ) = { -2.72916667, 50.69166667, 0.00000000 };
Point ( 11242 ) = { -2.73750000, 50.69166667, 0.00000000 };
Point ( 11243 ) = { -2.74583333, 50.69166667, 0.00000000 };
Point ( 11244 ) = { -2.75000000, 50.69583333, 0.00000000 };
Point ( 11245 ) = { -2.75416667, 50.70000000, 0.00000000 };
Point ( 11246 ) = { -2.76250000, 50.70000000, 0.00000000 };
Point ( 11247 ) = { -2.77083333, 50.70000000, 0.00000000 };
Point ( 11248 ) = { -2.77916667, 50.70000000, 0.00000000 };
Point ( 11249 ) = { -2.78333333, 50.70416667, 0.00000000 };
Point ( 11250 ) = { -2.78333333, 50.71250000, 0.00000000 };
Point ( 11251 ) = { -2.78750000, 50.71666667, 0.00000000 };
Point ( 11252 ) = { -2.79583333, 50.71666667, 0.00000000 };
Point ( 11253 ) = { -2.80416667, 50.71666667, 0.00000000 };
Point ( 11254 ) = { -2.80833333, 50.71250000, 0.00000000 };
Point ( 11255 ) = { -2.81250000, 50.70833333, 0.00000000 };
Point ( 11256 ) = { -2.82083333, 50.70833333, 0.00000000 };
Point ( 11257 ) = { -2.82500000, 50.71250000, 0.00000000 };
Point ( 11258 ) = { -2.82916667, 50.71666667, 0.00000000 };
Point ( 11259 ) = { -2.83750000, 50.71666667, 0.00000000 };
Point ( 11260 ) = { -2.84583333, 50.71666667, 0.00000000 };
Point ( 11261 ) = { -2.85416667, 50.71666667, 0.00000000 };
Point ( 11262 ) = { -2.86250000, 50.71666667, 0.00000000 };
Point ( 11263 ) = { -2.87083333, 50.71666667, 0.00000000 };
Point ( 11264 ) = { -2.87500000, 50.72083333, 0.00000000 };
Point ( 11265 ) = { -2.87916667, 50.72500000, 0.00000000 };
Point ( 11266 ) = { -2.88750000, 50.72500000, 0.00000000 };
Point ( 11267 ) = { -2.89583333, 50.72500000, 0.00000000 };
Point ( 11268 ) = { -2.90416667, 50.72500000, 0.00000000 };
Point ( 11269 ) = { -2.91250000, 50.72500000, 0.00000000 };
Point ( 11270 ) = { -2.92083333, 50.72500000, 0.00000000 };
Point ( 11271 ) = { -2.92500000, 50.72083333, 0.00000000 };
Point ( 11272 ) = { -2.92916667, 50.71666667, 0.00000000 };
Point ( 11273 ) = { -2.93333333, 50.71250000, 0.00000000 };
Point ( 11274 ) = { -2.93750000, 50.70833333, 0.00000000 };
Point ( 11275 ) = { -2.94583333, 50.70833333, 0.00000000 };
Point ( 11276 ) = { -2.95416667, 50.70833333, 0.00000000 };
Point ( 11277 ) = { -2.95833333, 50.70416667, 0.00000000 };
Point ( 11278 ) = { -2.96250000, 50.70000000, 0.00000000 };
Point ( 11279 ) = { -2.97083333, 50.70000000, 0.00000000 };
Point ( 11280 ) = { -2.97916667, 50.70000000, 0.00000000 };
Point ( 11281 ) = { -2.98750000, 50.70000000, 0.00000000 };
Point ( 11282 ) = { -2.99583333, 50.70000000, 0.00000000 };
Point ( 11283 ) = { -3.00000000, 50.69583333, 0.00000000 };
Point ( 11284 ) = { -3.00416667, 50.69166667, 0.00000000 };
Point ( 11285 ) = { -3.00833333, 50.69583333, 0.00000000 };
Point ( 11286 ) = { -3.01250000, 50.70000000, 0.00000000 };
Point ( 11287 ) = { -3.01666667, 50.69583333, 0.00000000 };
Point ( 11288 ) = { -3.02083333, 50.69166667, 0.00000000 };
Point ( 11289 ) = { -3.02916667, 50.69166667, 0.00000000 };
Point ( 11290 ) = { -3.03333333, 50.69583333, 0.00000000 };
Point ( 11291 ) = { -3.03750000, 50.70000000, 0.00000000 };
Point ( 11292 ) = { -3.04583333, 50.70000000, 0.00000000 };
Point ( 11293 ) = { -3.05416667, 50.70000000, 0.00000000 };
Point ( 11294 ) = { -3.05833333, 50.69583333, 0.00000000 };
Point ( 11295 ) = { -3.06250000, 50.69166667, 0.00000000 };
Point ( 11296 ) = { -3.07083333, 50.69166667, 0.00000000 };
Point ( 11297 ) = { -3.07916667, 50.69166667, 0.00000000 };
Point ( 11298 ) = { -3.08750000, 50.69166667, 0.00000000 };
Point ( 11299 ) = { -3.09166667, 50.68750000, 0.00000000 };
Point ( 11300 ) = { -3.09583333, 50.68333333, 0.00000000 };
Point ( 11301 ) = { -3.10416667, 50.68333333, 0.00000000 };
Point ( 11302 ) = { -3.11250000, 50.68333333, 0.00000000 };
Point ( 11303 ) = { -3.12083333, 50.68333333, 0.00000000 };
Point ( 11304 ) = { -3.12916667, 50.68333333, 0.00000000 };
Point ( 11305 ) = { -3.13750000, 50.68333333, 0.00000000 };
Point ( 11306 ) = { -3.14583333, 50.68333333, 0.00000000 };
Point ( 11307 ) = { -3.15416667, 50.68333333, 0.00000000 };
Point ( 11308 ) = { -3.16250000, 50.68333333, 0.00000000 };
Point ( 11309 ) = { -3.17083333, 50.68333333, 0.00000000 };
Point ( 11310 ) = { -3.17916667, 50.68333333, 0.00000000 };
Point ( 11311 ) = { -3.18750000, 50.68333333, 0.00000000 };
Point ( 11312 ) = { -3.19166667, 50.67916667, 0.00000000 };
Point ( 11313 ) = { -3.19583333, 50.67500000, 0.00000000 };
Point ( 11314 ) = { -3.20416667, 50.67500000, 0.00000000 };
Point ( 11315 ) = { -3.21250000, 50.67500000, 0.00000000 };
Point ( 11316 ) = { -3.22083333, 50.67500000, 0.00000000 };
Point ( 11317 ) = { -3.22916667, 50.67500000, 0.00000000 };
Point ( 11318 ) = { -3.23333333, 50.67083333, 0.00000000 };
Point ( 11319 ) = { -3.23333333, 50.66250000, 0.00000000 };
Point ( 11320 ) = { -3.23750000, 50.65833333, 0.00000000 };
Point ( 11321 ) = { -3.24166667, 50.65416667, 0.00000000 };
Point ( 11322 ) = { -3.24583333, 50.65000000, 0.00000000 };
Point ( 11323 ) = { -3.25416667, 50.65000000, 0.00000000 };
Point ( 11324 ) = { -3.25833333, 50.65416667, 0.00000000 };
Point ( 11325 ) = { -3.26250000, 50.65833333, 0.00000000 };
Point ( 11326 ) = { -3.27083333, 50.65833333, 0.00000000 };
Point ( 11327 ) = { -3.27500000, 50.65416667, 0.00000000 };
Point ( 11328 ) = { -3.27916667, 50.65000000, 0.00000000 };
Point ( 11329 ) = { -3.28333333, 50.64583333, 0.00000000 };
Point ( 11330 ) = { -3.28333333, 50.63750000, 0.00000000 };
Point ( 11331 ) = { -3.28750000, 50.63333333, 0.00000000 };
Point ( 11332 ) = { -3.29583333, 50.63333333, 0.00000000 };
Point ( 11333 ) = { -3.30000000, 50.62916667, 0.00000000 };
Point ( 11334 ) = { -3.30416667, 50.62500000, 0.00000000 };
Point ( 11335 ) = { -3.31250000, 50.62500000, 0.00000000 };
Point ( 11336 ) = { -3.32083333, 50.62500000, 0.00000000 };
Point ( 11337 ) = { -3.32500000, 50.62083333, 0.00000000 };
Point ( 11338 ) = { -3.32083333, 50.61666667, 0.00000000 };
Point ( 11339 ) = { -3.31666667, 50.61250000, 0.00000000 };
Point ( 11340 ) = { -3.32083333, 50.60833333, 0.00000000 };
Point ( 11341 ) = { -3.32916667, 50.60833333, 0.00000000 };
Point ( 11342 ) = { -3.33333333, 50.61250000, 0.00000000 };
Point ( 11343 ) = { -3.33750000, 50.61666667, 0.00000000 };
Point ( 11344 ) = { -3.34166667, 50.61250000, 0.00000000 };
Point ( 11345 ) = { -3.34583333, 50.60833333, 0.00000000 };
Point ( 11346 ) = { -3.35000000, 50.60416667, 0.00000000 };
Point ( 11347 ) = { -3.35416667, 50.60000000, 0.00000000 };
Point ( 11348 ) = { -3.36250000, 50.60000000, 0.00000000 };
Point ( 11349 ) = { -3.37083333, 50.60000000, 0.00000000 };
Point ( 11350 ) = { -3.37500000, 50.59583333, 0.00000000 };
Point ( 11351 ) = { -3.37916667, 50.59166667, 0.00000000 };
Point ( 11352 ) = { -3.38750000, 50.59166667, 0.00000000 };
Point ( 11353 ) = { -3.39583333, 50.59166667, 0.00000000 };
Point ( 11354 ) = { -3.40416667, 50.59166667, 0.00000000 };
Point ( 11355 ) = { -3.41250000, 50.59166667, 0.00000000 };
Point ( 11356 ) = { -3.42083333, 50.59166667, 0.00000000 };
Point ( 11357 ) = { -3.42500000, 50.58750000, 0.00000000 };
Point ( 11358 ) = { -3.42916667, 50.58333333, 0.00000000 };
Point ( 11359 ) = { -3.43333333, 50.57916667, 0.00000000 };
Point ( 11360 ) = { -3.43750000, 50.57500000, 0.00000000 };
Point ( 11361 ) = { -3.44583333, 50.57500000, 0.00000000 };
Point ( 11362 ) = { -3.45000000, 50.57083333, 0.00000000 };
Point ( 11363 ) = { -3.45416667, 50.56666667, 0.00000000 };
Point ( 11364 ) = { -3.45833333, 50.56250000, 0.00000000 };
Point ( 11365 ) = { -3.46250000, 50.55833333, 0.00000000 };
Point ( 11366 ) = { -3.46666667, 50.55416667, 0.00000000 };
Point ( 11367 ) = { -3.47083333, 50.55000000, 0.00000000 };
Point ( 11368 ) = { -3.47500000, 50.54583333, 0.00000000 };
Point ( 11369 ) = { -3.47500000, 50.53750000, 0.00000000 };
Point ( 11370 ) = { -3.47500000, 50.52916667, 0.00000000 };
Point ( 11371 ) = { -3.47916667, 50.52500000, 0.00000000 };
Point ( 11372 ) = { -3.48333333, 50.52083333, 0.00000000 };
Point ( 11373 ) = { -3.48333333, 50.51250000, 0.00000000 };
Point ( 11374 ) = { -3.48750000, 50.50833333, 0.00000000 };
Point ( 11375 ) = { -3.49583333, 50.50833333, 0.00000000 };
Point ( 11376 ) = { -3.50000000, 50.50416667, 0.00000000 };
Point ( 11377 ) = { -3.50000000, 50.49583333, 0.00000000 };
Point ( 11378 ) = { -3.50000000, 50.48750000, 0.00000000 };
Point ( 11379 ) = { -3.49583333, 50.48333333, 0.00000000 };
Point ( 11380 ) = { -3.49166667, 50.47916667, 0.00000000 };
Point ( 11381 ) = { -3.48750000, 50.47500000, 0.00000000 };
Point ( 11382 ) = { -3.48333333, 50.47083333, 0.00000000 };
Point ( 11383 ) = { -3.48333333, 50.46250000, 0.00000000 };
Point ( 11384 ) = { -3.48750000, 50.45833333, 0.00000000 };
Point ( 11385 ) = { -3.49583333, 50.45833333, 0.00000000 };
Point ( 11386 ) = { -3.50000000, 50.45416667, 0.00000000 };
Point ( 11387 ) = { -3.50416667, 50.45000000, 0.00000000 };
Point ( 11388 ) = { -3.50833333, 50.44583333, 0.00000000 };
Point ( 11389 ) = { -3.50416667, 50.44166667, 0.00000000 };
Point ( 11390 ) = { -3.50000000, 50.43750000, 0.00000000 };
Point ( 11391 ) = { -3.49583333, 50.43333333, 0.00000000 };
Point ( 11392 ) = { -3.49166667, 50.42916667, 0.00000000 };
Point ( 11393 ) = { -3.49166667, 50.42083333, 0.00000000 };
Point ( 11394 ) = { -3.49166667, 50.41250000, 0.00000000 };
Point ( 11395 ) = { -3.48750000, 50.40833333, 0.00000000 };
Point ( 11396 ) = { -3.48333333, 50.40416667, 0.00000000 };
Point ( 11397 ) = { -3.48333333, 50.39583333, 0.00000000 };
Point ( 11398 ) = { -3.48750000, 50.39166667, 0.00000000 };
Point ( 11399 ) = { -3.49166667, 50.38750000, 0.00000000 };
Point ( 11400 ) = { -3.49166667, 50.37916667, 0.00000000 };
Point ( 11401 ) = { -3.49583333, 50.37500000, 0.00000000 };
Point ( 11402 ) = { -3.50416667, 50.37500000, 0.00000000 };
Point ( 11403 ) = { -3.50833333, 50.37083333, 0.00000000 };
Point ( 11404 ) = { -3.50833333, 50.36250000, 0.00000000 };
Point ( 11405 ) = { -3.50833333, 50.35416667, 0.00000000 };
Point ( 11406 ) = { -3.51250000, 50.35000000, 0.00000000 };
Point ( 11407 ) = { -3.51666667, 50.34583333, 0.00000000 };
Point ( 11408 ) = { -3.52083333, 50.34166667, 0.00000000 };
Point ( 11409 ) = { -3.52916667, 50.34166667, 0.00000000 };
Point ( 11410 ) = { -3.53333333, 50.33750000, 0.00000000 };
Point ( 11411 ) = { -3.53750000, 50.33333333, 0.00000000 };
Point ( 11412 ) = { -3.54583333, 50.33333333, 0.00000000 };
Point ( 11413 ) = { -3.55416667, 50.33333333, 0.00000000 };
Point ( 11414 ) = { -3.55833333, 50.32916667, 0.00000000 };
Point ( 11415 ) = { -3.56250000, 50.32500000, 0.00000000 };
Point ( 11416 ) = { -3.56666667, 50.32083333, 0.00000000 };
Point ( 11417 ) = { -3.57083333, 50.31666667, 0.00000000 };
Point ( 11418 ) = { -3.57916667, 50.31666667, 0.00000000 };
Point ( 11419 ) = { -3.58750000, 50.31666667, 0.00000000 };
Point ( 11420 ) = { -3.59166667, 50.31250000, 0.00000000 };
Point ( 11421 ) = { -3.59583333, 50.30833333, 0.00000000 };
Point ( 11422 ) = { -3.60000000, 50.30416667, 0.00000000 };
Point ( 11423 ) = { -3.60000000, 50.29583333, 0.00000000 };
Point ( 11424 ) = { -3.60416667, 50.29166667, 0.00000000 };
Point ( 11425 ) = { -3.60833333, 50.29583333, 0.00000000 };
Point ( 11426 ) = { -3.61250000, 50.30000000, 0.00000000 };
Point ( 11427 ) = { -3.62083333, 50.30000000, 0.00000000 };
Point ( 11428 ) = { -3.62500000, 50.29583333, 0.00000000 };
Point ( 11429 ) = { -3.62916667, 50.29166667, 0.00000000 };
Point ( 11430 ) = { -3.63333333, 50.28750000, 0.00000000 };
Point ( 11431 ) = { -3.63750000, 50.28333333, 0.00000000 };
Point ( 11432 ) = { -3.64166667, 50.27916667, 0.00000000 };
Point ( 11433 ) = { -3.64166667, 50.27083333, 0.00000000 };
Point ( 11434 ) = { -3.64166667, 50.26250000, 0.00000000 };
Point ( 11435 ) = { -3.64583333, 50.25833333, 0.00000000 };
Point ( 11436 ) = { -3.65000000, 50.25416667, 0.00000000 };
Point ( 11437 ) = { -3.65000000, 50.24583333, 0.00000000 };
Point ( 11438 ) = { -3.65416667, 50.24166667, 0.00000000 };
Point ( 11439 ) = { -3.65833333, 50.23750000, 0.00000000 };
Point ( 11440 ) = { -3.65416667, 50.23333333, 0.00000000 };
Point ( 11441 ) = { -3.65000000, 50.22916667, 0.00000000 };
Point ( 11442 ) = { -3.64583333, 50.22500000, 0.00000000 };
Point ( 11443 ) = { -3.64166667, 50.22083333, 0.00000000 };
Point ( 11444 ) = { -3.64583333, 50.21666667, 0.00000000 };
Point ( 11445 ) = { -3.65416667, 50.21666667, 0.00000000 };
Point ( 11446 ) = { -3.66250000, 50.21666667, 0.00000000 };
Point ( 11447 ) = { -3.67083333, 50.21666667, 0.00000000 };
Point ( 11448 ) = { -3.67916667, 50.21666667, 0.00000000 };
Point ( 11449 ) = { -3.68333333, 50.21250000, 0.00000000 };
Point ( 11450 ) = { -3.68750000, 50.20833333, 0.00000000 };
Point ( 11451 ) = { -3.69583333, 50.20833333, 0.00000000 };
Point ( 11452 ) = { -3.70000000, 50.20416667, 0.00000000 };
Point ( 11453 ) = { -3.70416667, 50.20000000, 0.00000000 };
Point ( 11454 ) = { -3.71250000, 50.20000000, 0.00000000 };
Point ( 11455 ) = { -3.72083333, 50.20000000, 0.00000000 };
Point ( 11456 ) = { -3.72916667, 50.20000000, 0.00000000 };
Point ( 11457 ) = { -3.73333333, 50.20416667, 0.00000000 };
Point ( 11458 ) = { -3.73750000, 50.20833333, 0.00000000 };
Point ( 11459 ) = { -3.74583333, 50.20833333, 0.00000000 };
Point ( 11460 ) = { -3.75000000, 50.21250000, 0.00000000 };
Point ( 11461 ) = { -3.75416667, 50.21666667, 0.00000000 };
Point ( 11462 ) = { -3.76250000, 50.21666667, 0.00000000 };
Point ( 11463 ) = { -3.77083333, 50.21666667, 0.00000000 };
Point ( 11464 ) = { -3.77500000, 50.21250000, 0.00000000 };
Point ( 11465 ) = { -3.77916667, 50.20833333, 0.00000000 };
Point ( 11466 ) = { -3.78750000, 50.20833333, 0.00000000 };
Point ( 11467 ) = { -3.79583333, 50.20833333, 0.00000000 };
Point ( 11468 ) = { -3.80416667, 50.20833333, 0.00000000 };
Point ( 11469 ) = { -3.81250000, 50.20833333, 0.00000000 };
Point ( 11470 ) = { -3.82083333, 50.20833333, 0.00000000 };
Point ( 11471 ) = { -3.82500000, 50.21250000, 0.00000000 };
Point ( 11472 ) = { -3.82916667, 50.21666667, 0.00000000 };
Point ( 11473 ) = { -3.83750000, 50.21666667, 0.00000000 };
Point ( 11474 ) = { -3.84166667, 50.22083333, 0.00000000 };
Point ( 11475 ) = { -3.84583333, 50.22500000, 0.00000000 };
Point ( 11476 ) = { -3.85416667, 50.22500000, 0.00000000 };
Point ( 11477 ) = { -3.86250000, 50.22500000, 0.00000000 };
Point ( 11478 ) = { -3.86666667, 50.22916667, 0.00000000 };
Point ( 11479 ) = { -3.87083333, 50.23333333, 0.00000000 };
Point ( 11480 ) = { -3.87500000, 50.23750000, 0.00000000 };
Point ( 11481 ) = { -3.87500000, 50.24583333, 0.00000000 };
Point ( 11482 ) = { -3.87083333, 50.25000000, 0.00000000 };
Point ( 11483 ) = { -3.86666667, 50.25416667, 0.00000000 };
Point ( 11484 ) = { -3.87083333, 50.25833333, 0.00000000 };
Point ( 11485 ) = { -3.87916667, 50.25833333, 0.00000000 };
Point ( 11486 ) = { -3.88333333, 50.26250000, 0.00000000 };
Point ( 11487 ) = { -3.88333333, 50.27083333, 0.00000000 };
Point ( 11488 ) = { -3.88750000, 50.27500000, 0.00000000 };
Point ( 11489 ) = { -3.89583333, 50.27500000, 0.00000000 };
Point ( 11490 ) = { -3.90416667, 50.27500000, 0.00000000 };
Point ( 11491 ) = { -3.90833333, 50.27916667, 0.00000000 };
Point ( 11492 ) = { -3.91250000, 50.28333333, 0.00000000 };
Point ( 11493 ) = { -3.92083333, 50.28333333, 0.00000000 };
Point ( 11494 ) = { -3.92916667, 50.28333333, 0.00000000 };
Point ( 11495 ) = { -3.93750000, 50.28333333, 0.00000000 };
Point ( 11496 ) = { -3.94166667, 50.28750000, 0.00000000 };
Point ( 11497 ) = { -3.94583333, 50.29166667, 0.00000000 };
Point ( 11498 ) = { -3.95416667, 50.29166667, 0.00000000 };
Point ( 11499 ) = { -3.95833333, 50.29583333, 0.00000000 };
Point ( 11500 ) = { -3.96250000, 50.30000000, 0.00000000 };
Point ( 11501 ) = { -3.97083333, 50.30000000, 0.00000000 };
Point ( 11502 ) = { -3.97916667, 50.30000000, 0.00000000 };
Point ( 11503 ) = { -3.98750000, 50.30000000, 0.00000000 };
Point ( 11504 ) = { -3.99583333, 50.30000000, 0.00000000 };
Point ( 11505 ) = { -4.00000000, 50.29583333, 0.00000000 };
Point ( 11506 ) = { -4.00416667, 50.29166667, 0.00000000 };
Point ( 11507 ) = { -4.00833333, 50.29583333, 0.00000000 };
Point ( 11508 ) = { -4.01250000, 50.30000000, 0.00000000 };
Point ( 11509 ) = { -4.01666667, 50.29583333, 0.00000000 };
Point ( 11510 ) = { -4.02083333, 50.29166667, 0.00000000 };
Point ( 11511 ) = { -4.02916667, 50.29166667, 0.00000000 };
Point ( 11512 ) = { -4.03333333, 50.28750000, 0.00000000 };
Point ( 11513 ) = { -4.03750000, 50.28333333, 0.00000000 };
Point ( 11514 ) = { -4.04166667, 50.28750000, 0.00000000 };
Point ( 11515 ) = { -4.04583333, 50.29166667, 0.00000000 };
Point ( 11516 ) = { -4.05416667, 50.29166667, 0.00000000 };
Point ( 11517 ) = { -4.06250000, 50.29166667, 0.00000000 };
Point ( 11518 ) = { -4.06666667, 50.29583333, 0.00000000 };
Point ( 11519 ) = { -4.07083333, 50.30000000, 0.00000000 };
Point ( 11520 ) = { -4.07500000, 50.30416667, 0.00000000 };
Point ( 11521 ) = { -4.07916667, 50.30833333, 0.00000000 };
Point ( 11522 ) = { -4.08750000, 50.30833333, 0.00000000 };
Point ( 11523 ) = { -4.09166667, 50.31250000, 0.00000000 };
Point ( 11524 ) = { -4.09583333, 50.31666667, 0.00000000 };
Point ( 11525 ) = { -4.10000000, 50.31250000, 0.00000000 };
Point ( 11526 ) = { -4.10000000, 50.30416667, 0.00000000 };
Point ( 11527 ) = { -4.10416667, 50.30000000, 0.00000000 };
Point ( 11528 ) = { -4.10833333, 50.30416667, 0.00000000 };
Point ( 11529 ) = { -4.11250000, 50.30833333, 0.00000000 };
Point ( 11530 ) = { -4.12083333, 50.30833333, 0.00000000 };
Point ( 11531 ) = { -4.12500000, 50.31250000, 0.00000000 };
Point ( 11532 ) = { -4.12916667, 50.31666667, 0.00000000 };
Point ( 11533 ) = { -4.13333333, 50.32083333, 0.00000000 };
Point ( 11534 ) = { -4.13750000, 50.32500000, 0.00000000 };
Point ( 11535 ) = { -4.14166667, 50.32916667, 0.00000000 };
Point ( 11536 ) = { -4.13750000, 50.33333333, 0.00000000 };
Point ( 11537 ) = { -4.13333333, 50.33750000, 0.00000000 };
Point ( 11538 ) = { -4.13750000, 50.34166667, 0.00000000 };
Point ( 11539 ) = { -4.14166667, 50.34583333, 0.00000000 };
Point ( 11540 ) = { -4.14583333, 50.35000000, 0.00000000 };
Point ( 11541 ) = { -4.15416667, 50.35000000, 0.00000000 };
Point ( 11542 ) = { -4.15833333, 50.34583333, 0.00000000 };
Point ( 11543 ) = { -4.15833333, 50.33750000, 0.00000000 };
Point ( 11544 ) = { -4.16250000, 50.33333333, 0.00000000 };
Point ( 11545 ) = { -4.17083333, 50.33333333, 0.00000000 };
Point ( 11546 ) = { -4.17500000, 50.33750000, 0.00000000 };
Point ( 11547 ) = { -4.17916667, 50.34166667, 0.00000000 };
Point ( 11548 ) = { -4.18333333, 50.33750000, 0.00000000 };
Point ( 11549 ) = { -4.18750000, 50.33333333, 0.00000000 };
Point ( 11550 ) = { -4.19166667, 50.32916667, 0.00000000 };
Point ( 11551 ) = { -4.18750000, 50.32500000, 0.00000000 };
Point ( 11552 ) = { -4.18333333, 50.32083333, 0.00000000 };
Point ( 11553 ) = { -4.18750000, 50.31666667, 0.00000000 };
Point ( 11554 ) = { -4.19583333, 50.31666667, 0.00000000 };
Point ( 11555 ) = { -4.20416667, 50.31666667, 0.00000000 };
Point ( 11556 ) = { -4.21250000, 50.31666667, 0.00000000 };
Point ( 11557 ) = { -4.21666667, 50.31250000, 0.00000000 };
Point ( 11558 ) = { -4.22083333, 50.30833333, 0.00000000 };
Point ( 11559 ) = { -4.22500000, 50.31250000, 0.00000000 };
Point ( 11560 ) = { -4.22916667, 50.31666667, 0.00000000 };
Point ( 11561 ) = { -4.23333333, 50.32083333, 0.00000000 };
Point ( 11562 ) = { -4.23750000, 50.32500000, 0.00000000 };
Point ( 11563 ) = { -4.24166667, 50.32916667, 0.00000000 };
Point ( 11564 ) = { -4.24583333, 50.33333333, 0.00000000 };
Point ( 11565 ) = { -4.25000000, 50.33750000, 0.00000000 };
Point ( 11566 ) = { -4.25416667, 50.34166667, 0.00000000 };
Point ( 11567 ) = { -4.26250000, 50.34166667, 0.00000000 };
Point ( 11568 ) = { -4.27083333, 50.34166667, 0.00000000 };
Point ( 11569 ) = { -4.27500000, 50.34583333, 0.00000000 };
Point ( 11570 ) = { -4.27916667, 50.35000000, 0.00000000 };
Point ( 11571 ) = { -4.28750000, 50.35000000, 0.00000000 };
Point ( 11572 ) = { -4.29583333, 50.35000000, 0.00000000 };
Point ( 11573 ) = { -4.30416667, 50.35000000, 0.00000000 };
Point ( 11574 ) = { -4.31250000, 50.35000000, 0.00000000 };
Point ( 11575 ) = { -4.32083333, 50.35000000, 0.00000000 };
Point ( 11576 ) = { -4.32916667, 50.35000000, 0.00000000 };
Point ( 11577 ) = { -4.33333333, 50.35416667, 0.00000000 };
Point ( 11578 ) = { -4.33750000, 50.35833333, 0.00000000 };
Point ( 11579 ) = { -4.34583333, 50.35833333, 0.00000000 };
Point ( 11580 ) = { -4.35000000, 50.35416667, 0.00000000 };
Point ( 11581 ) = { -4.35416667, 50.35000000, 0.00000000 };
Point ( 11582 ) = { -4.36250000, 50.35000000, 0.00000000 };
Point ( 11583 ) = { -4.37083333, 50.35000000, 0.00000000 };
Point ( 11584 ) = { -4.37916667, 50.35000000, 0.00000000 };
Point ( 11585 ) = { -4.38333333, 50.34583333, 0.00000000 };
Point ( 11586 ) = { -4.38750000, 50.34166667, 0.00000000 };
Point ( 11587 ) = { -4.39583333, 50.34166667, 0.00000000 };
Point ( 11588 ) = { -4.40000000, 50.34583333, 0.00000000 };
Point ( 11589 ) = { -4.40416667, 50.35000000, 0.00000000 };
Point ( 11590 ) = { -4.40833333, 50.35416667, 0.00000000 };
Point ( 11591 ) = { -4.41250000, 50.35833333, 0.00000000 };
Point ( 11592 ) = { -4.42083333, 50.35833333, 0.00000000 };
Point ( 11593 ) = { -4.42916667, 50.35833333, 0.00000000 };
Point ( 11594 ) = { -4.43333333, 50.35416667, 0.00000000 };
Point ( 11595 ) = { -4.43750000, 50.35000000, 0.00000000 };
Point ( 11596 ) = { -4.44583333, 50.35000000, 0.00000000 };
Point ( 11597 ) = { -4.45000000, 50.34583333, 0.00000000 };
Point ( 11598 ) = { -4.44583333, 50.34166667, 0.00000000 };
Point ( 11599 ) = { -4.44166667, 50.33750000, 0.00000000 };
Point ( 11600 ) = { -4.44583333, 50.33333333, 0.00000000 };
Point ( 11601 ) = { -4.45416667, 50.33333333, 0.00000000 };
Point ( 11602 ) = { -4.46250000, 50.33333333, 0.00000000 };
Point ( 11603 ) = { -4.46666667, 50.32916667, 0.00000000 };
Point ( 11604 ) = { -4.47083333, 50.32500000, 0.00000000 };
Point ( 11605 ) = { -4.47916667, 50.32500000, 0.00000000 };
Point ( 11606 ) = { -4.48750000, 50.32500000, 0.00000000 };
Point ( 11607 ) = { -4.49583333, 50.32500000, 0.00000000 };
Point ( 11608 ) = { -4.50416667, 50.32500000, 0.00000000 };
Point ( 11609 ) = { -4.51250000, 50.32500000, 0.00000000 };
Point ( 11610 ) = { -4.52083333, 50.32500000, 0.00000000 };
Point ( 11611 ) = { -4.52500000, 50.32083333, 0.00000000 };
Point ( 11612 ) = { -4.52916667, 50.31666667, 0.00000000 };
Point ( 11613 ) = { -4.53750000, 50.31666667, 0.00000000 };
Point ( 11614 ) = { -4.54583333, 50.31666667, 0.00000000 };
Point ( 11615 ) = { -4.55416667, 50.31666667, 0.00000000 };
Point ( 11616 ) = { -4.55833333, 50.32083333, 0.00000000 };
Point ( 11617 ) = { -4.56250000, 50.32500000, 0.00000000 };
Point ( 11618 ) = { -4.57083333, 50.32500000, 0.00000000 };
Point ( 11619 ) = { -4.57916667, 50.32500000, 0.00000000 };
Point ( 11620 ) = { -4.58750000, 50.32500000, 0.00000000 };
Point ( 11621 ) = { -4.59166667, 50.32083333, 0.00000000 };
Point ( 11622 ) = { -4.59583333, 50.31666667, 0.00000000 };
Point ( 11623 ) = { -4.60416667, 50.31666667, 0.00000000 };
Point ( 11624 ) = { -4.61250000, 50.31666667, 0.00000000 };
Point ( 11625 ) = { -4.62083333, 50.31666667, 0.00000000 };
Point ( 11626 ) = { -4.62916667, 50.31666667, 0.00000000 };
Point ( 11627 ) = { -4.63333333, 50.32083333, 0.00000000 };
Point ( 11628 ) = { -4.63750000, 50.32500000, 0.00000000 };
Point ( 11629 ) = { -4.64583333, 50.32500000, 0.00000000 };
Point ( 11630 ) = { -4.65000000, 50.32083333, 0.00000000 };
Point ( 11631 ) = { -4.65416667, 50.31666667, 0.00000000 };
Point ( 11632 ) = { -4.66250000, 50.31666667, 0.00000000 };
Point ( 11633 ) = { -4.66666667, 50.31250000, 0.00000000 };
Point ( 11634 ) = { -4.67083333, 50.30833333, 0.00000000 };
Point ( 11635 ) = { -4.67916667, 50.30833333, 0.00000000 };
Point ( 11636 ) = { -4.68750000, 50.30833333, 0.00000000 };
Point ( 11637 ) = { -4.69166667, 50.31250000, 0.00000000 };
Point ( 11638 ) = { -4.69583333, 50.31666667, 0.00000000 };
Point ( 11639 ) = { -4.70000000, 50.32083333, 0.00000000 };
Point ( 11640 ) = { -4.70416667, 50.32500000, 0.00000000 };
Point ( 11641 ) = { -4.71250000, 50.32500000, 0.00000000 };
Point ( 11642 ) = { -4.72083333, 50.32500000, 0.00000000 };
Point ( 11643 ) = { -4.72916667, 50.32500000, 0.00000000 };
Point ( 11644 ) = { -4.73750000, 50.32500000, 0.00000000 };
Point ( 11645 ) = { -4.74583333, 50.32500000, 0.00000000 };
Point ( 11646 ) = { -4.75416667, 50.32500000, 0.00000000 };
Point ( 11647 ) = { -4.75833333, 50.32083333, 0.00000000 };
Point ( 11648 ) = { -4.75416667, 50.31666667, 0.00000000 };
Point ( 11649 ) = { -4.75000000, 50.31250000, 0.00000000 };
Point ( 11650 ) = { -4.75000000, 50.30416667, 0.00000000 };
Point ( 11651 ) = { -4.75000000, 50.29583333, 0.00000000 };
Point ( 11652 ) = { -4.75416667, 50.29166667, 0.00000000 };
Point ( 11653 ) = { -4.76250000, 50.29166667, 0.00000000 };
Point ( 11654 ) = { -4.77083333, 50.29166667, 0.00000000 };
Point ( 11655 ) = { -4.77500000, 50.28750000, 0.00000000 };
Point ( 11656 ) = { -4.77500000, 50.27916667, 0.00000000 };
Point ( 11657 ) = { -4.77500000, 50.27083333, 0.00000000 };
Point ( 11658 ) = { -4.77083333, 50.26666667, 0.00000000 };
Point ( 11659 ) = { -4.76666667, 50.26250000, 0.00000000 };
Point ( 11660 ) = { -4.76666667, 50.25416667, 0.00000000 };
Point ( 11661 ) = { -4.77083333, 50.25000000, 0.00000000 };
Point ( 11662 ) = { -4.77500000, 50.24583333, 0.00000000 };
Point ( 11663 ) = { -4.77500000, 50.23750000, 0.00000000 };
Point ( 11664 ) = { -4.77916667, 50.23333333, 0.00000000 };
Point ( 11665 ) = { -4.78750000, 50.23333333, 0.00000000 };
Point ( 11666 ) = { -4.79166667, 50.22916667, 0.00000000 };
Point ( 11667 ) = { -4.79166667, 50.22083333, 0.00000000 };
Point ( 11668 ) = { -4.79583333, 50.21666667, 0.00000000 };
Point ( 11669 ) = { -4.80416667, 50.21666667, 0.00000000 };
Point ( 11670 ) = { -4.81250000, 50.21666667, 0.00000000 };
Point ( 11671 ) = { -4.81666667, 50.22083333, 0.00000000 };
Point ( 11672 ) = { -4.82083333, 50.22500000, 0.00000000 };
Point ( 11673 ) = { -4.82916667, 50.22500000, 0.00000000 };
Point ( 11674 ) = { -4.83750000, 50.22500000, 0.00000000 };
Point ( 11675 ) = { -4.84583333, 50.22500000, 0.00000000 };
Point ( 11676 ) = { -4.85416667, 50.22500000, 0.00000000 };
Point ( 11677 ) = { -4.86250000, 50.22500000, 0.00000000 };
Point ( 11678 ) = { -4.86666667, 50.22083333, 0.00000000 };
Point ( 11679 ) = { -4.87083333, 50.21666667, 0.00000000 };
Point ( 11680 ) = { -4.87916667, 50.21666667, 0.00000000 };
Point ( 11681 ) = { -4.88333333, 50.21250000, 0.00000000 };
Point ( 11682 ) = { -4.88750000, 50.20833333, 0.00000000 };
Point ( 11683 ) = { -4.89166667, 50.20416667, 0.00000000 };
Point ( 11684 ) = { -4.89583333, 50.20000000, 0.00000000 };
Point ( 11685 ) = { -4.90000000, 50.19583333, 0.00000000 };
Point ( 11686 ) = { -4.90416667, 50.19166667, 0.00000000 };
Point ( 11687 ) = { -4.91250000, 50.19166667, 0.00000000 };
Point ( 11688 ) = { -4.92083333, 50.19166667, 0.00000000 };
Point ( 11689 ) = { -4.92916667, 50.19166667, 0.00000000 };
Point ( 11690 ) = { -4.93333333, 50.19583333, 0.00000000 };
Point ( 11691 ) = { -4.93750000, 50.20000000, 0.00000000 };
Point ( 11692 ) = { -4.94166667, 50.19583333, 0.00000000 };
Point ( 11693 ) = { -4.94583333, 50.19166667, 0.00000000 };
Point ( 11694 ) = { -4.95416667, 50.19166667, 0.00000000 };
Point ( 11695 ) = { -4.95833333, 50.18750000, 0.00000000 };
Point ( 11696 ) = { -4.96250000, 50.18333333, 0.00000000 };
Point ( 11697 ) = { -4.96666667, 50.17916667, 0.00000000 };
Point ( 11698 ) = { -4.96666667, 50.17083333, 0.00000000 };
Point ( 11699 ) = { -4.96666667, 50.16250000, 0.00000000 };
Point ( 11700 ) = { -4.97083333, 50.15833333, 0.00000000 };
Point ( 11701 ) = { -4.97500000, 50.15416667, 0.00000000 };
Point ( 11702 ) = { -4.97916667, 50.15000000, 0.00000000 };
Point ( 11703 ) = { -4.98333333, 50.14583333, 0.00000000 };
Point ( 11704 ) = { -4.98750000, 50.14166667, 0.00000000 };
Point ( 11705 ) = { -4.99583333, 50.14166667, 0.00000000 };
Point ( 11706 ) = { -5.00000000, 50.13750000, 0.00000000 };
Point ( 11707 ) = { -5.00416667, 50.13333333, 0.00000000 };
Point ( 11708 ) = { -5.01250000, 50.13333333, 0.00000000 };
Point ( 11709 ) = { -5.01666667, 50.13750000, 0.00000000 };
Point ( 11710 ) = { -5.01666667, 50.14583333, 0.00000000 };
Point ( 11711 ) = { -5.02083333, 50.15000000, 0.00000000 };
Point ( 11712 ) = { -5.02916667, 50.15000000, 0.00000000 };
Point ( 11713 ) = { -5.03333333, 50.14583333, 0.00000000 };
Point ( 11714 ) = { -5.03750000, 50.14166667, 0.00000000 };
Point ( 11715 ) = { -5.04166667, 50.13750000, 0.00000000 };
Point ( 11716 ) = { -5.04583333, 50.13333333, 0.00000000 };
Point ( 11717 ) = { -5.05416667, 50.13333333, 0.00000000 };
Point ( 11718 ) = { -5.06250000, 50.13333333, 0.00000000 };
Point ( 11719 ) = { -5.06666667, 50.12916667, 0.00000000 };
Point ( 11720 ) = { -5.07083333, 50.12500000, 0.00000000 };
Point ( 11721 ) = { -5.07500000, 50.12083333, 0.00000000 };
Point ( 11722 ) = { -5.07500000, 50.11250000, 0.00000000 };
Point ( 11723 ) = { -5.07916667, 50.10833333, 0.00000000 };
Point ( 11724 ) = { -5.08333333, 50.10416667, 0.00000000 };
Point ( 11725 ) = { -5.08333333, 50.09583333, 0.00000000 };
Point ( 11726 ) = { -5.07916667, 50.09166667, 0.00000000 };
Point ( 11727 ) = { -5.07500000, 50.08750000, 0.00000000 };
Point ( 11728 ) = { -5.07083333, 50.08333333, 0.00000000 };
Point ( 11729 ) = { -5.06666667, 50.07916667, 0.00000000 };
Point ( 11730 ) = { -5.06666667, 50.07083333, 0.00000000 };
Point ( 11731 ) = { -5.06250000, 50.06666667, 0.00000000 };
Point ( 11732 ) = { -5.05833333, 50.06250000, 0.00000000 };
Point ( 11733 ) = { -5.05833333, 50.05416667, 0.00000000 };
Point ( 11734 ) = { -5.05833333, 50.04583333, 0.00000000 };
Point ( 11735 ) = { -5.06250000, 50.04166667, 0.00000000 };
Point ( 11736 ) = { -5.06666667, 50.03750000, 0.00000000 };
Point ( 11737 ) = { -5.07083333, 50.03333333, 0.00000000 };
Point ( 11738 ) = { -5.07500000, 50.02916667, 0.00000000 };
Point ( 11739 ) = { -5.07916667, 50.02500000, 0.00000000 };
Point ( 11740 ) = { -5.08750000, 50.02500000, 0.00000000 };
Point ( 11741 ) = { -5.09166667, 50.02083333, 0.00000000 };
Point ( 11742 ) = { -5.09166667, 50.01250000, 0.00000000 };
Point ( 11743 ) = { -5.09583333, 50.00833333, 0.00000000 };
Point ( 11744 ) = { -5.10000000, 50.00416667, 0.00000000 };
Point ( 11745 ) = { -5.10416667, 50.00000000, 0.00000000 };
Point ( 11746 ) = { -5.11250000, 50.00000000, 0.00000000 };
Point ( 11747 ) = { -5.12083333, 50.00000000, 0.00000000 };
Point ( 11748 ) = { -5.12916667, 50.00000000, 0.00000000 };
Point ( 11749 ) = { -5.13750000, 50.00000000, 0.00000000 };
Point ( 11750 ) = { -5.14583333, 50.00000000, 0.00000000 };
Point ( 11751 ) = { -5.15416667, 50.00000000, 0.00000000 };
Point ( 11752 ) = { -5.16250000, 50.00000000, 0.00000000 };
Point ( 11753 ) = { -5.16666667, 49.99583333, 0.00000000 };
Point ( 11754 ) = { -5.16666667, 49.98750000, 0.00000000 };
Point ( 11755 ) = { -5.17083333, 49.98333333, 0.00000000 };
Point ( 11756 ) = { -5.17500000, 49.97916667, 0.00000000 };
Point ( 11757 ) = { -5.17500000, 49.97083333, 0.00000000 };
Point ( 11758 ) = { -5.17916667, 49.96666667, 0.00000000 };
Point ( 11759 ) = { -5.18333333, 49.96250000, 0.00000000 };
Point ( 11760 ) = { -5.18750000, 49.95833333, 0.00000000 };
Point ( 11761 ) = { -5.19583333, 49.95833333, 0.00000000 };
Point ( 11762 ) = { -5.20416667, 49.95833333, 0.00000000 };
Point ( 11763 ) = { -5.21250000, 49.95833333, 0.00000000 };
BSpline ( 0 ) = { 2 : 11763, 2 };
Line Loop( 0 ) = { 0 };


// == Physical entities ===========================================
// Boundary OpenOcean (ID 4): 
Physical Line( 4 ) = {  };
// Boundary Coast (ID 3): 1
Physical Line( 3 ) = { 0 };
Plane Surface( 10 ) = { 0 };
Physical Surface( 10 ) = { 10 };

// == End of contour definitions ==================================
// Do not extent the elements sizes from the boundary inside the domain
Mesh.CharacteristicLengthExtendFromBoundary = 0;

// == Field definitions ===========================================

Field[ 2 ] = Attractor;
Field[ 2 ].EdgesList = { 0 };
Field[ 2 ].NNodesByEdge = 20000;

Field[ 3 ] = Threshold;
Field[ 3 ].IField = 2;
Field[ 3 ].LcMin = 1.000000e-02;
Field[ 3 ].LcMax = 2.000000e+00;
Field[ 3 ].DistMin = 5.000000e-02;
Field[ 3 ].DistMax = 5.000000e+00;

Background Field = 3;


// Set general options for default view and improved PNG output
General.Color.Background = {255,255,255};
General.Color.BackgroundGradient = {255,255,255};
General.Color.Foreground = Black;
Mesh.Color.Lines = {0,0,0};
Geometry.Color.Lines = {0,0,0};
//Mesh.Color.Triangles = {0,0,0}; 
Mesh.Color.Ten = {0,0,0};
Mesh.ColorCarousel = 2;
Mesh.Light = 0;
General.Antialiasing = 1;

General.Trackball = 0;
General.RotationX = 0;
General.RotationY = 0;
General.RotationZ = 0;


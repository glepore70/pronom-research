\ Model MTZ_MODEL
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  p[0,1] + p[0,2] + p[0,3] + p[0,4] + p[1,0] + p[1,2] + p[1,3] + p[1,4]
   + p[2,0] + p[2,1] + p[2,3] + p[2,4] + p[3,0] + p[3,1] + p[3,2] + p[3,4]
   + p[4,0] + p[4,1] + p[4,2] + p[4,3] + dc[0] + dc[1] + dc[2] + dc[3]
   + dc[4] + 0 difc[2,0] + 0 difc[2,1]
Subject To
 p2: p[0,1] - 25.58237179741921 z[0,1] >= 0
 p3: p[0,1] - 59.59414534716829 z[0,1] - dcc[0,1] >= -59.59414534716829
 R2: dcc[0,1] <= 59.59414534716829
 R3: x[0,1,0] - x[1,0,0] + dif[0,1,0] >= 0
 R4: - x[0,1,0] + x[1,0,0] + dif[0,1,0] >= 0
 R5: x[0,1,1] - x[1,0,1] + dif[0,1,1] >= 0
 R6: - x[0,1,1] + x[1,0,1] + dif[0,1,1] >= 0
 p2: p[0,2] - 1.258104853245537 z[0,2] >= 0
 p3: p[0,2] - 29.38183520548139 z[0,2] - dcc[0,2] >= -29.38183520548139
 R9: dcc[0,2] <= 29.38183520548139
 R10: x[0,1,0] - x[2,0,0] + dif[0,2,0] >= 0
 R11: - x[0,1,0] + x[2,0,0] + dif[0,2,0] >= 0
 R12: x[0,1,1] - x[2,0,1] + dif[0,2,1] >= 0
 R13: - x[0,1,1] + x[2,0,1] + dif[0,2,1] >= 0
 p2: p[0,3] - 2.253516925757279 z[0,3] >= 0
 p3: p[0,3] - 18.39901269038778 z[0,3] - dcc[0,3] >= -18.39901269038778
 R16: dcc[0,3] <= 18.39901269038778
 R17: x[0,1,0] - x[3,0,0] + dif[0,3,0] >= 0
 R18: - x[0,1,0] + x[3,0,0] + dif[0,3,0] >= 0
 R19: x[0,1,1] - x[3,0,1] + dif[0,3,1] >= 0
 R20: - x[0,1,1] + x[3,0,1] + dif[0,3,1] >= 0
 p2: p[0,4] - 1.892643368582064 z[0,4] >= 0
 p3: p[0,4] - 29.05298645669295 z[0,4] - dcc[0,4] >= -29.05298645669295
 R23: dcc[0,4] <= 29.05298645669295
 R24: x[0,1,0] - x[4,0,0] + dif[0,4,0] >= 0
 R25: - x[0,1,0] + x[4,0,0] + dif[0,4,0] >= 0
 R26: x[0,1,1] - x[4,0,1] + dif[0,4,1] >= 0
 R27: - x[0,1,1] + x[4,0,1] + dif[0,4,1] >= 0
 p2: p[1,0] - 25.58237179741921 z[1,0] >= 0
 p3: p[1,0] - 59.59414534716829 z[1,0] - dcc[1,0] >= -59.59414534716829
 R30: dcc[1,0] <= 59.59414534716829
 R31: - x[0,0,0] + x[1,1,0] + dif[1,0,0] >= 0
 R32: x[0,0,0] - x[1,1,0] + dif[1,0,0] >= 0
 R33: - x[0,0,1] + x[1,1,1] + dif[1,0,1] >= 0
 R34: x[0,0,1] - x[1,1,1] + dif[1,0,1] >= 0
 p2: p[1,2] - 44.52011101044488 z[1,2] >= 0
 p3: p[1,2] - 69.51834237295584 z[1,2] - dcc[1,2] >= -69.51834237295584
 R37: dcc[1,2] <= 69.51834237295584
 R38: x[1,1,0] - x[2,0,0] + dif[1,2,0] >= 0
 R39: - x[1,1,0] + x[2,0,0] + dif[1,2,0] >= 0
 R40: x[1,1,1] - x[2,0,1] + dif[1,2,1] >= 0
 R41: - x[1,1,1] + x[2,0,1] + dif[1,2,1] >= 0
 p2: p[1,3] - 27.99873837412949 z[1,3] >= 0
 p3: p[1,3] - 55.94602117505472 z[1,3] - dcc[1,3] >= -55.94602117505472
 R44: dcc[1,3] <= 55.94602117505472
 R45: x[1,1,0] - x[3,0,0] + dif[1,3,0] >= 0
 R46: - x[1,1,0] + x[3,0,0] + dif[1,3,0] >= 0
 R47: x[1,1,1] - x[3,0,1] + dif[1,3,1] >= 0
 R48: - x[1,1,1] + x[3,0,1] + dif[1,3,1] >= 0
 p2: p[1,4] - 44.82133485419336 z[1,4] >= 0
 p3: p[1,4] - 68.7838468372216 z[1,4] - dcc[1,4] >= -68.7838468372216
 R51: dcc[1,4] <= 68.7838468372216
 R52: x[1,1,0] - x[4,0,0] + dif[1,4,0] >= 0
 R53: - x[1,1,0] + x[4,0,0] + dif[1,4,0] >= 0
 R54: x[1,1,1] - x[4,0,1] + dif[1,4,1] >= 0
 R55: - x[1,1,1] + x[4,0,1] + dif[1,4,1] >= 0
 p2: p[2,0] - 1.258104853245537 z[2,0] >= 0
 p3: p[2,0] - 29.38183520548139 z[2,0] - dcc[2,0] >= -29.38183520548139
 R58: dcc[2,0] <= 29.38183520548139
 R59: - x[0,0,0] + x[2,1,0] + dif[2,0,0] >= 0
 R60: x[0,0,0] - x[2,1,0] + dif[2,0,0] >= 0
 R61: - x[0,0,1] + x[2,1,1] + dif[2,0,1] >= 0
 R62: x[0,0,1] - x[2,1,1] + dif[2,0,1] >= 0
 p2: p[2,1] - 44.52011101044488 z[2,1] >= 0
 p3: p[2,1] - 69.51834237295584 z[2,1] - dcc[2,1] >= -69.51834237295584
 R65: dcc[2,1] <= 69.51834237295584
 R66: - x[1,0,0] + x[2,1,0] + dif[2,1,0] >= 0
 R67: x[1,0,0] - x[2,1,0] + dif[2,1,0] >= 0
 R68: - x[1,0,1] + x[2,1,1] + dif[2,1,1] >= 0
 R69: x[1,0,1] - x[2,1,1] + dif[2,1,1] >= 0
 p2: p[2,3] - 4.407060904234161 z[2,3] >= 0
 p3: p[2,3] - 26.95778273874528 z[2,3] - dcc[2,3] >= -26.95778273874528
 R72: dcc[2,3] <= 26.95778273874528
 R73: x[2,1,0] - x[3,0,0] + dif[2,3,0] >= 0
 R74: - x[2,1,0] + x[3,0,0] + dif[2,3,0] >= 0
 R75: x[2,1,1] - x[3,0,1] + dif[2,3,1] >= 0
 R76: - x[2,1,1] + x[3,0,1] + dif[2,3,1] >= 0
 p2: p[2,4] - 0.7818689885007516 z[2,4] >= 0
 p3: p[2,4] - 16.86420054549645 z[2,4] - dcc[2,4] >= -16.86420054549645
 R79: dcc[2,4] <= 16.86420054549645
 R80: x[2,1,0] - x[4,0,0] + dif[2,4,0] >= 0
 R81: - x[2,1,0] + x[4,0,0] + dif[2,4,0] >= 0
 R82: x[2,1,1] - x[4,0,1] + dif[2,4,1] >= 0
 R83: - x[2,1,1] + x[4,0,1] + dif[2,4,1] >= 0
 p2: p[3,0] - 2.253516925757279 z[3,0] >= 0
 p3: p[3,0] - 18.39901269038778 z[3,0] - dcc[3,0] >= -18.39901269038778
 R86: dcc[3,0] <= 18.39901269038778
 R87: - x[0,0,0] + x[3,1,0] + dif[3,0,0] >= 0
 R88: x[0,0,0] - x[3,1,0] + dif[3,0,0] >= 0
 R89: - x[0,0,1] + x[3,1,1] + dif[3,0,1] >= 0
 R90: x[0,0,1] - x[3,1,1] + dif[3,0,1] >= 0
 p2: p[3,1] - 27.99873837412949 z[3,1] >= 0
 p3: p[3,1] - 55.94602117505472 z[3,1] - dcc[3,1] >= -55.94602117505472
 R93: dcc[3,1] <= 55.94602117505472
 R94: - x[1,0,0] + x[3,1,0] + dif[3,1,0] >= 0
 R95: x[1,0,0] - x[3,1,0] + dif[3,1,0] >= 0
 R96: - x[1,0,1] + x[3,1,1] + dif[3,1,1] >= 0
 R97: x[1,0,1] - x[3,1,1] + dif[3,1,1] >= 0
 p2: p[3,2] - 4.407060904234161 z[3,2] >= 0
 p3: p[3,2] - 26.95778273874528 z[3,2] - dcc[3,2] >= -26.95778273874528
 R100: dcc[3,2] <= 26.95778273874528
 R101: - x[2,0,0] + x[3,1,0] + dif[3,2,0] >= 0
 R102: x[2,0,0] - x[3,1,0] + dif[3,2,0] >= 0
 R103: - x[2,0,1] + x[3,1,1] + dif[3,2,1] >= 0
 R104: x[2,0,1] - x[3,1,1] + dif[3,2,1] >= 0
 p2: p[3,4] - 4.265211209150711 z[3,4] >= 0
 p3: p[3,4] - 26.1812576824424 z[3,4] - dcc[3,4] >= -26.1812576824424
 R107: dcc[3,4] <= 26.1812576824424
 R108: x[3,1,0] - x[4,0,0] + dif[3,4,0] >= 0
 R109: - x[3,1,0] + x[4,0,0] + dif[3,4,0] >= 0
 R110: x[3,1,1] - x[4,0,1] + dif[3,4,1] >= 0
 R111: - x[3,1,1] + x[4,0,1] + dif[3,4,1] >= 0
 p2: p[4,0] - 1.892643368582064 z[4,0] >= 0
 p3: p[4,0] - 29.05298645669295 z[4,0] - dcc[4,0] >= -29.05298645669295
 R114: dcc[4,0] <= 29.05298645669295
 R115: - x[0,0,0] + x[4,1,0] + dif[4,0,0] >= 0
 R116: x[0,0,0] - x[4,1,0] + dif[4,0,0] >= 0
 R117: - x[0,0,1] + x[4,1,1] + dif[4,0,1] >= 0
 R118: x[0,0,1] - x[4,1,1] + dif[4,0,1] >= 0
 p2: p[4,1] - 44.82133485419336 z[4,1] >= 0
 p3: p[4,1] - 68.7838468372216 z[4,1] - dcc[4,1] >= -68.7838468372216
 R121: dcc[4,1] <= 68.7838468372216
 R122: - x[1,0,0] + x[4,1,0] + dif[4,1,0] >= 0
 R123: x[1,0,0] - x[4,1,0] + dif[4,1,0] >= 0
 R124: - x[1,0,1] + x[4,1,1] + dif[4,1,1] >= 0
 R125: x[1,0,1] - x[4,1,1] + dif[4,1,1] >= 0
 p2: p[4,2] - 0.7818689885007516 z[4,2] >= 0
 p3: p[4,2] - 16.86420054549645 z[4,2] - dcc[4,2] >= -16.86420054549645
 R128: dcc[4,2] <= 16.86420054549645
 R129: - x[2,0,0] + x[4,1,0] + dif[4,2,0] >= 0
 R130: x[2,0,0] - x[4,1,0] + dif[4,2,0] >= 0
 R131: - x[2,0,1] + x[4,1,1] + dif[4,2,1] >= 0
 R132: x[2,0,1] - x[4,1,1] + dif[4,2,1] >= 0
 p2: p[4,3] - 4.265211209150711 z[4,3] >= 0
 p3: p[4,3] - 26.1812576824424 z[4,3] - dcc[4,3] >= -26.1812576824424
 R135: dcc[4,3] <= 26.1812576824424
 R136: - x[3,0,0] + x[4,1,0] + dif[4,3,0] >= 0
 R137: x[3,0,0] - x[4,1,0] + dif[4,3,0] >= 0
 R138: - x[3,0,1] + x[4,1,1] + dif[4,3,1] >= 0
 R139: x[3,0,1] - x[4,1,1] + dif[4,3,1] >= 0
 R140: z[0,1] + z[0,2] + z[0,3] + z[0,4] = 1
 R141: z[1,0] + z[1,2] + z[1,3] + z[1,4] = 1
 R142: z[2,0] + z[2,1] + z[2,3] + z[2,4] = 1
 R143: z[3,0] + z[3,1] + z[3,2] + z[3,4] = 1
 R144: z[4,0] + z[4,1] + z[4,2] + z[4,3] = 1
 R145: z[1,0] + z[2,0] + z[3,0] + z[4,0] = 1
 R146: z[0,1] + z[2,1] + z[3,1] + z[4,1] = 1
 R147: z[0,2] + z[1,2] + z[3,2] + z[4,2] = 1
 R148: z[0,3] + z[1,3] + z[2,3] + z[4,3] = 1
 R149: z[0,4] + z[1,4] + z[2,4] + z[3,4] = 1
 rest7: z[0,1] + z[1,0] <= 1
 rest7: z[0,2] + z[2,0] <= 1
 rest7: z[0,3] + z[3,0] <= 1
 rest7: z[0,4] + z[4,0] <= 1
 rest7: z[0,1] + z[1,0] <= 1
 rest7: z[1,2] + z[2,1] <= 1
 rest7: z[1,3] + z[3,1] <= 1
 rest7: z[1,4] + z[4,1] <= 1
 rest7: z[0,2] + z[2,0] <= 1
 rest7: z[1,2] + z[2,1] <= 1
 rest7: z[2,3] + z[3,2] <= 1
 rest7: z[2,4] + z[4,2] <= 1
 rest7: z[0,3] + z[3,0] <= 1
 rest7: z[1,3] + z[3,1] <= 1
 rest7: z[2,3] + z[3,2] <= 1
 rest7: z[3,4] + z[4,3] <= 1
 rest7: z[0,4] + z[4,0] <= 1
 rest7: z[1,4] + z[4,1] <= 1
 rest7: z[2,4] + z[4,2] <= 1
 rest7: z[3,4] + z[4,3] <= 1
 R170: 5 z[1,2] + sc[1] - sc[2] <= 4
 R171: 5 z[1,3] + sc[1] - sc[3] <= 4
 R172: 5 z[1,4] + sc[1] - sc[4] <= 4
 R173: 5 z[2,1] - sc[1] + sc[2] <= 4
 R174: 5 z[2,3] + sc[2] - sc[3] <= 4
 R175: 5 z[2,4] + sc[2] - sc[4] <= 4
 R176: 5 z[3,1] - sc[1] + sc[3] <= 4
 R177: 5 z[3,2] - sc[2] + sc[3] <= 4
 R178: 5 z[3,4] + sc[3] - sc[4] <= 4
 R179: 5 z[4,1] - sc[1] + sc[4] <= 4
 R180: 5 z[4,2] - sc[2] + sc[4] <= 4
 R181: 5 z[4,3] - sc[3] + sc[4] <= 4
 rest10: sc[0] = 0
 rest11: sc[1] >= 1
 rest11: sc[2] >= 1
 rest11: sc[3] >= 1
 rest11: sc[4] >= 1
 R187: dc[0] <= 19.5000422482165
 envConv: mu[0,0] + mu[0,1] + mu[0,2] + mu[0,3] + mu[0,4] + mu[0,5]
   + mu[0,6] + mu[0,7] + mu[0,8] + mu[0,9] = 1
 inP1: x[0,0,0] - 63.95592169228707 mu[0,0] - 58.09860701003093 mu[0,1]
   - 55.79672686285515 mu[0,2] - 58.12735655417179 mu[0,3]
   - 63.99996854934968 mu[0,4] - 70.66670242903291 mu[0,5]
   - 75.00811931842408 mu[0,6] - 74.99282200550221 mu[0,7]
   - 70.62796827299462 mu[0,8] - 63.95592169228728 mu[0,9] = 0
 inP1: x[0,1,0] - 63.95592169228707 mu[0,0] - 58.09860701003093 mu[0,1]
   - 55.79672686285515 mu[0,2] - 58.12735655417179 mu[0,3]
   - 63.99996854934968 mu[0,4] - 70.66670242903291 mu[0,5]
   - 75.00811931842408 mu[0,6] - 74.99282200550221 mu[0,7]
   - 70.62796827299462 mu[0,8] - 63.95592169228728 mu[0,9] = 0
 inP1: x[0,0,1] - 49.18434870671248 mu[0,0] - 45.78496268271709 mu[0,1]
   - 39.41587260522928 mu[0,2] - 33.05724650605803 mu[0,3]
   - 29.6843562052624 mu[0,4] - 30.87541456008481 mu[0,5]
   - 36.07311212916526 mu[0,6] - 42.84538845395635 mu[0,7]
   - 48.02342017662117 mu[0,8] - 49.18434870671252 mu[0,9] = 0
 inP1: x[0,1,1] - 49.18434870671248 mu[0,0] - 45.78496268271709 mu[0,1]
   - 39.41587260522928 mu[0,2] - 33.05724650605803 mu[0,3]
   - 29.6843562052624 mu[0,4] - 30.87541456008481 mu[0,5]
   - 36.07311212916526 mu[0,6] - 42.84538845395635 mu[0,7]
   - 48.02342017662117 mu[0,8] - 49.18434870671252 mu[0,9] = 0
 R193: - x[0,0,0] + x[0,1,0] + difc[0,0] >= 0
 R194: x[0,0,0] - x[0,1,0] + difc[0,0] >= 0
 R195: - x[0,0,1] + x[0,1,1] + difc[0,1] >= 0
 R196: x[0,0,1] - x[0,1,1] + difc[0,1] >= 0
 R197: dc[1] <= 15.04238609689174
 envConv: mu[1,0] + mu[1,1] + mu[1,2] + mu[1,3] + mu[1,4] + mu[1,5]
   + mu[1,6] + mu[1,7] = 1
 inP1: x[1,0,0] - 70.65426422012226 mu[1,0] - 75.24521589743635 mu[1,1]
   - 74.29830403801958 mu[1,2] - 68.52657258549451 mu[1,3]
   - 62.276253045478 mu[1,4] - 60.25396351488587 mu[1,5]
   - 63.98252925744247 mu[1,6] - 70.6542642201221 mu[1,7] = 0
 inP1: x[1,1,0] - 70.65426422012226 mu[1,0] - 75.24521589743635 mu[1,1]
   - 74.29830403801958 mu[1,2] - 68.52657258549451 mu[1,3]
   - 62.276253045478 mu[1,4] - 60.25396351488587 mu[1,5]
   - 63.98252925744247 mu[1,6] - 70.6542642201221 mu[1,7] = 0
 inP1: x[1,0,1] - 74.21519016135115 mu[1,0] - 79.08749768089929 mu[1,1]
   - 85.71468228667035 mu[1,2] - 89.10633880058967 mu[1,3]
   - 86.70848069049094 mu[1,4] - 80.32674402067053 mu[1,5]
   - 74.76670666720682 mu[1,6] - 74.21519016135107 mu[1,7] = 0
 inP1: x[1,1,1] - 74.21519016135115 mu[1,0] - 79.08749768089929 mu[1,1]
   - 85.71468228667035 mu[1,2] - 89.10633880058967 mu[1,3]
   - 86.70848069049094 mu[1,4] - 80.32674402067053 mu[1,5]
   - 74.76670666720682 mu[1,6] - 74.21519016135107 mu[1,7] = 0
 R203: - x[1,0,0] + x[1,1,0] + difc[1,0] >= 0
 R204: x[1,0,0] - x[1,1,0] + difc[1,0] >= 0
 R205: - x[1,0,1] + x[1,1,1] + difc[1,1] >= 0
 R206: x[1,0,1] - x[1,1,1] + difc[1,1] >= 0
 u0: landa[2,0] - landa[2,1] + min[2] - max[2] = 0
 u1: min[2] + max[2] = 4
 u2: 4 u[2] + max[2] <= 4
 u3: - 4 u[2] + min[2] <= 0
 R211: dc[2] = 27.61434343221631
 R212: landa[2,0] - sublanda[2,0,1] - 5 s[2,0,0] >= -4
 R213: landa[2,0] - sublanda[2,0,1] + 5 s[2,0,0] <= 6
 R214: landa[2,0] - sublanda[2,0,2] - 5 s[2,0,1] >= -3
 R215: landa[2,0] - sublanda[2,0,2] + 5 s[2,0,1] <= 7
 R216: landa[2,0] - sublanda[2,0,3] - 5 s[2,0,2] >= -2
 R217: landa[2,0] - sublanda[2,0,3] + 5 s[2,0,2] <= 8
 R218: landa[2,0] - sublanda[2,0,4] - 5 s[2,0,3] >= -1
 R219: landa[2,0] - sublanda[2,0,4] + 5 s[2,0,3] <= 9
 R220: sublanda[2,0,0] - s[2,0,0] <= 0
 R221: sublanda[2,0,4] - s[2,0,3] <= 0
 R222: sublanda[2,0,1] - s[2,0,0] - s[2,0,1] <= 0
 R223: sublanda[2,0,2] - s[2,0,1] - s[2,0,2] <= 0
 R224: sublanda[2,0,3] - s[2,0,2] - s[2,0,3] <= 0
 R225: s[2,0,0] + s[2,0,1] + s[2,0,2] + s[2,0,3] = 1
 R226: sublanda[2,0,0] + sublanda[2,0,1] + sublanda[2,0,2]
   + sublanda[2,0,3] + sublanda[2,0,4] = 1
 seg1: x[2,0,0] - 58.65458305770014 sublanda[2,0,0]
   - 65.20988141608167 sublanda[2,0,1] - 68.36021085667088 sublanda[2,0,2]
   - 62.77679826595819 sublanda[2,0,3] - 57.90396985049287 sublanda[2,0,4]
   = 0
 seg1: x[2,0,1] - 27.86415344903006 sublanda[2,0,0]
   - 30.02923107630456 sublanda[2,0,1] - 23.88635535598585 sublanda[2,0,2]
   - 19.82618275603454 sublanda[2,0,3] - 24.71648345568052 sublanda[2,0,4]
   = 0
 R229: landa[2,1] - sublanda[2,1,1] - 5 s[2,1,0] >= -4
 R230: landa[2,1] - sublanda[2,1,1] + 5 s[2,1,0] <= 6
 R231: landa[2,1] - sublanda[2,1,2] - 5 s[2,1,1] >= -3
 R232: landa[2,1] - sublanda[2,1,2] + 5 s[2,1,1] <= 7
 R233: landa[2,1] - sublanda[2,1,3] - 5 s[2,1,2] >= -2
 R234: landa[2,1] - sublanda[2,1,3] + 5 s[2,1,2] <= 8
 R235: landa[2,1] - sublanda[2,1,4] - 5 s[2,1,3] >= -1
 R236: landa[2,1] - sublanda[2,1,4] + 5 s[2,1,3] <= 9
 R237: sublanda[2,1,0] - s[2,1,0] <= 0
 R238: sublanda[2,1,4] - s[2,1,3] <= 0
 R239: sublanda[2,1,1] - s[2,1,0] - s[2,1,1] <= 0
 R240: sublanda[2,1,2] - s[2,1,1] - s[2,1,2] <= 0
 R241: sublanda[2,1,3] - s[2,1,2] - s[2,1,3] <= 0
 R242: s[2,1,0] + s[2,1,1] + s[2,1,2] + s[2,1,3] = 1
 R243: sublanda[2,1,0] + sublanda[2,1,1] + sublanda[2,1,2]
   + sublanda[2,1,3] + sublanda[2,1,4] = 1
 seg1: x[2,1,0] - 58.65458305770014 sublanda[2,1,0]
   - 65.20988141608167 sublanda[2,1,1] - 68.36021085667088 sublanda[2,1,2]
   - 62.77679826595819 sublanda[2,1,3] - 57.90396985049287 sublanda[2,1,4]
   = 0
 seg1: x[2,1,1] - 27.86415344903006 sublanda[2,1,0]
   - 30.02923107630456 sublanda[2,1,1] - 23.88635535598585 sublanda[2,1,2]
   - 19.82618275603454 sublanda[2,1,3] - 24.71648345568052 sublanda[2,1,4]
   = 0
 R246: dc[3] <= 13.44564001541427
 envConv: mu[3,0] + mu[3,1] + mu[3,2] + mu[3,3] + mu[3,4] + mu[3,5]
   + mu[3,6] + mu[3,7] + mu[3,8] = 1
 inP1: x[3,0,0] - 68.3108292865718 mu[3,0] - 72.78556434949134 mu[3,1]
   - 74.15355473900789 mu[3,2] - 71.61345023813873 mu[3,3]
   - 66.65320961364804 mu[3,4] - 62.17847455072848 mu[3,5]
   - 60.8104841612119 mu[3,6] - 63.35058866208115 mu[3,7]
   - 68.31082928657186 mu[3,8] = 0
 inP1: x[3,1,0] - 68.3108292865718 mu[3,0] - 72.78556434949134 mu[3,1]
   - 74.15355473900789 mu[3,2] - 71.61345023813873 mu[3,3]
   - 66.65320961364804 mu[3,4] - 62.17847455072848 mu[3,5]
   - 60.8104841612119 mu[3,6] - 63.35058866208115 mu[3,7]
   - 68.31082928657186 mu[3,8] = 0
 inP1: x[3,0,1] - 33.1607336099347 mu[3,0] - 35.70083811080389 mu[3,1]
   - 40.66107873529458 mu[3,2] - 45.13581379821412 mu[3,3]
   - 46.5038041877307 mu[3,4] - 43.96369968686155 mu[3,5]
   - 39.00345906237069 mu[3,6] - 34.52872399945119 mu[3,7]
   - 33.1607336099347 mu[3,8] = 0
 inP1: x[3,1,1] - 33.1607336099347 mu[3,0] - 35.70083811080389 mu[3,1]
   - 40.66107873529458 mu[3,2] - 45.13581379821412 mu[3,3]
   - 46.5038041877307 mu[3,4] - 43.96369968686155 mu[3,5]
   - 39.00345906237069 mu[3,6] - 34.52872399945119 mu[3,7]
   - 33.1607336099347 mu[3,8] = 0
 R252: - x[3,0,0] + x[3,1,0] + difc[3,0] >= 0
 R253: x[3,0,0] - x[3,1,0] + difc[3,0] >= 0
 R254: - x[3,0,1] + x[3,1,1] + difc[3,1] >= 0
 R255: x[3,0,1] - x[3,1,1] + difc[3,1] >= 0
 R256: dc[4] <= 9.431243477006436
 envConv: mu[4,0] + mu[4,1] + mu[4,2] + mu[4,3] = 1
 inP1: x[4,0,0] - 74.69675519445569 mu[4,0] - 65.89225383215627 mu[4,1]
   - 67.36673540306474 mu[4,2] - 74.6967551944557 mu[4,3] = 0
 inP1: x[4,1,0] - 74.69675519445569 mu[4,0] - 65.89225383215627 mu[4,1]
   - 67.36673540306474 mu[4,2] - 74.6967551944557 mu[4,3] = 0
 inP1: x[4,0,1] - 26.26684484268352 mu[4,0] - 29.64754141052921 mu[4,1]
   - 20.33227127920036 mu[4,2] - 26.26684484268348 mu[4,3] = 0
 inP1: x[4,1,1] - 26.26684484268352 mu[4,0] - 29.64754141052921 mu[4,1]
   - 20.33227127920036 mu[4,2] - 26.26684484268348 mu[4,3] = 0
 R262: - x[4,0,0] + x[4,1,0] + difc[4,0] >= 0
 R263: x[4,0,0] - x[4,1,0] + difc[4,0] >= 0
 R264: - x[4,0,1] + x[4,1,1] + difc[4,1] >= 0
 R265: x[4,0,1] - x[4,1,1] + difc[4,1] >= 0
 qc0: [ - dcc[0,1] ^2 + dif[0,1,0] ^2 + dif[0,1,1] ^2 ] <= 0
 qc1: [ - dcc[0,2] ^2 + dif[0,2,0] ^2 + dif[0,2,1] ^2 ] <= 0
 qc2: [ - dcc[0,3] ^2 + dif[0,3,0] ^2 + dif[0,3,1] ^2 ] <= 0
 qc3: [ - dcc[0,4] ^2 + dif[0,4,0] ^2 + dif[0,4,1] ^2 ] <= 0
 qc4: [ - dcc[1,0] ^2 + dif[1,0,0] ^2 + dif[1,0,1] ^2 ] <= 0
 qc5: [ - dcc[1,2] ^2 + dif[1,2,0] ^2 + dif[1,2,1] ^2 ] <= 0
 qc6: [ - dcc[1,3] ^2 + dif[1,3,0] ^2 + dif[1,3,1] ^2 ] <= 0
 qc7: [ - dcc[1,4] ^2 + dif[1,4,0] ^2 + dif[1,4,1] ^2 ] <= 0
 qc8: [ - dcc[2,0] ^2 + dif[2,0,0] ^2 + dif[2,0,1] ^2 ] <= 0
 qc9: [ - dcc[2,1] ^2 + dif[2,1,0] ^2 + dif[2,1,1] ^2 ] <= 0
 qc10: [ - dcc[2,3] ^2 + dif[2,3,0] ^2 + dif[2,3,1] ^2 ] <= 0
 qc11: [ - dcc[2,4] ^2 + dif[2,4,0] ^2 + dif[2,4,1] ^2 ] <= 0
 qc12: [ - dcc[3,0] ^2 + dif[3,0,0] ^2 + dif[3,0,1] ^2 ] <= 0
 qc13: [ - dcc[3,1] ^2 + dif[3,1,0] ^2 + dif[3,1,1] ^2 ] <= 0
 qc14: [ - dcc[3,2] ^2 + dif[3,2,0] ^2 + dif[3,2,1] ^2 ] <= 0
 qc15: [ - dcc[3,4] ^2 + dif[3,4,0] ^2 + dif[3,4,1] ^2 ] <= 0
 qc16: [ - dcc[4,0] ^2 + dif[4,0,0] ^2 + dif[4,0,1] ^2 ] <= 0
 qc17: [ - dcc[4,1] ^2 + dif[4,1,0] ^2 + dif[4,1,1] ^2 ] <= 0
 qc18: [ - dcc[4,2] ^2 + dif[4,2,0] ^2 + dif[4,2,1] ^2 ] <= 0
 qc19: [ - dcc[4,3] ^2 + dif[4,3,0] ^2 + dif[4,3,1] ^2 ] <= 0
 qc20: [ - dc[0] ^2 + difc[0,0] ^2 + difc[0,1] ^2 ] <= 0
 qc21: [ - dc[1] ^2 + difc[1,0] ^2 + difc[1,1] ^2 ] <= 0
 qc22: [ - dc[3] ^2 + difc[3,0] ^2 + difc[3,1] ^2 ] <= 0
 qc23: [ - dc[4] ^2 + difc[4,0] ^2 + difc[4,1] ^2 ] <= 0
Bounds
 mu[0,0] <= 1
 mu[0,1] <= 1
 mu[0,2] <= 1
 mu[0,3] <= 1
 mu[0,4] <= 1
 mu[0,5] <= 1
 mu[0,6] <= 1
 mu[0,7] <= 1
 mu[0,8] <= 1
 mu[0,9] <= 1
 mu[1,0] <= 1
 mu[1,1] <= 1
 mu[1,2] <= 1
 mu[1,3] <= 1
 mu[1,4] <= 1
 mu[1,5] <= 1
 mu[1,6] <= 1
 mu[1,7] <= 1
 mu[3,0] <= 1
 mu[3,1] <= 1
 mu[3,2] <= 1
 mu[3,3] <= 1
 mu[3,4] <= 1
 mu[3,5] <= 1
 mu[3,6] <= 1
 mu[3,7] <= 1
 mu[3,8] <= 1
 mu[4,0] <= 1
 mu[4,1] <= 1
 mu[4,2] <= 1
 mu[4,3] <= 1
 sublanda[2,0,0] <= 1
 sublanda[2,1,0] <= 1
 sublanda[2,0,1] <= 1
 sublanda[2,1,1] <= 1
 sublanda[2,0,2] <= 1
 sublanda[2,1,2] <= 1
 sublanda[2,0,3] <= 1
 sublanda[2,1,3] <= 1
 sublanda[2,0,4] <= 1
 sublanda[2,1,4] <= 1
 sc[0] <= 4
 sc[1] <= 4
 sc[2] <= 4
 sc[3] <= 4
 sc[4] <= 4
Binaries
 z[0,1] z[0,2] z[0,3] z[0,4] z[1,0] z[1,2] z[1,3] z[1,4] z[2,0] z[2,1]
 z[2,3] z[2,4] z[3,0] z[3,1] z[3,2] z[3,4] z[4,0] z[4,1] z[4,2] z[4,3]
 s[2,0,0] s[2,1,0] s[2,0,1] s[2,1,1] s[2,0,2] s[2,1,2] s[2,0,3] s[2,1,3]
 u[2]
End

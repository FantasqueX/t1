// requires VLEN >= 2048

#include <stdio.h>

void ntt(const int *array, int l, const int *twiddle, int p, int *dst);

void test() {
  const int l = 9;
  const int n = 512;
  static const int arr[512] = {
      9997,  6362,  7134,  11711, 5849,  9491,  5972,  4164,  5894,  11069,
      7697,  8319,  2077,  12086, 10239, 5394,  4898,  1370,  1205,  2997,
      5274,  4625,  11983, 1789,  3645,  7666,  12128, 10883, 7376,  8883,
      2321,  1889,  2026,  8059,  2741,  865,   1785,  9955,  2395,  9330,
      11465, 7383,  9649,  11285, 3647,  578,   1158,  9936,  12019, 11114,
      7894,  4832,  10148, 10363, 11388, 9122,  10758, 2642,  4171,  10586,
      1194,  5280,  3055,  9220,  10577, 9046,  1284,  7915,  10213, 6902,
      3777,  9896,  429,   7730,  7429,  8666,  10887, 11255, 2437,  7782,
      1327,  7010,  4009,  1038,  9466,  5352,  1473,  10067, 11753, 2019,
      8472,  7665,  2679,  5070,  2248,  3044,  10301, 10671, 2092,  1069,
      9032,  9131,  11715, 6662,  3423,  10027, 5436,  4259,  999,   3316,
      11164, 5597,  6578,  800,   8242,  6952,  2288,  1481,  6770,  11948,
      8938,  10813, 11107, 1362,  4510,  9388,  8840,  10557, 6206,  7808,
      7131,  1394,  2604,  1509,  689,   5222,  8867,  9934,  7165,  6099,
      3229,  1263,  4414,  12212, 4963,  9236,  9040,  6062,  11163, 8169,
      4575,  6097,  3006,  1,     1384,  12039, 5445,  11355, 12197, 9182,
      10085, 9295,  8890,  10651, 1540,  9061,  10222, 2524,  2213,  6974,
      2066,  7348,  7444,  173,   7529,  3884,  3531,  4312,  640,   5352,
      5880,  3985,  781,   10165, 1106,  8114,  6043,  8202,  10617, 3060,
      11173, 11521, 6933,  9540,  11782, 2284,  6462,  3740,  2581,  126,
      508,   12165, 4956,  8045,  9379,  5250,  8148,  6539,  4891,  11252,
      5041,  9969,  8524,  9892,  4058,  10580, 10025, 9748,  8829,  4438,
      468,   4773,  1657,  1348,  10055, 7192,  9556,  5919,  5690,  6153,
      6270,  4938,  6206,  1003,  596,   11173, 9858,  4825,  7940,  794,
      7477,  10146, 7203,  4729,  5741,  4603,  1806,  7034,  8772,  10435,
      10777, 1359,  630,   11059, 8005,  225,   10355, 9226,  4449,  11236,
      680,   8615,  6828,  5502,  10082, 5491,  4346,  7831,  5429,  1253,
      6662,  9415,  584,   9362,  8452,  1937,  3271,  6852,  6573,  7706,
      1229,  8535,  3786,  6441,  7230,  533,   5778,  6436,  11728, 7896,
      785,   7591,  9061,  6149,  10403, 9079,  10837, 9776,  7850,  7870,
      5008,  5319,  541,   315,   9973,  5055,  7111,  8399,  614,   10495,
      9441,  10946, 449,   6965,  7980,  11475, 9321,  2256,  8998,  4321,
      11269, 4744,  5021,  11981, 7947,  7695,  4000,  1140,  2895,  3419,
      159,   5370,  10899, 3288,  12007, 8894,  7923,  7366,  11534, 5214,
      10461, 11199, 10965, 3739,  5507,  8882,  10725, 9649,  1144,  9153,
      5573,  878,   11115, 5677,  5970,  7221,  8614,  4703,  9394,  11660,
      8423,  6621,  11112, 10945, 527,   5019,  5396,  10049, 6770,  3406,
      2967,  3890,  2441,  4682,  6026,  617,   7316,  2627,  4456,  8925,
      2388,  11354, 4554,  10543, 2610,  10688, 1150,  2556,  4278,  431,
      9260,  3545,  12215, 631,   4407,  8145,  1403,  8523,  1982,  12073,
      950,   7671,  31,    1299,  9003,  11690, 5637,  6761,  5235,  5722,
      11858, 2210,  7870,  11608, 8884,  8550,  4776,  4998,  4270,  8850,
      12111, 240,   5674,  3845,  5057,  1608,  48,    2760,  8612,  278,
      5633,  9505,  3730,  1971,  8637,  8659,  894,   8594,  4221,  6783,
      5664,  9506,  2811,  11058, 4475,  2912,  2289,  2136,  7899,  6065,
      5259,  2230,  6793,  4280,  3140,  1721,  8333,  11216, 5383,  7139,
      10711, 1017,  2001,  10911, 1750,  162,   11775, 10575, 1646,  8322,
      175,   10156, 3635,  4893,  2207,  3234,  4380,  1900,  5493,  3082,
      10058, 9948,  10752, 7044,  10073, 11210, 8362,  9268,  8694,  1438,
      761,   10180, 6570,  6349,  9028,  10495, 4756,  9332,  8348,  4995,
      6933,  4351,  111,   1610,  7410,  960,   11972, 2853,  3551,  1423,
      2634,  3972};
  // const int twiddle[9] = {3400, 8340, 12149, 7311,
                           // 5860,  4134, 8246, 1479,  12288};
  static const int twiddle[] = {
    // layer #0
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 

    // layer #1
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 

    // layer #2
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 

    // layer #3
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 

    // layer #4
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 

    // layer #5
    1, 1, 1, 1, 1, 1, 1, 1, 7311, 7311, 7311, 7311, 7311, 7311, 7311, 7311, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 5860, 3006, 3006, 3006, 3006, 3006, 3006, 3006, 3006, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 4134, 5023, 5023, 5023, 5023, 5023, 5023, 5023, 5023, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 3621, 2625, 2625, 2625, 2625, 2625, 2625, 2625, 2625, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8246, 8961, 8961, 8961, 8961, 8961, 8961, 8961, 8961, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 1212, 563, 563, 563, 563, 563, 563, 563, 563, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 11567, 5728, 5728, 5728, 5728, 5728, 5728, 5728, 5728, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 8785, 4821, 4821, 4821, 4821, 4821, 4821, 4821, 4821, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 1479, 10938, 10938, 10938, 10938, 10938, 10938, 10938, 10938, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 3195, 9545, 9545, 9545, 9545, 9545, 9545, 9545, 9545, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6553, 6461, 6461, 6461, 6461, 6461, 6461, 6461, 6461, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 9744, 11340, 11340, 11340, 11340, 11340, 11340, 11340, 11340, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5146, 5777, 5777, 5777, 5777, 5777, 5777, 5777, 5777, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 10643, 9314, 9314, 9314, 9314, 9314, 9314, 9314, 9314, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 1305, 4591, 4591, 4591, 4591, 4591, 4591, 4591, 4591, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 3542, 2639, 2639, 2639, 2639, 2639, 2639, 2639, 2639, 

    // layer #6
    1, 1, 1, 1, 12149, 12149, 12149, 12149, 7311, 7311, 7311, 7311, 8736, 8736, 8736, 8736, 5860, 5860, 5860, 5860, 2963, 2963, 2963, 2963, 3006, 3006, 3006, 3006, 9275, 9275, 9275, 9275, 4134, 4134, 4134, 4134, 11112, 11112, 11112, 11112, 5023, 5023, 5023, 5023, 9542, 9542, 9542, 9542, 3621, 3621, 3621, 3621, 9198, 9198, 9198, 9198, 2625, 2625, 2625, 2625, 1170, 1170, 1170, 1170, 8246, 8246, 8246, 8246, 726, 726, 726, 726, 8961, 8961, 8961, 8961, 11227, 11227, 11227, 11227, 1212, 1212, 1212, 1212, 2366, 2366, 2366, 2366, 563, 563, 563, 563, 7203, 7203, 7203, 7203, 11567, 11567, 11567, 11567, 2768, 2768, 2768, 2768, 5728, 5728, 5728, 5728, 9154, 9154, 9154, 9154, 8785, 8785, 8785, 8785, 11289, 11289, 11289, 11289, 4821, 4821, 4821, 4821, 955, 955, 955, 955, 1479, 1479, 1479, 1479, 1853, 1853, 1853, 1853, 10938, 10938, 10938, 10938, 4805, 4805, 4805, 4805, 3195, 3195, 3195, 3195, 7393, 7393, 7393, 7393, 9545, 9545, 9545, 9545, 3201, 3201, 3201, 3201, 6553, 6553, 6553, 6553, 4255, 4255, 4255, 4255, 6461, 6461, 6461, 6461, 4846, 4846, 4846, 4846, 9744, 9744, 9744, 9744, 12208, 12208, 12208, 12208, 11340, 11340, 11340, 11340, 9970, 9970, 9970, 9970, 5146, 5146, 5146, 5146, 4611, 4611, 4611, 4611, 5777, 5777, 5777, 5777, 2294, 2294, 2294, 2294, 10643, 10643, 10643, 10643, 9238, 9238, 9238, 9238, 9314, 9314, 9314, 9314, 10963, 10963, 10963, 10963, 1305, 1305, 1305, 1305, 1635, 1635, 1635, 1635, 4591, 4591, 4591, 4591, 8577, 8577, 8577, 8577, 3542, 3542, 3542, 3542, 7969, 7969, 7969, 7969, 2639, 2639, 2639, 2639, 11499, 11499, 11499, 11499, 

    // layer #7
    1, 1, 8340, 8340, 12149, 12149, 12144, 12144, 7311, 7311, 8011, 8011, 8736, 8736, 9048, 9048, 5860, 5860, 11336, 11336, 2963, 2963, 10530, 10530, 3006, 3006, 480, 480, 9275, 9275, 6534, 6534, 4134, 4134, 6915, 6915, 11112, 11112, 2731, 2731, 5023, 5023, 10908, 10908, 9542, 9542, 9005, 9005, 3621, 3621, 5067, 5067, 9198, 9198, 3382, 3382, 2625, 2625, 5791, 5791, 1170, 1170, 334, 334, 8246, 8246, 2396, 2396, 726, 726, 8652, 8652, 8961, 8961, 5331, 5331, 11227, 11227, 3289, 3289, 1212, 1212, 6522, 6522, 2366, 2366, 8595, 8595, 563, 563, 1022, 1022, 7203, 7203, 4388, 4388, 11567, 11567, 130, 130, 2768, 2768, 6378, 6378, 5728, 5728, 4177, 4177, 9154, 9154, 5092, 5092, 8785, 8785, 12171, 12171, 11289, 11289, 4231, 4231, 4821, 4821, 9821, 9821, 955, 955, 1428, 1428, 1479, 1479, 8993, 8993, 1853, 1853, 6747, 6747, 10938, 10938, 1673, 1673, 4805, 4805, 11560, 11560, 3195, 3195, 3748, 3748, 7393, 7393, 3707, 3707, 9545, 9545, 9447, 9447, 3201, 3201, 4632, 4632, 6553, 6553, 2837, 2837, 4255, 4255, 8357, 8357, 6461, 6461, 9764, 9764, 4846, 4846, 9408, 9408, 9744, 9744, 10092, 10092, 12208, 12208, 355, 355, 11340, 11340, 11745, 11745, 9970, 9970, 2426, 2426, 5146, 5146, 4452, 4452, 4611, 4611, 3459, 3459, 5777, 5777, 7300, 7300, 2294, 2294, 10276, 10276, 10643, 10643, 11462, 11462, 9238, 9238, 5179, 5179, 9314, 9314, 12280, 12280, 10963, 10963, 1260, 1260, 1305, 1305, 7935, 7935, 1635, 1635, 7399, 7399, 4591, 4591, 8705, 8705, 8577, 8577, 10200, 10200, 3542, 3542, 9813, 9813, 7969, 7969, 2548, 2548, 2639, 2639, 11950, 11950, 11499, 11499, 10593, 10593, 

    // layer #8
    1, 3400, 8340, 5277, 12149, 3271, 12144, 10849, 7311, 9042, 8011, 4976, 8736, 12176, 9048, 3833, 5860, 3531, 11336, 4096, 2963, 9509, 10530, 4143, 3006, 8241, 480, 9852, 9275, 1426, 6534, 9377, 4134, 9273, 6915, 2143, 11112, 4414, 2731, 7205, 5023, 8779, 10908, 11287, 9542, 12129, 9005, 5101, 3621, 10111, 5067, 10911, 9198, 9984, 3382, 8585, 2625, 3186, 5791, 2422, 1170, 8653, 334, 5012, 8246, 5191, 2396, 11082, 726, 10600, 8652, 9223, 8961, 2969, 5331, 11414, 11227, 2166, 3289, 11899, 1212, 3985, 6522, 5444, 2366, 7394, 8595, 12047, 563, 9405, 1022, 9302, 7203, 10512, 4388, 354, 11567, 3000, 130, 11885, 2768, 10115, 6378, 7404, 5728, 9424, 4177, 8005, 9154, 7852, 5092, 9888, 8785, 6730, 12171, 4337, 11289, 4053, 4231, 7270, 4821, 10163, 9821, 2187, 955, 2704, 1428, 1045, 1479, 2399, 8993, 1168, 1853, 8232, 6747, 8526, 10938, 2686, 1673, 10682, 4805, 4919, 11560, 3778, 3195, 11813, 3748, 11796, 7393, 5195, 3707, 7575, 9545, 10040, 9447, 8643, 3201, 7635, 4632, 6591, 6553, 243, 2837, 11224, 4255, 2847, 8357, 1632, 6461, 6957, 9764, 5011, 4846, 9140, 9408, 11222, 9744, 10745, 10092, 1912, 12208, 7247, 355, 2678, 11340, 5407, 11745, 6039, 9970, 4938, 2426, 2481, 5146, 9153, 4452, 9041, 4611, 8925, 3459, 27, 5777, 3978, 7300, 8509, 2294, 8374, 10276, 773, 10643, 7384, 11462, 2381, 9238, 10805, 5179, 10752, 9314, 11136, 12280, 6267, 10963, 1663, 1260, 7428, 1305, 671, 7935, 4645, 1635, 4372, 7399, 1017, 4591, 2370, 8705, 5088, 8577, 3, 10200, 442, 3542, 11869, 9813, 11854, 7969, 9644, 2548, 11744, 2639, 1630, 11950, 2566, 11499, 5291, 10593, 9430, 
  };
  const int p = 12289;
  int dst[512];
  ntt(arr, l, twiddle, p, dst);

  // for (int i = 0; i < n; i++) {
  //   printf("%d", dst[i]);
  //   if ((i + 1) % 8 == 0) {
  //     printf("\n");
  //   } else {
  //     printf(" ");
  //   }
  // }
}

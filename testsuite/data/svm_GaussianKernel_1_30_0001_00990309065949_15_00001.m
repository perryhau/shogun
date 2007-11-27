name = 'svm_Gaussian'
accuracy = 1e-06
num_threads = 1
C = 30
support_vectors = [3, 4, 5, 8, 10, 0, 1, 2, 6, 7, 9]
feature_type = 'Real'
data_type = 'double'
tube_epsilon = 0.001
data_train = [0.986569491, 0.0559263501, 0.142181376, 0.0528258939, 0.625841195, 0.0545092774, 0.836439737, 0.511938631, 0.527007625, 0.561594508, 0.170813706;0.197690303, 0.318817323, 0.593496416, 0.210117776, 0.116331727, 0.970116886, 0.0219818148, 0.802697405, 0.78803515, 0.297214114, 0.135626616;0.145628647, 0.697431617, 0.642806591, 0.782745674, 0.937481172, 0.691927363, 0.155851537, 0.243442617, 0.842193731, 0.209306076, 0.072522317;0.703280054, 0.402526355, 0.920040053, 0.650255071, 0.0904189778, 0.947856567, 0.258557264, 0.33721249, 0.402260414, 0.0512242964, 0.496515422;0.123318491, 0.400970327, 0.350709788, 0.772840083, 0.803170512, 0.153412882, 0.366551187, 0.373353161, 0.151410444, 0.798453505, 0.707228328;0.190381786, 0.366721909, 0.105805025, 0.628206597, 0.121371925, 0.985934169, 0.780682075, 0.39023855, 0.578563932, 0.911341816, 0.55409928;0.174498486, 0.378703356, 0.843144865, 0.644213016, 0.650724384, 0.866821486, 0.893973057, 0.919792572, 0.0948491933, 0.544126002, 0.740509521;0.756926845, 0.606716202, 0.166787335, 0.797420554, 0.720111334, 0.0861357715, 0.463809825, 0.1739774, 0.337477046, 0.0180810922, 0.400329868;0.549876921, 0.619582593, 0.663490345, 0.836291313, 0.215462907, 0.120481822, 0.851537172, 0.156612815, 0.974760081, 0.842538229, 0.500876606;0.981421425, 0.0973767291, 0.303065761, 0.638224415, 0.350006868, 0.928372552, 0.0656260882, 0.549411832, 0.590866267, 0.652728124, 0.255666223;0.364566428, 0.84368053, 0.194942769, 0.826867847, 0.562655423, 0.762187511, 0.713607366, 0.207511495, 0.568812736, 0.867723153, 0.432116237]
feature_class = 'simple'
labels = [1, 1, 1, -1, -1, -1, 1, 1, -1, 1, -1]
data_test = [0.96659077, 0.4522151, 0.142785637, 0.38943468, 0.951702406, 0.319720849, 0.86809816, 0.881250682, 0.350186524, 0.0832576581, 0.724557909, 0.311512299, 0.782923614, 0.442654848, 0.485266742, 0.777909407, 0.382363331;0.443127345, 0.376190469, 0.367340515, 0.525946577, 0.808799445, 0.361768312, 0.524254721, 0.670727325, 0.269439446, 0.277522805, 0.933413127, 0.723534573, 0.577186676, 0.647720054, 0.0292994431, 0.618102966, 0.509508873;0.54574968, 0.359423827, 0.0814738977, 0.193339234, 0.950744713, 0.408699562, 0.466683156, 0.0527097899, 0.0375662295, 0.717181447, 0.538094664, 0.508705984, 0.24312453, 0.744750732, 0.168236579, 0.189934744, 0.460712171;0.286279862, 0.247462981, 0.645237645, 0.650971745, 0.82451707, 0.417708567, 0.073085091, 0.273666385, 0.980005463, 0.596258575, 0.709737085, 0.00735782963, 0.518205732, 0.0375286575, 0.569230212, 0.92077085, 0.968419131;0.540552675, 0.458204805, 0.945017094, 0.673609832, 0.0648992795, 0.465725578, 0.240245018, 0.469804321, 0.455465572, 0.582144803, 0.35677049, 0.164270449, 0.503719435, 0.830202884, 0.664012228, 0.338367866, 0.935523023;0.912207571, 0.209348399, 0.0394175851, 0.741308708, 0.827610261, 0.967864566, 0.889836394, 0.600534768, 0.530052339, 0.0278410513, 0.246656447, 0.459614752, 0.6285039, 0.557251833, 0.74263599, 0.279766931, 0.564952608;0.0881422434, 0.413665524, 0.750160833, 0.693400853, 0.990642737, 0.277891126, 0.498189299, 0.329530414, 0.440603114, 0.85695013, 0.684209075, 0.882441191, 0.203511108, 0.873361118, 0.0597622742, 0.88859928, 0.329073779;0.314587633, 0.512088577, 0.940690188, 0.0477813647, 0.352230975, 0.856571989, 0.396054477, 0.199156898, 0.424794181, 0.385552501, 0.915416201, 0.761934376, 0.505115556, 0.988370567, 0.465277531, 0.0582378308, 0.262274322;0.43607048, 0.156902624, 0.947565126, 0.766848898, 0.2682872, 0.590804534, 0.721449157, 0.941278929, 0.881635349, 0.515192226, 0.77465262, 0.562144754, 0.55270389, 0.114741958, 0.126137658, 0.529533615, 0.268861545;0.0210369025, 0.722839204, 0.0324865967, 0.595276841, 0.539193794, 0.968814691, 0.484213139, 0.0636014364, 0.551687968, 0.841096171, 0.996849284, 0.430343174, 0.320298742, 0.906653297, 0.191242129, 0.615428915, 0.405714424;0.041082365, 0.347288474, 0.265228523, 0.686091154, 0.948790498, 0.268047187, 0.811465939, 0.0553598169, 0.53812101, 0.0705500637, 0.934032991, 0.766351281, 0.657949911, 0.823896382, 0.647519796, 0.968944397, 0.713957948]
bias = 0.0990309065949
kparam0_width = 1.5
epsilon = 0.0001
classified = [0.0214611368, 0.11700631, -0.486813333, 0.0134003327, -0.104755552, -0.722122972, 0.676342252, 0.452092473, -0.209098068, -0.0927605535, -0.106329491, 0.599474464, 0.372867627, -0.655199457, -0.213778967, 0.712765267, -0.454993795]
alphas = [-1.77151686, -2.26890496, -1.52121161, -3.36376676, -4.87624793, 1.51248615, 4.5815765, 1.86139735, 1.46563797, 2.09984802, 2.28070213]
data_class = 'rand'

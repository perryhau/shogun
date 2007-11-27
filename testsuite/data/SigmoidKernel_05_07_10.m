name = 'Sigmoid'
feature_type = 'Real'
data_type = 'double'
km_train = [0.993888517, 0.976002643, 0.974926114, 0.978862719, 0.978278897, 0.979840344, 0.982212963, 0.977945194, 0.981318462, 0.970208767, 0.916024878;0.976002643, 0.98409543, 0.97876931, 0.972059913, 0.961909546, 0.975527012, 0.970995868, 0.979580611, 0.975866519, 0.950185534, 0.879717783;0.974926114, 0.97876931, 0.988065457, 0.980867552, 0.961740269, 0.980954969, 0.97383017, 0.979446232, 0.963533007, 0.96067837, 0.914586215;0.978862719, 0.972059913, 0.980867552, 0.991861493, 0.976021507, 0.988247184, 0.982991546, 0.990836942, 0.952543226, 0.967695201, 0.929613125;0.978278897, 0.961909546, 0.961740269, 0.976021507, 0.990856477, 0.981400972, 0.975397723, 0.980528195, 0.947719565, 0.951357492, 0.945902557;0.979840344, 0.975527012, 0.980954969, 0.988247184, 0.981400972, 0.99342586, 0.979000547, 0.986840978, 0.966267126, 0.966843394, 0.950599831;0.982212963, 0.970995868, 0.97383017, 0.982991546, 0.975397723, 0.979000547, 0.995495908, 0.988426329, 0.962811727, 0.980705014, 0.927377127;0.977945194, 0.979580611, 0.979446232, 0.990836942, 0.980528195, 0.986840978, 0.988426329, 0.994784678, 0.967866974, 0.966726781, 0.93508293;0.981318462, 0.975866519, 0.963533007, 0.952543226, 0.947719565, 0.966267126, 0.962811727, 0.967866974, 0.987764367, 0.916620369, 0.887687167;0.970208767, 0.950185534, 0.96067837, 0.967695201, 0.951357492, 0.966843394, 0.980705014, 0.966726781, 0.916620369, 0.972122973, 0.890037094;0.916024878, 0.879717783, 0.914586215, 0.929613125, 0.945902557, 0.950599831, 0.927377127, 0.93508293, 0.887687167, 0.890037094, 0.911447931]
data_train = [0.929921763, 0.545083413, 0.661466205, 0.903273622, 0.0985468514, 0.232078578, 0.708900006, 0.823744462, 0.857029028, 0.415107177, 0.0893399023;0.437781477, 0.23073459, 0.291196455, 0.772267557, 0.075527086, 0.827581217, 0.427669086, 0.596063931, 0.0896522312, 0.337359078, 0.089700919;0.961543723, 0.807261649, 0.459632754, 0.223602548, 0.933455105, 0.344596596, 0.160984432, 0.563164388, 0.94377412, 0.0038302905, 0.238124843;0.93844764, 0.171085967, 0.113243452, 0.570187216, 0.861843823, 0.477109818, 0.994564257, 0.6791717, 0.0740749072, 0.992832132, 0.407894237;0.287402534, 0.557879184, 0.304307592, 0.0864575071, 0.00142834308, 0.449583353, 0.836863422, 0.572315186, 0.999207299, 0.286846646, 0.280455065;0.15974946, 0.164063588, 0.285186596, 0.792840045, 0.905756791, 0.97508717, 0.232289654, 0.881297546, 0.328255089, 0.112840545, 0.870024926;0.636105635, 0.164730896, 0.429831258, 0.287257695, 0.736794569, 0.453416231, 0.989279945, 0.0547449823, 0.355015266, 0.481900167, 0.503133555;0.315935822, 0.729240249, 0.874747073, 0.938719302, 0.805093377, 0.850580197, 0.550545301, 0.825888226, 0.303503909, 0.398478762, 0.316913014;0.467387335, 0.285579616, 0.961611442, 0.312844628, 0.0980445381, 0.526817166, 0.0570990784, 0.110543166, 0.219389389, 0.46435025, 0.433250932;0.799691862, 0.739474654, 0.426318294, 0.333704208, 0.316468784, 0.773995087, 0.0520724062, 0.0128216495, 0.795544392, 0.477146376, 0.130881139;0.235565935, 0.932503953, 0.859502976, 0.70978505, 0.48222523, 0.520323626, 0.975244535, 0.965770444, 0.215269046, 0.811104566, 0.197242666]
feature_class = 'simple'
data_test = [0.213537478, 0.676093034, 0.405001099, 0.931544407, 0.0890097349, 0.511525641, 0.91852153, 0.90411366, 0.156529213, 0.3666377, 0.6191214, 0.159394885, 0.968022172, 0.914749329, 0.166950179, 0.121155461, 0.0854084828;0.909443664, 0.19362381, 0.416284929, 0.448851366, 0.599011044, 0.0717353437, 0.226758617, 0.931490387, 0.908410107, 0.781290647, 0.0194012456, 0.327006768, 0.627958735, 0.275190212, 0.909586695, 0.633889462, 0.0719067173;0.909005589, 0.957766658, 0.0777124184, 0.532360235, 0.303364282, 0.392839076, 0.179651218, 0.578072102, 0.957979353, 0.5030726, 0.0829145814, 0.620001333, 0.340222994, 0.85592519, 0.434678148, 0.192839609, 0.191105623;0.768764181, 0.265587598, 0.767233394, 0.205887311, 0.321686369, 0.465486972, 0.94319585, 0.931731425, 0.206871875, 0.358219041, 0.149399388, 0.509985079, 0.460582551, 0.900760162, 0.930005378, 0.383567391, 0.491737943;0.896236249, 0.806707808, 0.00365631134, 0.320059564, 0.421774242, 0.229716284, 0.199571616, 0.0377845066, 0.643369725, 0.26251029, 0.0523471784, 0.230979311, 0.801913953, 0.851489182, 0.483066245, 0.41607067, 0.977853694;0.20056466, 0.215359283, 0.291867177, 0.172757318, 0.379365598, 0.910834227, 0.615347841, 0.411946549, 0.934410795, 0.0484642325, 0.210276178, 0.565888605, 0.615552623, 0.0395575066, 0.403038758, 0.649153965, 0.698070546;0.638139903, 0.320563224, 0.0935201236, 0.427112446, 0.128754437, 0.947623659, 0.475170866, 0.317259174, 0.766304071, 0.497948593, 0.310034024, 0.811967742, 0.867152151, 0.673008166, 0.0469644224, 0.56632288, 0.763294912;0.136503012, 0.228670751, 0.882495105, 0.0201217219, 0.752727138, 0.473773293, 0.446772159, 0.00709653249, 0.819398231, 0.359824901, 0.540765631, 0.677300686, 0.702629576, 0.955980059, 0.531339953, 0.399719551, 0.953703626;0.642110235, 0.298150356, 0.126464245, 0.842554501, 0.362181603, 0.660469721, 0.470816419, 0.19892978, 0.601686609, 0.060683069, 0.41334246, 0.54661494, 0.436046974, 0.748672175, 0.827924955, 0.771243074, 0.0388129478;0.19412877, 0.536607509, 0.93482204, 0.834956775, 0.842534508, 0.303208194, 0.429447897, 0.470705947, 0.157371583, 0.0310681302, 0.946902899, 0.240712586, 0.239948904, 0.0833790538, 0.928507752, 0.579737115, 0.667036857;0.911576887, 0.345620169, 0.621507311, 0.0387994547, 0.186772528, 0.831245805, 0.766768356, 0.350642691, 0.376810628, 0.533554434, 0.000241004685, 0.241244336, 0.208231809, 0.250482947, 0.805905843, 0.279673857, 0.191521322]
km_test = [0.986627181, 0.977497312, 0.967158541, 0.98079611, 0.953009141, 0.976512686, 0.982921048, 0.985384473, 0.980771745, 0.946566658, 0.945301377, 0.969210248, 0.984944433, 0.991829014, 0.986133418, 0.961670144, 0.961552929;0.978158367, 0.968684128, 0.961342355, 0.949946741, 0.949578918, 0.966063443, 0.965508506, 0.94741203, 0.975240412, 0.927764764, 0.918761285, 0.944615806, 0.96820992, 0.980209082, 0.980414445, 0.939453298, 0.958965263;0.978420131, 0.957551005, 0.958836511, 0.962669958, 0.948211396, 0.980540119, 0.975481179, 0.947084812, 0.982147109, 0.928479778, 0.932455707, 0.962297063, 0.978862218, 0.985895227, 0.982186283, 0.9614993, 0.954769264;0.975681918, 0.946322987, 0.976260174, 0.951768613, 0.956327713, 0.980630522, 0.984899894, 0.97786043, 0.984756001, 0.946872003, 0.928261117, 0.963535651, 0.985627236, 0.983336475, 0.985145977, 0.963407537, 0.963277852;0.973950581, 0.946097376, 0.958605435, 0.909863447, 0.938566119, 0.981797834, 0.973423237, 0.958419578, 0.985487775, 0.925158391, 0.892001502, 0.97479587, 0.971586833, 0.980279982, 0.972805432, 0.951367486, 0.972885571;0.984449688, 0.957862405, 0.976315483, 0.960426882, 0.975079671, 0.983260979, 0.979644986, 0.971721998, 0.991831896, 0.941754965, 0.937831923, 0.974872115, 0.986025893, 0.981860597, 0.991380714, 0.980477403, 0.981861934;0.989967945, 0.961492195, 0.962290683, 0.936267043, 0.930057313, 0.983443047, 0.985766164, 0.972744659, 0.9807579, 0.959469897, 0.88309943, 0.965406326, 0.988659922, 0.9910526, 0.980500734, 0.956056726, 0.977928383;0.985837962, 0.964852556, 0.969447851, 0.934861765, 0.949598219, 0.981217514, 0.984967574, 0.976519188, 0.98779871, 0.95332605, 0.886068256, 0.962328391, 0.986040023, 0.987706247, 0.985376483, 0.955411774, 0.969170946;0.973233265, 0.979025549, 0.923184039, 0.968898633, 0.938473947, 0.957246632, 0.954609342, 0.949546803, 0.974355588, 0.9053893, 0.926148622, 0.939207552, 0.977959772, 0.983023309, 0.963689343, 0.936209676, 0.965532079;0.974109308, 0.920870459, 0.960713094, 0.928224974, 0.922196791, 0.965410487, 0.975113767, 0.957554576, 0.948155696, 0.914870481, 0.891642806, 0.937912832, 0.962420721, 0.973611914, 0.980110654, 0.943173714, 0.944014919;0.929150053, 0.877445883, 0.872437843, 0.871376785, 0.876490376, 0.952174436, 0.929766814, 0.888536287, 0.956331516, 0.831306216, 0.828361777, 0.928543454, 0.940947433, 0.93396342, 0.928630172, 0.92377264, 0.93350238]
kparam1_gamma_ = 0.5
kparam2_coef0 = 0.7
accuracy = 1e-09
kparam0_size = 10
data_class = 'rand'

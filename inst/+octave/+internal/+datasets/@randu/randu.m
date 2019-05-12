## Copyright (C) 1995-2007 R Core Team
## Copyright (C) 2019 Andrew Janke
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful, ...
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.

# This is based on the randu dataset from R’s datasets package

classdef randu < octave.internal.dataset

  methods

    function this = randu
      this.name = "randu";
      this.summary = "Random Numbers from Congruential Generator RANDU";
    endfunction

    function out = load (this)
      x = [0.000031, 0.044495, 0.82244, 0.322291, 0.393595, 0.309097, ...
        0.826368, 0.729424, 0.317649, 0.599793, 0.647603, 0.547048, 0.529873, 0.90804, ...
        0.835195, 0.068696, 0.984329, 0.945783, 0.017137, 0.772506, 0.49308, 0.919386, ...
        0.964342, 0.864672, 0.786249, 0.123862, 0.990535, 0.455714, 0.345516, 0.482433, ...
        0.0631, 0.494563, 0.386052, 0.156384, 0.99985, 0.585455, 0.361887, 0.350248, ...
        0.126752, 0.812634, 0.369723, 0.437286, 0.771568, 0.697878, 0.826174, 0.530293, ...
        0.968455, 0.415824, 0.793458, 0.622709, 0.748484, 0.392119, 0.32851, 0.425048, ...
        0.391111, 0.409372, 0.230546, 0.021631, 0.011576, 0.345928, 0.562056, 0.47264, ...
        0.859244, 0.672445, 0.31824, 0.486482, 0.701881, 0.831292, 0.619876, 0.287463, ...
        0.670872, 0.623757, 0.804632, 0.803778, 0.94237, 0.730063, 0.79181, 0.300808, ...
        0.629387, 0.487203, 0.09553, 0.584738, 0.259822, 0.049581, 0.861351, 0.901482, ...
        0.215425, 0.057474, 0.301331, 0.655918, 0.5067, 0.938298, 0.90252, 0.076441, ...
        0.258743, 0.96569, 0.783897, 0.949827, 0.283024, 0.201405, 0.576739, 0.551408, ...
        0.110096, 0.44502, 0.203431, 0.895558, 0.858251, 0.316456, 0.929709, 0.431499, ...
        0.313108, 0.596309, 0.065349, 0.309409, 0.593143, 0.948994, 0.688282, 0.341853, ...
        0.776151, 0.153704, 0.767158, 0.785514, 0.861648, 0.968176, 0.057338, 0.068251, ...
        0.444216, 0.750276, 0.145329, 0.586459, 0.472772, 0.962394, 0.016658, 0.697745, ...
        0.470791, 0.683648, 0.522175, 0.033916, 0.592453, 0.254907, 0.117803, 0.25928, ...
        0.889736, 0.181619, 0.25272, 0.399261, 0.16544, 0.41946, 0.780983, 0.864323, ...
        0.787156, 0.167788, 0.771582, 0.294206, 0.837164, 0.295912, 0.091939, 0.347482, ...
        0.973278, 0.527179, 0.139841, 0.561416, 0.375616, 0.505862, 0.098811, 0.407139, ...
        0.154323, 0.871869, 0.091918, 0.66514, 0.593219, 0.468268, 0.609019, 0.246066, ...
        0.604387, 0.80661, 0.582449, 0.581833, 0.768705, 0.91508, 0.486134, 0.712057, ...
        0.337308, 0.694452, 0.833158, 0.190784, 0.56899, 0.90686, 0.446754, 0.93855, ...
        0.778547, 0.922376, 0.879737, 0.164737, 0.471049, 0.348409, 0.357379, 0.485254, ...
        0.937061, 0.666909, 0.618715, 0.36052, 0.68379, 0.00439, 0.031289, 0.978769, ...
        0.077178, 0.159757, 0.354338, 0.709664, 0.569929, 0.014955, 0.525414, 0.253219, ...
        0.890473, 0.453425, 0.845441, 0.609038, 0.567867, 0.91137, 0.937211, 0.990868, ...
        0.16764, 0.686843, 0.852322, 0.811463, 0.613563, 0.131638, 0.701542, 0.862754, ...
        0.97037, 0.850995, 0.183622, 0.816344, 0.062409, 0.036126, 0.387542, 0.169305, ...
        0.303227, 0.054538, 0.243194, 0.760294, 0.111106, 0.423188, 0.995503, 0.980973, ...
        0.285519, 0.289431, 0.076984, 0.807755, 0.719538, 0.544794, 0.753742, 0.778851, ...
        0.823174, 0.696558, 0.9199, 0.041631, 0.03265, 0.62215, 0.415478, 0.595303, ...
        0.780619, 0.331354, 0.242692, 0.853902, 0.302318, 0.861326, 0.055708, 0.654588, ...
        0.652651, 0.42943, 0.298822, 0.83626, 0.309226, 0.96888, 0.368081, 0.513483, ...
        0.736313, 0.172198, 0.171344, 0.170726, 0.284745, 0.167483, 0.461775, 0.701912, ...
        0.802767, 0.952495, 0.319777, 0.52028, 0.332802, 0.711546, 0.158367, 0.863566, ...
        0.269175, 0.140211, 0.62698, 0.419483, 0.351759, 0.902842, 0.788715, 0.396531, ...
        0.870567, 0.347908, 0.946024, 0.165103, 0.456284, 0.606132, 0.489827, 0.593914, ...
        0.831722, 0.196452, 0.147074, 0.20674, 0.899231, 0.26479, 0.001739, 0.284465, ...
        0.539036, 0.580633, 0.664257, 0.037451, 0.493513, 0.416429, 0.96439, 0.973205, ...
        0.712404, 0.434793, 0.54254, 0.584376, 0.533974, 0.708526, 0.714495, 0.482048, ...
        0.077093, 0.998449, 0.984607, 0.099361, 0.219269, 0.414045, 0.582422, 0.090429, ...
        0.535613, 0.581919, 0.397729, 0.549584, 0.573737, 0.447064, 0.689066, 0.175925, ...
        0.839597, 0.831947, 0.940644, 0.508181, 0.869272, 0.878399, 0.242726, 0.354886, ...
        0.761675, 0.497327, 0.570429, 0.544869, 0.547206, 0.95123, 0.335976, 0.123054, ...
        0.767345, 0.69453, 0.589375, 0.116573, 0.640176, 0.596723, 0.242544, 0.996192, ...
        0.186854, 0.673327, 0.691865, 0.958049, 0.694005, 0.449659, 0.214184, 0.150706, ...
        0.887069, 0.082414, 0.511244, 0.97251, 0.189574, 0.364059, 0.777554, 0.564273, ...
        0.443353, 0.73504, 0.6667, 0.622253, 0.464697, 0.428804, 0.531088, 0.656463, ...
        0.811441, 0.874628]';
      y = [0.000183, 0.155732, 0.873416, 0.648545, 0.826873, ...
        0.92659, 0.30854, 0.741526, 0.393468, 0.846041, 0.281525, 0.94879, 0.348011, ...
        0.013456, 0.814513, 0.275943, 0.927687, 0.689675, 0.166494, 0.282393, 0.943686, ...
        0.618783, 0.025198, 0.711721, 0.961377, 0.810826, 0.706806, 0.020492, 0.800801, ...
        0.160464, 0.488463, 0.180498, 0.482467, 0.276557, 0.198618, 0.129442, 0.743469, ...
        0.897698, 0.190162, 0.245063, 0.248908, 0.268675, 0.821389, 0.217688, 0.623633, ...
        0.852871, 0.569763, 0.696233, 0.429293, 0.75561, 0.903503, 0.082637, 0.211696, ...
        0.233427, 0.035974, 0.849729, 0.743487, 0.664288, 0.687896, 0.75754, 0.587138, ...
        0.353742, 0.982364, 0.343048, 0.103248, 0.552006, 0.597679, 0.05836, 0.029152, ...
        0.057, 0.302992, 0.432338, 0.752854, 0.778307, 0.001763, 0.630651, 0.407259, ...
        0.637073, 0.408029, 0.789276, 0.909727, 0.176853, 0.480486, 0.49643, 0.071937, ...
        0.260386, 0.739384, 0.797941, 0.90506, 0.227307, 0.591236, 0.101057, 0.245249, ...
        0.887802, 0.786332, 0.35169, 0.824439, 0.727198, 0.134077, 0.860104, 0.911462, ...
        0.696489, 0.601132, 0.150031, 0.64847, 0.963804, 0.917374, 0.206234, 0.207676, ...
        0.001802, 0.814661, 0.4955, 0.893404, 0.386023, 0.023418, 0.136076, 0.314449, ...
        0.679153, 0.15203, 0.590536, 0.75176, 0.776249, 0.57405, 0.257096, 0.846421, ...
        0.085886, 0.448217, 0.334354, 0.732954, 0.922249, 0.996288, 0.334478, 0.742936, ...
        0.483157, 0.163685, 0.619823, 0.80392, 0.789033, 0.787949, 0.337993, 0.658675, ...
        0.957802, 0.400012, 0.130337, 0.029737, 0.190735, 0.783277, 0.988879, 0.854271, ...
        0.844219, 0.415515, 0.636694, 0.714252, 0.962482, 0.918567, 0.806713, 0.586944, ...
        0.646237, 0.640872, 0.79397, 0.040708, 0.632276, 0.497789, 0.656287, 0.001116, ...
        0.458995, 0.194751, 0.438392, 0.212369, 0.592862, 0.958214, 0.794482, 0.519044, ...
        0.890815, 0.899433, 0.384215, 0.09314, 0.773607, 0.13604, 0.417145, 0.731443, ...
        0.485078, 0.796438, 0.720595, 0.348199, 0.812374, 0.032013, 0.705962, 0.788106, ...
        0.642097, 0.162147, 0.608467, 0.084615, 0.727397, 0.077057, 0.375336, 0.288538, ...
        0.040997, 0.023432, 0.577419, 0.99198, 0.089157, 0.897896, 0.719255, 0.672573, ...
        0.561583, 0.173276, 0.322564, 0.983029, 0.692256, 0.582682, 0.158178, 0.111002, ...
        0.70622, 0.686402, 0.001418, 0.334265, 0.72729, 0.446613, 0.285899, 0.896198, ...
        0.521708, 0.934895, 0.030776, 0.326589, 0.452729, 0.297567, 0.416429, 0.332744, ...
        0.021153, 0.10383, 0.383583, 0.385918, 0.366787, 0.201722, 0.630868, 0.12805, ...
        0.105847, 0.206892, 0.385813, 0.723816, 0.8793, 0.74918, 0.324282, 0.282988, ...
        0.987139, 0.602009, 0.013343, 0.478115, 0.4836, 0.819595, 0.252577, 0.482508, ...
        0.108312, 0.006967, 0.688824, 0.353543, 0.428389, 0.847797, 0.079371, 0.98627, ...
        0.566457, 0.015045, 0.578564, 0.762346, 0.889618, 0.589417, 0.422875, 0.019265, ...
        0.034351, 0.110633, 0.389394, 0.464916, 0.642355, 0.386511, 0.402763, 0.66244, ...
        0.182326, 0.184859, 0.665549, 0.710412, 0.232668, 0.933185, 0.687051, 0.243325, ...
        0.600151, 0.551215, 0.585544, 0.877392, 0.649494, 0.541224, 0.038967, 0.226658, ...
        0.218901, 0.461181, 0.259041, 0.614429, 0.496517, 0.905709, 0.36383, 0.605007, ...
        0.232836, 0.119851, 0.523734, 0.480742, 0.66404, 0.370651, 0.255925, 0.789398, ...
        0.521274, 0.201555, 0.242217, 0.086822, 0.500864, 0.69461, 0.045376, 0.999939, ...
        0.570467, 0.86549, 0.098863, 0.73505, 0.486162, 0.316322, 0.345021, 0.156445, ...
        0.895476, 0.271338, 0.896695, 0.56033, 0.401351, 0.120324, 0.097289, 0.269064, ...
        0.962044, 0.594896, 0.354264, 0.17071, 0.00197, 0.702578, 0.121073, 0.328899, ...
        0.608475, 0.543698, 0.402526, 0.788006, 0.189554, 0.136097, 0.158607, 0.698637, ...
        0.967504, 0.372643, 0.981712, 0.888431, 0.683509, 0.236571, 0.422338, 0.003171, ...
        0.888175, 0.399618, 0.338204, 0.343214, 0.192988, 0.327989, 0.641805, 0.520226, ...
        0.857719, 0.021121, 0.821414, 0.059233, 0.088764, 0.508267, 0.610511, 0.070984, ...
        0.423421, 0.22789, 0.180656, 0.119631, 0.575105, 0.414871, 0.232798, 0.41071, ...
        0.114502, 0.620527, 0.36202, 0.424449, 0.361654, 0.490444, 0.070724, 0.119375, ...
        0.863991, 0.925122, 0.805249, 0.831245, 0.835295, 0.748429, 0.390935, 0.992282, ...
        0.930601, 0.008876, 0.240614]';
      z = [0.000824, 0.533939, 0.838542, 0.990648, ...
        0.418881, 0.777664, 0.413932, 0.884338, 0.501968, 0.678107, 0.860718, 0.769314, ...
        0.319211, 0.90838, 0.370327, 0.037394, 0.707165, 0.626002, 0.844727, 0.741801, ...
        0.224398, 0.438229, 0.47211, 0.488282, 0.692023, 0.750198, 0.326013, 0.021528, ...
        0.695158, 0.620887, 0.36288, 0.631916, 0.420333, 0.251881, 0.193051, 0.507559, ...
        0.203826, 0.233957, 0.000203, 0.156666, 0.165943, 0.676477, 0.984216, 0.025225, ...
        0.306233, 0.344595, 0.702484, 0.434983, 0.434638, 0.929275, 0.684661, 0.966753, ...
        0.313584, 0.575129, 0.695843, 0.414026, 0.386009, 0.791052, 0.023192, 0.431892, ...
        0.464327, 0.868689, 0.16099, 0.006286, 0.75533, 0.933698, 0.269141, 0.868532, ...
        0.596032, 0.754833, 0.7801, 0.98021, 0.275437, 0.435841, 0.529245, 0.213333, ...
        0.317265, 0.115167, 0.783687, 0.350829, 0.598596, 0.798474, 0.544515, 0.532351, ...
        0.679465, 0.448975, 0.49748, 0.27038, 0.718384, 0.460576, 0.987116, 0.16166, ...
        0.348813, 0.638839, 0.389299, 0.418931, 0.89156, 0.814741, 0.257241, 0.347981, ...
        0.278116, 0.216269, 0.615928, 0.895009, 0.059942, 0.722801, 0.779985, 0.389302, ...
        0.878674, 0.127325, 0.06999, 0.606222, 0.772282, 0.53145, 0.802219, 0.275507, ...
        0.692158, 0.998243, 0.926825, 0.159884, 0.606141, 0.587872, 0.689467, 0.828997, ...
        0.562486, 0.901061, 0.691361, 0.253643, 0.089762, 0.255363, 0.722781, 0.345322, ...
        0.307697, 0.61924, 0.744991, 0.566103, 0.123949, 0.428958, 0.395616, 0.733798, ...
        0.891827, 0.413294, 0.39245, 0.14745, 0.903937, 0.551055, 0.210702, 0.158136, ...
        0.09678, 0.286411, 0.408684, 0.310077, 0.341272, 0.12704, 0.976924, 0.177067, ...
        0.694211, 0.750083, 0.085731, 0.019209, 0.985681, 0.740914, 0.606191, 0.384968, ...
        0.117391, 0.089724, 0.779596, 0.78353, 0.446952, 0.570913, 0.410318, 0.552483, ...
        0.633091, 0.130301, 0.957119, 0.045802, 0.316805, 0.40514, 0.897895, 0.267152, ...
        0.01345, 0.501955, 0.74286, 0.073498, 0.590769, 0.157183, 0.071166, 0.074034, ...
        0.707856, 0.405631, 0.965964, 0.34942, 0.590057, 0.881746, 0.2229, 0.116333, ...
        0.514816, 0.878697, 0.707045, 0.462329, 0.383442, 0.290269, 0.233271, 0.276022, ...
        0.753833, 0.560572, 0.345054, 0.497568, 0.709126, 0.766557, 0.366728, 0.814469, ...
        0.937284, 0.958351, 0.104159, 0.927685, 0.396624, 0.882402, 0.568873, 0.513061, ...
        0.942288, 0.212432, 0.100615, 0.003063, 0.288634, 0.413211, 0.263338, 0.31383, ...
        0.682588, 0.362135, 0.889644, 0.64254, 0.662911, 0.853626, 0.648653, 0.460078, ...
        0.280421, 0.111334, 0.512309, 0.824036, 0.154143, 0.433157, 0.495129, 0.137001, ...
        0.738398, 0.094077, 0.042384, 0.475179, 0.17583, 0.631798, 0.441726, 0.612313, ...
        0.111374, 0.640212, 0.633237, 0.863928, 0.842153, 0.195659, 0.792934, 0.876876, ...
        0.178324, 0.041016, 0.064698, 0.489201, 0.389852, 0.652587, 0.815645, 0.785317, ...
        0.614222, 0.314814, 0.789938, 0.471495, 0.100099, 0.327792, 0.536028, 0.696662, ...
        0.661911, 0.472607, 0.482342, 0.443517, 0.720379, 0.859474, 0.036403, 0.614955, ...
        0.303981, 0.283698, 0.082387, 0.940804, 0.386357, 0.214444, 0.252119, 0.829882, ...
        0.934643, 0.541315, 0.344511, 0.292351, 0.043756, 0.203753, 0.268427, 0.057402, ...
        0.531603, 0.828238, 0.883996, 0.011235, 0.370236, 0.498314, 0.117356, 0.080367, ...
        0.32794, 0.78242, 0.723837, 0.68524, 0.197263, 0.14453, 0.074585, 0.889149, ...
        0.983978, 0.862617, 0.341617, 0.367481, 0.431987, 0.579916, 0.456322, 0.322264, ...
        0.259161, 0.61401, 0.216388, 0.467031, 0.479117, 0.148725, 0.916178, 0.206997, ...
        0.183931, 0.433832, 0.875538, 0.139545, 0.162795, 0.117574, 0.242041, 0.000029, ...
        0.731601, 0.836991, 0.441672, 0.177886, 0.148473, 0.191069, 0.65295, 0.92806, ...
        0.99023, 0.221694, 0.679484, 0.402746, 0.864786, 0.527427, 0.595973, 0.628435, ...
        0.834495, 0.135077, 0.542634, 0.553278, 0.925426, 0.254105, 0.043078, 0.289766, ...
        0.097574, 0.038824, 0.220619, 0.677714, 0.05102, 0.483424, 0.288014, 0.292563, ...
        0.243013, 0.574797, 0.685654, 0.023994, 0.491003, 0.828191, 0.243179, 0.349853, ...
        0.536605, 0.330657, 0.739542, 0.43039, 0.945496, 0.417328, 0.2365, 0.147809, ...
        0.718263, 0.105492, 0.560552, 0.216132, 0.987175, 0.411495, 0.308307, 0.486373, ...
        0.173898, 0.67544, 0.750293, 0.57203]';
      record = [1:numel(x)]';
      out = table (record, x, y, z);
    endfunction

  endmethods

endclassdef
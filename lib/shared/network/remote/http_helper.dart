// import 'dart:convert';
//
// import 'package:hackathon/models/static_home_data/bet_needs_model.dart';
// import 'package:http/http.dart' as http;
//
// import '../../../models/filter_model.dart';
// import '../../../models/pet_model.dart';
// import '../../../models/static_home_data/find_bet_by_id_model.dart';
// import '../../components/constantse.dart';
// import '../end_points.dart';
//
// class ApiService {
//   Future<String> registerUser(User data) async {
//     String accessToken = "";
//     final http.Response response = await http.post(
//       Uri.parse(kAuthRegister),
//       headers: {
//         "accept": "application/json",
//         "Content-Type": "application/json",
//       },
//       body: data.toRawJason(),
//     );
//     if (response.statusCode == 200) {
//       accessToken = jsonDecode(response.body)["accessToken"];
//     }
//     return accessToken;
//   }
//
//   Future<String> loginUserWithEmail(String email, String password) async {
//     String accessToken = "";
//     final http.Response response = await http.post(
//       Uri.parse(kAuthLogin),
//       headers: {
//         "accept": "application/json",
//         "Content-Type": "application/json",
//       },
//       body: json.encode(
//         {
//           "email": email,
//           "password": password,
//         },
//       ),
//     );
//     if (response.statusCode == 200) {
//       accessToken = jsonDecode(response.body)["accessToken"];
//     }
//     return accessToken;
//   }
//
//   Future<String> loginUserWithFB() async {
//     String accessToken = "";
//     final http.Response response = await http.get(
//       Uri.parse(kAuthFacebook),
//       headers: {
//         "accept": "application/json",
//       },
//     );
//     if (response.statusCode == 200) {
//       accessToken = jsonDecode(response.body)["accessToken"];
//     }
//     return accessToken;
//   }
//
//   Future<String> loginUserWithGoogle() async {
//     String accessToken = "";
//     final http.Response response = await http.get(
//       Uri.parse(kAuthGoogle),
//       headers: {
//         "accept": "application/json",
//       },
//     );
//     if (response.statusCode == 200) {
//       accessToken = jsonDecode(response.body)["accessToken"];
//     }
//     return accessToken;
//   }
//
//   Future<Map<String, dynamic>> getFirstSection() async {
//     Map<String, dynamic> data = {};
//     final http.Response response = await http.get(
//       Uri.parse(kFirstSec),
//       headers: {
//         "accept": "application/json",
//         "Authorization": "Bearer $token",
//       },
//     );
//     if (response.statusCode == 200) {
//       data = jsonDecode(response.body);
//     }
//     return data;
//   }
//
//   Future<Map<String, dynamic>> getAboutInfo() async {
//     Map<String, dynamic> data = {};
//     final http.Response response = await http.get(
//       Uri.parse(kSecondSec),
//       headers: {
//         "accept": "application/json",
//         "Authorization": "Bearer $token",
//       },
//     );
//     if (response.statusCode == 200) {
//       data = jsonDecode(response.body);
//     }
//     return data;
//   }
//
//   Future<List<BetNeedsModel>> getPetsNeedData() async {
//     List<BetNeedsModel> data = List<BetNeedsModel>.empty();
//     final http.Response response = await http.get(
//       Uri.parse(kPetNeeds),
//       headers: {
//         "accept": "application/json",
//         "Authorization": "Bearer $token",
//       },
//     );
//     if (response.statusCode == 200) {
//       data = decodeBetNeedsModelsFromJson(response.body);
//     }
//     return data;
//   }
//
//   Future<List<Pet>> getSpecificCategoryPets(int id) async {
//     List<Pet> data = List<Pet>.empty();
//     final http.Response response = await http.get(
//       Uri.parse("$kSpecificCategory$id$kSharedPets"),
//       headers: {
//         "accept": "application/json",
//         "Authorization": "Bearer $token",
//       },
//     );
//     if (response.statusCode == 200) {
//       data = decodePetsFromJson(response.body);
//     }
//     return data;
//   }
//
//   Future<Filters> getPetFiltersByCategory(int id) async {
//     Filters? data;
//     final http.Response response = await http.get(
//       Uri.parse("$kFilterPets$id"),
//       headers: {
//         "accept": "application/json",
//         "Authorization": "Bearer $token",
//       },
//     );
//     if (response.statusCode == 200) {
//       data = Filters.fromRawJson(response.body);
//     }
//     return data!;
//   }
//
//   Future<String> makePetReq(
//     int categoryId,
//     String img,
//     String loc,
//     String phone,
//   ) async {
//     String data = "";
//     final http.Response response = await http.post(
//       Uri.parse(kRequestPet),
//       headers: {
//         "accept": "application/json",
//         "Content-Type": "application/json",
//         "Authorization": "Bearer $token",
//       },
//       body: json.encode(
//         {
//           "categoryId": categoryId,
//           "imageBase64": img,
//           "location": loc,
//           "phoneNumber": phone,
//         },
//       ),
//     );
//     if (response.statusCode == 200) {
//       data = json.decode(response.body)["message"];
//     }
//     return data;
//   }
//
//   Future<String> addPet(
//     int categoryId,
//     String img,
//     String loc,
//     String phone,
//   ) async {
//     String data = "";
//     final http.Response response = await http.post(
//       Uri.parse(kRequestPet),
//       headers: {
//         "accept": "application/json",
//         "Content-Type": "application/json",
//         "Authorization": "Bearer $token",
//       },
//       body: json.encode(
//         {
//           "categoryId": categoryId,
//           "imageBase64": img,
//           "location": loc,
//           "phoneNumber": phone,
//         },
//       ),
//     );
//     if (response.statusCode == 200) {
//       data = json.decode(response.body)["message"];
//     }
//     return data;
//   }
// }

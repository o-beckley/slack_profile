import 'dart:convert';
import 'package:http/http.dart' as http;

const apiToken = 'xoxb-5525350307635-5859138183205-Uq4Cw0a8WCrvigOpnBtwYsdq';
const url = 'https://slack.com/api/';
const userId = 'U05QUCV1GG7';

// Map<String, dynamic> profile = {};

Future<dynamic> getProfile() async {
  const headers = {'Authorization': 'Bearer $apiToken'};
  var response = await http
      .get(Uri.parse('${url}users.profile.get?user=$userId'), headers: headers);

  var parsedResponse = jsonDecode(response.body);
  return parsedResponse;
}

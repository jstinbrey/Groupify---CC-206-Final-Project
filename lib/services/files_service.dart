import 'dart:io';
import 'package:http/http.dart' as http;
import '../config/api_config.dart';
import 'auth_service.dart';
import 'api_client.dart';
import 'dart:convert';

class FilesService {
  final AuthService _authService = AuthService();
  final ApiClient _apiClient = ApiClient();

  Future<Map<String, dynamic>> uploadFile({
    required File file,
    required String groupId,
    String? description,
  }) async {
    try {
      final token = await _authService.getToken();
      final uri = Uri.parse('${ApiConfig.baseUrl}/files/upload');

      var request = http.MultipartRequest('POST', uri);
      request.headers['Authorization'] = 'Bearer $token';
      request.fields['groupId'] = groupId;
      if (description != null) request.fields['description'] = description;
      request.files.add(await http.MultipartFile.fromPath('file', file.path));

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return json.decode(response.body);
      } else {
        throw Exception('Upload failed');
      }
    } catch (e) {
      throw Exception('Failed to upload file: $e');
    }
  }

  Future<List<dynamic>> getFilesByGroup(String groupId) async {
    final response = await _apiClient.get('/files/group/$groupId');
    return response['files'] ?? [];
  }

  Future<void> deleteFile(String fileId) async {
    await _apiClient.delete('/files/$fileId');
  }
}
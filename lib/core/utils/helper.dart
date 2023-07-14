import 'dart:convert';
import 'dart:io';

import 'package:mime/mime.dart';

bool isImage(String path) {
  final mimeType = lookupMimeType(path);

  return mimeType!.startsWith('image/');
}

Future<String> createFileFromString(String image) async {
  final bytes = base64.decode(image);
  const dir = 'public/cat_image';
  final file = File(
    '$dir/${DateTime.now().millisecondsSinceEpoch}.png',
  );
  print(file);
  await file.writeAsBytes(bytes);

  return file.path.replaceAll('public', '');
}

Future<void> deleteFile(String image) async {
  const dir = 'public';
  final file = File(
    '$dir/$image',
  );
  final data = await file.delete();
  print(data);
}

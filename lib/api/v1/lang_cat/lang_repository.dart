import 'package:auth_pro/core/constant/db_constants.dart';
import 'package:auth_pro/core/database/database.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/core/utils/helper.dart';
import 'package:auth_pro/models/language_cat/language_cat_del_request_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_request_model.dart';
import 'package:auth_pro/models/language_cat/language_list_model.dart';
import 'package:auth_pro/models/language_cat/language_update.dart';
import 'package:auth_pro/models/success/success_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class LangRepository {
  LangRepository({required DatabaseClient databaseClient})
      : _databaseClient = databaseClient;

  final DatabaseClient _databaseClient;

  Future<SuccessModel?> addCategory(LanguageCatRequestModel request) async {
    final imagePath = await createFileFromString(request.image!);
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.langCollection);
        if (request.name == null) {
          throw RequestNotvalid(messege: 'Please Enter Name');
        } else if (request.image == null) {
          throw RequestNotvalid(messege: 'Please Enter Image');
        } else {
          final userModel = LanguageCatRequestModel(
            name: request.name!,
            image: imagePath,
          );

          final response = await langCollection.insertOne(userModel.toJson());
          print(response.isSuccess);
          if (response.isSuccess) {
            return const SuccessModel(message: 'Category added successfully');
          } else {
            throw DataInsertException();
          }
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<SuccessModel?> editCategory(LanguageUpdateModel request) async {
    //final imagePath = await createFileFromString(request.image!);
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.langCollection);
        print(request.id);
        if (request.id == null) {
          throw RequestNotvalid(messege: 'Please Enter ID');
        } else {
          final findedResponse = await langCollection.findOne(
            where.eq(
              '_id',
              ObjectId.parse(request.id!),
            ),
          );
          if (findedResponse != null) {
            final cat = LanguageCatRequestModel.fromJson(findedResponse);
            print(cat.name);
            final response = await langCollection.updateOne(
              where.eq(
                '_id',
                ObjectId.parse(request.id!),
              ),
              {
                r'$set': {
                  'name': request.name ?? cat.name,
                  'image': request.image != null
                      ? await createFileFromString(request.image!)
                      : cat.image
                }
              },
            );
            print(response.isSuccess);
            if (response.isSuccess) {
              return const SuccessModel(
                message: 'Category updated successfully',
              );
            } else {
              throw DataInsertException();
            }
          }
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  Future<LanguageListModel?> getCategory() async {
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.langCollection);

        final response = await langCollection.find().toList();

        return LanguageListModel.fromJson(
          {'msg': 'Category Data', 'data': response},
        );
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<SuccessModel?> deleteCategory(
    LanguageCatDelRequestModel languageCatDelRequestModel,
  ) async {
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.langCollection);
        final responses = await langCollection
            .findOne({'_id': ObjectId.parse(languageCatDelRequestModel.id!)});
        print(responses);
        if (responses == null) {
          throw UserExistsException();
          // return const SuccessModel(message: 'Category deleted successfully');
        } else {
          final response = await langCollection.deleteOne(
            {'_id': ObjectId.parse(languageCatDelRequestModel.id!)},
          );
          await deleteFile(responses['image'].toString());
          if (response.isSuccess) {
            return const SuccessModel(message: 'Category deleted successfully');
          }
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}

import 'package:auth_pro/core/constant/db_constants.dart';
import 'package:auth_pro/core/database/database.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/core/utils/helper.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:auth_pro/models/language_cat/language_cat_del_request_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_request_model.dart';
import 'package:auth_pro/models/language_cat/language_update.dart';
import 'package:auth_pro/models/post/add_post_model.dart';
import 'package:auth_pro/models/post/post_list.dart';
import 'package:auth_pro/models/success/success_model.dart';
import 'package:auth_pro/models/user/user_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class PostRepository {
  PostRepository({required DatabaseClient databaseClient})
      : _databaseClient = databaseClient;

  final DatabaseClient _databaseClient;

  Future<SuccessModel?> add(AddNewsModel request, String accessToken) async {
    final imagePath = await createFileFromString(request.featureImage);
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.postCollection);
        final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);
        if (request.title == null) {
          throw RequestNotvalid(messege: 'Please Enter title');
        } else if (request.featureImage == null) {
          throw RequestNotvalid(messege: 'Please Enter Image');
        } else if (request.categoryId == null) {
          throw RequestNotvalid(messege: 'Please Enter categeory');
        } else if (request.content == null) {
          throw RequestNotvalid(messege: 'Please Enter content');
        } else if (request.languageId == null) {
          throw RequestNotvalid(messege: 'Please Enter LanguageID');
        } else if (request.subtitle == null) {
          throw RequestNotvalid(messege: 'Please Enter Sub title');
        } else {
          final userModel = AddNewsModel(
            title: request.title,
            categoryId: request.categoryId,
            content: request.content,
            interest: request.interest,
            languageId: request.languageId,
            subtitle: request.subtitle,
            likedBy: [],
            addedBy: userId,
            created_at: DateTime.now(),
            featureImage: imagePath,
          );

          final response = await langCollection.insertOne(userModel.toJson());
          print(response.isSuccess);
          if (response.isSuccess) {
            return const SuccessModel(message: 'Post added successfully');
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

  Future<SuccessModel?> addLike(
    String postId,
    String accessToken,
    int type,
  ) async {
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.postCollection);
        final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);
        final isLiked = await langCollection.findOne({'liked_by': userId});
        if (type == 0) {
          if (isLiked == null) {
            final response = await langCollection.updateOne({
              '_id': ObjectId.parse(postId)
            }, {
              r'$push': {'liked_by': userId}
            });
            if (response.isSuccess) {
              return const SuccessModel(message: 'Post liked successfully');
            } else {
              throw DataInsertException();
            }
          } else {
            return const SuccessModel(message: 'Post already liked');
          }
        } else {
          if (isLiked != null) {
            final response = await langCollection.updateOne({
              '_id': ObjectId.parse(postId)
            }, {
              r'$pull': {'liked_by': userId}
            });
            if (response.isSuccess) {
              return const SuccessModel(message: 'Post disliked successfully');
            } else {
              throw DataInsertException();
            }
          } else {
            return const SuccessModel(message: 'Post already disliked');
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

  Future<SuccessModel?> editCategory(LanguageUpdateModel request) async {
    //final imagePath = await createFileFromString(request.image!);
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.postCollection);
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

  Future<PostList?> get(
    String accessToken,
    int currentPage,
    String type,
    String? interest,
  ) async {
    try {
      const no_of_docs_each_page = 5;
      final currentPageNumber = currentPage - 1;

      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);

        final langCollection =
            _databaseClient.db!.collection(DBConstants.postCollection);
        final userCollection =
            _databaseClient.db!.collection(DBConstants.usersCollection);
        final data = [];
        final user = await userCollection.findOne(where.eq('userId', userId));
        if (user != null) {
          final userModel = UserModel.fromJson(user);
          final response = interest?.isEmpty == true
              ? await langCollection
                  .find(
                    where
                        .sortBy(
                          'created_at',
                          descending: type == 'asc' ? true : false,
                        )
                        .eq('language_id', userModel.lang_id)
                        .limit(no_of_docs_each_page)
                        .skip(no_of_docs_each_page * currentPageNumber),
                  )
                  .toList()
              : await langCollection
                  .find(
                    where
                        .sortBy(
                          'created_at',
                          descending: type == 'asc' ? true : false,
                        )
                        .eq('interest', interest)
                        .eq('language_id', userModel.lang_id)
                        .limit(no_of_docs_each_page)
                        .skip(no_of_docs_each_page * currentPageNumber),
                  )
                  .toList();
          final hasMoreData = (currentPageNumber + 1) * no_of_docs_each_page <
              await langCollection.count();

          for (final element in response) {
            data.add(
              {
                '_id': element['_id'].toString(),
                'title': element['title'],
                'subtitle': element['subtitle'],
                'category_id': element['category_id'],
                'feature_image': element['feature_image'],
                'language_id': element['language_id'],
                'content': element['content'],
                'interest': element['interest'],
                'is_liked':
                    await langCollection.findOne({'liked_by': userId}) == null
                        ? false
                        : true,
                'added_by':
                    await userCollection.findOne(where.eq('userId', userId))
              },
            );
          }
          print(data);
          return PostList.fromJson({
            'current_page': currentPage,
            'HasMoreData': hasMoreData,
            'msg': 'Here is Your Data',
            'data': data
          });
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      print(e);
      rethrow;
    }
    return null;
  }

  Future<SuccessModel?> deleteCategory(
    LanguageCatDelRequestModel languageCatDelRequestModel,
  ) async {
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final langCollection =
            _databaseClient.db!.collection(DBConstants.postCollection);
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
          //await deleteFile(responses['image'].toString());
          if (response.isSuccess) {
            return const SuccessModel(message: 'Post deleted successfully');
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

import 'package:auth_pro/api/v1/post/post_repository.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_del_request_model.dart';
import 'package:auth_pro/models/language_cat/language_update.dart';
import 'package:auth_pro/models/post/add_post_model.dart';
import 'package:auth_pro/models/post/post_list.dart';
import 'package:auth_pro/models/success/success_model.dart';
import 'package:dartz/dartz.dart';

class PostService {
  PostService({required PostRepository postRepository})
      : _postRepository = postRepository;

  final PostRepository _postRepository;
  Future<Either<FailureModel, SuccessModel>> add(
    AddNewsModel request,
    String accessToken,
  ) async {
    try {
      final result = await _postRepository.add(request, accessToken);
      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }

  Future<Either<FailureModel, SuccessModel>> addLike(
    String accessToken,
    String postID,
    int type,
  ) async {
    try {
      final result = await _postRepository.addLike(postID, accessToken, type);
      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }

  Future<Either<FailureModel, SuccessModel>> edit(
    LanguageUpdateModel request,
  ) async {
    try {
      final result = await _postRepository.editCategory(request);

      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }

  Future<Either<FailureModel, PostList>> get(
    String auth,
    int currentPage,
    String type,
    String intrest,
  ) async {
    try {
      final result =
          await _postRepository.get(auth, currentPage, type, intrest);
      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }

  Future<Either<FailureModel, SuccessModel>> delete(
    LanguageCatDelRequestModel languageCatDelRequestModel,
  ) async {
    try {
      final result =
          await _postRepository.deleteCategory(languageCatDelRequestModel);
      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException {
      return left(const FailureModel(message: 'No Category Found'));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}

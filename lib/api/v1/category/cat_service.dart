import 'package:auth_pro/api/v1/category/cat_repository.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_del_request_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_request_model.dart';
import 'package:auth_pro/models/language_cat/language_list_model.dart';
import 'package:auth_pro/models/language_cat/language_update.dart';
import 'package:auth_pro/models/success/success_model.dart';
import 'package:dartz/dartz.dart';

class CatService {
  CatService({required CatRepository catRepository})
      : _catRepository = catRepository;

  final CatRepository _catRepository;
  Future<Either<FailureModel, SuccessModel>> add(
    LanguageCatRequestModel request,
  ) async {
    try {
      final result = await _catRepository.addCategory(request);
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
      final result = await _catRepository.editCategory(request);

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

  Future<Either<FailureModel, LanguageListModel>> get() async {
    try {
      final result = await _catRepository.getCategory();
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
          await _catRepository.deleteCategory(languageCatDelRequestModel);
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

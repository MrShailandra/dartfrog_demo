import 'package:auth_pro/api/v1/lang_cat/lang_repository.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_del_request_model.dart';
import 'package:auth_pro/models/language_cat/language_cat_request_model.dart';
import 'package:auth_pro/models/language_cat/language_list_model.dart';
import 'package:auth_pro/models/language_cat/language_update.dart';
import 'package:auth_pro/models/success/success_model.dart';
import 'package:dartz/dartz.dart';

class LangService {
  LangService({required LangRepository langRepository})
      : _langRepository = langRepository;

  final LangRepository _langRepository;
  Future<Either<FailureModel, SuccessModel>> add(
    LanguageCatRequestModel request,
  ) async {
    try {
      final result = await _langRepository.addCategory(request);
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
      final result = await _langRepository.editCategory(request);

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
      final result = await _langRepository.getCategory();
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
          await _langRepository.deleteCategory(languageCatDelRequestModel);
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

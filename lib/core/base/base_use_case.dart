import 'package:equatable/equatable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:task_manager_app/core/error_handling/index.dart';

/// Base class for all use cases
/// [Type] is the return type of the use case
///  [Params] is the type of parameter passed

///
/// For example, if the use case is to get a currency history,
/// then [Type] will be [CurrencyHistoryListEntity] and [Params]
/// will be [CurrencyHistoryRequestEntity]
///

abstract interface class BaseUseCase<Type, Params> {
  /// Executes the use case
  ///
  /// [params] is the parameter to be passed to the use case
  /// Returns the result of the use case
  ///
  /// This is callable class so that it can be called directly
  /// without having to create an instance of the class
  /// example: GetCurrencyListUseCase() instead of GetCurrencyListUseCase().call()
  ///

  Future<Result<Type,Failure >> call(Params params);
}

/// That NoParams class call when there is no any parameter call in any request
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

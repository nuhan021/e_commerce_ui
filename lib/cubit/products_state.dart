abstract class ProductsState {}

class InitialState extends ProductsState {}

class LoadingState extends ProductsState {}

class FatchedDataState extends ProductsState {
  final List<dynamic> productsData;
  FatchedDataState({required this.productsData});
}

class FatchedErrorState extends ProductsState {
  final String msg;
  FatchedErrorState({required this.msg});
}

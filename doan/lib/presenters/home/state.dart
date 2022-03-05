part of 'bloc.dart';


abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}
class Loading extends HomeState {
}

class LoadingSucces extends HomeState {
  final List<Product> product;
  const LoadingSucces({required this.product});
  @override
  List<Object> get props => [product];
  @override
  String toString() => 'ProductLoaded { todos: $product }';
}

class LoadingError extends HomeState {

}

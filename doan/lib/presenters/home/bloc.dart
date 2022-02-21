
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doan/models/product.dart';
import 'package:doan/presenters/home/http_request.dart';
import 'package:equatable/equatable.dart';


part 'event.dart';
part 'state.dart';

class HomeBloc extends Bloc< HomeEvent, HomeState> {
  HomeBloc() : super( const LoadingSucces(product: []));

  late List<Product> _Items = [];
  List<Product> get items => _Items;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {

    if (event is LoadProduct) {
      var api =ApiServices();
      _Items = await api.fetchProduct();
      yield LoadingSucces(product: _Items);
    } else  {
      yield LoadingError();
    }
  }
}

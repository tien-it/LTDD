import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'state.dart';

class bloc extends Bloc<Event, State> {
  bloc() : super(CoreInitial()) {
    on<Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}

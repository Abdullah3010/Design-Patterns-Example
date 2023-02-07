import 'observable.dart';
import 'state.dart';

class Store extends Observable {

  State state = State(state: States.NOITEMS);

  @override
  State getState() {
    return state;
  }

  @override
  void setState(State state) {
    this.state = state;
    notify();
  }

}
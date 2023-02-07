

import 'package:design_pattern/observar_pattern/customer.dart';
import 'package:design_pattern/observar_pattern/state.dart';
import 'package:design_pattern/observar_pattern/store.dart';

void main(List<String> arguments) {
  Store store = Store();
  Customer customer = Customer(store: store);
  store.setState(State(state: States.NOITEMS));
  store.setState(State(state: States.NEWITEMS));
  store.setState(State(state: States.NEWITEMS));
  store.setState(State(state: States.NEWITEMS));
  store.setState(State(state: States.NOITEMS));
}

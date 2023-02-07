import 'observer.dart';
import 'state.dart';
import 'store.dart';

class Customer extends Observer {


  final Store store;
  Customer({required this.store}) {
    observable = store;
    observable.attach(this);
  }



  @override
  void update() {
    if (observable.getState().state == States.NOITEMS) {
      print('No items in store');
    } else {
      print('New items in store');
    }
  }
}

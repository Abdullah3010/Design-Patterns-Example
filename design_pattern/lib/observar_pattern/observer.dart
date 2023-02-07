
import 'observable.dart';

abstract class Observer {
  late Observable observable;
  void update();
}
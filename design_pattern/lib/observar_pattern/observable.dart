
import 'observer.dart';
import 'state.dart';

abstract class Observable {
  List<Observer> observers = [];

  void setState(State state);
  State getState();

  void attach(Observer observer) {
    observers.add(observer);
  }

  void detach(Observer observer) {
    observers.remove(observer);
  }

  void notify(){
    for (var observer in observers) {
      observer.update();
    }
  }
}
import 'package:get/get.dart';

class CounterIncrementController extends GetxController{
  var secondCounter = 0.obs; //obs means observable
  increaseCounterValue(dynamic event){
    // update();
    if(event == EventHandeler.Increment){
      secondCounter.value++;
    }
    else if(event == EventHandeler.Decrement){
      secondCounter.value--;
    }
    else if(event == EventHandeler.reset){
      secondCounter.value = 0;
    }
  }
}

enum EventHandeler{ //enum --> enumeration
  Increment,Decrement,reset
}
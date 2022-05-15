import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:state_management_example/controller/counter_increment_controller.dart';
import 'package:state_management_example/view/second.dart';

class HomePage extends StatelessWidget {
  CounterIncrementController counterIncrementController =
      Get.put(CounterIncrementController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("-----Render widget------");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //todo: GetBuilder
            // GetBuilder<CounterIncrementController>(
            //   builder: (controller) {//object of CounterIncrementController
            //     return Text(
            //         "Counter Value ${controller.counter}",
            //       style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            //     );
            //   }
            // ),
            //todo: GetX
            // GetX<CounterIncrementController>(
            //   builder: (controller) {
            //     return Text(
            //     "Counter Value ${controller.secondCounter}",
            //       style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            //     );
            //   }
            // ),
            //todo: Obx
            Obx(() => Text(
                  "Counter Value ${counterIncrementController.secondCounter.value}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                counterIncrementController.increaseCounterValue(EventHandeler.Increment);
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                counterIncrementController.increaseCounterValue(EventHandeler.Decrement);
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                counterIncrementController.increaseCounterValue(EventHandeler.reset);
              },
              child: Icon(Icons.exposure_zero),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                  Get.to(const SecondPage());
                },
                child: const Text("Second"))
          ],
        ),
      ),

    );
  }
}

import 'package:get/get.dart';
import 'package:todo_getx/app/data/providers/task/provider.dart';
import 'package:todo_getx/app/data/services/storage.dart/repository.dart';
import 'package:todo_getx/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}

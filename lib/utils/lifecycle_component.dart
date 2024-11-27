abstract class ILifecycleComponent {
  void init();

  void dispose();
}

mixin LifecycleComponent implements ILifecycleComponent {
  @override
  void init() {}

  @override
  void dispose() {}
}

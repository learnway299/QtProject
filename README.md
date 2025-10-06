# QtProject
Qt code
# Mac窗口应用系统效果
```cpp
  NSView * view = (__bridge NSView *)reinterpret_cast<void *>(this->winId());
    NSWindow *nsWindow = view.window;
    [nsWindow setCollectionBehavior:NSWindowCollectionBehaviorFullScreenAuxiliary];
```
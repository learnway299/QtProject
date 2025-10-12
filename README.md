# QtProject
Qt code
# Mac窗口应用系统效果
```cpp
  NSView * view = (__bridge NSView *)reinterpret_cast<void *>(this->winId());
    NSWindow *nsWindow = view.window;
    [nsWindow setCollectionBehavior:NSWindowCollectionBehaviorFullScreenAuxiliary];
```
效果
![11.png](https://p0-xtjj-private.juejin.cn/tos-cn-i-73owjymdk6/b189269f5a2c4b1580ab5256c239c5b9~tplv-73owjymdk6-jj-mark-v1:0:0:0:0:5o6Y6YeR5oqA5pyv56S-5Yy6IEAgbGVhcnl1YW4=:q75.awebp?policy=eyJ2bSI6MywidWlkIjoiMjc5Njc3NTMyMjY4Mzk1MCJ9&rk3s=f64ab15b&x-orig-authkey=f32326d3454f2ac7e96d3d06cdbb035152127018&x-orig-expires=1760863183&x-orig-sign=UNRIdATOUfr%2FbrxxzGrdqfry6BU%3D)
![22.png](https://p0-xtjj-private.juejin.cn/tos-cn-i-73owjymdk6/440c430dcd55418d930da52dc99d68f9~tplv-73owjymdk6-jj-mark-v1:0:0:0:0:5o6Y6YeR5oqA5pyv56S-5Yy6IEAgbGVhcnl1YW4=:q75.awebp?policy=eyJ2bSI6MywidWlkIjoiMjc5Njc3NTMyMjY4Mzk1MCJ9&rk3s=f64ab15b&x-orig-authkey=f32326d3454f2ac7e96d3d06cdbb035152127018&x-orig-expires=1760863183&x-orig-sign=QMLlZo1KW7J6nSDWb31oT4zX3So%3D)

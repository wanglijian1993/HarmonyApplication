# 鸿蒙技术
## 工程结构介绍
* AppScope > app.json5：应用的全局配置信息。</br>
* src > main > ets：用于存放ArkTS源码。</br>
* src > main > ets > entryability：应用/服务的入口。</br>
* src > main > ets > pages：应用/服务包含的页面。</br>
* src > main > resources：用于存放应用/服务所用到的资源文件，如图形、多媒体、字符串、布局文件等。关于资源文件，[详见资源分类与访问](https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/resource-categories-and-access-0000001544463977-V2)。</br>
* src > main > module.json5：Stage模型模块配置文件。主要包含HAP包的配置信息、应用/服务在具体设备上的配置信息以及应用/服务的全局配置信息。具体的配置文件说明，[详见module.json5配置文件](https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/module-configuration-file-0000001427744540-V2)。</br>
* build-profile.json5：当前的模块信息、编译信息配置项，包括buildOption、targets配置等。其中targets中可配置当前运行环境，默认为HarmonyOS。</br>
* hvigorfile.ts：模块级编译构建任务脚本，开发者可以自定义相关任务和代码实现</br>

## 组件介绍
* @Component
装饰的自定义组件
* @Entry
定义为入口
* @State
改变组件状态
* @Builder
Builder装饰器,装饰函数，快速生成布局内容，从而可以避免重复的UI描述内容。
* this关键字
引用当前类定义的参数
* ForEach

### UiAbility
1. UiAility是一种包含用户界面的应用组件，用于和用户进行交互UiAbility是系统调度的单元，提供窗口用于界面绘制
2. UiAbility的创建和对应页面的创建
3. UiAbility内页面间的跳转
4. UiAbility的创建，前后台切换，销毁的生命周期状态
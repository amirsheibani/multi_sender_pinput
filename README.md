# EasyUseCamera
# 🌍 About Project
This package for use camera take picture & video for all platform

# 🛠 Built With
- smart_auth: [SmartAuth](https://pub.dev/packages/smart_auth)
- universal_platform: [UniversalPlatform](https://pub.dev/packages/universal_platform)

### source structure :
```
/my_camera
  example/
        lib/
          main.dart
  lib/
    multi_sender_pinput/
                      models/
                      utils/
                      widgets/
        multi_sender_pinput.dart
        pinput.dart    
```

# 🧾 Setting up the project

### Naming

| what | how     | etc    |
| :-------- | :------- | :---------- |
| Classes, enums, typedefs | Pascal Case | ProductBloc  |
| Libraries, packages, directories, and source files names | snake_case | product_detail_view  |
| Variables, constants, parameters, and named parameters | camel Case | variants  |

### Cleaning
[Read this article about clean coding in flutter]("https://medium.com/flutter-community/flutter-best-practices-and-tips-7c2782c9ebb5")
- Create widgets int uikit for common components
- Don't use directly colors or font style, use uikit
- Split widgets into sub Widgets
- Create components package for sub widgets in each features
- Specify types for class member
- Use if condition instead of conditional expression
- Use ?? and ?. operators
- User cascade operators
    ```
    // Don't
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();


    // Do
    var path = Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0)
    ..close();

    ```
- Use Const in Widgets


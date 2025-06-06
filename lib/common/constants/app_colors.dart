import 'dart:ui';

class AppColors {
    AppColors._();
    
    static const Color blue = Color(0XFF3895F3);
    static const Color darkgrey = Color.fromARGB(255, 78, 78, 78);
    static const Color red = Color.fromARGB(255, 213, 0, 0);
    static const Color greenC1 = Color(0xFF63B5AF);
    static const Color greenC2 = Color(0XFF438883);
    static const Color white = Color(0XFFFFFFFF);
    static const Color iceWhite = Color(0XFFEEF8F7);
    static const Color black = Color(0XFF000000);

    static const List<Color> greenGradient = [
        greenC1,
        greenC2,
    ];

    
    static const List<Color> greyGradient = [
        Color.fromARGB(255, 230, 239, 239),
        Color.fromARGB(255, 95, 97, 97),
    ];
  
}
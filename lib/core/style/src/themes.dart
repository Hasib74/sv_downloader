part of '../style.dart';

mixin AppThemes {
  String jostFonts = "Jost";
  static String acmeFonts = "Acme";

  BoxDecoration get _boxDecoration => BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.borderColor,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration boxDecoration(
          {double? borderRadius, Color? borderColor, Color? backGroundColor}) =>
      BoxDecoration(
        color: backGroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(
          borderRadius ?? 20,
        ),
        border: Border.all(
          color: borderColor ?? AppColors.borderColor,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: borderColor ?? AppColors.borderColor,
           spreadRadius: 0.5,
            //offset: const Offset(0, 4),
          ),
        ],
      );

  static void initUiOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryDarkColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData.light(useMaterial3: false).copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        onSecondary: AppColors.secondaryTextColor,
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        titleSmall: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        titleMedium: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        titleLarge: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        labelSmall: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        labelMedium: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        labelLarge: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        displaySmall: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        displayMedium: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
        displayLarge: TextStyle(
          fontFamily: acmeFonts,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryTextColor,
        ),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData.dark(useMaterial3: false).copyWith(
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        onPrimary: AppColors.primaryTextColor,
        onSecondary: AppColors.secondaryTextColor,
      ),
      textTheme: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }
}

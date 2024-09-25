import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class AppConstants{
  // static const apiKeyPayMob="ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SndjbTltYVd4bFgzQnJJam94TURBeE9ESXNJbU5zWVhOeklqb2lUV1Z5WTJoaGJuUWlMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkud2w3aWJpODUwOUd1ek52clVPTHVOYU1ic0hwX0UyWUdMYV9fMEJDbUUwMXJLQV9qSGRHVDRqeVZod3BpdXRrSnIxdWIwaG1IS0s2Y1Bud3BTa0lHb1E=";
  static const apiKeyPayMob="ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2T1RrM05EY3hMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuT21SYzlmTE5tWWFzMFFZcjJoTjMtcnRoVWhjNEtDdklQdVMzQy1DanAzS0RvT2dxbWh3MmNlZ2ZJcURDbi0xQmptUVk3bHBnT1dqQV9GVUtDRzM5cmc=";
static const baseUrl="https://accept.paymob.com/api/";
}
bool checkArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
bool checkDarkMode(context)  {
  var brightness =  Theme.of(context).brightness;
  return brightness == Brightness.dark;
}
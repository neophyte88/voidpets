import 'package:age_calculator/age_calculator.dart';

DateDuration getAge(DateTime date_object) {
  return AgeCalculator.age(date_object);
}

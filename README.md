# automation

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1.https://medium.com/ideas-by-idean/flutter-test-reports-in-cis-current-state-of-art-8968b0c8dd4a


flutter pub get
flutter pub global deactivate junitreport
flutter pub global activate junitreport
flutter test --machine :- working
flutter test test/widget_test.dart --reporter json | tojunit :- working


flutter pub global run junitreport:tojunit --input test_result/test_result.json --output TEST-report.xml




Example :-1
flutter test --machine | tojunit --output <Your output file>.xml

flutter test --machine | tojunit --output TEST-report.xml


junit skipPublishingChecks: true, testResults: TEST-report.xml

echo '{"test-name":"MY_Test"}' >> test_result/test_result.json

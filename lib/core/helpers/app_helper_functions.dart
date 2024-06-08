// import 'dart:developer';
// import 'package:url_launcher/url_launcher.dart';
//
// class AppHelperFunctions {
//   //Singelton Instance
//   static final AppHelperFunctions _instance = AppHelperFunctions._internal();
//
//   factory AppHelperFunctions() => _instance;
//
//   AppHelperFunctions._internal();
//
//   Future<void> launchToPhone({
//     required String phoneNumber,
//   }) async {
//     final Uri smsLaunchUri = Uri(
//       scheme: 'tel',
//       path: '$phoneNumber',
//     );
//     log('The Uri Is $smsLaunchUri');
//     if (!await launchUrl(
//       smsLaunchUri,
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw Exception('Could not launch $smsLaunchUri');
//     }
//   }
//
//   Future<void> launchToSms({
//     required String phoneNumber,
//   }) async {
//     final Uri smsLaunchUri = Uri(
//       scheme: 'sms',
//       path: '$phoneNumber',
//     );
//     log('The Uri Is $smsLaunchUri');
//     if (!await launchUrl(
//       smsLaunchUri,
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw Exception('Could not launch $smsLaunchUri');
//     }
//   }
// }
//
// // Future<void> launchPdf(
// //     {required BuildContext context, required String orderId,}) async {
// //   final Uri baseUri = Uri.parse(
// //     dotenv.get(AppConstantStrings.paymentUrl),
// //   );
// //   final Uri uri = Uri(
// //     scheme: baseUri.scheme,
// //     host: baseUri.host,
// //     path: '${baseUri.path}contract/$orderId',
// //     queryParameters: <String, String>{
// //       'format': 'pdf',
// //     },
// //   );
// //   log('The Uri Is $uri');
// //   if (!await launchUrl(
// //     uri,
// //     mode: LaunchMode.externalApplication,
// //   )) {
// //     if (context.mounted) {
// //       CherryToastManager().error(
// //         context: context,
// //         message: context.l10n.failed_to_open_link,
// //         description: context.l10n.invalid_url_or_network_issues,
// //       );
// //       throw Exception('Could not launch $uri');
// //     }
// //   }
// // }
// //
// // Future<void> shareProject({
// //   required BuildContext context,
// //   required Project project,
// // }) async {
// //   await FlutterShare.share(
// //     title: project.name(context.l10n.localeName),
// //     text: project.description(context.l10n.localeName),
// //     linkUrl: project.shareSmartLink ??
// //         (Platform.isIOS
// //             ? AppConstantStrings.iosShareUrl
// //             : AppConstantStrings.androidShareUrl),
// //   );
// // }

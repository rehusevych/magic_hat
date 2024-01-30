import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticatedWrapperPage extends StatefulWidget {
  const AuthenticatedWrapperPage({Key? key}) : super(key: key);

  @override
  State<AuthenticatedWrapperPage> createState() =>
      _AuthenticatedWrapperPageState();
}

class _AuthenticatedWrapperPageState extends State<AuthenticatedWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: const AutoRouter(),
    );
  }
}


// Notifications logic

// class _NotificationBlocListener extends StatelessWidget {
//   final Widget child;

//   const _NotificationBlocListener({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<NotificationBloc, NotificationState>(
//       listener: (context, state) {
//         state.maybeWhen(
//           orElse: () {},
//           onInitialMessage: (message) {
//             getData(RemoteMessage message) {
//               return {
//                 'title': message.notification?.title,
//                 'body': message.notification?.body,
//               };
//             }

//             final data = message.data.isEmpty ? getData(message) : message.data;
//             context.read<NotificationNavigatorCubit>().selectNotification(data);
//           },
//           onPushNotification: (message) {
//             if (Platform.isAndroid) {
//               context.read<NotificationNavigatorCubit>().showNotification(
//                     message: message,
//                     channelTitle: "Notification",
//                     channelSubtitle: "Subtitle",
//                   );
//             }
//           },
//           onMessageOpenedApp: (message) {
//             getData(RemoteMessage message) {
//               return {
//                 'title': message.notification?.title,
//                 'body': message.notification?.body,
//               };
//             }

//             final data = message.data.isEmpty ? getData(message) : message.data;
//             context.read<NotificationNavigatorCubit>().selectNotification(data);
//           },
//           requestPermissionsStatus: (status) {
//             switch (status) {
//               case AuthorizationStatus.denied:
//                 _showDeniedDialog(
//                   context,
//                   title: "Notification disabled",
//                   subtitle: "Disabled",
//                 );
//                 break;
//               default:
//                 break;
//             }
//           },
//         );
//       },
//       child: child,
//     );
//   }

//   Future<void> _showDeniedDialog(
//     BuildContext context, {
//     required String title,
//     required String subtitle,
//   }) {
//     return showDialog(
//       context: context,
//       builder: (c) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(subtitle),
//           actions: [
//             TextButton(
//               onPressed: context.router.pop,
//               child: const Text("Cancel"),
//             ),
//             TextButton(
//               child: const Text("Settings"),
//               onPressed: () {
//                 AppSettings.openAppSettings();
//                 context.router.pop();
//               },
//             )
//           ],
//         );
//       },
//     );
//   }
// }

// class _ProvideNotificationNavigator extends StatelessWidget {
//   final Widget child;

//   const _ProvideNotificationNavigator({
//     Key? key,
//     required this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<NotificationNavigatorCubit, NotificationNavigatorState>(
//       listener: (context, state) {
//         state.maybeWhen(
//           orElse: () {},
//           navigateToPage: (data) => _onNavigateToPage(context, data: data),
//         );
//       },
//       child: child,
//     );
//   }

//   void _onNavigateToPage(
//     BuildContext context, {
//     required Map<String, dynamic>? data,
//   }) {
//     if (data != null && data.containsKey("requestId")) {
//       final model = NotificationData.fromJson(data);
//       context.router.push(
//         ReadingLoadingRoute(readingId: model.requestId),
//       );
//     }
//   }
//}

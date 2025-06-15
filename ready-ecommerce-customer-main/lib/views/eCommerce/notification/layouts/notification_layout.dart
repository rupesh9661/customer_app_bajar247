import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bajar247/config/theme.dart';
import 'package:bajar247/models/eCommerce/notification/notification.dart';
import 'package:bajar247/views/eCommerce/notification/components/notification_card.dart';

class NotificationLayout extends StatelessWidget {
  const NotificationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors(context).accentColor,
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10.h),
      itemCount: notifications.length,
      itemBuilder: (context, index) => NotificationCard(
        notification: notifications[index],
      ),
    );
  }
}

final List<NotificationModel> notifications = [
  NotificationModel(
    id: 1,
    title: "Welcome to bajar247. Get start explore services",
    message: "Get started",
    type: "info",
    url: "",
    createdAt: "02 May, 2025",
    isRead: true,
  ),
  NotificationModel(
    id: 2,
    title: "Welcome to bajar247",
    message: "Get started explore services",
    type: "info",
    url: "",
    createdAt: "02 May, 2025",
    isRead: false,
  ),
  NotificationModel(
    id: 3,
    title: "Welcome to bajar247",
    message: "Get started",
    type: "info",
    url: "",
    createdAt: "02 May, 2025",
    isRead: true,
  ),
  NotificationModel(
    id: 4,
    title: "Welcome to bajar247",
    message: "Get started",
    type: "info",
    url: "",
    createdAt: "02 May, 2025",
    isRead: true,
  ),
  NotificationModel(
    id: 5,
    title: "Welcome to bajar247",
    message: "Get started",
    type: "info",
    url: "",
    createdAt: "02 May, 2025",
    isRead: true,
  ),
];

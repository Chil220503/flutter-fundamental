import 'package:flutter/material.dart';
import 'basic_widget/loading_cupertino.dart';
import 'basic_widget/text_widget.dart';
import 'basic_widget/image_widget.dart';
import 'basic_widget/floating_action_button.dart';
import 'basic_widget/select_widget.dart';
import 'basic_widget/date_and_time_pickers.dart';
import 'basic_widget/scaffold_widget.dart';
import 'basic_widget/selection_widget.dart';
import 'basic_widget/Login_Screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Chillll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chill -_-")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildListTile(
            context,
            title: "Cupertino Button & Loading",
            icon: Icons.apple,
            widget: const LoadingCupertinoWidget(),
          ),
          _buildListTile(
            context,
            title: "Floating Action Button",
            icon: Icons.add_circle,
            widget: const FloatingActionButtonWidget(),
          ),
           _buildListTile(
            context,
            title: "Text Widget",
            icon: Icons.add_circle,
            widget: const MyTextWidget(),
          ),
          _buildListTile(
            context,
            title: "ImageWidget",
            icon: Icons.image,
            widget: const MyImageWidget(),
          ),
          _buildListTile(
            context,
            title: "Scaffold Widget",
            icon: Icons.dashboard,
            widget: const ScaffoldWidget(),
          ),
          _buildListTile(
            context,
            title: "Dialog Widget",
            icon: Icons.message,
            widget: const DialogWidget(),
          ),
          _buildListTile(
            context,
            title: "Text Field Widget",
            icon: Icons.text_fields,
            widget: const TextFieldWidget(),
          ),
          _buildListTile(
            context,
            title: "Date & Time Picker",
            icon: Icons.date_range,
            widget: const DateTimePickerWidget(),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, {required String title, required IconData icon, required Widget widget}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        ),
      ),
    );
  }
}

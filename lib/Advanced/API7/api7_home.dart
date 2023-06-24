import 'package:api_calling/Advanced/API7/api7_ui.dart';
import 'package:api_calling/Advanced/API7/service_class.dart';
import 'package:api_calling/Advanced/API7/service_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class API7Home extends StatefulWidget {
  const API7Home({super.key});

  @override
  State<API7Home> createState() => _API7HomeState();
}

class _API7HomeState extends State<API7Home> {
  List<ServiceClass>? services;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ServiceProvider>().readService().then(
        (value) {
          if (value.success && value.data != null) {
            services = value.data;
            setState(() {});
          }
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ServiceProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("API-7"),
      ),
      body: provider.isLoadingForService
          ? const Center(child: CircularProgressIndicator())
          : services != null
              ? API7UI(services: services!)
              : const Center(child: Text("ErrorPage")),
    );
  }
}

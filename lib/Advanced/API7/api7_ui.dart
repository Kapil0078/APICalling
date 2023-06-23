import 'package:flutter/material.dart';

class API7UI extends StatelessWidget {
  final List<Map<String, dynamic>> services;
  const API7UI({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services.elementAt(index);
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.orangeAccent.withOpacity(0.1),
              border: Border.all(
                color: Colors.orangeAccent,
                width: 0.75,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Service : ${service['name']}"),
                Text("Price : ${service["price"]}"),
                Text("Service No. : ${service["no"]}"),
                if (service["tax_id"] != null)
                  Text("TaxID : ${service["tax_id"] ?? '--'} "),
                const SizedBox(height: 10),
                const Text("Brands"),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: service["Brand"].length,
                    itemBuilder: (context, i) {
                      final brand = service["Brand"][i];
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orangeAccent.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.orangeAccent,
                            width: 0.75,
                          ),
                        ),
                        child: Text(brand["name"]),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Models"),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: service["Model"].length,
                    itemBuilder: (context, j) {
                      final model = service["Model"][j];
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orangeAccent.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.orangeAccent,
                            width: 0.75,
                          ),
                        ),
                        child: Text(model["name"]),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

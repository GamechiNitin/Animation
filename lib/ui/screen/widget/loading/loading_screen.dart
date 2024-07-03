import 'package:flutter/material.dart';
import 'data/loading_data.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loading',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
            letterSpacing: 0.8,
            // color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: loadingList.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => loadingList[index].navigator,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        loadingList[index].color!,
                        loadingList[index].color2!,
                      ],
                    ),
                  ),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.only(right: 16),
                    title: Text(
                      loadingList[index].name,
                    ),
                    subtitle: Text(
                      loadingList[index].description ?? "",
                      // style: const TextStyle(
                      //   fontWeight: FontWeight.w400,
                      //   wordSpacing: 1,
                      //   letterSpacing: 0.8,
                      // ),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

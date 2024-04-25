import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NetworkPDFViewer()));
                },
                child: const Text('Network PDF')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AssetPDFView()));
                },
                child: const Text('Asset PDF View'))
          ],
        ),
      ),
    );
  }
}

class AssetPDFView extends StatelessWidget {
  const AssetPDFView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset('assets/flutter_course_syllabus.pdf'),
    );
  }
}

class NetworkPDFViewer extends StatelessWidget {
  const NetworkPDFViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.network(
        'https://drive.google.com/uc?export=download&id=1OjVxB3L3v60BIS48ljMtAfWN-Y3G9l6Y');
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_test_app/pdf_export.dart';
import 'package:printing/printing.dart';
import 'model/api_response_model.dart';

class PdfPreviewPage extends StatelessWidget {
  final List<ApiResponseData?>? invoice;
  const PdfPreviewPage({Key? key, required this.invoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(invoice),
      ),
    );
  }
}
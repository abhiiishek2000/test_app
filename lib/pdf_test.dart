

import 'package:flutter/material.dart';
import 'package:new_test_app/data/ApiProvider.dart';
import 'package:new_test_app/pdf_export.dart';
import 'package:new_test_app/pdf_preview.dart';

import 'model/api_response_model.dart';

class PDFTest extends StatefulWidget {
  const PDFTest({Key? key}) : super(key: key);

  @override
  State<PDFTest> createState() => _PDFTestState();
}

class _PDFTestState extends State<PDFTest> {
  List<ApiResponseData?>? data;


  @override
  void initState() {
    getDataFromApi();
    super.initState();
  }

  void getDataFromApi() async{
    ApiResponse apiResponse = await ApiProvider().getData();
    data = apiResponse.data;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf Test"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.picture_as_pdf),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(invoice: data),
            ),
          );

        },
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 16),
          itemCount: data?.length,
          itemBuilder: (BuildContext context, int index){
            ApiResponseData? details = data?[index];
            return Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${details?.uName}"),
                  Text("${details?.uAddress}"),
                  Text('${details?.price}'),
                  Text('${details?.pincode}'),
                ],
              ),
            );
          }),
    );
  }
}

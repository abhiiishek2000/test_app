import 'package:flutter/material.dart';
import 'package:new_test_app/model/category_response.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key,required this.subcat}) : super(key: key);
  final  List<CategoryResponseDataResponseSubcat?>? subcat;

  @override
  _SubCategoryScreenState createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('Subcategories'),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                  itemCount: widget.subcat?.length,
                  itemBuilder: (context,int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        child: ListTile(
                          title: Text('${widget.subcat?[index]?.name}'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:new_test_app/data/ApiProvider.dart';
// import 'package:new_test_app/sub_category.dart';
//
//
// import 'model/category_response.dart';
//
// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({Key? key}) : super(key: key);
//
//   @override
//   _CategoryScreenState createState() => _CategoryScreenState();
// }
//
// class _CategoryScreenState extends State<CategoryScreen> {
//   List<CategoryResponseDataResponse?>? response;
//   @override
//   void initState() {
//     getCategory();
//     super.initState();
//   }
//
//   getCategory() async{
//     CategoryResponse categoryResponse = await ApiProvider().categoryGet();
//     response = categoryResponse.data?.response;
//     setState(() {
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               child: Text("Categories"),
//             ),
//             Expanded(
//               child: GridView.builder(
//                 padding: EdgeInsets.symmetric(horizontal: 48),
//                 itemCount: response?.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisSpacing: 20,
//                       childAspectRatio: 1,
//                       crossAxisSpacing: 20,
//                       crossAxisCount: 2),
//                   itemBuilder: (context, int index){
//                   return InkWell(
//                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SubCategoryScreen(subcat: response?[index]?.subcat,))),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.16),
//                             offset: Offset(0,3),
//                             blurRadius: 6
//                           )
//                         ]
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Image.network("${response?[index]?.image}",height: 50,),
//                           Text("${response?[index]?.name}"),
//                         ],
//                       ),
//                     ),
//                   );
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

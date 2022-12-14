///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CategoryResponseDataResponseSubcatChildcat {
/*
{
  "id": 10,
  "image": "http://previewpro.in/lambosh-new/project/public/uploads/childcategory/hatchbacks/banner/1653753481349220381.jpg",
  "name": "Hatchbacks"
}
*/

  int? id;
  String? image;
  String? name;

  CategoryResponseDataResponseSubcatChildcat({
    this.id,
    this.image,
    this.name,
  });
  CategoryResponseDataResponseSubcatChildcat.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    image = json['image']?.toString();
    name = json['name']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

class CategoryResponseDataResponseSubcat {
/*
{
  "id": 21,
  "image": "http://previewpro.in/lambosh-new/project/public/uploads/subcategory/car/banner/16537428461540654884.jpg",
  "name": "Car",
  "childcat": [
    {
      "id": 10,
      "image": "http://previewpro.in/lambosh-new/project/public/uploads/childcategory/hatchbacks/banner/1653753481349220381.jpg",
      "name": "Hatchbacks"
    }
  ]
}
*/

  int? id;
  String? image;
  String? name;
  List<CategoryResponseDataResponseSubcatChildcat?>? childcat;

  CategoryResponseDataResponseSubcat({
    this.id,
    this.image,
    this.name,
    this.childcat,
  });
  CategoryResponseDataResponseSubcat.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    image = json['image']?.toString();
    name = json['name']?.toString();
    if (json['childcat'] != null) {
      final v = json['childcat'];
      final arr0 = <CategoryResponseDataResponseSubcatChildcat>[];
      v.forEach((v) {
        arr0.add(CategoryResponseDataResponseSubcatChildcat.fromJson(v));
      });
      childcat = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    if (childcat != null) {
      final v = childcat;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['childcat'] = arr0;
    }
    return data;
  }
}

class CategoryResponseDataResponse {
/*
{
  "id": 30,
  "image": "http://previewpro.in/lambosh-new/project/public/uploads/category/automobiles/banner/16537404701550760730.png",
  "name": "Automobiles",
  "subcat": [
    {
      "id": 21,
      "image": "http://previewpro.in/lambosh-new/project/public/uploads/subcategory/car/banner/16537428461540654884.jpg",
      "name": "Car",
      "childcat": [
        {
          "id": 10,
          "image": "http://previewpro.in/lambosh-new/project/public/uploads/childcategory/hatchbacks/banner/1653753481349220381.jpg",
          "name": "Hatchbacks"
        }
      ]
    }
  ]
}
*/

  int? id;
  String? image;
  String? name;
  List<CategoryResponseDataResponseSubcat?>? subcat;

  CategoryResponseDataResponse({
    this.id,
    this.image,
    this.name,
    this.subcat,
  });
  CategoryResponseDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    image = json['image']?.toString();
    name = json['name']?.toString();
    if (json['subcat'] != null) {
      final v = json['subcat'];
      final arr0 = <CategoryResponseDataResponseSubcat>[];
      v.forEach((v) {
        arr0.add(CategoryResponseDataResponseSubcat.fromJson(v));
      });
      subcat = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    if (subcat != null) {
      final v = subcat;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['subcat'] = arr0;
    }
    return data;
  }
}

class CategoryResponseData {
/*
{
  "status": 200,
  "success": true,
  "msg": "List Of all category",
  "response": [
    {
      "id": 30,
      "image": "http://previewpro.in/lambosh-new/project/public/uploads/category/automobiles/banner/16537404701550760730.png",
      "name": "Automobiles",
      "subcat": [
        {
          "id": 21,
          "image": "http://previewpro.in/lambosh-new/project/public/uploads/subcategory/car/banner/16537428461540654884.jpg",
          "name": "Car",
          "childcat": [
            {
              "id": 10,
              "image": "http://previewpro.in/lambosh-new/project/public/uploads/childcategory/hatchbacks/banner/1653753481349220381.jpg",
              "name": "Hatchbacks"
            }
          ]
        }
      ]
    }
  ]
}
*/

  int? status;
  bool? success;
  String? msg;
  List<CategoryResponseDataResponse?>? response;

  CategoryResponseData({
    this.status,
    this.success,
    this.msg,
    this.response,
  });
  CategoryResponseData.fromJson(Map<String, dynamic> json) {
    status = json['status']?.toInt();
    success = json['success'];
    msg = json['msg']?.toString();
    if (json['response'] != null) {
      final v = json['response'];
      final arr0 = <CategoryResponseDataResponse>[];
      v.forEach((v) {
        arr0.add(CategoryResponseDataResponse.fromJson(v));
      });
      response = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['success'] = success;
    data['msg'] = msg;
    if (response != null) {
      final v = response;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['response'] = arr0;
    }
    return data;
  }
}

class CategoryResponse {
/*
{
  "data": {
    "status": 200,
    "success": true,
    "msg": "List Of all category",
    "response": [
      {
        "id": 30,
        "image": "http://previewpro.in/lambosh-new/project/public/uploads/category/automobiles/banner/16537404701550760730.png",
        "name": "Automobiles",
        "subcat": [
          {
            "id": 21,
            "image": "http://previewpro.in/lambosh-new/project/public/uploads/subcategory/car/banner/16537428461540654884.jpg",
            "name": "Car",
            "childcat": [
              {
                "id": 10,
                "image": "http://previewpro.in/lambosh-new/project/public/uploads/childcategory/hatchbacks/banner/1653753481349220381.jpg",
                "name": "Hatchbacks"
              }
            ]
          }
        ]
      }
    ]
  }
}
*/

  CategoryResponseData? data;

  CategoryResponse({
    this.data,
  });
  CategoryResponse.fromJson(Map<String, dynamic> json) {
    data = (json['data'] != null) ? CategoryResponseData.fromJson(json['data']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

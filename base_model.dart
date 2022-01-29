abstract class IBaseModel<T> {
  Map<String, dynamic> toJson();
  List<T> fromJson(String json);
}


/*
extends edilen model içerisinde (CustomerModel)

 @override
  List<CustomerModel> fromJson(String json) {
    return customerModelFromJson(json);
  }
  
  
 List<CustomerModel> customerModelFromJson(String str) =>
    List<CustomerModel>.from(
        json.decode(str).map((x) => CustomerModel.fromJson(x)));
  
*/


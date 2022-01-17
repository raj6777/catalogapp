import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{
  late CatalogModel _catalog;
  final List<int> _ItemIds=[];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog!=null);
    _catalog= newCatalog ;
  }
  List<Item>get items=>_ItemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice => items.fold(0, (total, current) => total+current.price);

  //Add item

//remove item

}
class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._ItemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._ItemIds.remove(item.id);
  }
}



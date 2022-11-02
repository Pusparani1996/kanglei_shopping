
import 'package:hive/hive.dart';
part 'cart_model.g.dart';

@HiveType(typeId: 0)

class CardModel extends HiveObject{

  @HiveField(0)
   final int id;
   @HiveField(1)
   final String itemName;
   @HiveField(2)
   final int actualPrice;
   @HiveField(3)
   final int quatity;
   @HiveField(4)
   final String unitTag;
   @HiveField(5)
   final String image;
 
 CardModel({
  required this.id,
  required this.itemName,
  required this.actualPrice,
  required this.quatity,
  required this.unitTag,
  required this.image
 });

}
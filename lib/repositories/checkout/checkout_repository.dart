import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yumi_food/models/checkout_model.dart';
import 'package:yumi_food/repositories/checkout/base_checkout_repository.dart';

class CheckoutRepository extends BaseCheckoutRepository {
  final FirebaseFirestore _firebaseFirestore;

  // initialize an instance of firebasefirestore
  CheckoutRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<void> addCheckout(Checkout checkout) async {
    //add checkout data into firebasefirestore collections
    await _firebaseFirestore.collection('checkout').add(checkout.toDocument());
  }
}

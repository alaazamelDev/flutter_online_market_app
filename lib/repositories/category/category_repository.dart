import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_market/models/category_model.dart';
import 'package:online_market/repositories/category/base_category_repository.dart';

class CategoryRepository extends BaseCategoryRepository {
  final FirebaseFirestore _firebaseFirestore;

  CategoryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Category>> getAllCategories() {
    return _firebaseFirestore.collection('categories').snapshots().map(
        (snapshot) => snapshot.docs
            .map((document) => Category.fromSnapshot(document))
            .toList());
  }
}

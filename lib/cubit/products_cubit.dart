import 'dart:convert';

import 'package:e_commerce/cubit/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ProductsCubit extends Cubit<ProductsState>{
  ProductsCubit() : super(InitialState()) {
    print('data fatching');
    fatchData();
  }

  Future<void> fatchData() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products'));
    if(response.statusCode == 200) {
      Map<String,dynamic> data = jsonDecode(response.body);
      List<dynamic> allProducts = data['products'];
      emit(FatchedDataState(productsData: allProducts));
    } else {
      emit(FatchedErrorState(msg: 'something error happen'));
    }
  }
}
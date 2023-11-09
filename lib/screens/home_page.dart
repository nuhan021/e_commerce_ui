import 'package:e_commerce/components/drawer.dart';
import 'package:e_commerce/components/products_list.dart';
import 'package:e_commerce/cubit/products_cubit.dart';
import 'package:e_commerce/cubit/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey[600]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart-screen');
                  }, icon: Icon(Icons.shopping_cart_outlined)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'Shop',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pick from a selected list of premium products',
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  width: double.infinity,
                  height: 500,
                  child: BlocBuilder<ProductsCubit, ProductsState>(
                    builder: (context, state) {
                      if(state is FatchedDataState) {
                        List<dynamic> products = state.productsData;
                        return ProductsList(products: products,);
                      } else if(state is FatchedErrorState) {
                        return Center(child: Text(state.msg.toString(),style: TextStyle(color: Colors.redAccent),));
                      } else {
                        return Center(child: CircularProgressIndicator(),);
                      }
                    },
                  )
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'minimal shop',
                      style: TextStyle(color: Colors.grey[600],letterSpacing: 4),
                  ),
                ],
              )
            ],
          ),
        ),
        drawer: AppDrawer());
  }
}

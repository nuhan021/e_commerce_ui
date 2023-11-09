import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              children: [
                DrawerHeader(
                  child: Lottie.asset('assets/animation/drawerShoppingCart.json'),
                ),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.home,color: Colors.grey[500],),
                        SizedBox(width: 15,),
                        Text('SHOP', style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 18,
                            letterSpacing: 5
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/cart-screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.grey[500],),
                          SizedBox(width: 15,),
                          Text('CART', style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 18,
                              letterSpacing: 5
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.settings,color: Colors.grey[500],),
                        SizedBox(width: 15,),
                        Text('SETTINGS', style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 18,
                            letterSpacing: 5
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.info,color: Colors.grey[500],),
                        SizedBox(width: 15,),
                        Text('ABOUT', style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 18,
                            letterSpacing: 5
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ) ,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,bottom: 50),
            child: Row(
              children: [
                IconButton(onPressed: (){

                }, icon: Icon(Icons.logout,color: Colors.grey[500])),
                SizedBox(width: 15,),
                Text('EXIT', style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18,
                    letterSpacing: 5
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}


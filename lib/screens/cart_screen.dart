import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[600]
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Check your cart before checking',style: TextStyle(
                    color: Colors.grey[600],
                  ),),

                  SizedBox(height: 35,),
                  Container(
                    child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 8,right: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            tileColor: Colors.grey[100],
                            leading: Container(
                              height: double.infinity,
                              width: 60,
                              child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.network('https://i.dummyjson.com/data/products/1/thumbnail.jpg',fit: BoxFit.fill,)),
                            ),
                            title: Text('I phone 8', style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),),
                            subtitle: Text('\$450',style: TextStyle(color: Colors.grey[600]),),
                            trailing: Icon(Icons.cancel_outlined, color: Colors.grey[600],),

                          ),
                          SizedBox(height: 10,),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 8,right: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            tileColor: Colors.grey[100],
                            leading: Container(
                              height: double.infinity,
                              width: 60,
                              child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.network('https://i.dummyjson.com/data/products/2/thumbnail.jpg',fit: BoxFit.fill,)),
                            ),
                            title: Text('iPhone X', style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),),
                            subtitle: Text('\$450',style: TextStyle(color: Colors.grey[600]),),
                            trailing: Icon(Icons.cancel_outlined, color: Colors.grey[600],),

                          ),
                          SizedBox(height: 10,),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 8,right: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            tileColor: Colors.grey[100],
                            leading: Container(
                              height: double.infinity,
                              width: 60,
                              child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.network('https://i.dummyjson.com/data/products/3/thumbnail.jpg',fit: BoxFit.fill,)),
                            ),
                            title: Text('amsung Universe 9', style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),),
                            subtitle: Text('\$450',style: TextStyle(color: Colors.grey[600]),),
                            trailing: Icon(Icons.cancel_outlined, color: Colors.grey[600],),

                          ),
                        ]
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border:Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20,left: 60,right: 60),
                child: Text('PAY NOW',style: TextStyle(color: Colors.grey[600],letterSpacing: 5),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

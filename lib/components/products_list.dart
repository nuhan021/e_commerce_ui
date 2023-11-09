import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<dynamic> products;
  const ProductsList({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      separatorBuilder: (context, index) => SizedBox(
        width: 10,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 200,
                            width: double.infinity,
                            child: Image.network(
                          products[index]['thumbnail'],
                              fit: BoxFit.fill,
                        ))),
                    SizedBox(
                      height: 15,
                    ),
                    //title
                    Text(
                      products[index]['title'],
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      products[index]['description'],
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${products[index]['price']}',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.grey[900],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';
class Product_tile extends StatelessWidget {
  final Product prod;
  final VoidCallback? onFavoritePressed;
  final VoidCallback? onAddToCart;
  const Product_tile({
    super.key,
    required this.prod,
    this.onFavoritePressed,
    this.onAddToCart
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
     child: InkWell(
       borderRadius: BorderRadius.circular(8),
       onTap: (){},
       child: Padding(padding: const EdgeInsets.all(8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Stack(
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(8),
                 child: Image.asset('assets/${prod.image}',
                   width: double.infinity,
                   height: 140,
                   fit: BoxFit.cover,
                 ),
               ),
             ],
           ),
           SizedBox(height: 3,),
           Text(
             '${prod.name}',
             style: const TextStyle(
               fontWeight: FontWeight.w700,
               fontFamily: 'Ubuntu',
               fontSize: 14,
             ),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
           ),
           SizedBox(height: 0),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 '₹${prod.price}',
                 style: const TextStyle(
                   fontWeight: FontWeight.w500,
                   fontFamily: 'Ubuntu',
                   fontSize: 13,
                 ),
               ),
        IconButton(onPressed: onFavoritePressed,
        // Optional: Call the parent callback if needed

            icon: Icon(prod.isFav
                ? Icons.favorite
                : Icons.favorite_border,
              color: prod.isFav ? Colors.red : Colors.grey, size: 17,))
             ],
           ),
           SizedBox(height: 1),
           SizedBox(
             width: double.infinity,
             child: OutlinedButton(
               style: OutlinedButton.styleFrom(
                 foregroundColor: Colors.black,
                 side: const BorderSide(color: Colors.black),
                 padding: const EdgeInsets.symmetric(vertical: 8),
               ),
               onPressed: onAddToCart,
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(prod.inCart?'Remove Item':
                     'Add to Cart',
                     style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontFamily: 'Ubuntu',
                       fontSize: 13,
                     ),
                   ),
                   SizedBox(width: 8),
                   Icon(prod.inCart?Icons.delete:Icons.shopping_cart, size: 18,color: Colors.black,),
                 ],
               ),
             ),
           ),
         ],
       ),),
     ),
    );
  }
}

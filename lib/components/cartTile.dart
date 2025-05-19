import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';
//TO correct name overflow
class Carttile extends StatefulWidget {
  final Product prod;
  final VoidCallback onRemove;
  const Carttile({super.key, required this.prod,required this.onRemove});

  @override
  State<Carttile> createState() => _CarttileState();
}

class _CarttileState extends State<Carttile> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    Color col1 = (widget.prod.type == 'men')
        ? Color(0xFF3370AC)
        : (widget.prod.type == 'women')
        ? Color(0xFFC04C7C)
        : (widget.prod.type == 'training')
        ? Color(0xFF993399)
        : Color(0xFF993399);
    Color col2 = (widget.prod.type == 'men')
        ? Color(0xFF004D98)
        : (widget.prod.type == 'women')
        ? Color(0xFFA50044)
        : (widget.prod.type == 'training')
        ? Color(0xFF800080)
        : Color(0xFF800080);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          colors: [Color(0x5FF5F5F5), Color(0x5FF5F5F5)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                colors: [col2, col1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 8, 0, 0),
              child: Text(''),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x5FF5F5F5), Color(0x5FF5F5F5)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: col2,
                      width: 2,
                    ),
                  ),
                  child: Image(
                    image: AssetImage('assets/${widget.prod.image}'),
                    height: 120,
                    width: 90,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.prod.name,
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '₹ ${widget.prod.price}',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            setState(() {
                              if (count == 1) {
                                widget.prod.inCart = !widget.prod.inCart;
                                widget.onRemove();
                              } else {
                                count--;
                              }
                            });
                          },
                        ),
                        Text('$count'),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline),
                          onPressed: () {
                            setState(() => count++);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

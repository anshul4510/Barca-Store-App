import 'package:flutter/material.dart';
import 'package:ecommerce/products/product.dart';
class Carttile extends StatefulWidget {
  final Product prod;
  final VoidCallback onRemove;

  const Carttile({
    super.key,
    required this.prod,
    required this.onRemove,
  });

  @override
  State<Carttile> createState() => _CarttileState();
}

class _CarttileState extends State<Carttile> {
  int count = 1;
  String selectedSize = 'M';
  final List<String> sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    Color col1 = (widget.prod.type == 'men')
        ? const Color(0xFF3370AC)
        : (widget.prod.type == 'women')
        ? const Color(0xFFC04C7C)
        : (widget.prod.type == 'training')
        ? const Color(0xFF993399)
        : const Color(0xFF993399);

    Color col2 = (widget.prod.type == 'men')
        ? const Color(0xFF004D98)
        : (widget.prod.type == 'women')
        ? const Color(0xFFA50044)
        : (widget.prod.type == 'training')
        ? const Color(0xFF800080)
        : const Color(0xFF800080);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        gradient: const LinearGradient(
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
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                colors: [col2, col1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(40, 8, 0, 0),
              child: Text(''),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x5FF5F5F5), Color(0x5FF5F5F5)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
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
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          widget.prod.name,
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '₹ ${widget.prod.price}',
                        style: const TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
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
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() => count++);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            'Size: ',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          DropdownButton<String>(
                            value: selectedSize,
                            items: sizes.map((String size) {
                              return DropdownMenuItem<String>(
                                value: size,
                                child: Text(size),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedSize = newValue!;
                              });
                            },
                            style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

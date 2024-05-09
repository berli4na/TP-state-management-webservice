import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Store API',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(204, 82, 5, 78),
          titleTextStyle: TextStyle(color: Colors.grey),
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner:
          false, // Menghilangkan tanda debug di sudut kanan atas
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Uri myGithubUrl =
      Uri.parse('https://github.com/berli4na/TP-state-management-webservice');
  Future<void> launchGithubUrl() async {
    try {
      await launchUrl(myGithubUrl);
    } catch (err) {}
  }

  final Uri myProductUrl = Uri.parse('https://fakestoreapi.com/products');
  Future<void> launchProductUrl() async {
    try {
      await launchUrl(myProductUrl);
    } catch (err) {}
  }

  final Uri myProductLimitUrl =
      Uri.parse('https://fakestoreapi.com/products?limit=5');
  Future<void> launchProductLimitUrl() async {
    try {
      await launchUrl(myProductLimitUrl);
    } catch (err) {}
  }

  final Uri myProduct1Url = Uri.parse('https://fakestoreapi.com/products');
  Future<void> launchProduct1Url() async {
    try {
      await launchUrl(myProduct1Url);
    } catch (err) {}
  }

  final Uri myProductCategoryUrl =
      Uri.parse('https://fakestoreapi.com/products/categories');
  Future<void> launchProductCategoryUrl() async {
    try {
      await launchUrl(myProductCategoryUrl);
    } catch (err) {}
  }

  final Uri myProductCategory1Url =
      Uri.parse('https://fakestoreapi.com/products/category/jewelery');
  Future<void> launchProductCategory1Url() async {
    try {
      await launchUrl(myProductCategory1Url);
    } catch (err) {}
  }

  final Uri myCartUrl = Uri.parse('https://fakestoreapi.com/carts');
  Future<void> launchCartUrl() async {
    try {
      await launchUrl(myCartUrl);
    } catch (err) {}
  }

  final Uri myUserUrl = Uri.parse('https://fakestoreapi.com/users');
  Future<void> launchUserUrl() async {
    try {
      await launchUrl(myUserUrl);
    } catch (err) {}
  }

  final Uri myCartUserUrl =
      Uri.parse('https://fakestoreapi.com/carts?userId=1');
  Future<void> launchCartUserUrl() async {
    try {
      await launchUrl(myCartUserUrl);
    } catch (err) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print('Logo tapped!');
              },
              child: Image.network(
                'https://fakestoreapi.com/icons/logo.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem(
                  title: 'Home',
                  onTap: () {
                    // Navigasi ke halaman "Home"
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
                NavBarItem(
                  title: 'Docs',
                  onTap: () {
                    // Navigasi ke halaman "Docs"
                    Navigator.pushReplacementNamed(context, '/docs');
                  },
                ),
                NavBarItem(
                  title: 'Github',
                  onTap: () {
                    // Navigasi ke halaman "github"
                    launchGithubUrl();
                  },
                ),
                NavBarItem(
                  title: 'Buy me a Coffee',
                  onTap: () {
                    // Navigasi ke halaman "Buy me a Coffee"
                    Navigator.pushReplacementNamed(context, '/coffee');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(200.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Text(
                          "Fake Store API",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          """Fake store rest API for your e-commerce or
shopping website prototype""",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left, // Atur menjadi rata kiri
                        ),
                        SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            launchGithubUrl();
                          },
                          icon: Icon(
                            Icons.code,
                            color: Colors.white,
                          ),
                          label: Text('View on GitHub',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(204, 82, 5,
                                    78)), // Ubah warna latar belakang sesuai keinginan Anda
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {
                            //navigasi ke docs
                          },
                          icon: Icon(Icons.library_books, color: Colors.white),
                          label: Text('Read Docs',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 188, 199,
                                    34)), // Ubah warna latar belakang sesuai keinginan Anda
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    height: 300,
                    width: 380,
                    child: SvgPicture.network(
                      'https://fakestoreapi.com/icons/intro.svg', // Ganti URL dengan gambar yang sesuai
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height:
                      100), // Spasi antara konten sebelumnya dengan konten baru
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Get tired of Lorem ipsum data?!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Didn't you find any free e-commerce API?!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "fakeStoreApi is a free online REST API that you can use whenever you need Pseudo-real data for your e-commerce or shopping website without running any server-side code. It's awesome for teaching purposes, sample codes, tests, etc.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Example Code",
                    style: TextStyle(
                      color:
                          Color.fromARGB(204, 82, 5, 78), // Warna teks ungu tua
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey[300], // Warna latar belakang abu-abu
                    child: Text(
                      """fetch('https://fakestoreapi.com/products/1')
            .then(res=>res.json())
            .then(json=>console.log(json))""",
                      style: TextStyle(
                        color: Colors.black, // Warna teks hitam
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Try it',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              204, 82, 5, 78)), // Warna latar belakang ungu
                    ),
                  ),
                ],
              ),

              SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text(
                    'Resources',
                    style: TextStyle(
                        color: Color.fromARGB(204, 82, 5, 78),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "There are 4 main resources need in shopping prototypes",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Text(
                          "Products",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProductUrl();
                        },
                      ),
                      Text(
                        "20 products",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Text(
                          "Cart",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchCartUrl();
                        },
                      ),
                      Text(
                        "20 cart item",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Text(
                          "Users",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchUserUrl();
                        },
                      ),
                      Text(
                        "10 users",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Text(
                          "Login Token",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          MyHomePage();
                        },
                      ),
                      Container(
                        padding: EdgeInsets.all(0.0),
                        color: Color.fromARGB(204, 82, 5, 78),
                        child: Text(
                          "New!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View Details on Docs',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              204, 82, 5, 78)), // Warna latar belakang ungu
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text(
                    'Routes',
                    style: TextStyle(
                        color: Color.fromARGB(204, 82, 5, 78),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "All HTTP methods are supported",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/products",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProductUrl();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/products/1",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProduct1Url();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/products/categories",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProductCategoryUrl();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/products/category/jewelry",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProductCategory1Url();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/carts?userId=1",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchCartUserUrl();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GET",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "/products?limit=5",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onTap: () {
                          launchProductLimitUrl();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "POST",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "/products",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PUT",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PATCH",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "/products/1",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PUT",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "/products/1",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View Details on Docs',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(
                              204, 82, 5, 78)), // Warna latar belakang ungu
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     color: Colors.purple[200],
      //     padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           'Connect with Us',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         SizedBox(height: 16),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: Icon(Icons.facebook),
      //               color: Colors.blue,
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: Icon(Icons.email),
      //               color: Colors.red,
      //             ),
      //           ],
      //         ),
      //         SizedBox(height: 16),
      //         Text(
      //           '© 2024 Fake Store API. All rights reserved.',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 14,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  NavBarItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Memanggil fungsi onTap yang telah ditentukan
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

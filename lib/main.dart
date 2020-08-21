import 'package:flutter/material.dart'; // import package

// main adalah fungsi yang pertama kali di jalankan
void main() {
  runApp(HomePage());
  // runApp untuk merender code kedalama screen aplikasi, class homepage akan di eksekusi
}

// mendefinisikan class
class HomePage extends StatelessWidget {
  build(context) {
    // memberikan nilai balik yang berisi Material App dari package yang telah di import di awal code
    return MaterialApp(
        // material app memiliki property home yang berisi sacffold widget, sacffold widget memiliki property app bar untuk membuat bar dari sebuah apk, selain app bar ada juga, BottomBar, FloatingActionButton
        home: Scaffold(
      appBar: AppBar(
        // appbar widget juga memiliki property di anatara nya, title, leading, actions dll
        backgroundColor: Colors.red[800], //merubah warna
        leading: Icon(Icons.home), // untuk menampilkan icons
        title: Text('My First App'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0), // untuk memberikan margin
        // memiliki value sebuah widget container
        child: Column(
          children: <Widget>[
            Row(
              // Row sendiri berarti baris, maka apapun yang diapit oleh class ini akan menggunakan posisi baris atau berderet kesamping (Horizontal)
              children: <Widget>[
                Icon(Icons.archive),
                Text(
                  'Artikel Terbaru',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Card(
              child: Column(
                //Column berarti kolom, maka widget yang berada didalamnya akan tersusun kebawah (Vertical)
                children: <Widget>[
                  // children dari Column() menggunakan lebih dari satu class, dimana masing-masing widget yang digunakan dipisahkan dengan koma (,). Maka dalam hal ini kita menggunakan widget Image.network() untuk mengambil image dari url. Dan Text(), seperti sebelumnya untuk menampilkan sebuah teks.
                  Image.network(
                      'https://flutter.io/images/homepage/header-illustration.png'),
                  Text('Belajar Flutter')
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

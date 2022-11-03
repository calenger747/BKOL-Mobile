// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPerusahaan extends StatefulWidget {
  const ListPerusahaan({super.key});

  @override
  State<ListPerusahaan> createState() => _ListPerusahaanState();
}

class _ListPerusahaanState extends State<ListPerusahaan> {
  final List<Map<String, dynamic>> listPerusahaan = [
    {
      "title": "Rumah Sakit Puri Cinere",
      "alamat":
          "Jl. Maribaya No.1, Pangkalan Jati, Cinere, Kota Depok, Jawa Barat 16514",
      "telp": "0217545488",
      "images": "assets/images/company/rs-puri-cinere.png"
    },
    {
      "title": "RS Sentra Medika Cisalak",
      "alamat": "Jl. Raya Bogor Km. 33 Cisalak- Depok",
      "telp": "(021)8743790",
      "images": "assets/images/company/RSSM-CISALAK.png"
    },
    {
      "title": "PT Karabha Digdaya - Emeralda Golf & Estate",
      "alamat":
          "Jalan Cimanggis Boulevard, Tapos, Kota Depok, Jawa Barat 16953",
      "telp": "(021)8759019",
      "images": "assets/images/company/karabha.png"
    },
    {
      "title": "PT. Tokai Dharma Indonesia",
      "alamat": "Jl. Raya Bogor KM. 29,6  Tugu, Cimanggis Depok 16951",
      "telp": "(021) 29378096",
      "images": "assets/images/company/tokai.png"
    },
    {
      "title": "PT MITRA UTAMA SOLUSI TELEMATIKA",
      "alamat": "GRAHA ADPD JL BUNCIT RAYA NO 101 H PEJATEN",
      "telp": "085966720972",
      "images": "assets/images/company/MUST.png"
    },
    {
      "title": "PT TIKI DEPOK INDONESIA",
      "alamat": "JL. KH M YUSUF blok b no 1",
      "telp": "0217783568",
      "images": "assets/images/company/tiki.png"
    },
    {
      "title": "PT YANMAR DIESEL INDONESIA",
      "alamat": "Jl. Raya Jakarta Bogor KM 34.8 Cilodong- Depok",
      "telp": "(021)8741558",
      "images": "assets/images/company/yanmar.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double height = (size.height - kToolbarHeight - 100) / 2;
    final double width = size.width * 0.6;

    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: ListView(
        // scrollDirection: Axis.vertical,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listPerusahaan.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    elevation: 5.0,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "${listPerusahaan.elementAt(index)['images']}",
                            width: 90,
                            height: 55,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${listPerusahaan.elementAt(index)['title']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${listPerusahaan.elementAt(index)['alamat']}",
                                    maxLines: 7,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.phone_sharp),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                          '${listPerusahaan.elementAt(index)['telp']}'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

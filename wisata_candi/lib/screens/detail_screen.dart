import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //HEADER
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        candi.imageAsset,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ],
              ),
              //INFORMASI
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //INFO ATAS
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          candi.name,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                    //INFO TENGAH
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      //LOKASI
                      children: [
                        const Icon(
                          Icons.place,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Lokasi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${candi.location}'),
                      ],
                    ),
                    Row(
                      //TAHUN DIBUAT
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Dibuat',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${candi.built}'),
                      ],
                    ),
                    Row(
                      //TIPE PERADABAN
                      children: [
                        const Icon(
                          Icons.home,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Tipe',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${candi.type}'),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Divider(
                      color: Colors.deepPurple.shade100,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //INFO BAWAH
                    const Text(
                      'Deskirpsi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      candi.description,
                    ),
                  ],
                ),
              ),
              //DETAIL GALLERY
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Divider(color: Colors.deepPurple.shade100),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Galery',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: candi.imageUrls.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.deepPurple.shade100,
                                    width: 3
                                  )
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: candi.imageUrls[index],
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      width: 120,
                                      height: 120,
                                      color: Colors.deepPurple[50],
                                    ),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Tap untuk memperbesar',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

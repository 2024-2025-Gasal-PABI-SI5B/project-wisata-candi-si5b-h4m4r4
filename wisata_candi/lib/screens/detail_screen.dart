import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //HEADER
          Stack( 
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
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
                    onPressed: (){},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
          //INFORMASI
          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 16,),
            child:Column(
              children: [
              //INFO ATAS
                // const SizedBox(height: 0,
                // ),
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
                      onPressed:(){},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              //INFO TENGAH
                const SizedBox(height: 12,
                ),
                Row(//LOKASI
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
                        style: 
                          TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                    Text(': ${candi.location}'),
                ],
                ),
                Row(//TAHUN DIBUAT
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
                        style: 
                          TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                    Text(': ${candi.built}'),
                ],
                ),
                Row(//TIPE PERADABAN
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
                        style: 
                          TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                    Text(': ${candi.type}'),
                ],
                ),
              //INFO BAWAH

              ],
            ),
          ),
        ],
      ),
    );
  }
}

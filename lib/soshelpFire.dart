import 'package:flutter/material.dart';

class SosHelpFire extends StatelessWidget {
  const SosHelpFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Fire Emergency',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/Untitled design.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + kToolbarHeight,
            ),
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildDivisionContainer(
                  "Dhaka Division",
                  "Dhaka Fire Station: 02-12345678, dhaka@fire.bd\n"
                  "Tejgaon: 02-87654321, tejgaon@fire.bd\n"
                  "Uttara: 02-99887766, uttara@fire.bd\n"
                  "Savar: 02-55443322, savar@fire.bd\n"
                  "Dhamrai: 02-66778899, dhamrai@fire.bd"
                ),
                _buildDivisionContainer(
                  "Chittagong Division",
                  "Chittagong Fire Station: 031-12345678, chittagong@fire.bd\n"
                  "Pahartali: 031-87654321, pahartali@fire.bd\n"
                  "Double Mooring: 031-11223344, doublemooring@fire.bd\n"
                  "Rangunia: 031-44556677, rangunia@fire.bd\n"
                  "Fatikchhari: 031-55667788, fatikchhari@fire.bd"
                ),
                _buildDivisionContainer(
                  "Rajshahi Division",
                  "Rajshahi Fire Station: 0721-12345678, rajshahi@fire.bd\n"
                  "Boalia: 0721-87654321, boalia@fire.bd\n"
                  "Motihar: 0721-99887766, motihar@fire.bd\n"
                  "Puthia: 0721-55667788, puthia@fire.bd\n"
                  "Tanore: 0721-44556677, tanore@fire.bd"
                ),
                _buildDivisionContainer(
                  "Khulna Division",
                  "Khulna Fire Station: 041-12345678, khulna@fire.bd\n"
                  "Sonadanga: 041-87654321, sonadanga@fire.bd\n"
                  "Daulatpur: 041-99887766, daulatpur@fire.bd\n"
                  "Koyra: 041-33445566, koyra@fire.bd\n"
                  "Dumuria: 041-55667788, dumuria@fire.bd"
                ),
                _buildDivisionContainer(
                  "Sylhet Division",
                  "Sylhet Fire Station: 0821-12345678, sylhet@fire.bd\n"
                  "Dakshin Surma: 0821-87654321, dakshin@fire.bd\n"
                  "Jalalabad: 0821-99887766, jalalabad@fire.bd\n"
                  "Beanibazar: 0821-33445566, beanibazar@fire.bd\n"
                  "Golapganj: 0821-55667788, golapganj@fire.bd"
                ),
                _buildDivisionContainer(
                  "Barisal Division",
                  "Barisal Fire Station: 0431-12345678, barisal@fire.bd\n"
                  "Band Road: 0431-87654321, bandroad@fire.bd\n"
                  "Airport: 0431-99887766, airport@fire.bd\n"
                  "Bakerganj: 0431-22334455, bakerganj@fire.bd\n"
                  "Gournadi: 0431-55667788, gournadi@fire.bd"
                ),
                _buildDivisionContainer(
                  "Rangpur Division",
                  "Rangpur Fire Station: 0521-12345678, rangpur@fire.bd\n"
                  "Haragach: 0521-87654321, haragach@fire.bd\n"
                  "Mithapukur: 0521-99887766, mithapukur@fire.bd\n"
                  "Pirganj: 0521-44556677, pirganj@fire.bd\n"
                  "Gangachara: 0521-22334455, gangachara@fire.bd"
                ),
                _buildDivisionContainer(
                  "Mymensingh Division",
                  "Mymensingh Fire Station: 091-12345678, mymensingh@fire.bd\n"
                  "Muktagacha: 091-87654321, muktagacha@fire.bd\n"
                  "Trishal: 091-99887766, trishal@fire.bd\n"
                  "Bhaluka: 091-33445566, bhaluka@fire.bd\n"
                  "Gafargaon: 091-55667788, gafargaon@fire.bd"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivisionContainer(String divisionName, String details) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            divisionName,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            details,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

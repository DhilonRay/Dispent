import 'package:flutter/material.dart';

class SosHelpAmbulance extends StatelessWidget {
  const SosHelpAmbulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Ambulance',
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
                  "Dhaka Medical College Hospital: 02-12345678, dhaka.mch@hospital.bd\n"
                  "Savar Hospital: 02-87654321, savar@hospital.bd\n"
                  "Uttara Hospital: 02-99887766, uttara@hospital.bd\n"
                  "Dhamrai Hospital: 02-55443322, dhamrai@hospital.bd\n"
                  "Sadar Hospital: 02-66778899, sadar@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Chittagong Division",
                  "Chittagong Medical College Hospital: 031-12345678, chittagong.mch@hospital.bd\n"
                  "Pahartali Hospital: 031-87654321, pahartali@hospital.bd\n"
                  "Double Mooring Hospital: 031-11223344, doublemooring@hospital.bd\n"
                  "Fatikchhari Hospital: 031-55667788, fatikchhari@hospital.bd\n"
                  "Rangunia Hospital: 031-44556677, rangunia@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Rajshahi Division",
                  "Rajshahi Medical College Hospital: 0721-12345678, rajshahi.mch@hospital.bd\n"
                  "Boalia Hospital: 0721-87654321, boalia@hospital.bd\n"
                  "Motihar Hospital: 0721-99887766, motihar@hospital.bd\n"
                  "Puthia Hospital: 0721-55667788, puthia@hospital.bd\n"
                  "Tanore Hospital: 0721-44556677, tanore@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Khulna Division",
                  "Khulna Medical College Hospital: 041-12345678, khulna.mch@hospital.bd\n"
                  "Sonadanga Hospital: 041-87654321, sonadanga@hospital.bd\n"
                  "Daulatpur Hospital: 041-99887766, daulatpur@hospital.bd\n"
                  "Koyra Hospital: 041-33445566, koyra@hospital.bd\n"
                  "Dumuria Hospital: 041-55667788, dumuria@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Sylhet Division",
                  "Sylhet Medical College Hospital: 0821-12345678, sylhet.mch@hospital.bd\n"
                  "Dakshin Surma Hospital: 0821-87654321, dakshin@hospital.bd\n"
                  "Jalalabad Hospital: 0821-99887766, jalalabad@hospital.bd\n"
                  "Golapganj Hospital: 0821-55667788, golapganj@hospital.bd\n"
                  "Beanibazar Hospital: 0821-33445566, beanibazar@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Barisal Division",
                  "Barisal Medical College Hospital: 0431-12345678, barisal.mch@hospital.bd\n"
                  "Band Road Hospital: 0431-87654321, bandroad@hospital.bd\n"
                  "Airport Hospital: 0431-99887766, airport@hospital.bd\n"
                  "Bakerganj Hospital: 0431-22334455, bakerganj@hospital.bd\n"
                  "Gournadi Hospital: 0431-55667788, gournadi@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Rangpur Division",
                  "Rangpur Medical College Hospital: 0521-12345678, rangpur.mch@hospital.bd\n"
                  "Haragach Hospital: 0521-87654321, haragach@hospital.bd\n"
                  "Mithapukur Hospital: 0521-99887766, mithapukur@hospital.bd\n"
                  "Pirganj Hospital: 0521-44556677, pirganj@hospital.bd\n"
                  "Gangachara Hospital: 0521-22334455, gangachara@hospital.bd"
                ),
                _buildDivisionContainer(
                  "Mymensingh Division",
                  "Mymensingh Medical College Hospital: 091-12345678, mymensingh.mch@hospital.bd\n"
                  "Muktagacha Hospital: 091-87654321, muktagacha@hospital.bd\n"
                  "Trishal Hospital: 091-99887766, trishal@hospital.bd\n"
                  "Bhaluka Hospital: 091-33445566, bhaluka@hospital.bd\n"
                  "Gafargaon Hospital: 091-55667788, gafargaon@hospital.bd"
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

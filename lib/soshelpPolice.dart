import 'package:flutter/material.dart';

class SosHelpPolice extends StatelessWidget {
  const SosHelpPolice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Police',
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
                  "Dhaka Kotwali: 02-12345678, kotwali@police.bd\n"
                  "Tejgaon: 02-87654321, tejgaon@police.bd\n"
                  "Uttara: 02-99887766, uttara@police.bd\n"
                  "Savar: 02-55443322, savar@police.bd\n"
                  "Dhamrai: 02-66778899, dhamrai@police.bd"
                ),
                _buildDivisionContainer(
                  "Chittagong Division",
                  "Chittagong Kotwali: 031-12345678, kotwali.ctg@police.bd\n"
                  "Pahartali: 031-87654321, pahartali@police.bd\n"
                  "Double Mooring: 031-11223344, doublemooring@police.bd\n"
                  "Rangunia: 031-44556677, rangunia@police.bd\n"
                  "Fatikchhari: 031-55667788, fatikchhari@police.bd"
                ),
                _buildDivisionContainer(
                  "Sylhet Division",
                  "Sylhet Kotwali: 0821-12345678, kotwali.syl@police.bd\n"
                  "Dakshin Surma: 0821-87654321, dakshin@police.bd\n"
                  "Jalalabad: 0821-99887766, jalalabad@police.bd\n"
                  "Beanibazar: 0821-33445566, beanibazar@police.bd\n"
                  "Golapganj: 0821-55667788, golapganj@police.bd"
                ),
                _buildDivisionContainer(
                  "Barisal Division",
                  "Barisal Kotwali: 0431-12345678, kotwali.bar@police.bd\n"
                  "Band Road: 0431-87654321, bandroad@police.bd\n"
                  "Airport: 0431-99887766, airport@police.bd\n"
                  "Bakerganj: 0431-22334455, bakerganj@police.bd\n"
                  "Gournadi: 0431-55667788, gournadi@police.bd"
                ),
                 _buildDivisionContainer(
                  "Rajshahi Division",
                  "Rajshahi Kotwali: 0721-12345678, kotwali.raj@police.bd\n"
                  "Boalia: 0721-87654321, boalia@police.bd\n"
                  "Motihar: 0721-99887766, motihar@police.bd",
                ),
                 _buildDivisionContainer(
                  "Khulna Division",
                  "Khulna Kotwali: 041-12345678, kotwali.khul@police.bd\n"
                  "Sonadanga: 041-87654321, sonadanga@police.bd\n"
                  "Daulatpur: 041-99887766, daulatpur@police.bd",
                ),
                _buildDivisionContainer(
                  "Mymensingh Division",
                  "Mymensingh Kotwali: 091-12345678, kotwali.mym@police.bd\n"
                  "Muktagacha: 091-87654321, muktagacha@police.bd\n"
                  "Trishal: 091-99887766, trishal@police.bd",
                ),
                _buildDivisionContainer(
                  "Rangpur Division",
                  "Rangpur Kotwali: 0521-12345678, kotwali.rang@police.bd\n"
                  "Haragach: 0521-87654321, haragach@police.bd\n"
                  "Mithapukur: 0521-99887766, mithapukur@police.bd",
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

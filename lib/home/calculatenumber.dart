import 'package:flutter/material.dart';

void main() {
  runApp(calsii());
}
class calsii extends StatelessWidget {
  const calsii({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.white),
          centerTitle: true,
          title: const Text('Calculator',style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: const Color(0xff54759E),
        ),
        body: Column(
          children: [
            const SizedBox(height: 155,),
            Center(
              child: Text('$count',style: const TextStyle(fontSize: 76,fontWeight: FontWeight.bold, color: Color(0xff9E9E9E),
              ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count -= 2;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: 157,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('- 2',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count += 2;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: 157,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('+ 2',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 42,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count -= 4;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: 157,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('- 4',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count += 4;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: 157,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('+ 4',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 42,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Container(
                    height: 58,
                    width: 157,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Clear',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
int count = 0;
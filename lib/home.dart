import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "asset/Group 1.png",
                      width: 56,
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset("asset/icon/Vector.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("asset/icon/Vector (1).png"),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("asset/icon/Vector (2).png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('asset/Frame 2.png'),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Popular Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  itemExtent: 85,
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 64,
                          width: 64,
                          child: Image.asset("asset/Ellipse 3.png"),
                        ),
                        Text("Design"),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 85,
                child: ListView.builder(
                  itemExtent: 85,
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 64,
                          width: 64,
                          child: Image.asset("asset/Ellipse 3.png"),
                        ),
                        const Text("T-Shirt"),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Campaign',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text("View more >"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 170,
                  child: ListView.builder(
                    itemExtent: 126,
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 155,
                            width: 126,
                            child: Image.asset("asset/Group 111.png"),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pre-order",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemExtent: 126,
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 210,
                              width: 118,
                              child: Image.asset("asset/Group 117.png"),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flash Sale',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text("View more >"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 290,
                  child: ListView.builder(
                    itemExtent: 146,
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 210,
                            width: 130,
                            child: Image.asset("asset/image.png"),
                          ),
                          Text("Mackbook air"),
                          Text(
                            "2,200",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Just for you',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text("View more >"),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: GridTile(
                          child: Image.asset(
                            "asset/Group 103.png",
                            fit: BoxFit.cover,
                          ),
                          footer: Text(""),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

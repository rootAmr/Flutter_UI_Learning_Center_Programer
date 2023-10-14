import 'package:flutter/material.dart';
import 'package:flutter_application_learning_programer/widgets/description_section.dart';
import 'package:flutter_application_learning_programer/widgets/video_section.dart';

class CourseScreen extends StatefulWidget {
  final String imglist;
  const CourseScreen(this.imglist, {Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideos = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.imglist),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications, size: 28),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 236, 232, 239),
                image: DecorationImage(
                    image: AssetImage("images/${widget.imglist}.png")),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Color.fromARGB(255, 127, 66, 241),
                    size: 40,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "${widget.imglist} Telah Selesai",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Dibuat Oleh Programer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 236, 240),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideos
                        ? Colors.amber
                        : const Color.fromARGB(255, 127, 66, 241),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideos = true;
                        });
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: const Text(
                            "Videos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                  Material(
                    color: isVideos
                        ? const Color.fromARGB(255, 127, 66, 241)
                        : Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideos = false;
                        });
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: const Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            isVideos ? const VideoSection() : const DescribtionSection(),
          ],
        ),
      ),
    );
  }
}

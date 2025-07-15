import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, size: 18),
      ),
      body:ListView.builder(itemBuilder: (context, i){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Divider(color: Color(0xffE9E9ED)),
              Image.asset('assets/images/search_post.png'),
              SizedBox(height: 6),
              Row(
                children: [
                  Image.asset('assets/images/logo.png', height: 36, width: 36),
                  SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A protester carries the Confederate flag after breaching US Capitol security",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff323232),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "5 hours ago    |     News18",
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                            color: Color(0xff464646),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/like.png', height: 24, width: 24),
                  Image.asset('assets/images/bookmark.png', height: 24, width: 24),
                  Image.asset('assets/images/copy.png', height: 24, width: 24),
                  Image.asset('assets/images/send.png', height: 24, width: 24),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}

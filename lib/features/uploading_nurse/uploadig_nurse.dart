import 'package:flutter/material.dart';

class UploadingNurseView extends StatefulWidget {
  const UploadingNurseView({super.key});

  @override
  State<UploadingNurseView> createState() => _UploadingNurseViewState();
}

class _UploadingNurseViewState extends State<UploadingNurseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: ListView(
        children: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UploadSection(
                  text: "Upload Your National ID", imageurl: 'assets/image/broNurse.png'),
              Divider(
                  color: Color(0xff83C5D3),
                  thickness: 1,
                  indent: 80,
                  endIndent: 80),
              UploadSection(
                  text: 'Upload Your certificate', imageurl: 'assets/image/CertificationNurse.png'),
              Divider(
                  color: Color(0xff83C5D3),
                  thickness: 1,
                  indent: 80,
                  endIndent: 80),
              UploadSection(
                  text: 'Upload Your Selfie', imageurl: 'assets/image/selfiNurse.png'),
              SizedBox(
                height: 30,
              ),
              SignUpButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class UploadSection extends StatelessWidget {
  const UploadSection({super.key, required this.text, required this.imageurl});
  final String text, imageurl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Color(0xff000000)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                    Border.all(color: const Color(0xff09448A), width: 2)),
                child: Image.asset(imageurl),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: const Color(0xff084585)),
                onPressed: () {},
                child: const Text(
                  'Upload',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ))
          ],
        ),
      ],
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SizedBox(
        height: 47,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: const Color(0xff084585)),
            onPressed: () {},
            child: const Text(
              'Sign up',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff)),
            )),
      ),
    );
  }
}

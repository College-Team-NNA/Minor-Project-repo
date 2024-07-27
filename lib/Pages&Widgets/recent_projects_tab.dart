import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class RecentProjectsTab extends StatefulWidget {
  const RecentProjectsTab({super.key, required this.size});
  final Size size;
  @override
  State<RecentProjectsTab> createState() => _RecentProjectsTabState();
}

class _RecentProjectsTabState extends State<RecentProjectsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recent Projects",
                style: GoogleFonts.montserrat(
                    color: Theme_req.bio_name,
                    fontWeight: FontWeight.w600,
                    fontSize: Theme_req.Heading_size),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.file_upload_outlined,
                    color: Theme_req.follow_btn,
                    size: 35,
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 16 / 10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: Theme_req.offWhite,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          index % 2 == 0
                              ? "https://s3-alpha-sig.figma.com/img/3c45/cb9a/8539e35f0b212fe576895cf6e968a547?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ACyvwIVqhq5WOolhN2pFao~NiuTox-OypYC3pAisgRRdSc~tzgs~ZwaiXf47L1kS7GnorKWjLSUTn15JsT3woKTD-~zV9E86OMIKgnLtGSwPwAetDrilVtpUtjrwaY1IYS6l0mNXUPct-HQaWl9sxCDUEfIDQ-ewgQuQISg9~B3RoocTM4YaQB5qQRlNHMp6Gu6PEtV4N4dl6ZvD3bnTN2P4PU1fvxdx6KkGz01Eg5muTqfnY1MSdVwAEUnSEpurRX~shKqha358OrSb7o8DQ1YtnikW5uefUbaW8PIb0sTI5B-tXQlIvNJx7QAL7b9qdzL2GRJkTCv9NFBZOJ0uQA__"
                              : "https://s3-alpha-sig.figma.com/img/2308/ab79/3035f11b7481957640ee6b76939f60cd?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XPQnUQt86LutK7BJWMD4-MaFmQwirbsQkm8IFh5ZiOScwnRlkibrgdfWwkkli~bT1eyXjobcS-WB-xBO9oxYqAyRbclTAQUEhL3Xf~z-rwKd8997b40a1JyI7KPZWD7ZXRQRvNSyNRxz2me2fIDSU939GjesQJ9b1ZDN9T26SA7n5P-7v10alM5a99xoY~nwFmM2JCbJjqNgIHfzUC3Yoy4VfYDgRS01vgQsjBbQZDynXD2X0JS9bfTfpCR0-a8B4H~Tfz3WwunrDZdy1MYPoeRFm~sxhM1Z3jFd5IRKNv0UMathXiVynAMjMRtWWbzuSfDfgwGSc-7be9-7Dl13lg__",
                          fit: BoxFit.cover,
                        ),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

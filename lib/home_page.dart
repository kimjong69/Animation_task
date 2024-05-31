import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool light = false;
  final TextEditingController _textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              leading: Container(
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(.3)),
                child: const BackButton(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.red,
              elevation: 0,
              centerTitle: false,
              expandedHeight: 200.0,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('assets/weeknd.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: SLiverPersistentDelegate(),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RichText(
                          text: const TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Read more',
                                    style: TextStyle(color: Colors.red))
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red)),
                              child: const Text(
                                'Outdoor',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red)),
                              child: const Text(
                                'Outdoor',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red)),
                              child: const Text(
                                'Outdoor',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red)),
                              child: const Text(
                                'Outdoor',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 31,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red)),
                              child: const Text(
                                '+1',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Media, docs and links',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: SizedBox(
                  height: 97,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/weeknd.png'))),
                          width: 97,
                          // child: Image.asset('assets/weeknd.png'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Mute Notification',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Switch(
                            value: light,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                light = value;
                              });
                            },
                          )
                        ],
                      ),
                      const ListTile(
                        minTileHeight: 10.0,
                        horizontalTitleGap: 10.0,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Clear chat'),
                        leading: Icon(Icons.delete_forever),
                      ),
                      const ListTile(
                        minTileHeight: 10.0,
                        horizontalTitleGap: 10.0,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Encryption'),
                        leading: Icon(Icons.lock),
                      ),
                      const ListTile(
                        minTileHeight: 10.0,
                        horizontalTitleGap: 10.0,
                        textColor: Colors.red,
                        iconColor: Colors.red,
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Exit Community'),
                        leading: Icon(Icons.exit_to_app),
                      ),
                      const ListTile(
                        minTileHeight: 10.0,
                        horizontalTitleGap: 10.0,
                        textColor: Colors.red,
                        iconColor: Colors.red,
                        contentPadding: EdgeInsets.all(0),
                        title: Text('Report'),
                        leading: Icon(Icons.thumb_down),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              title: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text('Members'),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: AnimSearchBar(
                      helpText: 'Search member',
                      color: Colors.grey[400]!.withOpacity(.3),
                      textFieldColor: Colors.grey[400]!.withOpacity(.3),
                      boxShadow: false,
                      width: 360,
                      textController: _textEditingController,
                      onSuffixTap: () {},
                      onSubmitted: (String str) {}),
                )
              ],
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 18, bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 18,
                              right: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/yashika.png'),
                                ),
                              ),
                              height: 45,
                              width: 45,
                            ),
                          ),
                          const Column(
                            children: [
                              Text(
                                'Yashika',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                '29,India',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          )
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(101, 32),
                          backgroundColor:
                              const Color.fromARGB(255, 239, 69, 111),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                );
              }, childCount: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class SLiverPersistentDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeaderHeight = 100;
  final double minHeaderHeight = kToolbarHeight + 20;
  final double maxImageSize = 65;
  final double minImageSize = 0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = MediaQuery.of(context).size;
    final currentImagePosition = (size.width / 2 - 150);
    final percent = shrinkOffset - 100 / (maxHeaderHeight - 35);
    final currentImageSize =
        (maxImageSize * percent).clamp(minImageSize, maxImageSize);
    final currentButtonPosition = (maxImageSize * percent).clamp(-100.0, 0.0);
    final currentTextPosition = (maxImageSize * percent).clamp(10.0, 120.0);
    final currentTextHeight = (maxImageSize * (1 - percent)).clamp(40, 50);
    final currentShareButtonPosition =
        (maxImageSize * (1 - percent)).clamp(-100.0, 0.0);
    return Container(
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            left: currentButtonPosition,
            top: MediaQuery.of(context).viewPadding.top + 15,
            child: Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(.1)),
              child: const BackButton(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: currentButtonPosition,
            top: MediaQuery.of(context).viewPadding.top + 15,
            child: Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(.1)),
              child: IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) => SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.link,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Invite',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ],
                                        ),
                                        onTap: () {},
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.person_add_alt_1,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Add member',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ],
                                        ),
                                        onTap: () {},
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.group_add_rounded,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Add group',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ],
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ));
                },
              ),
            ),
          ),
          Positioned(
            left: currentImagePosition,
            top: 0,
            bottom: 0,
            child: Container(
              width: currentImageSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/weeknd.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: currentTextPosition,
            top: MediaQuery.of(context).viewPadding.top + 15,
            bottom: 0,
            child: const Text(
              'The Weeknd',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          Positioned(
            left: currentTextPosition,
            top: MediaQuery.of(context).viewPadding.top + currentTextHeight,
            bottom: 0,
            child: const Text(
              'Community • +11K Members',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Positioned(
            right: currentShareButtonPosition,
            top: MediaQuery.of(context).viewPadding.top + 25,
            child: IconButton(
              icon: const Icon(Icons.share, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => maxHeaderHeight;

  @override
  double get minExtent => minHeaderHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}

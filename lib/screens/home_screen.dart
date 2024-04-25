import 'package:flutter/mAteriAl.dArt';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todolist/screens/note_screen.dart';
import 'package:todolist/widget/category_border.dart';
import 'package:todolist/widget/date_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<HomeScreen> {
  bool hidden = true;

  Icon iconsituation = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return getLoginScreenData();
  }

  Widget getLoginScreenData() {
    List<String> textlist = [
      'Product Meeting ',
      'To-do list',
      'Shopping list',
      'Important',
      'Important',
      'shop'
    ];
    List<String> textlistTodo = [
      '''
Review of Previous 
Action Items
Product Development
 Update
User Feedback and Customer Insights
Competitive Analysis
Roadmap Discussion  ''',
      '''Reply to emails
Prepare presentation 
slides for the 
marketing meeting
Conduct research 
on competitor 
products
Schedule and plan customer interviews
Take a break and recharge ''',
      '''Rice
Pasta
Cereal
Yogurt
Cheese
Butter''',
      '''Summarize the
key action items 
identified during
the meeting.
Assign responsible team members and set deadlines for each action item.
Clarify the next steps and ensure everyone is clear on their respective tasks.''',
      '''
Review of Previous 
Action Items
Product Development
 Update
User Feedback and Customer Insights
Competitive Analysis
Roadmap Discussion  ''',
      '''Rice
Pasta
Cereal
Yogurt
Cheese
Butter''',
    ];
    int tedad = textlist.length;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverPadding(padding: EdgeInsets.only(top: 15)),
          SliverAppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 350,
                  height: 58,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: HexColor('#7C7C7C')),
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: HexColor('#F0F0F0'),
                      floatingLabelStyle: TextStyle(color: HexColor('#7C7C7C')),
                      hoverColor: HexColor('#7C7C7C'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: HexColor('#7C7C7C'),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: HexColor('#F0F0F0'),
                        ),
                      ),
                      prefixIconColor: HexColor('7C7C7C'),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      labelText: 'Search for notes',
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: HexColor('#7C7C7C'),
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.notification_add,
                  size: 30,
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                dateWidget(),
                categoryWidget(),
              ],
            ),
          ),
          SliverPadding(
            padding:const  EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(
                    5 / 7,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.greenAccent),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              textlist[index],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 23),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            textlistTodo[index],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: tedad,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteScreen()));
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Grid_Screen2 extends StatefulWidget {
  const Grid_Screen2({super.key});

  @override
  State<Grid_Screen2> createState() => _Grid_Screen2State();
}

class _Grid_Screen2State extends State<Grid_Screen2> {
   List name = ["https://media.istockphoto.com/id/1444255898/photo/firewood-stack-in-front-of-stove.webp?b=1&s=170667a&w=0&k=20&c=kF9PDSK7eXmuioPxe9L9ozpadEMVolBH2Vf4CVUoNRc=","https://media.istockphoto.com/id/1429063396/photo/abstract-background-consisting-of-packs-of-paper-dollars-3d-render.webp?b=1&s=170667a&w=0&k=20&c=RG4-dsEg_VCLG1i_EBed9lMqzeWGv7UGtbb2C-Bd2PU=","https://media.istockphoto.com/id/1455920286/photo/group-of-bottled-juice-beverage-product-in-cardboard-box-package-in-manufacturing-factory.webp?b=1&s=170667a&w=0&k=20&c=KQFkfFB0jU4Tkg9ZQCd_TaU8s6fGxuwKFh3tIr0PSyc=","https://media.istockphoto.com/id/1456566125/photo/money-stack-usa-dollar-banknotes.webp?b=1&s=170667a&w=0&k=20&c=RvuvbHlu75Yhq_t1XvQLKWSRxm424F6B14bfk6xBqxM=","https://media.istockphoto.com/id/1329004325/photo/many-different-stylish-straw-hats-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=Akh0s8c0T6ZQ1KR05PUuH1A2WFoPS2I8WjYDzeiW84c="];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Container(
        child: GridView.builder(
          itemCount: name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (conetxt,int index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CardDetail(ind: name[index],paraindex: index,)));
            },
            child: Card(
              color: Colors.amber,
              child: Image.network("${name[index]}".toString()),
            ),
          );
        }),
      )
      ),
    );
  }
}


class CardDetail extends StatelessWidget {
   CardDetail({super.key,required this.ind,required this.paraindex});
  final String ind;
  final int paraindex;
  List para = [
    "Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph.",
    "A well-organized paragraph supports or develops a single controlling idea, which is expressed in a sentence called the topic sentence. A topic sentence has several important functions: it substantiates or supports an essays thesis statement; it unifies the content of a paragraph and directs the order of the sentences; and it advises the reader of the subject to be discussed and how the paragraph will discuss it. Readers generally look to the first few sentences in a paragraph to determine the subject and perspective of the paragraph. Thats why its often best to put the topic sentence at the very beginning of the paragraph. In some cases, however, its more effective to place another sentence before the topic sentence—for example, a sentence linking the current paragraph to the previous one, or one providing background information.",
    "SCIENTISTS HAVE LEARNED TO SUPPLEMENT THE SENSE OF SIGHT IN NUMEROUS WAYS. In front of the tiny pupil of the eye they put, on Mount Palomar, a great monocle 200 inches in diameter, and with it see 2000 times farther into the depths of space. Or they look through a small pair of lenses arranged as a microscope into a drop of water or blood, and magnify by as much as 2000 diameters the living creatures there, many of which are among mans most dangerous enemies. Or, if we want to see distant happenings on earth, they use some of the previously wasted electromagnetic waves to carry television images which they re-create as light by whipping tiny crystals on a screen with electrons in a vacuum. Or they can bring happenings of long ago and far away as colored motion pictures, by arranging silver atoms and color-absorbing molecules to force light waves into the patterns of original reality. Or if we want to see into the center of a steel casting or the chest of an injured child, they send the information on a beam of penetrating short-wave X rays, and then convert it back into images we can see on a screen or photograph. THUS ALMOST EVERY TYPE OF ELECTROMAGNETIC RADIATION YET DISCOVERED HAS BEEN USED TO EXTEND OUR SENSE OF SIGHT IN SOME WAY.","Repeat key words or phrases. Particularly in paragraphs in which you define or identify an important idea or theory, be consistent in how you refer to it. This consistency and repetition will bind the paragraph together and help your reader understand your definition or description.",
    "Be consistent in point of view, verb tense, and number. Consistency in point of view, verb tense, and number is a subtle but important aspect of coherence. If you shift from the more personal you to the impersonal “one,” from past to present tense, or from “a man” to “they,” for example, you make your paragraph less coherent. Such inconsistencies can also confuse your reader and make your argument more difficult to follow."
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child:Container(
            child: Column(
              children: [
                Image.network("${ind.toString()}"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  child: SingleChildScrollView(child: Text("${para[paraindex]}"))),
                  Container(
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("Bill",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Price"),
                                Text("\$250.89")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total gst"),
                                Text("\$2.00")
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 5,
                            color: Colors.black,
                          ),
                                                 Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payable Amount"),
                                Text("\$269.89")
                              ],
                            ),
                          ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                 Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  child: MaterialButton(onPressed: (){} , height: 50,color: Colors.amber,child: Text("Add To Cart"),))
               
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Stack(
            alignment: AlignmentDirectional.bottomStart,  // Todo: This make second widget (Padding) on bottomEnd for first widget ( Image )
            children:
            [
              Image.asset('images/screen1.png',height: 480,width: double.infinity,fit: BoxFit.cover,),
              Padding(
                padding: EdgeInsets.only(left: 15,bottom: 30),    // Todo: Padding used for Inner sides (( from right and bottom only ))
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fashion Sale",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    MaterialButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed : ()
                      {
                        // Todo: put Logic here ( when you tap on this button, this logic will be operated )
                      },
                      child: Text("Check",style: TextStyle(fontSize: 17,color: Colors.white),),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 400,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),    // Todo: Padding used for Inner sides (( horizontal contain right and left , vertical contain top and bottom ))
            child: ListView.separated(
              scrollDirection: Axis.horizontal,    // Todo: ( Direction of Scroll )) , one of horizontal and vertical , default: Axis.vertical
              itemCount: 4,  // Todo: represent number of widgets on ListView
              // Todo: itemBuilder contain The widget which i will build it (( Product Item ))
              itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Stack(
                      children:
                      [
                        Image.asset('images/man.png',height: 100,width: 125,fit: BoxFit.fill,),
                        // Todo: Image.asset(path) => with local images || images that already saved on Project File , Image.network(url) => get image from Network using its url
                        MaterialButton(
                          onPressed: ()
                          {
                            print("Done!");  // Todo: This command will be operated when I click on this button
                          },
                          color: Colors.red,
                          height: 40,
                          minWidth: 40,
                          child: Text("20%",style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Todo: spaceEvenly => make equal space between each widget
                      children:
                      [
                        // Todo: Icon widget contains : Icon(IconData) => IconData == Icons.icon's name
                        Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                        Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                        Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                        Icon(Icons.favorite,color: Colors.grey,size: 20,),
                        Icon(Icons.favorite,color: Colors.grey,size: 20,),
                        Text("(10)",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 7,),
                    Text("Product's name",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 7,),
                    Text("Product's category",style: TextStyle(),),
                    SizedBox(height: 7,),
                    // Todo: This comment equal using RichText
                    /*
                    Row(
                      children: [
                        Text("15 \$",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black)),
                        SizedBox(width: 10,),
                        Text("10 \$",style: TextStyle(color: Colors.red)),
                      ],
                    ),
                     */
                    // Todo: I can replace RichText with Row with no difference
                    RichText(
                      text: const TextSpan(
                          children:
                          [
                            // Todo: used \$ as in Dart I use $ and after it {} to get the value for variable so I had to put \ before $ to know that i want to use it as a currency
                            TextSpan(text: "15 \$   ",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black)),
                            TextSpan(text: "10 \$ ",style: TextStyle(color: Colors.red)),
                          ]
                      ),
                    )
                  ],
                );
              },
              // Todo: separatorBuilder => Each widget is separated from the other through the widget that I will make for it return
              separatorBuilder : (context,i){
                return SizedBox(width : 10);    // Todo: here i used width argument as products will be shown horizontal
              },
            )
          )
        ],
      ),
    );
  }
}

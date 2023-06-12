import 'package:flutter/material.dart';


void main() {
  runApp(const App());
}



class App extends StatelessWidget{
  const App({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Homepage(),
    );
  }
}




class Homepage extends StatelessWidget{
  const Homepage ({Key? key}):super(key: key);

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }








  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('My Shopping List'),
        actions: [
         IconButton(onPressed:(){
           Mysnackbar("Cart is Empty", context);
         }, icon: Icon(Icons.shopping_cart))
        ],

      ),
      


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),

            ),



            ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Apple"),

                  onTap: (){
                    Mysnackbar("Apple added to cart", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Bananas"),

                  onTap: (){
                    Mysnackbar("Bananas added to cart", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Bread"),

                  onTap: (){
                    Mysnackbar("Bread added to cart", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Milk"),

                  onTap: (){
                    Mysnackbar("Milk added to cart", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Egg"),

                  onTap: (){
                    Mysnackbar("Egg added to cart", context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Coka Cola"),

                  onTap: (){
                    Mysnackbar("Coka Cola added to cart", context);
                  },
                ),
              ],
            )

          ],
        ),


      ),

    );
  }
}







import 'package:flutter/material.dart';
import 'package:weather_app_flutter/presentation/widgets/app_card.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class HourForecastWidget extends AppStateLessWidget {
  const HourForecastWidget({super.key});


  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
   return AspectRatio(
     aspectRatio: 1.6,
     child: AppCard(child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           "Highs 29 to 31°C and Lows 18 to 20°C",
           style: themeData.textTheme.displaySmall?.copyWith(
             fontSize: 16,
           ),
         ),
         SizedBox(height: 10),
         Divider(
           color: Colors.white70,
           thickness: 0.5,
           height: 0.5,
         ),
         SizedBox(height: 10),

         // hourly forecast list
         Flexible(
           child: ListView.builder(
             itemCount: 24,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context, idx) {
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("10 am"),
                     Icon(Icons.sunny),
                     Text("27°",style: themeData.textTheme.titleSmall,),
                     Row(
                       children: [
                         Icon(Icons.water_drop, size: 12),
                         SizedBox(width: 2),
                         Text("30%"),
                       ],
                     )
                   ],
                 ),
               );
             },
           ),
         ),
       ],
     ),),
   );
  }
}

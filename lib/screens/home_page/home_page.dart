
import 'package:assessment/config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final homeCtrl = Get.put(HomeController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorHelper.bg,
      child: GetBuilder<HomeController>(
        builder: (homeCtrl) {
          if(homeCtrl.isLoading){
            return Center(
              child: CircularProgressIndicator(color: ColorHelper.primaryColor,),
            );
          }else{
            return SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: homeCtrl.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      color: ColorHelper.blur,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: CachedNetworkImage(
                                imageUrl: homeCtrl.products[index].image,
                                imageBuilder: (context, imageProvider) => Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => Center(
                                  child: CircularProgressIndicator(color: ColorHelper.primaryColor,)
                                ),
                                errorWidget: (context, url, error) =>const Center(
                                  child: Icon(
                                    Icons.image,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  homeCtrl.products[index].title,
                                  style: AppCss.poppinsH2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                    "\$ ${homeCtrl.products[index].price}",
                                  style: AppCss.poppinsBoldF14,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}

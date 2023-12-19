import '../../../app/index.dart';
import '../../common/app_bar_widget.dart';

class RecipeDetailsView extends StatelessWidget {
  final String name;
  final String cost;

  final String image;
  final double rating;
  final String instructions;
  final String feedback;

  const RecipeDetailsView(
    this.name,
    this.cost,
    this.image,
    this.instructions,
    this.feedback,
    this.rating, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: ColorManager.orange,
      //   child: Icon(
      //     Icons.star,
      //     color: ColorManager.white,
      //   ),
      //   onPressed: () {
      //     //  showCustomModalBottomSheet(context);
      //   },
      // ),
      appBar: buildAppBarWidget(
        title: 'Recipe Details',
        appbarColor: ColorManager.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorManager.grey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      image,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    10.spaceY,
                    Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: ColorManager.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: ColorManager.orange,
                                ),
                                5.spaceX,
                                Text(
                                  '$rating',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ColorManager.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  color: ColorManager.black,
                                ),
                                5.spaceX,
                                Text(
                                  cost,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ColorManager.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    10.spaceY,
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.spaceY,
                    Utils.popinSemBoldText(
                      'Instructions',
                      fontSize: 18.sp,
                    ),
                    Utils.popinSemBoldText(instructions),
                    10.spaceY,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void showCustomModalBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             const Text(
  //               'Rate this Recipe',
  //               style: TextStyle(fontSize: 18),
  //             ),
  //             const SizedBox(height: 16.0),
  //             const TextfieldWidget(hintText: 'Your feedback '),
  //             10.spaceY,
  //             RatingBar.builder(
  //               initialRating: rating,
  //               itemSize: 40,
  //               minRating: 1,
  //               direction: Axis.horizontal,
  //               allowHalfRating: true,
  //               itemCount: 5,
  //               itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
  //               itemBuilder: (context, _) => const Icon(
  //                 Icons.star,
  //                 color: Colors.amber,
  //               ),
  //               onRatingUpdate: (rating) {
  //                 // This won't be called since we're ignoring user interaction
  //               },
  //             ),
  //             const SizedBox(height: 16.0),
  //             AppButton(
  //               onPress: () {
  //                 Navigator.of(context).pop(); // Close the bottom sheet
  //               },
  //               text: ('Submit'),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}

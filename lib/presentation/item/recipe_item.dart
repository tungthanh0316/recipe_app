import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/data/model/recipe_model.dart';

import '../../generated/l10n.dart';
import '../custom/custom_cached_image_widget.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({Key? key, required this.model}) : super(key: key);

  static const String kEmptyString = '';

  final RecipeModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Column(
        children: <Widget>[
          CustomCachedImageWidget(
            imageUrl: model.image,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CustomCachedImageWidget(
                    imageUrl: model.thumb,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${S.of(context).name} ${model.name}'),
                      Text('${S.of(context).carbos} ${model.carbos}'),
                      Text('${S.of(context).calories} ${model.calories}'),
                      Text('${S.of(context).difficulty} ${model.difficulty}'),
                      Text('${S.of(context).fats} ${model.fats}'),
                      Text(
                        '${S.of(context).description} ${model.description}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

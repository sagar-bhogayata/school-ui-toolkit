import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:school_ui_toolkit/src/colors/school_toolkit_colors.dart';
import 'package:school_ui_toolkit/src/font_size/font_size.dart';
import 'package:school_ui_toolkit/src/school_toolkit_card/school_toolkit_card.dart';

class SchoolLocationWidget extends StatelessWidget {
  final String imageURL;
  final String address;
  final String name;

  const SchoolLocationWidget({
    Key key,
    this.imageURL,
    this.address,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SchoolToolkitCard(
      width: 374,
      height: 97,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: ScreenUtil().setHeight(67),
            width: ScreenUtil().setWidth(67),
            child: CachedNetworkImage(
              imageUrl: imageURL,
              width: ScreenUtil().setHeight(67),
              height: ScreenUtil().setWidth(67),
              placeholder: (context, string) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(17),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$name',
                style: TextStyle(
                  fontSize: FontSize.fontSize16,
                  fontWeight: FontSize.bold,
                  color: SchoolToolkitColors.darkBlack,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: SchoolToolkitColors.blue,
                    size: FontSize.fontSize18,
                  ),
                  Text(
                    '$address',
                    style: TextStyle(
                      fontSize: FontSize.fontSize14,
                      color: SchoolToolkitColors.lightBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

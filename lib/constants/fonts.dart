import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get whiteHeadingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white
      )
  );
}

TextStyle get blackHeadingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
      )
  );
}

TextStyle get subHeading1Style{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold
    )
  );
}

TextStyle get subHeading2Style{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
      )
  );
}

TextStyle get subHeading3Style{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
      )
  );
}

TextStyle get subHeading4Style{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white
      )
  );
}

TextStyle get subHeading5Style{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
      )
  );
}

TextStyle get bodyTextStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal
      )
  );
}

TextStyle get bodyBoldTextStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold
      )
  );
}

TextStyle get bodyTextGrayStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal
      ),
      color: Colors.grey[700]
  );
}
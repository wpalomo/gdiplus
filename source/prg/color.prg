//
//
// Francisco Garc�a Fern�ndez 2012 canalfive@gmail.com
//
// CLASE FINALIZADA

#include "fivewin.ch"

/**

   local oColor := Color()
   ...
   local nARGB  := MAKEARGB( 255, 255, 255, 255 )
   local oColor := Color( nARB )
   ...
   local oColor := Color( 255, 0, 0 )
   ...
   local oColor := Color( 255, 255, 255, 255 )

   Los objetos se destruyen cuando pierden �mbito.


   Ejecutar unitarias.exe para antes de montar la librer�a.

*/

function Color( ... )
   local aParams := hb_aparams()
   local oColor
   local nLen := Len( aParams )

   switch nLen
      case 0
         oColor = GPColor():New()
         exit
      case 1
         oColor = GPColor():New( aParams[ 1 ] )
         exit
      case 3
         oColor = GPColor():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
         exit
      case 4
         oColor = GPColor():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ] )
        exit
   endswitch

return oColor


CLASS GPColor

  DATA handle

  METHOD New( nA, nR, nG, nB ) CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD GetA()
  METHOD GetAlpha()
  METHOD GetB()
  METHOD GetBlue()
  METHOD GetG()
  METHOD GetGreen()
  METHOD GetR()
  METHOD GetRed()
  METHOD GetValue()
  METHOD SetFromCOLORREF()
  METHOD SetValue( argbColor )
  METHOD ToCOLORREF()

ENDCLASS

*********************************************************************************************************
  METHOD New( nA, nR, nG, nB ) CLASS GPColor
*********************************************************************************************************

local iParams := PCount()
local handle

   switch iParams
      case 0
         handle = C5_GPColor()
         exit
      case 1
         handle = C5_GPColor( nA )
         exit
      case 3
         handle = C5_GPColor( nA, nR, nG )
         exit
      case 4
         handle = C5_GPColor( nA, nR, nG, nB )
        exit
   endswitch

   ::handle = handle

return self


*********************************************************************************************************
  METHOD Destroy() CLASS GPColor
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetA() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetA(::handle)

*********************************************************************************************************
  METHOD GetAlpha() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetAlpha(::handle)

*********************************************************************************************************
  METHOD GetB() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetB(::handle)

*********************************************************************************************************
  METHOD GetBlue() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetBlue(::handle)

*********************************************************************************************************
  METHOD GetG() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetG(::handle)

*********************************************************************************************************
  METHOD GetGreen() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetGreen(::handle)

*********************************************************************************************************
  METHOD GetR() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetR(::handle)

*********************************************************************************************************
  METHOD GetRed() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetRed(::handle)

*********************************************************************************************************
  METHOD GetValue() CLASS GPColor
*********************************************************************************************************

return C5GPColorGetValue(::handle)

*********************************************************************************************************
  METHOD SetFromCOLORREF( rgbColor ) CLASS GPColor
*********************************************************************************************************

return C5GPColorSetFromCOLORREF(::handle, rgbColor)

*********************************************************************************************************
  METHOD SetValue( argbColor ) CLASS GPColor
*********************************************************************************************************

return C5GPColorSetValue(::handle, argbColor)

*********************************************************************************************************
  METHOD ToCOLORREF() CLASS GPColor
*********************************************************************************************************

return C5GPColorToCOLORREF(::handle)


// Color::GetA               The Color::GetA method gets the alpha component of this Color object.
// Color::GetAlpha       The Color::GetAlpha method gets the alpha component of this Color object.
// Color::GetB               The Color::GetB method gets the blue component of this Color object.
// Color::GetBlue      The Color::GetBlue method gets the blue component of this Color object.
// Color::GetG               The Color::GetG method gets the green component of this Color object.
// Color::GetGreen       The Color::GetGreen method gets the green component of this Color object.
// Color::GetR               The Color::GetR method gets the red component of this Color object.
// Color::GetRed       The Color::GetRed method gets the red component of this Color object.
// Color::GetValue       The Color::GetValue method gets the ARGB value of this Color object.
// Color::MakeARGB       The Color::MakeARGB method creates a 32-bit value that consolidates the specified alpha, red, green, and blue components.
// Color::SetFromCOLORREF    The Color::SetFromCOLORREF method uses a GDICOLORREF value to set the ARGB value of this Color object.
// Color::SetValue       The Color::SetValue method sets the color of this Color object.
// Color::ToCOLORREF       The Color::ToCOLORREF method converts this Color object's ARGB value to a GDICOLORREF value.


#pragma BEGINDUMP
#include <gc.h>


HB_FUNC( C5_GPCOLOR )
{
   Color* clr;
   GDIPLUS *  pObj = gdiplus_new( GP_IT_COLOR );
   int iParams = hb_pcount();

   switch (iParams){
      case 0:
          clr = new Color();
          break;
      case 1:
          clr = new Color( (ARGB) hb_parnl( 1 ) );
          break;
      case 3:
          clr = new Color( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
          break;
      case 4:
          clr = new Color( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
          break;
   }
   GP_SET( pObj, clr );
   hb_GDIPLUS_ret( pObj );
}

HB_FUNC( C5GPCOLORGETA )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetA() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORGETALPHA )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetAlpha() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORGETB )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetB() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPCOLORGETBLUE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetBlue() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPCOLORGETG )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetG() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORGETGREEN )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetGreen() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORGETR )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetR() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORGETRED )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetRed() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPCOLORGETVALUE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retni( clr->GetValue() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORSETFROMCOLORREF )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      clr->SetFromCOLORREF( (COLORREF) hb_parnl( 2 ) );
      hb_ret();
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPCOLORSETVALUE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      clr->SetValue( (ARGB) hb_parnl( 2 ) );
      hb_ret();
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GPCOLORTOCOLORREF )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_COLOR( pObj ) ){
      Color* clr = ( Color * ) GP_GET( pObj );
      hb_retnl( (long) clr->ToCOLORREF() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( MAKEARGB )
{
   hb_retnl( (long) Color::MakeARGB( hb_parnl( 1 ), hb_parnl( 2 ),hb_parnl( 3 ),hb_parnl( 4 ) ));
}


#pragma ENDDUMP





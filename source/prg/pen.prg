#include "fivewin.ch"
#include "gdip.ch"

function Pen( o, nWidth )
return GPPen():New( o, nWidth )

CLASS GPPen

  DATA handle

  METHOD New( o, nWidth )  CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  METHOD Clone( oPen )          CONSTRUCTOR
  METHOD GetAlignment()
  METHOD GetBrush()
  METHOD GetColor( oColor )        // Se le pasa un objeto Color y el m�todo le d� valor
  METHOD GetCompoundArray( aDistances )
  METHOD GetCompoundArrayCount()
  METHOD GetCustomEndCap( oCustomLineCap )
  METHOD GetCustomStartCap( oCustomLineCap )
  METHOD GetDashCap()
  METHOD GetDashOffset()
  METHOD GetDashPattern( aDashPattern )
  METHOD GetDashPatternCount()
  METHOD GetDashStyle()
  METHOD GetEndCap()
  METHOD GetLastStatus()
  METHOD GetLineJoin()
  METHOD GetMiterLimit()
  METHOD GetPenType()
  METHOD GetStartCap()
  METHOD GetTransform()
  METHOD GetWidth()
  METHOD MultiplyTransform()
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetAlignment( PenAlignament )
  METHOD SetBrush( oBrush )
  METHOD SetColor()
  METHOD SetCompoundArray()
  METHOD SetCustomEndCap()
  METHOD SetCustomStartCap()
  METHOD SetDashCap()
  METHOD SetDashOffset()
  METHOD SetDashPattern()
  METHOD SetDashStyle()
  METHOD SetEndCap( linecap )
  METHOD SetLineCap()
  METHOD SetLineJoin()
  METHOD SetMiterLimit()
  METHOD SetStartCap( linecap )
  METHOD SetTransform()
  METHOD SetWidth( nWidth )

ENDCLASS

*********************************************************************************************************
  METHOD New( o, nWidth ) CLASS GPPen
*********************************************************************************************************

local iParams := pcount()

  if o:isKindOf( GPPen() )
     ::handle := GPPenClone( o )             // Clonar un Pen
  elseif o:isKindOf( GPColor() )
     ::handle := GPPenA( o:handle, nWidth )  // Color y ancho
  else
     ::handle := GPPenB( o:handle, nWidth )  // Brush y ancho
  endif

return self

*********************************************************************************************************
  METHOD Clone( oPen ) CLASS GPPen
*********************************************************************************************************

  ::handle := GPPenClone( oPen:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPen
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetAlignment() CLASS GPPen
*********************************************************************************************************

return GPPenSetAlignment( ::handle )

*********************************************************************************************************
  METHOD GetBrush() CLASS GPPen
*********************************************************************************************************

return GPPenGetBrush( ::handle )

*********************************************************************************************************
  METHOD GetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return GPPenGetColor(::handle, oColor:handle )

*********************************************************************************************************
  METHOD GetCompoundArray( a ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCompoundArray( ::handle, a )

*********************************************************************************************************
  METHOD GetCompoundArrayCount() CLASS GPPen
*********************************************************************************************************

return GPPenGetCompoundArrayCount(::handle)

*********************************************************************************************************
  METHOD GetCustomEndCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCustomEndCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetCustomStartCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return GPPenGetCustomStartCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetDashCap() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashCap(::handle)

*********************************************************************************************************
  METHOD GetDashOffset() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashOffset(::handle)

*********************************************************************************************************
  METHOD GetDashPattern( adashArray ) CLASS GPPen
*********************************************************************************************************
local nElements := ::GetDashPatternCount()
local nStatus := Status.GenericError

if nElements > 0
   adashArray := afill(array(nElements),0)
   nStatus := GPPenGetDashPattern( ::handle, @adashArray, nElements )
endif

return nStatus

*********************************************************************************************************
  METHOD GetDashPatternCount() CLASS GPPen
*********************************************************************************************************

return GPPenGetDashPatternCount(::handle)

*********************************************************************************************************
  METHOD GetDashStyle() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetEndCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLineJoin() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetMiterLimit() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPenType() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetWidth() CLASS GPPen
*********************************************************************************************************

return GPPenGetWidth(::handle)

*********************************************************************************************************
  METHOD MultiplyTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetAlignment( PenAlignment ) CLASS GPPen
*********************************************************************************************************

return GPPenSetAlignment( ::handle, PenAlignment )

*********************************************************************************************************
  METHOD SetBrush( oBrush ) CLASS GPPen
*********************************************************************************************************

return GPPenSetBrush( ::handle, oBrush:handle )

*********************************************************************************************************
  METHOD SetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return GPPenSetColor( ::handle, oColor:handle )

*********************************************************************************************************
  METHOD SetCompoundArray() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetCustomEndCap( ) CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetCustomStartCap() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashCap( dashcap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashCap( ::handle, dashcap )

*********************************************************************************************************
  METHOD SetDashOffset() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetDashPattern( dasharray ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashPattern( ::handle, dasharray )

*********************************************************************************************************
  METHOD SetDashStyle( dashStyle ) CLASS GPPen
*********************************************************************************************************

return GPPenSetDashStyle( ::handle, dashStyle )

*********************************************************************************************************
  METHOD SetEndCap( linecap ) CLASS GPPen
*********************************************************************************************************

return GPPenSetEndCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetLineCap( startCap, dashCap, endCap) CLASS GPPen
*********************************************************************************************************

return 0
//return GPPenSetLineCap( ::handle, startCap, endCap, dashCap )

*********************************************************************************************************
  METHOD SetLineJoin( linejoin ) CLASS GPPen
*********************************************************************************************************

return GPPenSetLineJoin( ::handle, linejoin )

*********************************************************************************************************
  METHOD SetMiterLimit() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetStartCap( linecap ) CLASS GPPen
*********************************************************************************************************

return GPPenStartCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetTransform() CLASS GPPen
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetWidth( nWidth ) CLASS GPPen
*********************************************************************************************************

return GPPenSetWidth( ::handle, nWidth )



// Method                                Description
// Pen::Clone                    The Pen::Clone method copies a Pen object.
// Pen::GetAlignment             The Pen::GetAlignment method gets the alignment currently set for this Pen object.
// Pen::GetBrush                 The Pen::GetBrush method gets the Brush object that is currently set for this Pen object.
// Pen::GetColor                 The Pen::GetColor method gets the color currently set for this Pen object.
// Pen::GetCompoundArray         The Pen::GetCompoundArray method gets the compound array currently set for this Pen object.
// Pen::GetCompoundArrayCount    The Pen::GetCompoundArrayCount method gets the number of elements in a compound array.
// Pen::GetCustomEndCap          The Pen::GetCustomEndCap method gets the custom end cap currently set for this Pen object.
// Pen::GetCustomStartCap        The Pen::GetCustomStartCap method gets the custom start cap currently set for this Pen object.
// Pen::GetDashCap               The Pen::GetDashCap method gets the dash cap style currently set for this Pen object.
// Pen::GetDashOffset            The Pen::GetDashOffset method gets the distance from the start of the line to the start of the first space in a dashed line.
// Pen::GetDashPattern           The Pen::GetDashPattern method gets an array of custom dashes and spaces currently set for this Pen object.
// Pen::GetDashPatternCount      The Pen::GetDashPatternCount method gets the number of elements in a dash pattern array.
// Pen::GetDashStyle             The Pen::GetDashStyle method gets the dash style currently set for this Pen object.
// Pen::GetEndCap                The Pen::GetEndCap method gets the end cap currently set for this Pen object.
// Pen::GetLastStatus            The Pen::GetLastStatus method returns a value that indicates the nature of this Pen object's most recent method failure.
// Pen::GetLineJoin              The Pen::GetLineJoin method gets the line join style currently set for this Pen object.
// Pen::GetMiterLimit            The Pen::GetMiterLimit method gets the miter length currently set for this Pen object.
// Pen::GetPenType               The Pen::GetPenType method gets the type currently set for this Pen object.
// Pen::GetStartCap              The Pen::GetStartCap method gets the start cap currently set for this Pen object.
// Pen::GetTransform             The Pen::GetTransform method gets the world transformation matrix currently set for this Pen object.
// Pen::GetWidth                 The Pen::GetWidth method gets the width currently set for this Pen object.
// Pen::MultiplyTransform        The Pen::MultiplyTransform method updates the world transformation matrix of this Pen object with the product of itself and another matrix.
// Pen::ResetTransform           The Pen::ResetTransform method sets the world transformation matrix of this Pen object to the identity matrix.
// Pen::RotateTransform          The Pen::RotateTransform method updates the world transformation matrix of this Pen object with the product of itself and a rotation matrix.
// Pen::ScaleTransform           The Pen::ScaleTransform method sets the Pen object's world transformation matrix equal to the product of itself and a scaling matrix.
// Pen::SetAlignment             The Pen::SetAlignment method sets the alignment for this Pen object relative to the line.
// Pen::SetBrush                 The Pen::SetBrush method sets the Brush object that a pen uses to fill a line.
// Pen::SetColor                 The Pen::SetColor method sets the color for this Pen object.
// Pen::SetCompoundArray         The Pen::SetCompoundArray method sets the compound array for this Pen object.
// Pen::SetCustomEndCap          The Pen::SetCustomEndCap method sets the custom end cap for this Pen object.
// Pen::SetCustomStartCap        The Pen::SetCustomStartCap method sets the custom start cap for this Pen object.
// Pen::SetDashCap               The Pen::SetDashCap method sets the dash cap style for this Pen object.
// Pen::SetDashOffset            The Pen::SetDashOffset method sets the distance from the start of the line to the start of the first dash in a dashed line.
// Pen::SetDashPattern           The Pen::SetDashPattern method sets an array of custom dashes and spaces for this Pen object.
// Pen::SetDashStyle             The Pen::SetDashStyle method sets the dash style for this Pen object.
// Pen::SetEndCap                The Pen::SetEndCap method sets the end cap for this Pen object.
// Pen::SetLineCap               The Pen::SetLineCap method sets the cap styles for the start, end, and dashes in a line drawn with this pen.
// Pen::SetLineJoin              The Pen::SetLineJoin method sets the line join for this Pen object.
// Pen::SetMiterLimit            The Pen::SetMiterLimit method sets the miter limit of this Pen object.
// Pen::SetStartCap              The Pen::SetStartCap method sets the start cap for this Pen object.
// Pen::SetTransform             The Pen::SetTransform method sets the world transformation of this Pen object.
// Pen::SetWidth                 The Pen::SetWidth method sets the width for this Pen object.



#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <hbapiitm.h>
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( GPPENA )
{
   Color* c = (Color*) hb_parptr( 1 );
   Pen* clr = new Pen( *c, (REAL)hb_parnd( 2 ));
   hb_retptr( (void*) clr );

}

HB_FUNC( GPPENB )
{
   Brush* b = (Brush*) hb_parptr( 1 );
   Pen* p = new Pen( b, (REAL) hb_parnd( 2 ));
   hb_retptr( (void*) p );
}


HB_FUNC( DELETEPEN )
{

   Pen* p = (Pen*) hb_parptr( 1 );
   delete (Pen*) p;
   hb_ret();

}


HB_FUNC( GPPENCLONE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retptr( (void*) p->Clone() );
}

HB_FUNC( GPPENGETALIGNMENT )
{
   //enum PenAlignment
   //{
   //    PenAlignmentCenter       = 0,
   //    PenAlignmentInset        = 1
   //};

   Pen* p = (Pen*) hb_parptr( 1 );
   PenAlignment pa = p->GetAlignment();
   hb_retni( pa );
}


HB_FUNC( GPPENGETWIDTH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetWidth() );
}

//   Status SetAlignment(
//     [in]  PenAlignment penAlignment
//   );

HB_FUNC( GPPENSETALIGNMENT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   PenAlignment pa = (PenAlignment) hb_parni( 2 );
   hb_retni( (int) p->SetAlignment( pa ) );

}

// Brush* GetBrush();

HB_FUNC( GPPENGETBRUSH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retptr( (Brush*) p->GetBrush() );
}

// Brush* GetBrush();

HB_FUNC( GPPENGETCOLOR )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Color* c = (Color*) hb_parptr( 2 );
   hb_retni( (int) p->GetColor( c ));
}


// Status GetCompoundArray(
//   [out]  REAL *compoundArray,
//   [in]   INT count
// );

HB_FUNC( GPPENGETCOMPOUNDARRAY )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   int iLen;
   REAL * pReal;
   PHB_ITEM aCompoundArray = hb_param( 2, HB_IT_ARRAY );
   INT j;
   iLen = hb_arrayLen( aCompoundArray );
   pReal = ( REAL * ) hb_xgrab( sizeof( REAL ) * iLen );

   for( j = 0; j < iLen; j++ )
   {
      pReal[ j ] = ( REAL ) hb_arrayGetND( aCompoundArray, j + 1 );
   }

   hb_retni( (int) p->GetCompoundArray( pReal, iLen ) );
   hb_xfree( ( void *) pReal );

}

// INT GetCompoundArrayCount();
HB_FUNC( GPPENGETCOMPOUNDARRAYCOUNT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetCompoundArrayCount() );

}

// Status GetCustomEndCap(
//   [out]  CustomLineCap *customCap
// );
HB_FUNC( GPPENGETCUSTOMENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* ccp = (CustomLineCap*) hb_parptr( 2 );
   hb_parni( (int) p->GetCustomEndCap( ccp ));
}

// Status GetCustomStartCap(
//   [out]  CustomLineCap *customCap
// );
HB_FUNC( GPPENGETCUSTOMSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* ccp = (CustomLineCap*) hb_parptr( 2 );
   hb_parni( (int) p->GetCustomStartCap( ccp ));
}

// DashCap GetDashCap();
HB_FUNC( GPPENGETDASHCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_parni( (int) p->GetDashCap());
}

//  Status SetBrush(
//    [in]  const Brush *brush
//  );
HB_FUNC( GPPENSETBRUSH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Brush* b = (Brush*) hb_parptr( 2 );
   hb_retni( (int) p->SetBrush( b ) );
}

// Status SetDashPattern(
//   [in]  const REAL *dashArray,
//   [in]  INT count
// );

HB_FUNC(GPPENSETDASHPATTERN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   int iLen;
   REAL * pReal;
   PHB_ITEM aDashVals = hb_param( 2, HB_IT_ARRAY );
   INT j;
   iLen = hb_arrayLen( aDashVals );
   pReal = ( REAL * ) hb_xgrab( sizeof( REAL )* iLen );

   for( j = 0; j < iLen; j++ )
   {
      pReal[ j ] = ( REAL ) hb_arrayGetND( aDashVals, j + 1 );
   }

   hb_retni( (int) p->SetDashPattern( pReal, iLen ) );
   hb_xfree( ( void *) pReal );
}

// Status SetDashStyle(
//   [in]  DashStyle dashStyle
// );
HB_FUNC( GPPENSETDASHSTYLE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetDashStyle( (DashStyle) hb_parni( 2 ) ) );
}

// Status SetDashCap(
//   [in]  DashCap dashCap
// );
HB_FUNC( GPPENSETDASHCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetDashCap( (DashCap) hb_parni( 2 ) ) );
}

// REAL GetDashOffset()
HB_FUNC( GPPENGETDASHOFFSET )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashOffset() );
}

//Status GetDashPattern(
//  [out]  REAL *dashArray,
//  [in]   INT count
//);
HB_FUNC( GPPENGETDASHPATTERN )
{
  Pen* p = (Pen*) hb_parptr( 1 );
  int iCount = hb_parni( 3 );
  PHB_ITEM pArray = hb_param( 2, HB_IT_ARRAY );
  REAL * real = ( REAL * ) hb_xgrab( sizeof( REAL ) * iCount );
  int j, iStatus;
  iStatus = p->GetDashPattern( real, iCount );
  for( j = 0; j < iCount; j ++ )
  {
     hb_arraySetND( pArray, j + 1, ( DOUBLE ) real[j] );
  }
  hb_xfree( real );
  hb_storvptr( pArray, 2 );
  hb_itemRelease( pArray );
  hb_retni( iStatus );
}

// INT GetDashPatternCount();
HB_FUNC( GPPENGETDASHPATTERNCOUNT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashPatternCount() );
}

// DashStyle GetDashStyle();
HB_FUNC( GPPENGETDASHSTYLE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetDashStyle() );
}

// LineCap GetEndCap();
HB_FUNC( GPPENGETENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetEndCap() );
}

// Status GetLastStatus();
HB_FUNC( GPPENGETLASTSTATUS )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetLastStatus() );
}

// LineJoin GetLineJoin();
HB_FUNC( GPPENGETLINEJOIN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetLineJoin() );
}

// REAL GetMiterLimit();
HB_FUNC( GPPENGETMITERLIMIT )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retnd( (int) p->GetMiterLimit() );
}

// PenType GetPenType();
HB_FUNC( GPPENGETPENTYPE )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetPenType() );
}

// LineCap GetStartCap();
HB_FUNC( GPPENGETSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->GetStartCap() );
}

// Status GetTransform(
//  [out]  Matrix *matrix
// );
HB_FUNC( GPPENGETTRANSFORM )
{
   //Pen* p = (Pen*) hb_parptr( 1 );


}





// Status SetColor(
//   [in, ref]  const Color &color
// );
HB_FUNC( GPPENSETCOLOR )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   Color* c = (Color*) hb_parptr( 2 );
   hb_retni( (int) p->SetColor( c->GetValue() ) );

}

// Status SetEndCap(
//   [in]  LineCap endCap
// );
HB_FUNC( GPPENSETENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetEndCap( (LineCap) hb_parni( 2 ) ) );
}


// Status SetLineJoin(
//   [in]  LineJoin lineJoin
// );
HB_FUNC( GPPENSETLINEJOIN )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetLineJoin( (LineJoin) hb_parni( 2 ) ) );
}

// Status SetStartCap(
//   [in]  LineCap startCap
// );
HB_FUNC( GPPENSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetStartCap( (LineCap) hb_parni( 2 ) ) );
}

// Status SetWidth(
//   [in]  REAL width
// );
HB_FUNC( GPPENSETWIDTH )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   hb_retni( (int) p->SetWidth( (REAL) hb_parnd( 2 ) ) );
}


#pragma ENDDUMP

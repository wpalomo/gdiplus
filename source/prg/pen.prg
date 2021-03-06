#include "fivewin.ch"

// Method                                Description
// OK, Pen::Clone                    The Pen::Clone method copies a Pen object.
// OK, Pen::GetAlignment             The Pen::GetAlignment method gets the alignment currently set for this Pen object.
// OK, Pen::GetBrush                 The Pen::GetBrush method gets the Brush object that is currently set for this Pen object.
// OK, Pen::GetColor                 The Pen::GetColor method gets the color currently set for this Pen object.
// OK, Pen::GetCompoundArray         The Pen::GetCompoundArray method gets the compound array currently set for this Pen object.
// OK, Pen::GetCompoundArrayCount    The Pen::GetCompoundArrayCount method gets the number of elements in a compound array.
// OK, Pen::GetCustomEndCap          The Pen::GetCustomEndCap method gets the custom end cap currently set for this Pen object.
// OK, Pen::GetCustomStartCap        The Pen::GetCustomStartCap method gets the custom start cap currently set for this Pen object.
// OK, Pen::GetDashCap               The Pen::GetDashCap method gets the dash cap style currently set for this Pen object.
// OK, Pen::GetDashOffset            The Pen::GetDashOffset method gets the distance from the start of the line to the start of the first space in a dashed line.
// OK, Pen::GetDashPattern           The Pen::GetDashPattern method gets an array of custom dashes and spaces currently set for this Pen object.
// OK, Pen::GetDashPatternCount      The Pen::GetDashPatternCount method gets the number of elements in a dash pattern array.
// OK, Pen::GetDashStyle             The Pen::GetDashStyle method gets the dash style currently set for this Pen object.
// OK, Pen::GetEndCap                The Pen::GetEndCap method gets the end cap currently set for this Pen object.
// OK, Pen::GetLastStatus            The Pen::GetLastStatus method returns a value that indicates the nature of this Pen object's most recent method failure.
// OK, Pen::GetLineJoin              The Pen::GetLineJoin method gets the line join style currently set for this Pen object.
// OK, Pen::GetMiterLimit            The Pen::GetMiterLimit method gets the miter length currently set for this Pen object.
// OK, Pen::GetPenType               The Pen::GetPenType method gets the type currently set for this Pen object.
// OK, Pen::GetStartCap              The Pen::GetStartCap method gets the start cap currently set for this Pen object.
// OK, Pen::GetTransform             The Pen::GetTransform method gets the world transformation matrix currently set for this Pen object.
// OK, Pen::GetWidth                 The Pen::GetWidth method gets the width currently set for this Pen object.
// OK, Pen::MultiplyTransform        The Pen::MultiplyTransform method updates the world transformation matrix of this Pen object with the product of itself and another matrix.
// OK, Pen::ResetTransform           The Pen::ResetTransform method sets the world transformation matrix of this Pen object to the identity matrix.
// OK, Pen::RotateTransform          The Pen::RotateTransform method updates the world transformation matrix of this Pen object with the product of itself and a rotation matrix.
// OK, Pen::ScaleTransform           The Pen::ScaleTransform method sets the Pen object's world transformation matrix equal to the product of itself and a scaling matrix.
// OK, Pen::SetAlignment             The Pen::SetAlignment method sets the alignment for this Pen object relative to the line.
// OK, Pen::SetBrush                 The Pen::SetBrush method sets the Brush object that a pen uses to fill a line.
// OK, Pen::SetColor                 The Pen::SetColor method sets the color for this Pen object.
// OK, Pen::SetCompoundArray         The Pen::SetCompoundArray method sets the compound array for this Pen object.
// OK, Pen::SetCustomEndCap          The Pen::SetCustomEndCap method sets the custom end cap for this Pen object.
// OK, Pen::SetCustomStartCap        The Pen::SetCustomStartCap method sets the custom start cap for this Pen object.
// OK, Pen::SetDashCap               The Pen::SetDashCap method sets the dash cap style for this Pen object.
// OK, Pen::SetDashOffset            The Pen::SetDashOffset method sets the distance from the start of the line to the start of the first dash in a dashed line.
// OK, Pen::SetDashPattern           The Pen::SetDashPattern method sets an array of custom dashes and spaces for this Pen object.
// OK, Pen::SetDashStyle             The Pen::SetDashStyle method sets the dash style for this Pen object.
// OK, Pen::SetEndCap                The Pen::SetEndCap method sets the end cap for this Pen object.
// OK, Pen::SetLineCap               The Pen::SetLineCap method sets the cap styles for the start, end, and dashes in a line drawn with this pen.
// OK, Pen::SetLineJoin              The Pen::SetLineJoin method sets the line join for this Pen object.
// OK, Pen::SetMiterLimit            The Pen::SetMiterLimit method sets the miter limit of this Pen object.
// OK, Pen::SetStartCap              The Pen::SetStartCap method sets the start cap for this Pen object.
// OK, Pen::SetTransform             The Pen::SetTransform method sets the world transformation of this Pen object.
// OK, Pen::SetWidth                 The Pen::SetWidth method sets the width for this Pen object.



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
  METHOD GetTransform(matrix)
  METHOD GetWidth()
  METHOD MultiplyTransform(matrix, order)
  METHOD ResetTransform()
  METHOD RotateTransform()
  METHOD ScaleTransform()
  METHOD SetAlignment( PenAlignament )
  METHOD SetBrush( oBrush )
  METHOD SetColor( )
  METHOD SetCompoundArray()
  METHOD SetCustomEndCap()
  METHOD SetCustomStartCap()
  METHOD SetDashCap()
  METHOD SetDashOffset()
  METHOD SetDashPattern(dasharray)
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
     ::handle := ::Clone( o )                // Clonar un Pen
  else
     ::handle := C5_GPPen( o:handle, nWidth )
  endif

return self

*********************************************************************************************************
  METHOD Clone( oPen ) CLASS GPPen
*********************************************************************************************************

  ::handle := C5GPPenClone( oPen:handle )

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPPen
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD GetAlignment() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetAlignment( ::handle )

*********************************************************************************************************
  METHOD GetBrush() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetBrush( ::handle )

*********************************************************************************************************
  METHOD GetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetColor(::handle, @oColor )

*********************************************************************************************************
  METHOD GetCompoundArray( compoundarray ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetCompoundArray( ::handle, @compoundarray )

*********************************************************************************************************
  METHOD GetCompoundArrayCount( ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetCompoundArrayCount(::handle)

*********************************************************************************************************
  METHOD GetCustomEndCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetCustomEndCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetCustomStartCap( oCustomLineCap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetCustomStartCap(::handle, oCustomLineCap:handle )

*********************************************************************************************************
  METHOD GetDashCap() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetDashCap(::handle)

*********************************************************************************************************
  METHOD GetDashOffset() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetDashOffset(::handle)

*********************************************************************************************************
  METHOD GetDashPattern( adashArray ) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetDashPattern( ::handle, @adashArray )

*********************************************************************************************************
  METHOD GetDashPatternCount() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetDashPatternCount(::handle)

*********************************************************************************************************
  METHOD GetDashStyle() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetDashStyle(::handle)

*********************************************************************************************************
  METHOD GetEndCap() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetEndCap(::handle)

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetLastStatus(::handle)

*********************************************************************************************************
  METHOD GetLineJoin() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetLineJoin(::handle)

*********************************************************************************************************
  METHOD GetMiterLimit() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetMiterLimit(::handle)

*********************************************************************************************************
  METHOD GetPenType() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetPenType(::handle)

*********************************************************************************************************
  METHOD GetStartCap() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetStartCap(::handle)

*********************************************************************************************************
  METHOD GetTransform(matrix) CLASS GPPen
*********************************************************************************************************

return C5GPPenGetTransform(::handle, @matrix)

*********************************************************************************************************
  METHOD GetWidth() CLASS GPPen
*********************************************************************************************************

return C5GPPenGetWidth(::handle)

*********************************************************************************************************
  METHOD MultiplyTransform(matrix, order) CLASS GPPen
*********************************************************************************************************

return C5GPPenMultiplyTransform(::handle,matrix:handle,order)

*********************************************************************************************************
  METHOD ResetTransform() CLASS GPPen
*********************************************************************************************************

return C5GPPenResetTransform(::handle)

*********************************************************************************************************
  METHOD RotateTransform() CLASS GPPen
*********************************************************************************************************

return C5GPPenRotateTransform(::handle)

*********************************************************************************************************
  METHOD ScaleTransform() CLASS GPPen
*********************************************************************************************************

return C5GPPenScaleTransform(::handle)

*********************************************************************************************************
  METHOD SetAlignment( PenAlignment ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetAlignment( ::handle, PenAlignment )

*********************************************************************************************************
  METHOD SetBrush( oBrush ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetBrush( ::handle, oBrush:handle )

*********************************************************************************************************
  METHOD SetColor( oColor ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetColor( ::handle, oColor:handle )

*********************************************************************************************************
  METHOD SetCompoundArray( acompoundArray ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetCompoundArray(::handle, acompoundArray )

*********************************************************************************************************
  METHOD SetCustomEndCap( customlinecap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetCustomEndCap(::handle, customlinecap:handle)

*********************************************************************************************************
  METHOD SetCustomStartCap( customlinecap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetCustomStartCap(::handle, customlinecap:handle )

*********************************************************************************************************
  METHOD SetDashCap( dashcap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetDashCap( ::handle, dashcap )

*********************************************************************************************************
  METHOD SetDashOffset( n ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetDashOffset(::handle, n )

*********************************************************************************************************
  METHOD SetDashPattern( dasharray ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetDashPattern( ::handle, dasharray )

*********************************************************************************************************
  METHOD SetDashStyle( dashStyle ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetDashStyle( ::handle, dashStyle )

*********************************************************************************************************
  METHOD SetEndCap( linecap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetEndCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetLineCap( startCap, dashCap, endCap) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetLineCap( ::handle, startCap, endCap, dashCap )

*********************************************************************************************************
  METHOD SetLineJoin( linejoin ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetLineJoin( ::handle, linejoin )

*********************************************************************************************************
  METHOD SetMiterLimit( miterLimit ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetMiterLimit(::handle, miterLimit)

*********************************************************************************************************
  METHOD SetStartCap( linecap ) CLASS GPPen
*********************************************************************************************************

return C5GPPenStartCap( ::handle, linecap )

*********************************************************************************************************
  METHOD SetTransform(matrix) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetTransform(::handle, matrix:handle)

*********************************************************************************************************
  METHOD SetWidth( nWidth ) CLASS GPPen
*********************************************************************************************************

return C5GPPenSetWidth( ::handle, nWidth )






#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( C5_GPPEN )
{
   GDIPLUS * pObj = gdiplus_new( GP_IT_PEN );
   GDIPLUS * p = hb_GDIPLUS_par( 1 );

   switch( GP_OBJECT_TYPE( p ) ){
      Pen* pen ;
      case GP_IT_COLOR:{
         Color* c = (Color*) GP_GET( p );
         pen = new Pen( *c, (REAL)hb_parnd( 2 ));
         GP_SET( pObj, pen );
         break;
      }
      //TODO colocar el resto de los brush posibles
      case GP_IT_SOLIDBRUSH:{
         Brush* b = (Brush*) p->pObject;
         pen = new Pen( b, (REAL)hb_parnd( 2 ));
         GP_SET( pObj, pen );
         break;
      }
   }

   hb_GDIPLUS_ret( pObj );
}

HB_FUNC( C5GPPENCLONE )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( p ) ){
      Pen* pen = (Pen*) GP_GET( p );
      Pen * clone;
      GDIPLUS * pObj = gdiplus_new( GP_IT_PEN );
      clone = pen->Clone();
      GP_SET( pObj, clone );
      hb_GDIPLUS_ret( pObj );
  }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPENGETALIGNMENT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      PenAlignment pa = p->GetAlignment();
      hb_retni( pa );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETBRUSH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      BrushType type;
      Pen* p = (Pen*) GP_GET( pObj );
      Brush * b = p->GetBrush();
      PHB_ITEM pitem;

      type = b->GetType();
      switch( type ){
         case BrushTypeSolidColor:
            pitem = GPNewGDIPLUSObject( b, GP_IT_SOLIDBRUSH );
            break;
      }
      hb_itemReturnRelease( pitem );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETCOLOR )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      Color * c;
      PHB_ITEM pitem;
      Status sta;
      pitem = GPCreateObjectToFill( ( void**)&c, GP_IT_COLOR );
      sta = p->GetColor( c );
      GDIPLUS_StoreParam( 2, pitem );

      hb_retni( sta );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETCOMPOUNDARRAY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   Status sta = Ok;
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      int count;
      REAL * distances;
      PHB_ITEM aCompoundArray;
      INT j;
      count = p->GetCompoundArrayCount();
      if( count > 0 ){
         aCompoundArray = hb_itemArrayNew( count );
         distances = ( REAL * ) hb_xgrab( sizeof( REAL ) * count );
         sta = p->GetCompoundArray(distances, count);
         for( j = 0; j < count; j++ )
            hb_arraySetND( aCompoundArray, j + 1, ( double ) distances[ j ] );

         GDIPLUS_StoreParam( 2, aCompoundArray );
         hb_xfree( ( void *) distances );
      }
      hb_retni( sta );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETCOMPOUNDARRAYCOUNT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetCompoundArrayCount() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETCUSTOMENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* ccp = (CustomLineCap*) hb_parptr( 2 );
   hb_retni( (int) p->GetCustomEndCap( ccp ));
}


HB_FUNC( C5GPPENGETCUSTOMSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*) hb_parptr( 2 );
   hb_retni( (int) p->GetCustomStartCap( clc ));
}


HB_FUNC( C5GPPENGETDASHCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetDashCap());
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETDASHOFFSET )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retnd( (DOUBLE) p->GetDashOffset() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETDASHPATTERN )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      int iCount = p->GetDashPatternCount();
      PHB_ITEM pArray;
      int j, iStatus;
      if( iCount > 0 ){
         REAL * real = ( REAL * ) hb_xgrab( sizeof( REAL ) * iCount );
         iStatus = p->GetDashPattern( real, iCount );
         pArray = hb_itemArrayNew( iCount );
         for( j=0; j < iCount; j++ ){
            hb_arraySetND( pArray, j + 1, ( DOUBLE ) real[j] );
         }
         hb_xfree( real );
         GDIPLUS_StoreParam( 2, pArray );
         hb_retni( iStatus );
      }
   }
}

// INT GetDashPatternCount();
HB_FUNC( C5GPPENGETDASHPATTERNCOUNT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetDashPatternCount() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// DashStyle GetDashStyle();
HB_FUNC( C5GPPENGETDASHSTYLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetDashStyle() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// LineCap GetEndCap();
HB_FUNC( C5GPPENGETENDCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetEndCap() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// Status GetLastStatus();
HB_FUNC( C5GPPENGETLASTSTATUS )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetLastStatus() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// LineJoin GetLineJoin();
HB_FUNC( C5GPPENGETLINEJOIN )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetLineJoin() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// REAL GetMiterLimit();
HB_FUNC( C5GPPENGETMITERLIMIT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retnd( (int) p->GetMiterLimit() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

// PenType GetPenType();
HB_FUNC( C5GPPENGETPENTYPE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetPenType() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETSTARTCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->GetStartCap() );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENGETTRANSFORM )
{
   GDIPLUS * pen = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pen )  ){
      Status sta;
      PHB_ITEM oMatrix;
      Pen* p = (Pen*) GP_GET( pen );
      Matrix * matrix;
      oMatrix = GPCreateObjectToFill( ( void **)&matrix, GP_IT_MATRIX );
      sta = p->GetTransform( matrix );
      GDIPLUS_StoreParam( 2, oMatrix );
      hb_retni( sta );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPENGETWIDTH )
{
   GDIPLUS * pen = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( pen )  ){
      Pen* p = (Pen*) GP_GET( pen );
      hb_retni( (int) p->GetWidth() );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENMULTIPLYTRANSFORM )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_PEN( p ) && GP_IS_MATRIX( p2 ) ){
      Pen* pen = (Pen*) GP_GET( p );
      Matrix* m = (Matrix*) GP_GET( p2 );
      MatrixOrder mo = (MatrixOrder) hb_parni( 3 );
      hb_retni( (int) pen->MultiplyTransform(m, mo) );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPPENRESETTRANSFORM )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( p )  ){
      Pen* pen = (Pen*) GP_GET( p );
      hb_retni( (int) pen->ResetTransform() );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPENROTATETRANSFORM )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( p )  ){
      Pen* pen = (Pen*) GP_GET( p );
      hb_retni( (int) pen->RotateTransform((REAL)hb_parnd(2),(MatrixOrder)hb_parnl(3)) );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}


HB_FUNC( C5GPPENSCALETRANSFORM )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->ScaleTransform((REAL)hb_parnd(2),(REAL)hb_parnd(3),(MatrixOrder)hb_parni(4)) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETALIGNMENT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      PenAlignment pa = (PenAlignment) hb_parni( 2 );
      hb_retni( (int) p->SetAlignment( pa ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETBRUSH )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pB   = hb_GDIPLUS_par( 2 );

   if( GP_IS_PEN( pObj ) && GP_IS_BRUSH( pB ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      Brush * b = ( Brush * ) GP_GET( pB );
      hb_retni( p->SetBrush( b ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETCOLOR )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );
   GDIPLUS * pB   = hb_GDIPLUS_par( 2 );

   if( GP_IS_PEN( pObj ) && GP_IS_COLOR( pB ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      Color * b = ( Color * ) GP_GET( pB );
      hb_retni( p->SetColor( *b ) );
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETCOMPOUNDARRAY )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) && HB_ISARRAY( 2 ) ){
      Pen* p = (Pen*) GP_GET( pObj );
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

      hb_retni( (int) p->SetCompoundArray( pReal, iLen ) );
      hb_xfree( ( void *) pReal );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}


HB_FUNC( C5GPPENSETCUSTOMENDCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*)hb_parptr( 2 );
   hb_retni( (int) p->SetCustomEndCap(clc) );
}

HB_FUNC( C5GPPENSETCUSTOMSTARTCAP )
{
   Pen* p = (Pen*) hb_parptr( 1 );
   CustomLineCap* clc = (CustomLineCap*)hb_parptr( 2 );
   hb_retni( (int) p->SetCustomStartCap( clc ) );
}

HB_FUNC( C5GPPENSETDASHCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetDashCap( (DashCap) hb_parni( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}

HB_FUNC( C5GPPENSETDASHOFFSET )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetDashOffset( (REAL) hb_parnd( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GPPENSETDASHPATTERN )
{

   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
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
   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


   Pen* p = (Pen*) hb_parptr( 1 );

}

HB_FUNC( C5GPPENSETDASHSTYLE )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetDashStyle( (DashStyle) hb_parni( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETENDCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetEndCap( (LineCap) hb_parni( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETLINECAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetLineCap( (LineCap) hb_parni( 2 ), (LineCap) hb_parni( 3 ), (DashCap) hb_parni( 4 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


HB_FUNC( C5GPPENSETLINEJOIN )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetLineJoin( (LineJoin) hb_parni( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GPPENSETMITERLIMIT )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetMiterLimit( (REAL) hb_parnd( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );


}

HB_FUNC( C5GPPENSTARTCAP )
{
   GDIPLUS * pObj = hb_GDIPLUS_par( 1 );

   if( GP_IS_PEN( pObj ) ){
      Pen* p = (Pen*) GP_GET( pObj );
      hb_retni( (int) p->SetStartCap( (LineCap) hb_parni( 2 ) ) );

   }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}

HB_FUNC( C5GPPENSETTRANSFORM )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   GDIPLUS * p2 = hb_GDIPLUS_par( 2 );
   if( GP_IS_PEN( p ) && GP_IS_MATRIX( p2 ) ){
      Pen* pen = (Pen*) GP_GET( p );
      Matrix* m = (Matrix*) GP_GET( p2 );
      hb_retni( (int) pen->SetTransform( m ) );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
}





// Status SetWidth(
//   [in]  REAL width
// );
HB_FUNC( C5GPPENSETWIDTH )
{
   GDIPLUS * p = hb_GDIPLUS_par( 1 );
   if( GP_IS_PEN( p )  ){
      Pen* pen = (Pen*) GP_GET( p );
      hb_retni( (int) pen->SetWidth( (REAL) hb_parnd( 2 ) ) );
    }else
      hb_errRT_BASE( EG_ARG, 2020, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );

}


#pragma ENDDUMP

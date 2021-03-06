#include "fivewin.ch"


function Brush()

return GPBrush():New()


CLASS GPBrush

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

//  METHOD
  METHOD Clone()
  METHOD GetLastStatus()
  METHOD GetType()


ENDCLASS

*********************************************************************************************************
  METHOD New() CLASS GPBrush
*********************************************************************************************************

local iParams := PCount()


  if iParams == 0
     ::handle := C5_GPBrush()
  elseif iParams == 1
     ::handle := C5_GPBrush( p1 )                               //
  elseif iParams == 3
     ::handle := C5_GPBrush( p1, p2, p3 )                       //
  elseif iParams == 4
     ::handle := C5_GPBrush( p1, p2, p3 )                       //
  elseif iParams == 5
     ::handle := C5_GPBrush( p1, p2, p3, p4, p5 )               //
  elseif iParams == 6
     ::handle := C5_GPBrush( p1, p2, p3, p4, p5, p6 )           //
  elseif iParams == 7
     ::handle := C5_GPBrush( p1, p2, p3, p4, p5, p6, p7 )       //
  endif

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBrush
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD Clone() CLASS GPBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetLastStatus() CLASS GPBrush
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetType() CLASS GPBrush
*********************************************************************************************************

return 0




//Methods
//
//The Brush class has the following methods.
//
//Method                        Description
//Brush::Clone                  The Brush::Clone method creates a new Brush object based on this brush.
//Brush::GetLastStatus          The Brush::GetLastStatus method returns a value that indicates the nature of this Brush object's most recent method failure.
//Brush::GetType                The Brush::GetType method gets the type of this brush.











#pragma BEGINDUMP
#include "windows.h"
#include "hbapi.h"
#include <gdiplus.h>

using namespace Gdiplus;

HB_FUNC( C5_GPBRUSH )
{
   //Brush* clr;
   //int iParams = hb_pcount();
   //
   //if( iParams == 0 )
   //    clr = new Brush();
   //else if (iParams == 1 )
   //    clr = new Brush( hb_parnl( 1 ) );
   //else if (iParams == 3 )
   //    clr = new Brush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ) );
   //else
   //    clr = new Brush( hb_parnl( 1 ), hb_parnl( 2 ), hb_parnl( 3 ), hb_parnl( 4 ) );
   //
   //hb_retptr( (void*)  );
}

HB_FUNC( C5DELETEBRUSH )
{
   //Brush* clr = (Brush*) hb_parptr( 1 );
   //delete (Brush*) clr;
   //hb_ret();
}

//HB_FUNC( GPBrush... )
//{
//   Brush* ptr = (Brush*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

#pragma ENDDUMP





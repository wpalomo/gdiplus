#include "fivewin.ch"


function Bitmap( ... )
   local aParams := hb_aparams()
   local oBmp
   local nLen := Len( aParams )
   
   switch nLen
      case 1
         oBmp = GPBitmap():New( aParams[ 1 ] )
         exit
      case 2
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ] )
        exit
      case 3
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
        exit        
      case 5
         oBmp = GPBitmap():New( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
        exit        
   endswitch

return oBmp


CLASS GPBitmap

  DATA handle

  METHOD New() CONSTRUCTOR

  METHOD Destroy()
  DESTRUCTOR Destroy()

  // Constructores. Ver cuales sobrecargamos

  //Bitmap(BITMAPINFO*,VOID*)
  //Bitmap(HBITMAP,HPALETTE)
  //Bitmap(HICON)
  //Bitmap(HINSTANCE,WCHAR*)
  //Bitmap(IDirectDrawSurface7*)
  //Bitmap(INT,INT,Graphics*)
  //Bitmap(INT,INT,INT,PixelFormat,BYTE*)
  //Bitmap(INT,INT,PixelFormat)
  //Bitmap(IStream*,BOOL)
  //Bitmap(WCHAR*,BOOL)

  METHOD ApplyEffect()
  METHOD ApplyEffect2()
  METHOD Clone()
  METHOD Clone2()
  METHOD Clone3()
  METHOD Clone4()
  METHOD ConvertFormat()
  METHOD FromBITMAPINFO()
  METHOD FromDirectDrawSurface7()
  METHOD FromFile()
  METHOD FromHBITMAP()
  METHOD FromHICON()
  METHOD FromResource()
  METHOD FromStream()
  METHOD GetHBITMAP()
  METHOD GetHICON()
  METHOD GetHistogram()
  METHOD GetHistogramSize()
  METHOD GetPixel()
  METHOD InitializePalette()
  METHOD LockBits()
  METHOD SetPixel()
  METHOD SetResolution()
  METHOD UnlockBits()


ENDCLASS

*********************************************************************************************************
  METHOD New( ... ) CLASS GPBitmap
*********************************************************************************************************

   local aParams := hb_aparams()
   local iParams := Len( aParams )
   
   switch iParams
      case 1
         ::handle = _GPBitmap( aParams[ 1 ] )
         exit
      case 2
         ::handle = _GPBitmap( aParams[ 1 ], aParams[ 2 ] )
        exit
      case 3
         ::handle = _GPBitmap( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ] )
        exit        
      case 5
         ::handle = _GPBitmap( aParams[ 1 ], aParams[ 2 ], aParams[ 3 ], aParams[ 4 ], aParams[ 5 ] )
        exit        
   endswitch

return self

*********************************************************************************************************
  METHOD Destroy() CLASS GPBitmap
*********************************************************************************************************

  ::handle := nil

return nil

*********************************************************************************************************
  METHOD ApplyEffect() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ApplyEffect2() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Clone() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Clone2() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Clone3() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD Clone4() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD ConvertFormat() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromBITMAPINFO() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromDirectDrawSurface7() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromFile() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromHBITMAP() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromHICON() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromResource() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD FromStream() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHBITMAP() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHICON() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHistogram() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetHistogramSize() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD GetPixel() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD InitializePalette() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD LockBits() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetPixel() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD SetResolution() CLASS GPBitmap
*********************************************************************************************************

return 0

*********************************************************************************************************
  METHOD UnlockBits() CLASS GPBitmap
*********************************************************************************************************

return 0





//Constructor                                      Description
//Bitmap::Bitmap(BITMAPINFO*,VOID*)                Creates a Bitmap::Bitmap object based on a BITMAPINFO structure and an array of pixel data.
//Bitmap::Bitmap(HBITMAP,HPALETTE)                 Creates a Bitmap::Bitmap object based on a handle to a Windows GDI bitmap and a handle to a GDI palette.
//Bitmap::Bitmap(HICON)                            Creates a Bitmap object based on an icon.
//Bitmap::Bitmap(HINSTANCE,WCHAR*)                 Creates a Bitmap::Bitmap object based on an application or DLL instance handle and the name of a bitmap resource.
//Bitmap::Bitmap(IDirectDrawSurface7*)             Creates a Bitmap::Bitmap object based on a DirectDraw surface. The Bitmap::Bitmap object maintains a reference to the DirectDraw surface until the Bitmap::Bitmap object is deleted or goes out of scope.
//Bitmap::Bitmap(INT,INT,Graphics*)                Creates a Bitmap::Bitmap object based on a Graphics object, a width, and a height.
//Bitmap::Bitmap(INT,INT,INT,PixelFormat,BYTE*)    Creates a Bitmap::Bitmap object based on an array of bytes along with size and format information.
//Bitmap::Bitmap(INT,INT,PixelFormat)              Creates a Bitmap::Bitmap object of a specified size and pixel format. The pixel data must be provided after the Bitmap::Bitmap object is constructed.
//Bitmap::Bitmap(IStream*,BOOL)                    Creates a Bitmap::Bitmap object based on an IStream COM interface.
//Bitmap::Bitmap(WCHAR*,BOOL)                      Creates a Bitmap::Bitmap object based on an image file.
//
//
//Methods
//
//The Bitmap class has the following methods.
//
//Method                                                          Description
//Bitmap::ApplyEffect(Bitmap**,INT,Effect*,RECT*,RECT*,Bitmap**)  The Bitmap::ApplyEffect method creates a new Bitmap object by applying a specified effect to an existing Bitmap object.
//Bitmap::ApplyEffect(Effect*,RECT*)                              The Bitmap::ApplyEffect method alters this Bitmap object by applying a specified effect.
//Bitmap::Clone(INT,INT,INT,INT,PixelFormat)                      The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(REAL,REAL,REAL,REAL,PixelFormat)                  The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(Rect&,PixelFormat)                                The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::Clone(RectF&,PixelFormat)                               The Bitmap::Clone method creates a new Bitmap object by copying a portion of this bitmap.
//Bitmap::ConvertFormat                                           The Bitmap::ConvertFormat method converts a bitmap to a specified pixel format. The original pixel data in the bitmap is replaced by the new pixel data.
//Bitmap::FromBITMAPINFO                                          The Bitmap::FromBITMAPINFO method creates a Bitmap object based on a BITMAPINFO structure and an array of pixel data.
//Bitmap::FromDirectDrawSurface7                                  The Bitmap::FromDirectDrawSurface7 method creates a Bitmap object based on a DirectDraw surface. The Bitmap object maintains a reference to the DirectDraw surface until the Bitmap object is deleted.
//Bitmap::FromFile                                                The Bitmap::FromFile method creates a Bitmap object based on an image file.
//Bitmap::FromHBITMAP                                             The Bitmap::FromHBITMAP method creates a Bitmap object based on a handle to a Windows GDI bitmap and a handle to a GDI palette.
//Bitmap::FromHICON                                               The Bitmap::FromHICON method creates a Bitmap object based on a handle to an icon.
//Bitmap::FromResource                                            The Bitmap::FromResource method creates a Bitmap object based on an application or DLL instance handle and the name of a bitmap resource.
//Bitmap::FromStream                                              The Bitmap::FromStream method creates a Bitmap object based on a stream.
//Bitmap::GetHBITMAP                                              The Bitmap::GetHBITMAP method creates a GDI bitmap from this Bitmap object.
//Bitmap::GetHICON                                                The Bitmap::GetHICON method creates an icon from this Bitmap object.
//Bitmap::GetHistogram                                            The Bitmap::GetHistogram method returns one or more histograms for specified color channels of this Bitmap object.
//Bitmap::GetHistogramSize                                        The Bitmap::GetHistogramSize returns the number of elements (in an array of UINTs) that you must allocate before you call the Bitmap::GetHistogram method of a Bitmap object.
//Bitmap::GetPixel                                                The Bitmap::GetPixel method gets the color of a specified pixel in this bitmap.
//Bitmap::InitializePalette                                       The Bitmap::InitializePalette method initializes a standard, optimal, or custom color palette.
//Bitmap::LockBits                                                The Bitmap::LockBits method locks a rectangular portion of this bitmap and provides a temporary buffer that you can use to read or write pixel data in a specified format. Any pixel data that you write to the buffer is copied to the Bitmap object when you call Bitmap::UnlockBits.
//Bitmap::SetPixel                                                The Bitmap::SetPixel method sets the color of a specified pixel in this bitmap.
//Bitmap::SetResolution                                           The Bitmap::SetResolution method sets the resolution of this Bitmap object.
//Bitmap::UnlockBits                                              The Bitmap::UnlockBits method unlocks a portion of this bitmap that was previously locked by a call to Bitmap::LockBits.














#pragma BEGINDUMP
#include <gc.h>

HB_FUNC( _GPBITMAP )
{
   Bitmap * o;
   GDIPLUS * pObj = gdiplus_new( GP_IT_BITMAP );
   int iParams = hb_pcount();
   BOOL lOk = true;
   
   switch (iParams){  
      case 2:
         o = new Bitmap( ( HBITMAP ) hb_parnl( 1 ), ( HPALETTE ) hb_parnl( 2 ) );
         break;
      case 3:
      {
      	 GDIPLUS * pGrap = hb_GDIPLUS_par( 3 );
      	 Graphics * g = ( Graphics * ) GP_GET( pGrap ); 
         o = new Bitmap( hb_parni( 1 ), hb_parni( 2 ), g );
      }
   } 
   
   GP_SET( pObj, o );
   hb_GDIPLUS_ret( pObj );   
}

HB_FUNC( DELETEBITMAP )
{
//   Bitmap* clr = (Bitmap*) hb_parptr( 1 );
//   delete (Bitmap*) clr;
//   hb_ret();
}

//HB_FUNC( GPBitmap... )
//{
//   Bitmap* ptr = (Bitmap*) hb_parptr( 1 );
//   hb_retni( ptr->GetA() );
//}

//How to Create a Gdiplus::Bitmap from an HBITMAP, retaining the alpha channel information?
//Gdiplus::Status HBitmapToBitmap( HBITMAP source, Gdiplus::PixelFormat pixel_format, Gdiplus::Bitmap** result_out )
//{
//  BITMAP source_info = { 0 };
//  if( !::GetObject( source, sizeof( source_info ), &source_info ) )
//    return Gdiplus::GenericError;
//
//  Gdiplus::Status s;
//
//  std::auto_ptr< Gdiplus::Bitmap > target( new Gdiplus::Bitmap( source_info.bmWidth, source_info.bmHeight, pixel_format ) );
//  if( !target.get() )
//    return Gdiplus::OutOfMemory;
//  if( ( s = target->GetLastStatus() ) != Gdiplus::Ok )
//    return s;
//
//  Gdiplus::BitmapData target_info;
//  Gdiplus::Rect rect( 0, 0, source_info.bmWidth, source_info.bmHeight );
//
//  s = target->LockBits( &rect, Gdiplus::ImageLockModeWrite, pixel_format, &target_info );
//  if( s != Gdiplus::Ok )
//    return s;
//
//  if( target_info.Stride != source_info.bmWidthBytes )
//    return Gdiplus::InvalidParameter; // pixel_format is wrong!
//
//  CopyMemory( target_info.Scan0, source_info.bmBits, source_info.bmWidthBytes * source_info.bmHeight );
//
//  s = target->UnlockBits( &target_info );
//  if( s != Gdiplus::Ok )
//    return s;
//
//  *result_out = target.release();
//
//  return Gdiplus::Ok;
//}

#pragma ENDDUMP





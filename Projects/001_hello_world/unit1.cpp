//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
   ShowMessage ("Hello World!");
   /* alternatively:
   Application->MessageBox ("Hello World!", "greetings", 1+64);
   //  1: MB_OKCANCEL
   // 64: MB_ICONINFORMATION
   */
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
    Application->Terminate();       
}

//---------------------------------------------------------------------------

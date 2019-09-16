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
  int x,y, size;
  for (int i=1; i<500; i++) {
    x=random(ClientWidth);
    y=random(ClientHeight);
    size= random(20);
    Canvas->Brush->Color = random(64000);
    Canvas->Ellipse (x,y,  x+size,y+size);    
  }
}


//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
    Application->Terminate();       
}

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CPort"
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
   ComPort1->ShowSetupDialog();
   ComPort1->Open();
   Button1-> Enabled=false;
   Button2-> Enabled=true;
   Button3-> Enabled=true;
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
   Button4->Click();
   Button1-> Enabled=true;
   Button2-> Enabled=false;
   Button3-> Enabled=false;
   ComPort1->Close();

}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
   if(ComPort1->Connected )  {
      ComPort1->WriteStr("1");
      Shape1->Brush->Color=clRed;
      Button3-> Enabled=false;
      Button4-> Enabled=true;
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
   if(ComPort1->Connected )  {
      ComPort1->WriteStr("0");
      Shape1->Brush->Color=clBlack;
      Button3-> Enabled=true;
      Button4-> Enabled=false;
   }
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
   Application->Terminate();        
}
//---------------------------------------------------------------------------



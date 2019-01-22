//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CPort"
#pragma link "CPortCtl"
#pragma resource "*.dfm"
TForm1 *Form1;


#define MSGLEN 512
char msgcstr [MSGLEN]="";



//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComPort1RxChar(TObject *Sender, int Count)
{
  Form1->Caption="character detected";
  AnsiString rcvStr;
  ComPort1->ReadStr(rcvStr, 250);
   // Liest die im Eingangspuffer vorhandenen "Count" -Bytes und kopiert sie

  Label2->Caption=String(rcvStr);
}

//---------------------------------------------------------------------------


void __fastcall TForm1::Button5Click(TObject *Sender)
{
   Button3->Click();
   ComPort1->Close();
   Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
   ComPort1->ShowSetupDialog();
   ComPort1->Open();

   if(ComPort1->Connected )  {
      Button3->Enabled=true;
      Button4->Enabled=true;     
      Button2->Enabled=true;
      Button5->Enabled=true;
      ScrollBar1->Position=0;
      Label1->Caption=String(ScrollBar1->Position);
      Button3->Click(); 
   }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
   Button3->Click();
   ComPort1->Close();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button3Click(TObject *Sender)
{
    if(ComPort1->Connected )  {
      strcat(msgcstr,  "&LEDBI=0;\n" );
      ComPort1->WriteStr(msgcstr);

      strcpy(msgcstr, "");
      Shape1->Brush->Color=clBlack;
      ScrollBar1->Position=0;
      Label1->Caption=String(ScrollBar1->Position);
   }
    
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
   if(ComPort1->Connected )  {
      strcat(msgcstr,  "&LEDBI=255;\n" );
      ComPort1->WriteStr(msgcstr);

      strcpy(msgcstr, "");
      Shape1->Brush->Color= TColor(65536*(1+127/2)+(256ul*127) + (1+127/2) ); //
      ScrollBar1->Min=0;
      ScrollBar1->Max=255;
      ScrollBar1->Position=255;
      Label1->Caption=String(ScrollBar1->Position);
   }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::ScrollBar1Change(TObject *Sender)
{
   ScrollBar1->Min=0;
   ScrollBar1->Max=255;
   int pwm = ScrollBar1->Position;
   char cmsg[20]="&LEDBI=";
   char buf[20]="";
   itoa( pwm, buf, 10);
   strcat(cmsg, buf);
   strcat(cmsg,";\n");
   if(ComPort1->Connected )  {
      strcat(msgcstr, cmsg );
      ComPort1->WriteStr(msgcstr);
      strcpy(msgcstr, "");
      int p=pwm;
      if(p>1) { if(p<80)p=100; }
      Shape1->Brush->Color= TColor( 65536ul*(1+p/2) + (256ul*p) + (1+p/2) );
      Label1->Caption=String(ScrollBar1->Position);
   }

}
//---------------------------------------------------------------------------


unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,StrUtils, ComCtrls;

type
  TMainForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox7: TGroupBox;
    COSEdit: TEdit;
    Button39: TButton;
    Button43: TButton;
    Button44: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label35: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button20: TButton;
    Button24: TButton;
    Button21: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    ComboBox1: TComboBox;
    Button22: TButton;
    ComboBox3: TComboBox;
    Button40: TButton;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button15: TButton;
    WriteSectorEdit: TEdit;
    WriteblockEdit: TEdit;
    BlockDataEdit: TEdit;
    Button16: TButton;
    AddMoneyEdit: TEdit;
    Button17: TButton;
    CutMoneyEdit: TEdit;
    Button18: TButton;
    ReadSectorEdit: TEdit;
    ReadblockEdit: TEdit;
    KeyASectorEdit: TEdit;
    KeyABlockEdit: TEdit;
    KeyBSectorEdit: TEdit;
    KeyBBlockEdit: TEdit;
    AddMoneySectorEdit: TEdit;
    AddMoneyBlockEdit: TEdit;
    CutMoneySectorEdit: TEdit;
    CutMoneyBlockEdit: TEdit;
    Button23: TButton;
    PasswordEdit: TEdit;
    UseBlockSectorEdit: TEdit;
    UseBlockBlockEdit: TEdit;
    BakBlockSectorEdit: TEdit;
    BakBlockBlockEdit: TEdit;
    GroupBox6: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    SlotIDEdit: TEdit;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button12: TButton;
    ComboBox2: TComboBox;
    Button38: TButton;
    Edit1: TEdit;
    grp1: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    cbb1: TComboBox;
    btn6: TButton;
    cbb2: TComboBox;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    cbb3: TComboBox;
    btn17: TButton;
    cbb4: TComboBox;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lbl1: TLabel;
    Button14: TButton;
    Button19: TButton;
    Button34: TButton;
    Button35: TButton;
    SectorComboBox: TComboBox;
    Button36: TButton;
    Block0Edit: TEdit;
    Block1Edit: TEdit;
    Block2Edit: TEdit;
    Button37: TButton;
    TimesEdit: TEdit;
    Button13: TButton;
    Button3: TButton;
    Button41: TButton;
    Button42: TButton;
    edtSK: TEdit;
    chk1: TCheckBox;
    TabSheet6: TTabSheet;
    GroupBox9: TGroupBox;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    GroupBox10: TGroupBox;
    StopTimesButton: TButton;
    Label36: TLabel;
    ReTimesEdit: TEdit;
    Button50: TButton;
    Button51: TButton;
    Label38: TLabel;
    Edit2: TEdit;
    Label39: TLabel;
    Edit3: TEdit;
    Label40: TLabel;
    Label37: TLabel;
    Edit4: TEdit;
    Button49: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AddLog(Str: string);
  end;

var
  MainForm: TMainForm;

  CardPassword: PChar;
  SysKey1, SysKey2, SysKey3, UserKey: ShortString;
  MasterKey : string;

  IsStop: Boolean = False;

function InversionStr(Str: ShortString): string;  
function getReadMoney(data:string): integer;           {Transform character string into amount}
function HexToStr(HexStr: string): string;             {Inver the hight position and low position of hexadecimal string}

const
  Key = '57415443484441544154696D65434F53';
//  Key = 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF' ;

implementation

uses
  DllApi;

{$R *.dfm}

const
  _KEYA = $00;
  _KEYB = $04;
  _KEYSET0 = $00;
  _KEYSET1 = $01;
  _KEYSET2 = $02;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TMainForm.Button1Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBSound(1), Msg);
    AddLog('Open buzzer: ' + StrPas(Msg));
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBSound(0), Msg);
    AddLog('Close buzzer: ' + StrPas(Msg));
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.AddLog(Str: string);
begin
  MainForm.Memo1.Lines.Add(Str);
end;

procedure TMainForm.Button23Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBSetTypeAOrB(0), Msg);
    AddLog('Set TypeA: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button10Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBStopCard, Msg);
    AddLog('Card disable operation: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button4Click(Sender: TObject);
var
  TagType: Integer;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBRequestCard(1, TagType), Msg);
    AddLog('Request all cards: ' + Msg + ' tag: ' + IntToStr(TagType));
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button5Click(Sender: TObject);
var
  SerialNum: PChar;
  Msg: PChar;
begin
  SerialNum := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(USBPreventionCollision(SerialNum), Msg);
    AddLog('Anticollision: ' + Msg + ' Return: ' + StrPas(SerialNum));
  finally
    StrDispose(SerialNum);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button6Click(Sender: TObject);
var
  size: Integer;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBChooseCard('', size), Msg);
    AddLog('Select card: ' + Msg + ' Return: ' + IntToStr(size));
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button7Click(Sender: TObject);
var
  mode, sector: Integer;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLoadKey(mode, sector, PChar(PasswordEdit.Text)), Msg);
    AddLog('Load password: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button8Click(Sender: TObject);
var
  sector, block: Cardinal;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    sector := StrToInt(KeyASectorEdit.Text);
    block := StrToInt(KeyABlockEdit.Text);
    GetMsg(USBKeyAOrKeyB(_KEYA or _KEYSET0, sector * 4 + block), Msg);
    AddLog('KeyA: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button9Click(Sender: TObject);
var
  sector, block: Cardinal;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    sector := StrToInt(KeyBSectorEdit.Text);
    block := StrToInt(KeyBBlockEdit.Text);
    GetMsg(USBKeyAOrKeyB(_KEYB, sector * 4 + block), Msg);
    AddLog('KeyB: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button11Click(Sender: TObject);
var
  sector, block: Cardinal;
  RecData: PChar;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  RecData := StrAlloc(100);
  try
    sector := StrToInt(ReadSectorEdit.Text);
    block := StrToInt(ReadblockEdit.Text);
    GetMsg(USBReadSector(sector * 4 + block, RecData), Msg);
    AddLog('Read sector: ' + Msg + ' Content: ' + StrPas(RecData));
  finally
    StrDispose(Msg);
    StrDispose(RecData);
  end;
end;

procedure TMainForm.Button15Click(Sender: TObject);
var
  sector, block: Cardinal;
  DataByte: string;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    sector := StrToInt(WriteSectorEdit.Text);
    block := StrToInt(WriteblockEdit.Text);
    DataByte := Trim(BlockDataEdit.Text);
    GetMsg(USBWriteSector(sector * 4 + block, PChar(DataByte)), Msg);
    AddLog('Write sector block: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button17Click(Sender: TObject);
var
  UseSector, UseBlock, BakSector, BakBlock: Cardinal;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    UseSector := StrToInt(UseBlockSectorEdit.Text);
    UseBlock := StrToInt(UseBlockBlockEdit.Text);
    BakSector := StrToInt(BakBlockSectorEdit.Text);
    BakBlock := StrToInt(BakBlockBlockEdit.Text);
    GetMsg(USBBackupCard(UseSector * 4 + UseBlock, BakSector * 4 + BakBlock), Msg);
    AddLog('Back card wallet up: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button16Click(Sender: TObject);
var
  sector, block: Cardinal;
  Msg: PChar;
  i: Integer;
begin
  Msg := StrAlloc(100);
  try
    IsStop := False;
    for i := 1 to StrToIntDef(ReTimesEdit.Text, 1) do
    begin
      if IsStop then Exit;
      sector := StrToInt(AddMoneySectorEdit.Text);
      block := StrToInt(AddMoneyBlockEdit.Text);
      GetMsg(USBAddMoney(sector * 4 + block, StrToInt(AddMoneyEdit.Text)), Msg);
      AddLog('Add: ' + Msg);
      
      Application.ProcessMessages;
    end;
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button18Click(Sender: TObject);
var
  sector, block: Cardinal;
  Msg: PChar;
  i: Integer;
begin
  Msg := StrAlloc(100);
  try
    IsStop := False;
    for i := 1 to StrToIntDef(ReTimesEdit.Text, 1) do
    begin
      if IsStop then Exit;
      sector := StrToInt(CutMoneySectorEdit.Text);
      block := StrToInt(CutMoneyBlockEdit.Text);
      GetMsg(USBCutMoney(sector * 4 + block, StrToInt(CutMoneyEdit.Text)), Msg);
      AddLog('Subtract: ' + Msg);
      Application.ProcessMessages;
    end;
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button20Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(0, 1), Msg);
    AddLog('Green LED light on: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button21Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(0, 0), Msg);
    AddLog('Green LED light off: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button24Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(1, 1), Msg);
    AddLog('Red LED light on: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button25Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(1, 0), Msg);
    AddLog('Red LED light off: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button22Click(Sender: TObject);
const
  CHS = 'CHS';
  BIG5 = 'BIG5';
  ENGLISH = 'ENGLISH';
begin
  case ComboBox1.ItemIndex of
    0: ChangeDllLanguage(PChar(CHS));
    1: ChangeDllLanguage(PChar(BIG5));
    2: ChangeDllLanguage(PChar(ENGLISH));
  end;
end;

procedure TMainForm.Button26Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(2, 1), Msg);
    AddLog('Green LED light on: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button27Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBLED(2, 0), Msg);
    AddLog('Green LED light off: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button28Click(Sender: TObject);
begin
  try
    SetPsamCardSlotID(StrToInt(SlotIDEdit.Text));
    AddLog('PSAM card slot ID set successfully.');
  except
    on E: Exception do
    begin
      AddLog(E.Message);
    end;
  end;
end;

procedure TMainForm.Button29Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(ReSetPsamCardData(PStr), Msg);
    AddLog('Reset PSAM card: ' + Msg + ': ' + Trim(StrPas(PStr)));
  finally
    StrDispose(PStr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button30Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(GetPsamCardNo(PStr), Msg);
    AddLog('Get PSAM card number: ' + Msg + ': ' + StrPas(PStr));
  finally
    StrDispose(PStr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button31Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(SelectPsamCardAppData(Pstr), Msg);
    AddLog('Select application: ' + Msg + ': ' + StrPas(Pstr));
  finally
    StrDispose(Pstr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button32Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(GetPsamPwd(PChar('2501'), PChar('7E69D661'), PChar('1234'), PChar('EF81CF31'), PStr), Msg);
    AddLog('Calculate password: ' + Msg + ': ' + Trim(StrPas(PStr)));
  finally
    StrDispose(PStr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button33Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(GetPsamTac(PChar('313233343537'), PChar('6280'), PChar('00089515'), PChar(IntToHex(25, 2)), PChar(InversionStr(IntToHex(1500, 6))), PChar(InversionStr(IntToHex(100, 6))), PChar('20120702'), PChar('144510'), PChar(IntToHex(3, 4)), PStr), Msg);
    AddLog('Calculate Tac: ' + Msg + ': ' + Trim(StrPas(PStr)));
  finally
    StrDispose(PStr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button12Click(Sender: TObject);
var
  PStr, Msg: PChar;
begin
  PStr := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(SetPSAMBaudRate(StrToInt(ComboBox2.Text), PStr), Msg);
    AddLog('Set PSAM card baud rate: ' + Msg + ': ' + Trim(StrPas(PStr)));
  finally
    StrDispose(PStr);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button19Click(Sender: TObject);
var
  Info0, Info1, Info2: PChar;
  Msg: PChar;
  Ret: Integer;
  CardType: ShortString;
begin
  Info0 := StrAlloc(33);
  Info1 := StrAlloc(33);
  Info2 := StrAlloc(33);
  Msg := StrAlloc(255);
  try
    Ret := ReadMasterCard(0, Info0, Info1, Info2, True, True, True, False);
    GetMsg(Ret, Msg);
    AddLog('Read 0 sector of system authorization card: ' + Msg);
    if Ret <> 0 then Exit;
    AddLog('0 sector 0 block: ' + Info0);
    AddLog('0 sector 1 block: ' + Info1);
    AddLog('0 sector 2 block: ' + Info2);

    Ret := ReadMasterCard(1, Info0, Info1, Info2, True, True, True, True);
    GetMsg(Ret, Msg);
    AddLog('Read 1 sector of system authorization card: ' + Msg);
    if Ret <> 0 then Exit;
    AddLog('1 sector 0 block: ' + Info0);
    AddLog('1 sector 1 block: ' + Info1);
    AddLog('2 sector 2 block: ' + Info2);

    CardType := Copy(Info0, 1, 8);
    if CardType = '55A0A1A2' then // System authorization card
    begin
      SysKey1 := Copy(Trim(StrPas(Info0)), 9, 16);
      SysKey2 := Copy(Trim(StrPas(Info1)), 9, 16);
      SysKey3 := Copy(Trim(StrPas(Info2)), 9, 16);
    end;
    if CardType = 'ABB0B1B2' then // Initialize authorization card
    begin
      UserKey := Copy(Trim(StrPas(Info1)), 9, 16);
    end;
  finally
    StrDispose(Info0);
    StrDispose(Info1);
    StrDispose(Info2);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button36Click(Sender: TObject);
var
  Info0, Info1, Info2: PChar;
  Key, Msg: PChar;
  Ret: Integer;
begin
  Info0 := StrAlloc(33);
  Info1 := StrAlloc(33);
  Info2 := StrAlloc(33);
  Msg := StrAlloc(255);
  Key := StrAlloc(20);
  try
    StrPCopy(Key, SysKey2);
    Ret := ReadCardInfo(StrToInt(SectorComboBox.Text), Key, Info0, Info1, Info2, True, True, True, True);
    GetMsg(Ret, Msg);
    AddLog('Read card: ' + Msg);
    if Ret <> 0 then
    begin
      ShowMessage('Failed to read card.');
      Exit;
    end;
    begin
      AddLog('Info0: ' + StrPas(Info0));
      AddLog('Info1: ' + StrPas(Info1));
      AddLog('Info2: ' + StrPas(Info2));

      Block0Edit.Text := StrPas(Info0);
      Block1Edit.Text := StrPas(Info1);
      Block2Edit.Text := StrPas(Info2);
    end;
  finally
    StrDispose(Info0);
    StrDispose(Info1);
    StrDispose(Info2);
    StrDispose(Key);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button37Click(Sender: TObject);
var
  Sector: Integer;
  Data0, Data1, Data2: PChar;
  Key, Msg: PChar;
  Ret: Integer;
begin
  Button37.Enabled := False;
  try
    Sector := StrToInt(SectorComboBox.Text);
    Key := StrAlloc(20);
    Msg := StrAlloc(255);
    Data0 := StrAlloc(33);
    Data1 := StrAlloc(33);
    Data2 := StrAlloc(33);
    try
      StrPCopy(Key, SysKey2);
      StrPCopy(Data0, Block0Edit.Text);
      StrPCopy(Data1, Block1Edit.Text);
      StrPCopy(Data2, Block2Edit.Text);
      Ret := WriteCardInfo(Sector, Key, Data0, Data1, Data2, True, True, True, True);
      GetMsg(Ret, Msg);
      AddLog('Write card' + Msg);
      if Ret <> 0 then
        ShowMessage('Faild to write card.');
    finally
      StrDispose(Data0);
      StrDispose(Data1);
      StrDispose(Data2);
      StrDispose(Key);
      StrDispose(Msg);
    end;
  finally
    Button37.Enabled := True;
  end;
end;

procedure TMainForm.Button14Click(Sender: TObject);
var
  SN, Msg: PChar;
  Ret: Integer;
begin
  SN := StrAlloc(20);
  Msg := StrAlloc(255);
  try
    Ret := GetCardSN(SN, True);
    GetMsg(Ret, Msg);
    AddLog('Read card serial number: ' + Msg + ': ' + SN);
  finally
    StrDispose(SN);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button35Click(Sender: TObject);
var
  Sector, Ret: Integer;
  KeyA, KeyB, Password, Msg: PChar;
begin
  Sector := StrToInt(SectorComboBox.Text);
  KeyA := StrAlloc(20);
  KeyB := StrAlloc(20);
  Password := StrAlloc(20);
  Msg := StrAlloc(255);
  try
    StrPCopy(KeyA, SysKey1);
    StrPCopy(KeyB, SysKey2);
    StrPCopy(Password, UserKey);
    Ret := FormatCard(Sector, KeyA, KeyB, Password, True);
    GetMsg(Ret, Msg);
    AddLog('Initialize card: ' + Msg);
  finally
    StrDispose(KeyA);
    StrDispose(KeyB);
    StrDispose(Password);
    StrDispose(Msg);
  end;
end;

var
  IsReading: Boolean = False;

procedure TMainForm.Button34Click(Sender: TObject);
var
  i: Integer;
begin
  try
    Button34.Enabled := False;
    if IsReading = False then
    begin
      IsReading := True;
      Label32.Caption := '0';
      for i := 0 to StrToInt(TimesEdit.Text) - 1 do
      begin
        Button36.Click;
        Label32.Caption := IntToStr(i + 1);
        Application.ProcessMessages;
        if IsReading = False then Exit;
      end;
    end;
  finally
    IsReading := False;
    Button34.Enabled := True;
  end;
end;

var
  IsWriting: Boolean = False;

procedure TMainForm.Button13Click(Sender: TObject);
var
  i: Integer;
begin
  try
    Button13.Enabled := False;
    if IsWriting = False then
    begin
      IsWriting := True;
      Label33.Caption := '0';
      for i := 0 to StrToInt(TimesEdit.Text) - 1 do
      begin
        Button37.Click;
        Label33.Caption := IntToStr(i + 1);
        Application.ProcessMessages;
        if IsWriting = False then Exit;
      end;
    end;
  finally
    IsWriting := False;
    Button13.Enabled := True;
  end;
end;

procedure TMainForm.Button38Click(Sender: TObject);
var
  i, Times: Integer;
begin
  Times := StrToInt(Edit1.Text);
  for i := 1 to Times do
  begin
    Button29.Click;
    Button30.Click;
    Button31.Click;
    Button32.Click;
    Button33.Click;
    Label34.Caption := IntToStr(i);
    Application.ProcessMessages;
  end;
end;

procedure TMainForm.Button40Click(Sender: TObject);
var
  Ret: Integer;
  Msg: PChar;
begin
  Msg := StrAlloc(255);
  try
    Ret := SetMode(ComboBox3.ItemIndex);
    GetMsg(Ret, Msg);
    AddLog('Set working mode: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button41Click(Sender: TObject);
begin
  IsReading := False;
end;

procedure TMainForm.Button42Click(Sender: TObject);
begin
  IsWriting := False;
  Stop;
end;

procedure TMainForm.Button43Click(Sender: TObject);
begin
  COSEdit.Clear;
end;

procedure TMainForm.Button39Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret: Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Ret := SendCOS(PChar(StringReplace(COSEdit.Text, ' ', '', [rfReplaceAll])), RetData);
    GetMsg(Ret, Msg);
    AddLog('Send COS command: ' + Msg + ': ' + RetData);
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

function InversionStr(Str: ShortString): string;
var
  A: ShortString;
  B, D, E: Integer;
begin
  A := '';
  B := 0;
  D := Length(Str) div 2;
  E := Length(Str);
  while B < D do
  begin
    A := A + Copy(Str, E - (B * 2 + 1), 2);
    Inc(B);
  end;
  Result := A;
end;

function getReadMoney(data:string): integer;
var
  i,Balance:integer;
  PrBalance,values:string;
begin
  PrBalance := Copy(data,1,8);
  for i := 0 to (Length(PrBalance) div 2) - 1 do
        values := values + Copy(PrBalance, Length(PrBalance) - 1 - i * 2, 2);
  Balance := StrToInt('$' + values);
  Result := Balance;
end;

function HexToStr(HexStr: string): string;
var
  A: string;
  B, D, E: Integer;
begin
  A := '';
  B := 0;
  D := Length(HexStr) div 2;
  E := Length(HexStr);
  while B < D do
  begin
    A := A + Copy(HexStr, E - (B * 2 + 1), 2);
    Inc(B);
  end;
  if A = '' then
    A := HexStr;
  Result := A;
end;

procedure TMainForm.btn1Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret: Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Ret := ReSetCPUCard(RetData);
    GetMsg(Ret, Msg);
    AddLog('Reset CPU card: ' + Msg + '[' + StrPas(RetData) + ']');
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button44Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret: Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Ret := SendAPDU(PAnsiChar(StringReplace(COSEdit.Text, ' ', '', [rfReplaceAll]) + #0), RetData);
    GetMsg(Ret, Msg);
    AddLog('Send APDU command: ' + Msg + ': ' + RetData);
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn2Click(Sender: TObject);
var
  Msg: PChar;
  Ret: Integer;
begin
  Msg := StrAlloc(255);
  try
    Ret := SuspendCPUCard;
    GetMsg(Ret, Msg);
    AddLog('Hang CPU up: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn3Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret ,OutLe: Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    case cbb2.ItemIndex of
      0 : OutLe := $04;
      1 : OutLe := $08;
    end;
    Ret := getChallenge(RetData,OutLe);
    GetMsg(Ret, Msg);
    AddLog('Get random number: ' + Msg + ': ' + RetData);
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn4Click(Sender: TObject);
var
  Msg: PChar;
  Ret: Integer;
  DF : string;
begin
  Msg := StrAlloc(255);
  try
    case cbb4.ItemIndex of
      0 : DF := Trim(cbb4.Text);
      1,2,3 : DF := 'DF0' + RightStr(cbb4.Text,1);
    else
      DF := '3F0' + RightStr(cbb4.Text,1);
    end;
    
    Ret := selectFile(PAnsiChar(DF));
    GetMsg(Ret, Msg);
    AddLog('Select file: ' + Msg );
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn5Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret , SFI : Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    case cbb1.ItemIndex of
      0 : SFI := $15;
      1 : SFI := $16;
    end;
    Ret := readBinary(SFI ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Read binary file: ' + Msg + ': ' + RetData);
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn6Click(Sender: TObject);
var
  InData ,Msg: PChar;
  Ret: Integer;
  KID ,data ,NewKey : string;
begin
  Msg := StrAlloc(255);
  InData := StrAlloc(1024);
  try
    KID := IntToHex(00,2);
    if chk1.Checked then
      data := MasterKey
    else
      data := Key ;

    if Length(data) = 0 then
    begin
      AddLog('Key can not be null.');
      Exit;
    end;
    StrPCopy(InData,data);
    Ret := externalAuth(InData);
    GetMsg(Ret, Msg);
    AddLog('External authenticate: ' + Trim(StrPas(Msg)) );
  finally
    StrDispose(Msg);
    StrDispose(InData);
  end;
end;

procedure TMainForm.btn7Click(Sender: TObject);
var
  InData, Msg: PChar;
  Ret , SFI : Integer;
  Mode ,data : string;
begin
  InData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Mode := IntToHex(01,2);
    if chk1.Checked then
    begin
      if Length(MasterKey) = 0 then
      begin
        AddLog('Key can not be null.');
        Exit;
      end;
    end;

    case cbb1.ItemIndex of
      0 :
        begin
          SFI := $15;
          if chk1.Checked then
            data := MasterKey + ',' + Mode  + ',' + Trim(COSEdit.Text)
          else
            data := Key + ',' + Mode  + ',' + Trim(COSEdit.Text);
        end;
      1 :
        begin
          SFI := $16;
          if chk1.Checked then
            data := MasterKey + ',' + Mode  + ',' + Trim(COSEdit.Text)
          else
            data := Key + ',' + Mode  + ',' + Trim(COSEdit.Text);
        end;
    end;

    StrPCopy(InData,data) ;
    Ret := writeBinary(SFI ,InData);
    GetMsg(Ret, Msg);
    AddLog('Write binary file: ' + Msg );
  finally
    StrDispose(InData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn8Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret : Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Ret := getBalance(RetData);
    GetMsg(Ret, Msg);
    AddLog('Get balance: ' + Msg + ': Card balance: ' + IntToStr(getReadMoney(StrPas(RetData))) + 'cent') ;
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn9Click(Sender: TObject);
var
  InData, RetData, Msg: PChar;
  Ret , SFI : Integer;
  KID ,Amount,TrmNo,Str : string;
begin
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    KID := IntToHex(01,2);
    Amount := IntToHex(100,8);
    TrmNo := IntToHex(23,12);
    Str := KID + Amount + TrmNo ;
    StrPCopy(InData,Str) ;
    Ret := InitializeForLoad(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Redeposit initialization: ' + Msg + ': ' + RetData );
    edtSK.Text := StrPas(RetData);
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn10Click(Sender: TObject);
var
  dt,data,Amount,TrmNo,SFI,SK : string;
  InData, RetData, Msg: PChar;
  Ret  : Integer;
begin
  data := Trim(edtSK.Text) ;
  if data = '' then
  begin
    ShowMessage('Please excute this operation after redepositing initialization.');
    Exit;
  end;
  
  Amount := IntToHex(100,8);
  SFI := IntToHex(02,2);
  TrmNo := IntToHex(23,12);
  dt := FormatDateTime('yyyymmddhhnnss',Now);
  SK := RightStr(data,16);
  data := Amount+ SFI + TrmNo + dt + SK ;
  
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    StrPCopy(InData,data) ;
    Ret := CreditForLoad(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Redeposit: ' + Msg + ': ' + RetData );
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn11Click(Sender: TObject);
var
  InData, RetData, Msg: PChar;
  Ret , SFI : Integer;
  KID ,Amount,TrmNo,Str : string;
begin
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    KID := IntToHex(01,2);
    Amount := IntToHex(100,8);
    TrmNo := IntToHex(05,12);
    Str := KID + Amount + TrmNo ;
    StrPCopy(InData,Str) ;
    Ret := InitializeForPurchase(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Initialize consumption: ' + Msg + ': ' + RetData );
    edtSK.Text := StrPas(RetData);
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn12Click(Sender: TObject);
var
  dt,data,Amount,TrmNo,SFI,TraIdx : string;
  InData, RetData, Msg: PChar;
  Ret  : Integer;
begin
  data := Trim(edtSK.Text) ;
  if data = '' then
  begin
    ShowMessage('Please excute this operation after initializing consumption.');
    Exit;
  end;
  
  Amount := IntToHex(100,8);
  SFI := IntToHex(06,2);
  TrmNo := IntToHex(05,12);
  dt := FormatDateTime('yyyymmddhhnnss',Now);
  TraIdx := IntToHex(00,8);
  data := Amount+ SFI + TrmNo + dt + TraIdx + RightStr(data,8) + MidStr(data,9,4) ;
  
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    StrPCopy(InData,data) ;
    Ret := DebitForPurchase(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Consumption: ' + Msg + ': ' + RetData );
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn13Click(Sender: TObject);
var
  RetData, Msg: PChar;
  Ret , SFI : Integer;
begin
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    SFI := $18;
    Ret := readRecord(SFI,1 ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Get record: ' + Msg + ': ' + RetData);
  finally
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

//0:   Key:        16B    [Key]
//1:   Key ID:  01B    [KID]
//2:   Transaction ID:  01B    [TID]
//3:   Recharging amount:    04B    [Amount]
//4:   Recharging terminal:    06B    [TrmNo]
//5:   Recharging date:    04B    [Date]
//6:   Recharging time:    03B    [Time]
procedure TMainForm.btn14Click(Sender: TObject);
var
  Ret : Integer;
  InData, RetData, Msg: PChar;
  NewKey ,KID ,TID ,Amount ,TrmNo ,dtDate ,dtTime ,data : string;
begin
  if Trim(COSEdit.Text) = '' then
  begin
    AddLog('Recharging amount can not be null.');
    Exit;
  end;
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    KID := IntToHex(01,2);
    TID := IntToHex(02,2);
    Amount := InversionStr(IntToHex(StrToInt(COSEdit.Text),8));
    TrmNo := IntToHex(23,12);
    dtDate := FormatDateTime('yyyymmdd',Now);
    dtTime := FormatDateTime('hhnnss',Now);
    if chk1.Checked then
      NewKey := MasterKey
    else
      NewKey := Key ;

    if Length(NewKey) = 0 then
    begin
      AddLog('Key can not be null.');
      Exit;
    end;

    data := NewKey + ',' + KID +',' + TID + ',' + Amount + ',' + TrmNo + ',' + dtDate + ',' + dtTime;
    StrPCopy(InData,data) ;
    Ret := addValue(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Add: ' + Msg + ' TAC: ' + RetData );
    edtSK.Text := StrPas(RetData);
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn15Click(Sender: TObject);
var
  Ret : Integer;
  InData, RetData, Msg: PChar;  
  NewKey,KID ,TID ,Amount ,TrmNo ,dtDate ,dtTime ,data ,TrmTraId : string;
begin
  InData := StrAlloc(255);
  RetData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    KID := IntToHex(01,2);
    TID := IntToHex(06,2);
    Amount := InversionStr(IntToHex(StrToInt(COSEdit.Text),8));
    TrmNo := IntToHex(23,12);
    dtDate := FormatDateTime('yyyymmdd',Now);
    dtTime := FormatDateTime('hhnnss',Now);
    TrmTraId := IntToHex(01,8);

    if chk1.Checked then
      NewKey := MasterKey
    else
      NewKey := Key ;

    if Length(NewKey) = 0 then
    begin
      AddLog('Key can not be null.');
      Exit;
    end;

    data := NewKey + ',' + KID +',' + TID + ',' + Amount + ',' + TrmNo + ',' + dtDate + ',' + dtTime + ',' + TrmTraId;
    StrPCopy(InData,data) ;
    Ret := delValue(InData ,RetData);
    GetMsg(Ret, Msg);
    AddLog('Subtract: ' + Msg + ' TAC: ' + RetData );
    edtSK.Text := StrPas(RetData);
  finally
    StrDispose(InData);
    StrDispose(RetData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn16Click(Sender: TObject);
var
  InData, Msg: PChar;
  Ret : Integer;
  KeyType ,KeyIdentifier ,OldKey ,NewKey ,data : string;
begin
  InData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    case cbb3.ItemIndex of
      0 :
        begin
          KeyType := '36'; {Maintenance key}
          KeyIdentifier := '00' ;
        end;
      1 :
        begin
          KeyType :='3E';  {Consumption password}
//          KeyType :='26' ; {Consumption key}
          KeyIdentifier := '01' ;
        end;
      2 :
        begin
          KeyType :='3F';  {Recharging key}
//          KeyType :='27';  {Recharging key}
          KeyIdentifier := '01' ;
        end;
      3 :
        begin
          KeyType := '39'; {Master control key}
          KeyIdentifier := '00' ;
        end;
    end;

    if Length(MasterKey) = 0 then
    begin
      AddLog('Key can not be null.');
      Exit;
    end;

    if chk1.Checked then
    begin
      OldKey := MasterKey;
      NewKey := Key ;
    end
    else begin
      OldKey := Key ;
      NewKey := MasterKey ;
    end; 

    data := KeyType + ',' + KeyIdentifier + ',' + OldKey + ',' + NewKey ;

    StrPCopy(InData,data) ;
    Ret := updateKey(InData);
    GetMsg(Ret, Msg);
    AddLog('Modify key: ' + Msg );
  finally
    StrDispose(InData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.btn17Click(Sender: TObject);
var
  InData,OutData, Msg: PChar;
  Ret : Integer;
  SN ,Key ,data : string;
begin
  InData := StrAlloc(255);
  OutData := StrAlloc(255);
  Msg := StrAlloc(255);
  try
    Ret := GetCardSN(InData, False);
    if Ret <> 0 then Exit;

    SN :=  StrPas(InData) ;
    Key := '1122334455667788';
    data := SN + ',' + Key ;

    StrPCopy(InData,data) ;
    CalcHashKey(InData,OutData);
    AddLog('Calculate master control key: ' + Msg + ':' + StrPas(OutData));
    MasterKey := StrPas(OutData);
  finally
    StrDispose(InData);
    StrDispose(OutData);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MasterKey := '';
end;

procedure TMainForm.Button45Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBSetTypeAOrB(1), Msg);
    AddLog('Set TypeB: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button46Click(Sender: TObject);
var
  TagType: Integer;
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    TagType := 1;
    GetMsg(USBRequestCard(1, TagType), Msg);
    AddLog('Request TypeB: ' + Msg + ' tag: ' + IntToStr(TagType));
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button47Click(Sender: TObject);
var
  Msg: PChar;
begin
  Msg := StrAlloc(100);
  try
    GetMsg(USBPreventionCollisionTypeB(), Msg);
    AddLog('TypeB anticollision: ' + Msg);
  finally
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button48Click(Sender: TObject);
var
  SerialNum: PChar;
  Msg: PChar;
begin
  SerialNum := StrAlloc(100);
  Msg := StrAlloc(100);
  try
    GetMsg(USBReadIDCardSN(SerialNum), Msg);
    AddLog('Read TypeB card serial number: ' + Msg + ' Return: ' + StrPas(SerialNum));
  finally
    StrDispose(SerialNum);
    StrDispose(Msg);
  end;
end;

procedure TMainForm.Button51Click(Sender: TObject);
var
  Sector: Integer;
  Key, Msg: PChar;
  Ret: Integer;
  Times: Integer;
begin
  Button51.Enabled := False;
  try
    Sector := StrToInt(SectorComboBox.Text);
    Key := StrAlloc(20);
    Msg := StrAlloc(255);
    try
      StrPCopy(Key, SysKey2);
      Times := 0;
      Ret := AddMoneyInfo(Sector, StrToInt(Edit3.Text), Key, StrToInt(Edit2.Text), True, Times, StrToInt(Edit4.Text));
      GetMsg(Ret, Msg);
      AddLog('Add: ' + Msg + ', Times: ' + IntToStr(Times));
      if Ret <> 0 then
        ShowMessage('Failed to add.');
    finally
      StrDispose(Key);
      StrDispose(Msg);
    end;
  finally
    Button51.Enabled := True;
  end;
end;

procedure TMainForm.Button49Click(Sender: TObject);
var
  Sector: Integer;
  Key, Msg: PChar;
  Ret: Integer;
  Times: Integer;
begin
  Button49.Enabled := False;
  try
    Sector := StrToInt(SectorComboBox.Text);
    Key := StrAlloc(20);
    Msg := StrAlloc(255);
    try
      StrPCopy(Key, SysKey2);
      Times := 0;
      Ret := CutMoneyInfo(Sector, StrToInt(Edit3.Text), Key, StrToInt(Edit2.Text), True, Times, StrToInt(Edit4.Text));
      GetMsg(Ret, Msg);
      AddLog('Subtract: ' + Msg + ', times: ' + IntToStr(Times));
      if Ret <> 0 then
        ShowMessage('Failed to subtract.');
    finally
      StrDispose(Key);
      StrDispose(Msg);
    end;
  finally
    Button49.Enabled := True;
  end;
end;

end.


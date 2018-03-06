unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    btnLerArquivo: TBitBtn;
    procedure btnLerArquivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnLerArquivoClick(Sender: TObject);
var
nodenome : IXMLNode;
ChildNode : IXMLNode;
noderow : IXMLNode;
I : Integer;
begin
  XMLDocument1.LoadFromFile('C:\Users\Vinicius Bustamanti\Desktop\Leitor de XML\data.xml');
  noderow := XMLDocument1.ChildNodes.FindNode('root');
  ChildNode := noderow.childNodes[0];

  for I := 0 to noderow.ChildNodes.Count -1 do
  begin
    if ChildNode.NodeName = 'row' then
    begin
      ListBox1.Items.Add(ChildNode.ChildValues['id']);
      ListBox1.Items.Add(ChildNode.ChildValues['first_name']);
      ListBox1.Items.Add(ChildNode.ChildValues['last_name']);
      ListBox1.Items.Add(ChildNode.ChildValues['email']);
      ListBox1.Items.Add(ChildNode.ChildValues['gender']);
      ListBox1.Items.Add(ChildNode.ChildValues['ip_address']);
      ListBox1.Items.Add('');

      ChildNode := ChildNode.nextSibling;
    end;
  end;

end;
end.


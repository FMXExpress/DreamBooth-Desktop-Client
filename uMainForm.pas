unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.Controls.Presentation, FMX.MultiView, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FMX.Memo.Types, FMX.Edit, FMX.StdCtrls, FMX.ListBox,
  FMX.Layouts, FMX.ScrollBox, FMX.Memo, FMX.ExtCtrls, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Grid, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text, FireDAC.Comp.UI,
  FireDAC.Stan.StorageBin, FMX.TabControl, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TMainForm = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    ResponseMemTable: TFDMemTable;
    MaterialOxfordBlueSB: TStyleBook;
    MultiView1: TMultiView;
    GenerateButton: TButton;
    PostBodyMemo: TMemo;
    Layout1: TLayout;
    ImageFormatCB: TComboBox;
    Label1: TLabel;
    Layout2: TLayout;
    VariationCB: TComboBox;
    Label2: TLabel;
    Layout3: TLayout;
    SuperChargeCB: TComboBox;
    Label3: TLabel;
    Layout4: TLayout;
    StyleCB: TComboBox;
    Label4: TLabel;
    Layout5: TLayout;
    PerspectiveCB: TComboBox;
    Label5: TLabel;
    Layout6: TLayout;
    Label6: TLabel;
    SubjectEdit: TEdit;
    UploadImagesButton: TButton;
    TrainButton: TButton;
    PromptMemo: TMemo;
    Label7: TLabel;
    NegativePromptMemo: TMemo;
    ImageViewer0: TImageViewer;
    ProgressBar: TProgressBar;
    Layout7: TLayout;
    Label8: TLabel;
    ImagesURLEdit: TEdit;
    NetHTTPClient1: TNetHTTPClient;
    UploadHTTPRequest: TNetHTTPRequest;
    Layout8: TLayout;
    Label9: TLabel;
    ModelNameEdit: TEdit;
    BuildPromptButton: TButton;
    RandomButton: TButton;
    CheckModelRESTClient: TRESTClient;
    CheckModelRESTRequest: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    ModelResponseMemTable: TFDMemTable;
    Layout9: TLayout;
    VerifyModelButton: TButton;
    StatusBar: TStatusBar;
    StatusLabel: TLabel;
    PromptRESTClient: TRESTClient;
    PromptRESTRequest: TRESTRequest;
    PromptRESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    PromptMemTable: TFDMemTable;
    PromptPostBodyMemo: TMemo;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    GetHTTPRequest: TNetHTTPRequest;
    RetryTimer: TTimer;
    ProgressTimer: TTimer;
    FDBatchMove1: TFDBatchMove;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDBatchMoveTextReader1: TFDBatchMoveTextReader;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    PerspectiveTable: TFDMemTable;
    ImageFormatTable: TFDMemTable;
    VariationTable: TFDMemTable;
    SuperChargeTable: TFDMemTable;
    StyleTable: TFDMemTable;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    Layout10: TLayout;
    GridPanelLayout1: TGridPanelLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    ImageViewer1: TImageViewer;
    ImageViewer2: TImageViewer;
    ImageViewer3: TImageViewer;
    TabControl1: TTabControl;
    ModelTabItem: TTabItem;
    GenTabItem: TTabItem;
    AdvancedTab: TTabItem;
    Image1: TImage;
    BindSourceDB7: TBindSourceDB;
    ModelsRESTClient: TRESTClient;
    ModelsRESTRequest: TRESTRequest;
    ModelsRESTResponse: TRESTResponse;
    ModelsRESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    ModelsMemTable: TFDMemTable;
    BindSourceDB8: TBindSourceDB;
    ImagesListView: TListView;
    Label10: TLabel;
    ApiKeyEdit: TEdit;
    ModelsStringGrid: TStringGrid;
    GetModelsButton: TButton;
    Label11: TLabel;
    OpenDialog1: TOpenDialog;
    Layout15: TLayout;
    Label12: TLabel;
    LocalZipEdit: TEdit;
    LocateButton: TButton;
    LinkGridToDataSourceBindSourceDB82: TLinkGridToDataSource;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ModelIdEdit: TEdit;
    Label20: TLabel;
    ModelVersionIdEdit: TEdit;
    procedure TrainButtonClick(Sender: TObject);
    procedure UploadImagesButtonClick(Sender: TObject);
    procedure VerifyModelButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GenerateButtonClick(Sender: TObject);
    procedure RetryTimerTimer(Sender: TObject);
    procedure ProgressTimerTimer(Sender: TObject);
    procedure RandomButtonClick(Sender: TObject);
    procedure BuildPromptButtonClick(Sender: TObject);
    procedure GetModelsButtonClick(Sender: TObject);
    procedure LocateButtonClick(Sender: TObject);
  private
    { Private declarations }
    ModelId: String;
    NextViewer: Integer;
  public
    { Public declarations }
  end;
  const
    SD15_MODEL_VERSION_ID = 'cd3f925f7ab21afaef7d45224790eedbb837eeac40d22e8fefe015489ab644aa';
    SD21_MODEL_VERSION_ID = 'd5e058608f43886b9620a8fbb1501853b8cbae4f45c857a014011c86ee614ffb';
    CACHE_DIR = 'cache';

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  System.Threading, System.Math, IdHashMessageDigest, System.IOUtils, System.JSON, System.DateUtils,
  System.IniFiles;

function MD5(const AString: String): String;
var
  LHash: TIdHashMessageDigest5;
begin
  LHash := TIdHashMessageDigest5.Create;
  try
    Result := LHash.HashStringAsHex(AString);
  finally
    LHash.Free;
  end;
end;

procedure TMainForm.VerifyModelButtonClick(Sender: TObject);
begin
  ModelId := ModelIdEdit.Text;
  if ModelId='' then
  begin
    ShowMessage('Model Id required.');
    Exit;
  end;

  VerifyModelButton.Enabled := False;
  ProgressBar.Visible := True;
  CheckModelRESTClient.BaseURL := 'https://dreambooth-api-experimental.replicate.com/v1/trainings/' + ModelId;
  CheckModelRESTRequest.Params[0].Value := CheckModelRESTRequest.Params[0].Value.Replace('%api_key%',ApiKeyEdit.Text);
  TTask.Run(procedure begin
    try
    CheckModelRESTRequest.Execute;

        TThread.Synchronize(nil,procedure begin
          StatusLabel.Text := 'Status: ' + ModelResponseMemTable.FieldByName('status').AsString + ' Created At: ' + ModelResponseMemTable.FieldByName('created_at').AsString;
          ModelVersionIdEdit.Text := ModelResponseMemTable.FieldByName('version').AsString;

          var IniFile := TMemIniFile.Create( TPath.Combine(ExtractFilePath(ParamStr(0)),'settings.ini'));
          IniFile.WriteString('Settings','ModelId',ModelIdEdit.Text);
          IniFile.WriteString('Settings','ModelVersionId',ModelVersionIdEdit.Text);
          IniFile.UpdateFile;
          IniFile.Free;

          ProgressBar.Visible := False;
          VerifyModelButton.Enabled := True;
        end);

    except
      on E:Exception do
        begin
          TThread.Synchronize(nil,procedure begin
            StatusLabel.Text := 'Status: Error';
            ProgressBar.Visible := False;
            VerifyModelButton.Enabled := True;
          end);
        end;
    end;
  end);
end;

procedure TMainForm.BuildPromptButtonClick(Sender: TObject);
begin
  PromptMemo.Lines.Text := ImageFormatCB.Items[ImageFormatCB.ItemIndex];
  PromptMemo.Lines.Text := PromptMemo.Lines.Text + ' of ' + SubjectEdit.Text;
  PromptMemo.Lines.Text := PromptMemo.Lines.Text + ', ' + PerspectiveCB.Items[PerspectiveCB.ItemIndex];
  PromptMemo.Lines.Text := PromptMemo.Lines.Text + ', in the style of ' + StyleCB.Items[StyleCB.ItemIndex];
  PromptMemo.Lines.Text := PromptMemo.Lines.Text + ', ' + VariationCB.Items[VariationCB.ItemIndex];
  PromptMemo.Lines.Text := PromptMemo.Lines.Text + ', ' + SuperChargeCB.Items[SuperChargeCB.ItemIndex];
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  LDir, LFileName: String;
  LFilterPredicate : TDirectory.TFilterPredicate;
begin
  NextViewer := 0;

  LocalZipEdit.Text := ExtractFilePath(ParamStr(0)) + 'images.zip';

  FDBatchMoveDataSetWriter1.DataSet := ImageFormatTable;
  FDBatchMoveTextReader1.FileName := ExtractFilePath(ParamStr(0)) + 'imageformat.txt';
  FDBatchMove1.Execute;
  FDBatchMoveDataSetWriter1.DataSet := PerspectiveTable;
  FDBatchMoveTextReader1.FileName := ExtractFilePath(ParamStr(0)) + 'perspective.txt';
  FDBatchMove1.Execute;
  FDBatchMoveDataSetWriter1.DataSet := StyleTable;
  FDBatchMoveTextReader1.FileName := ExtractFilePath(ParamStr(0)) + 'style.txt';
  FDBatchMove1.Execute;
  FDBatchMoveDataSetWriter1.DataSet := VariationTable;
  FDBatchMoveTextReader1.FileName := ExtractFilePath(ParamStr(0)) + 'variation.txt';
  FDBatchMove1.Execute;
  FDBatchMoveDataSetWriter1.DataSet := SuperChargeTable;
  FDBatchMoveTextReader1.FileName := ExtractFilePath(ParamStr(0)) + 'supercharge.txt';
  FDBatchMove1.Execute;
  RandomButtonClick(Self);

  if not TDirectory.Exists(ExtractFilePath(ParamStr(0)) + CACHE_DIR) then
    TDirectory.CreateDirectory(ExtractFilePath(ParamStr(0)) + CACHE_DIR);


  LDir := ExtractFilePath(ParamStr(0));
  LFilterPredicate := function(const Path: string; const SearchRec: TSearchRec): Boolean
                     begin
                       Result := (TPath.MatchesPattern(SearchRec.Name, '*.*', False)); // and

                       if Result then // Check if it is a image file
                       begin
                         Result := Pos(LowerCase(ExtractFileExt(SearchRec.Name)),
                                   TBitmapCodecManager.GetFileTypes) > 0;
                       end;
                     end;

  for LFileName in TDirectory.GetFiles(LDir, LFilterPredicate) do
  begin
    ImagesListView.Items.Add.Bitmap.LoadThumbnailFromFile(LFileName,128,128);
  end;

  var IniFile := TMemIniFile.Create( TPath.Combine(ExtractFilePath(ParamStr(0)),'settings.ini'));
  ModelIdEdit.Text := IniFile.ReadString('Settings','ModelId','');
  ModelVersionIdEdit.Text := IniFile.ReadString('Settings','ModelVersionId','');
  IniFile.Free;
end;

procedure TMainForm.GenerateButtonClick(Sender: TObject);
begin
  if PromptMemo.Lines.Text='' then Exit;

  GenerateButton.Enabled := False;
  ProgressBar.Visible := True;
  PromptRESTRequest.Params[0].Value := PromptRESTRequest.Params[0].Value.Replace('%api_key%',ApiKeyEdit.Text);
  PromptRESTRequest.Params[1].Value := PromptPostBodyMemo.Lines.Text.Replace('%prompt%',PromptMemo.Lines.Text).Replace('%version%',ModelVersionIdEdit.Text);
  TTask.Run(procedure begin
    try
    PromptRESTRequest.Execute;

       TThread.Synchronize(nil,procedure begin
         StatusLabel.Text := 'Status: ' + PromptMemTable.FieldByName('status').AsString + ' Created At Time: ' + PromptMemTable.FieldByName('created_at').AsString;
         GenerateButton.TagString := PromptMemTable.FieldByName('id').AsString;
         StatusLabel.TagString := PromptMemTable.FieldByName('output').AsString.Replace('["','').Replace('"]','').Replace('\/','/');
         RetryTimer.Enabled := True;
       end);

    except
      on E:Exception do
        begin
          TThread.Synchronize(nil,procedure begin
            StatusLabel.Text := 'Status: Error';
            ProgressBar.Visible := False;
            GenerateButton.Enabled := True;
          end);
        end;
    end;
  end);
end;

procedure TMainForm.GetModelsButtonClick(Sender: TObject);
begin
  var LToken := 'Token %api_key%';
  ModelsRESTRequest.Params[0].Value := LToken.Replace('%api_key%',ApiKeyEdit.Text);
  ModelsRESTRequest.Execute;
end;

procedure TMainForm.LocateButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    LocalZipEdit.Text := OpenDialog1.FileName;
  end;
end;

procedure TMainForm.ProgressTimerTimer(Sender: TObject);
begin
  if ProgressBar.Value=ProgressBar.Max then
    ProgressBar.Value := ProgressBar.Min
  else
    ProgressBar.Value := ProgressBar.Value+5;
end;

procedure TMainForm.RandomButtonClick(Sender: TObject);
begin
  ImageFormatCB.ItemIndex := RandomRange(0,ImageFormatCB.Items.Count-1);
  PerspectiveCB.ItemIndex := RandomRange(0,PerspectiveCB.Items.Count-1);
  StyleCB.ItemIndex := RandomRange(0,StyleCB.Items.Count-1);
  VariationCB.ItemIndex := RandomRange(0,VariationCB.Items.Count-1);
  SuperChargeCB.ItemIndex := RandomRange(0,SuperChargeCB.Items.Count-1);
end;

procedure TMainForm.RetryTimerTimer(Sender: TObject);
var
LSS: TStringStream;
LRemoteURL: String;
LStatus: String;
begin
  RetryTimer.Enabled := False;

  LSS := TStringStream.Create;

  GetHTTPRequest.Get(PromptRESTClient.BaseURL + '/' + GenerateButton.TagString,LSS,(function: TNetHeaders
      begin
          Result := [TNetHeader.Create('Authorization', 'Token '+ApiKeyEdit.Text)];
      end)());

  var JsonObject := TJSonObject.Create;
  try
    var JsonValue := JsonObject.ParseJSONValue(LSS.DataString);
    LStatus := (JsonValue as TJSONObject).Get('status').JsonValue.Value;

    LRemoteURL := (JsonValue as TJSONObject).Get('output').JsonValue.A[0].Value;
  except
    on E: Exception do
    begin
      TThread.Synchronize(nil,procedure begin
        StatusLabel.Text := 'Status: ' + E.Message + '. Trying again in 10 seconds...';
      end);
    end;
  end;

  JsonObject.Free;
  LSS.Free;

  if LRemoteURL<>'' then
  begin

   TTask.Run(procedure var LMS: TMemoryStream; begin
      LMS := TMemoryStream.Create;
      try
        NetHTTPClient1.Get(LRemoteURL,LMS);
        TThread.Synchronize(nil,procedure begin
          case NextViewer of
            0: begin ImageViewer0.Bitmap.LoadFromStream(LMS); NextViewer := 1; end;
            1: begin ImageViewer1.Bitmap.LoadFromStream(LMS); NextViewer := 2; end;
            2: begin ImageViewer2.Bitmap.LoadFromStream(LMS); NextViewer := 3; end;
            3: begin ImageViewer3.Bitmap.LoadFromStream(LMS); NextViewer := 0; end;
          end;
          var LFileName := TPath.Combine(ExtractFilePath(ParamStr(0)),MD5(StatusLabel.TagString + IntToStr(DateTimeToUnix(Now))) + '.png');
          LMS.SaveToFile(LFileName);
          ImagesListView.Items.AddItem(0).Bitmap.LoadThumbnailFromFile(LFileName,128,128);
        end);
      finally
        LMS.Free;
        TThread.Synchronize(nil,procedure begin
          ProgressBar.Visible := False;
          GenerateButton.Enabled := True;
          StatusLabel.Text := 'Status: ' + LStatus;
        end);
      end;
    end);
  end
  else
  begin
   RetryTimer.Enabled := True;
  end;

end;


//{
//				"input": {
//					"instance_prompt": "a photo of a cjw person",
//					"class_prompt": "a photo of a person",
//					"instance_data": "https://example.com/v1/data.zip",
//					"max_train_steps": 2000
//				},
//				"model": "fmxexpress/mymodal",
//				"trainer_version": "cd3f925f7ab21afaef7d45224790eedbb837eeac40d22e8fefe015489ab644aa",
//				"webhook_completed": null
// 			}
procedure TMainForm.TrainButtonClick(Sender: TObject);
begin
  if ImagesURLEdit.Text='' then Exit;

  TrainButton.Enabled := False;
  ProgressBar.Visible := True;
  RESTRequest1.Params[0].Value := RESTRequest1.Params[0].Value.Replace('%api_key%',ApiKeyEdit.Text);
  RESTRequest1.Params[1].Value := PostBodyMemo.Lines.Text.Replace('%images_url%',ImagesURLEdit.Text).Replace('%model%',ModelNameEdit.Text).Replace('%trainer_version%',SD15_MODEL_VERSION_ID);
  TTask.Run(procedure begin
    try
    RESTRequest1.Execute;

       TThread.Synchronize(nil,procedure begin
          ModelIdEdit.Text := ResponseMemTable.FieldByName('id').AsString;
          StatusLabel.Text := 'Status: ' + ResponseMemTable.FieldByName('status').AsString + ' Created At: ' + ResponseMemTable.FieldByName('created_at').AsString;
         // ModelVersionIdEdit.Text := ResponseMemTable.FieldByName('version').AsString;

          var IniFile := TMemIniFile.Create( TPath.Combine(ExtractFilePath(ParamStr(0)),'settings.ini'));
          IniFile.WriteString('Settings','ModelId',ModelIdEdit.Text);
          //IniFile.WriteString('Settings','ModelVersionId',ModelVersionIdEdit.Text);
          IniFile.UpdateFile;
          IniFile.Free;

          ProgressBar.Visible := False;
          GenerateButton.Enabled := True;
       end);
    except
      on E:Exception do
        begin
          TThread.Synchronize(nil,procedure begin
            StatusLabel.Text := 'Status: Error';
            ProgressBar.Visible := False;
            TrainButton.Enabled := True;
          end);
        end;
    end;
  end);
end;

procedure TMainForm.UploadImagesButtonClick(Sender: TObject);
var
LMS: TMemoryStream;
LSS: TStringStream;
begin

  UploadImagesButton.Enabled := False;
  ProgressBar.Visible := True;

  TTask.Run(procedure begin
    try

      LSS := TStringStream.Create;
      LMS := TMemoryStream.Create;

      UploadHTTPRequest.Post('https://dreambooth-api-experimental.replicate.com/v1/upload/data.zip',LMS,LSS,(function: TNetHeaders
          begin
              Result := [TNetHeader.Create('Authorization', 'Token '+ApiKeyEdit.Text)];
          end)());

      LMS.LoadFromFile(LocalZipEdit.Text);

      NegativePromptMemo.Lines.LoadFromStream(LSS);

      var JsonObject := TJSonObject.Create;
      try
        var JsonValue := JsonObject.ParseJSONValue(LSS.DataString);
        var LUpload_url := (JsonValue as TJSONObject).Get('upload_url').JSONValue.Value;
        var LServing_url := (JsonValue as TJSONObject).Get('serving_url').JSONValue.Value;

        UploadHTTPRequest.Put(LUpload_url,LMS,LSS,(function: TNetHeaders
            begin
                Result := [TNetHeader.Create('Content-Type', 'application/zip')];
            end)());

        //PromptMemo.Lines.LoadFromStream(LSS);

        ImagesURLEdit.Text := LServing_url;
      finally
       JsonObject.Free;
      end;



      LMS.Free;
      LSS.Free;

          TThread.Synchronize(nil,procedure begin
            StatusLabel.Text := 'Status: Complete';
            ProgressBar.Visible := False;
            UploadImagesButton.Enabled := True;
          end);

    except
      on E:Exception do
        begin
          TThread.Synchronize(nil,procedure begin
            StatusLabel.Text := 'Status: Error';
            ProgressBar.Visible := False;
            UploadImagesButton.Enabled := True;
          end);
        end;
    end;
  end);

end;

end.

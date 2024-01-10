unit RetailEase_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, pngimage, ExtCtrls, Buttons, Spin, JPEG, Math,
  Printers, MPlayer;

type
  TfrmRetailEase = class(TForm)
    tsLogon: TTabSheet;
    imgLogon: TImage;
    lblUserName: TLabel;
    lblPassword: TLabel;
    imgProfile: TImage;
    imgViewLogin: TImage;
    imgHideLogin: TImage;
    edtUserName: TEdit;
    edtPassKey: TEdit;
    memUserNames: TMemo;
    memPasswords: TMemo;
    memLogins: TMemo;
    memTypeAccount: TMemo;
    bmbLogin: TBitBtn;
    bmbCreateAccountPrompt: TBitBtn;
    tsCreateAccount: TTabSheet;
    imgCreate: TImage;
    lblCreatePassword: TLabel;
    lblCreateUserName: TLabel;
    imgCreateAccount: TImage;
    imgViewCreate: TImage;
    imgHideCreate: TImage;
    edtCreatePassKey: TEdit;
    rgpTypeAccounts: TRadioGroup;
    tsRegister: TTabSheet;
    imgRegister: TImage;
    lblReceiptHeader: TLabel;
    lblQuantityHeader: TLabel;
    sedQuantity: TSpinEdit;
    bmbFinalizeOrder: TBitBtn;
    bmbAddReceipt: TBitBtn;
    tsChange: TTabSheet;
    imgChange: TImage;
    lblChangeHeader: TLabel;
    redChange: TRichEdit;
    bmbChange: TBitBtn;
    tsAccounts: TTabSheet;
    imgAccounts: TImage;
    lblAccountHeader: TLabel;
    bmbDeleteAccount: TBitBtn;
    bmbSaveAccount: TBitBtn;
    tsStock: TTabSheet;
    imgStock: TImage;
    pnlNavigation: TPanel;
    imgLock: TImage;
    imgHelp: TImage;
    lstStockCustomize: TListBox;
    bmbStockDelete: TBitBtn;
    bmbStockSave: TBitBtn;
    tsAbout: TTabSheet;
    redAbout: TRichEdit;
    redReciept: TRichEdit;
    memAccounts: TMemo;
    bmbCreateAccount: TBitBtn;
    bmbReturnLogIn: TBitBtn;
    memRegisteredUsernames: TMemo;
    lblStockHeader: TLabel;
    bmbRegisterReset: TBitBtn;
    bmbEditStock: TBitBtn;
    tsAddStock: TTabSheet;
    imgAddStock: TImage;
    pnlAddStock: TPanel;
    lblCustomizeStockHeader: TLabel;
    edtCategory: TEdit;
    edtProductName: TEdit;
    edtPrice: TEdit;
    sedCurrentStockNew: TSpinEdit;
    sedMinimumStockNew: TSpinEdit;
    lblProductNameHeader: TLabel;
    lblCategoryHeader: TLabel;
    lblPriceHeader: TLabel;
    bmbRegisterNewStock: TBitBtn;
    redNewProductPreview: TRichEdit;
    bmbPreviewNewStock: TBitBtn;
    pgcMain: TPageControl;
    bmbAddProductReset: TBitBtn;
    bmbAddAccounts: TBitBtn;
    bmbReturnAccounts: TBitBtn;
    bmbCancelEdit: TBitBtn;
    lstStockViewBE: TListBox;
    redFinalReciept: TRichEdit;
    lblChangeHeader1: TLabel;
    bmbPrint: TBitBtn;
    bmbMasterReset: TBitBtn;
    bmbAddproduct: TBitBtn;
    memReceipt: TMemo;
    pnlNavigationRegister1: TPanel;
    edtSubTotal: TEdit;
    lblSubTotal: TLabel;
    bmbAddNewAccounts: TBitBtn;
    redHelp: TRichEdit;
    bmbCancelOrder: TBitBtn;
    imgSubTotal: TImage;
    bmbStockEditRevert: TBitBtn;
    bmbSaveStockEdits: TBitBtn;
    memPhrases: TMemo;
    lstRegisteredUsers: TListBox;
    pnlAccountError: TPanel;
    tmrGreet: TTimer;
    lblToolTip: TLabel;
    edtCreateUsername: TEdit;
    mplBoot: TMediaPlayer;
    lstStockViewFE: TListBox;
    procedure imgAccountsNextClick(Sender: TObject);
    procedure bmbReturnClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure imgRegisterPreviousClick(Sender: TObject);
    procedure imgChangeLockClick(Sender: TObject);
    procedure imgAccountsLockClick(Sender: TObject);
    procedure imgHideCreateClick(Sender: TObject);
    procedure imgHideLoginClick(Sender: TObject);
    procedure bmbAboutClick(Sender: TObject);
    procedure bmbCreateAccountPromptClick(Sender: TObject);
    procedure bmbStockSaveClick(Sender: TObject);
    procedure bmbLoginClick(Sender: TObject);
    procedure btnCreateAccountClick(Sender: TObject);
    procedure imgViewLoginClick(Sender: TObject);
    procedure imgViewCreateClick(Sender: TObject);
    procedure bmbCreateAccountClick(Sender: TObject);
    procedure bmbReturnLogInClick(Sender: TObject);
    procedure bmbDeleteAccountClick(Sender: TObject);
    procedure bmbChangeClick(Sender: TObject);
    procedure bmbFinalizeOrderClick(Sender: TObject);
    procedure btnLoadStockClick(Sender: TObject);
    procedure bmbSaveAccountClick(Sender: TObject);
    procedure bmbStockDeleteClick(Sender: TObject);
    procedure bmbAddReceiptClick(Sender: TObject);
    procedure bmbRegisterResetClick(Sender: TObject);
    procedure bmbEditStockClick(Sender: TObject);
    procedure bmbPreviewNewStockClick(Sender: TObject);
    procedure imgAddPreviousClick(Sender: TObject);
    procedure imgLockClick(Sender: TObject);
    procedure bmbAddProductResetClick(Sender: TObject);
    procedure bmbLoadAccountsClick(Sender: TObject);
    procedure bmbAddAccountsClick(Sender: TObject);
    procedure bmbReturnAccountsClick(Sender: TObject);
    procedure bmbCancelEditClick(Sender: TObject);
    procedure bmbPrintClick(Sender: TObject);
    procedure bmbMasterResetClick(Sender: TObject);
    procedure bmbRegisterNewStockClick(Sender: TObject);
    procedure bmbAddproductClick(Sender: TObject);
    procedure bmbPrintMouseEnter(Sender: TObject);
    procedure lstStockCustomizeMouseEnter(Sender: TObject);
    procedure lstStockCustomizeMouseLeave(Sender: TObject);
    procedure bmbStockRefreshClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure imgHelpMouseEnter(Sender: TObject);
    procedure imgChangeLockMouseEnter(Sender: TObject);
    procedure imgLockMouseEnter(Sender: TObject);
    procedure bmbAddNewAccountsClick(Sender: TObject);
    procedure bmbRegisterResetMouseEnter(Sender: TObject);
    procedure edtPassKeyKeyPress(Sender: TObject; var Key: Char);
    procedure edtCategoryMouseEnter(Sender: TObject);
    procedure edtProductNameMouseEnter(Sender: TObject);
    procedure edtPriceMouseEnter(Sender: TObject);
    procedure tsAboutShow(Sender: TObject);
    procedure tsLogonShow(Sender: TObject);
    procedure tsCreateAccountShow(Sender: TObject);
    procedure tsRegisterShow(Sender: TObject);
    procedure tsChangeShow(Sender: TObject);
    procedure tsStockShow(Sender: TObject);
    procedure tsAddStockShow(Sender: TObject);
    procedure tsAccountsShow(Sender: TObject);
    procedure imgHelpClick(Sender: TObject);
    procedure redRecieptDblClick(Sender: TObject);
    procedure bmbStockEditRevertClick(Sender: TObject);
    procedure bmbSaveStockEditsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lstStockViewBEMouseLeave(Sender: TObject);
    procedure lstRegisteredUsersMouseEnter(Sender: TObject);
    procedure lstRegisteredUsersMouseLeave(Sender: TObject);
    procedure edtCreateUserNameMouseEnter(Sender: TObject);
    procedure edtCreatePassKeyMouseEnter(Sender: TObject);
    procedure edtUserNameMouseEnter(Sender: TObject);
    procedure edtPassKeyMouseEnter(Sender: TObject);
    procedure edtUserNameChange(Sender: TObject);
    procedure edtPassKeyChange(Sender: TObject);
    procedure edtCreateUserNameChange(Sender: TObject);
    procedure edtCreatePassKeyChange(Sender: TObject);
    procedure tmrGreetTimer(Sender: TObject);
    procedure rgpTypeAccountsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstStockCustomizeClick(Sender: TObject);
    procedure imgHideLoginMouseEnter(Sender: TObject);
    procedure lstStockViewFEDblClick(Sender: TObject);
    procedure lstStockViewFEClick(Sender: TObject);
    procedure lstStockViewFEMouseEnter(Sender: TObject);
    procedure redHelpChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Help(HelpBox: TRichEdit);
    procedure Refresh();
    procedure OnShow();
  end;

var
  frmRetailEase: TfrmRetailEase;
  // User & Customer credentials
  sCustomer, sCurrent, sUser, sCurrentPassKey, sCurrentUser, sNewProduct,
    sCustomerName, sOldSelect: string;
  // Register booleans
  sSelect, sCurrentStock, sMinimumStock, sCategory, sPrice,
    sProductName: string;
  // Stock editing
  bCategoryEdit, bUsernameChar, bProductNameEdit, bPriceEdit, bStock,
    bRegisteredUsernameMain, bRegisteredUsernameSecondary: Boolean;
  // Prices
  rTotal, rPrice: Real;
  iSelect, iCount: Integer;
  // Temporary username and password after creation Auto-sign in
  sTempUsername, sTempPassword : string;
implementation

{$R *.dfm}

procedure TfrmRetailEase.bmbEditStockClick(Sender: TObject);
var
  iPosCurrentDL, iPosMinimumDL, iPosCategoryDL, iPosPriceDL,
    iPosPriceDot: Integer;
  I, J, K, L, M: Integer;
begin
  if lstStockCustomize.ItemIndex = -1 then // Checks if an item has been selected in the TListBox
  begin
    lstStockCustomize.Color := $00B3B3FF;
  end
  else
  begin // If something has been selected, certain buttons now become available, and the curretly selected item gets processed.
    sCategory := '';
    sProductName := '';
    sPrice := '';
    sCurrentStock := '';
    sMinimumStock := '';
    sNewProduct := '';

    pgcMain.ActivePage := tsAddStock;
    tsAddStock.TabVisible := True;
    tsAddStock.Caption := 'Modify Stock';
    lblCustomizeStockHeader.Caption := 'Modify Stock';
    tsStock.TabVisible := False;
    tsAccounts.TabVisible := False;
    tsCreateAccount.TabVisible := False;
    redNewProductPreview.Lines.Add('New product preview:');
    bmbAddProductReset.Visible := False;
    bmbStockEditRevert.Visible := True;
    bmbRegisterNewStock.Visible := False;
    bmbSaveStockEdits.Visible := True;
    tsAddStock.TabVisible := True;
    sSelect := '';
    sSelect := lstStockCustomize.Items[lstStockCustomize.ItemIndex];
    iSelect := lstStockCustomize.Items.IndexOf(sSelect);
    sOldSelect := sSelect;
    iPosCurrentDL := Pos('|', sSelect);
    iPosMinimumDL := Pos('/', sSelect);
    iPosCategoryDL := Pos('_', sSelect);
    iPosPriceDL := Pos('@', sSelect);
    for I := iPosCurrentDL + 1 to iPosMinimumDL - 1 do
    begin
      sCurrentStock := sCurrentStock + sSelect[I];
    end;
    for J := iPosMinimumDL + 1 to Length(sSelect) do
    begin
      sMinimumStock := sMinimumStock + sSelect[J]
    end;
    for K := 1 to iPosCategoryDL - 1 do
    begin
      sCategory := sCategory + sSelect[K]
    end;
    for L := iPosCategoryDL + 1 to iPosPriceDL - 1 do
    begin
      sProductName := sProductName + sSelect[L];
    end;
    for M := iPosPriceDL + 1 to iPosCurrentDL - 1 do
    begin
      sPrice := sPrice + sSelect[M];
    end;

    edtCategory.Clear;
    edtProductName.Clear;
    edtPrice.Clear;
    sedMinimumStockNew.Clear;
    sedCurrentStockNew.Clear;

    edtCategory.Text := sCategory;
    iPosPriceDot := Pos(',', sPrice);
    sPrice[iPosPriceDot] := '.';
    edtPrice.Text := sPrice;
    edtProductName.Text := sProductName;
    sedCurrentStockNew.Value := StrToInt(sCurrentStock);
    sedMinimumStockNew.Value := StrToInt(sMinimumStock);
  end;
end;

procedure TfrmRetailEase.bmbStockRefreshClick(Sender: TObject);
begin
  case MessageDlg('Refresh the stock catalogue view?.', mtConfirmation,
    mbYesNo, 0) of
    mrYes:
      begin // if the user chooses to refresh the catalogue view (lstCustomize), the following code is run.
        lstStockCustomize.Items.Clear;
        lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
        lstStockCustomize.ItemIndex := -1;
        if lstStockCustomize.Items.Count = 0 then
        begin
          case MessageDlg('There is no stock registered. register some stock?',
            // Prompts the user to add stock if none is detected.
            mtConfirmation, mbYesNo, 0) of
            mrYes:
              begin
                tsAddStock.Visible := True;
                pgcMain.ActivePage := tsAddStock;
                tsAccounts.TabVisible := False;
                tsStock.TabVisible := False;
              end;
            mrNo:
              begin
                ShowMessage(
                  'Please register some stock stock when you are ready.');
              end;
          end;
        end;
      end;
    mrNo:
      begin
        ShowMessage('Catalogue not refreshed.');
      end;
  end;
end;

procedure TfrmRetailEase.bmbReturnAccountsClick(Sender: TObject);
begin
  // Clears the fields so they are empty the next time the user returns:
  edtCreateUserName.Clear;
  edtCreateUserName.Color := clWindow;
  edtCreatePassKey.Clear;
  edtCreatePassKey.Color := clWindow;
  edtPassKey.PasswordChar := '*';
  edtCreatePassKey.PasswordChar := '*';
  rgpTypeAccounts.ItemIndex := -1;
  rgpTypeAccounts.ParentBackground := True;
  pnlAccountError.Visible := False;
  // Adjusts active and inactive tabs:
  pgcMain.ActivePage := tsAccounts;
  tsAccounts.TabVisible := True;
  tsCreateAccount.TabVisible := False;
  tsStock.TabVisible := True;
  bmbReturnLogIn.Visible := True;
  bmbReturnAccounts.Visible := False;
  bmbReturnAccounts.Enabled := False;
  bmbReturnAccounts.Glyph.Assign(nil);
  bmbCreateAccount.Visible := True;
  bmbAddNewAccounts.Visible := False;
  bmbAddNewAccounts.Enabled := False;
  bmbAddNewAccounts.Glyph.Assign(nil);
  // Refresh the Acccounts view (lstUsers)
  lstRegisteredUsers.Clear;
  lstRegisteredUsers.Items.LoadFromFile('Assets\Logins.txt');
  imgViewLogin.Visible := False;
  imgHideLogin.Visible := True;
end;

procedure TfrmRetailEase.bmbPrintClick(Sender: TObject);
var
  I: Integer;
begin

  // Copies receipt view from (redFinalReceipt) to (memReceipt), in preparation to save to text file.
  for I := 0 to redFinalReciept.Lines.Count do
  begin
    memReceipt.Lines.Add(redFinalReciept.Lines[I]);
  end;
  // Saves to auto-generated textfile; named after the customer ID.
  memReceipt.Lines.SaveToFile('Receipts\' + sCustomerName + '.txt');
  ShowMessage('File printed successfully.' + #13 + 'Please view: "Receipts\' +
      sCustomerName + '.txt"');
  redNewProductPreview.Lines.Clear;
  // For good measure, the (lstStock) TListBox is reloaded.
  lstStockViewBE.Items.SaveToFile('Assets\Stock.txt');
  lstStockViewBE.Items.Clear;
  lstStockViewBE.Items.LoadFromFile('Assets\Stock.txt');
  pgcMain.ActivePage := tsRegister;
  sedQuantity.Value := 1;
  // Warning to register stock if none is detected.
  if lstStockViewBE.Items.Count = 0 then
  begin
    ShowMessage(
      'There is no stock in the catalogue. Please ask the manager to register some stock.');
  end;
  // Continue to reset and clear up interface
  sCustomerName := '';
  redChange.Lines.Clear;
  redReciept.Lines.Clear;
  redFinalReciept.Lines.Clear;
  tsRegister.TabVisible := True;
  tsChange.TabVisible := False;
  bmbChange.Enabled := True;
  bmbChange.Glyph.LoadFromFile('Assets/MoneyBag.bmp');
  bmbPrint.Enabled := False;
  bmbPrint.Glyph.Assign(nil);
  rTotal := 0;
  edtSubTotal.Clear;
  // Loads default text into (redReceipt)
  redReciept.Lines.Add('Welcome to TopTech');
  redReciept.Lines.Add('-------------------------------------------');
  redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
  redReciept.Lines.Add('-------------------------------------------' + #13);
  // Disables 'Finalize Order' button, unless one item has been selected (ItemIndex will be 6.)
  if redReciept.Lines.Count < 6 then
  begin
    bmbFinalizeOrder.Enabled := False;
    bmbFinalizeOrder.Glyph.Assign(nil);
    bmbRegisterReset.Enabled := False;
    bmbRegisterReset.Glyph.Assign(nil);
  end;
end;

procedure TfrmRetailEase.bmbPrintMouseEnter(Sender: TObject);
begin
  bmbPrint.ShowHint := True;
  bmbPrint.Hint := 'Prints contents of receipt to textfile (Receipt.txt)';
end;

procedure TfrmRetailEase.bmbAboutClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAbout;
end;

procedure TfrmRetailEase.bmbAddAccountsClick(Sender: TObject);
begin
  // Adjusts current tab focus
  pgcMain.ActivePage := tsCreateAccount;
  tsCreateAccount.TabVisible := True;
  tsAccounts.TabVisible := False;
  tsStock.TabVisible := False;
  tsAddStock.TabVisible := False;
  bmbReturnLogIn.Visible := False;
  bmbReturnAccounts.Visible := True;
  bmbReturnAccounts.Enabled := True;
  bmbReturnAccounts.Glyph.LoadFromFile('Assets/Return.bmp');
  bmbCreateAccount.Visible := False;
  bmbAddNewAccounts.Visible := True;
  bmbAddNewAccounts.Enabled := True;
  bmbAddNewAccounts.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  imgHideCreate.Visible := True;
  imgViewCreate.Visible := False;
end;

procedure TfrmRetailEase.bmbAddNewAccountsClick(Sender: TObject);
var
  sCreateUsername, sCreatePasskey, sNewUser, sUserType, sRegisteredUsername,
    sRegisteredUsers, sLowerCreateUsername: String;
  memCurrentNames, memCurrentAccounts: string;
  iIndex, iPos, iIndexUsername, I: Integer;
  bAccountError2, bPasskeyLength2, bUsernameError2, bPassKeyError2,
    bUsernameChar2, bCheck2: Boolean;
begin
  // Stores values from (edtCreateUserName) and (edtCreatePassword) in variables to be validated and handled.
  sCreateUsername := edtCreateUserName.Text;
  sCreatePasskey := edtCreatePassKey.Text;
  sNewUser := '';
  sUserType := '';
  bCheck2 := False;
  bUsernameChar2 := False;
  bUsernameError2 := False;
  bPassKeyError2 := False;
  bAccountError2 := False;
  bPasskeyLength2 := False;
  bRegisteredUsernameSecondary := False;
  iIndex := 1;
  // Code for assigning type of user account. Chosen via selection in (rgpAccounts)
  case rgpTypeAccounts.ItemIndex of
    0:
      begin
        sUserType := 'm';
      end;
    1:
      begin
        sUserType := 'c';
      end;
  end;
  // if either (edtCreateUserName) or (edtPassword) is empty
  if (sCreateUsername = '') then
  begin
    edtCreateUserName.Color := $00B3B3FF;
    bUsernameError2 := True;
  end
  else
    edtCreateUserName.Color := clWindow;
  if (sCreatePasskey = '') then
  begin
    edtCreatePassKey.Color := $00B3B3FF;
    bPassKeyError2 := True;
  end
  else
    edtPassKey.Color := clWindow;
  // If (rgpAccounts) does not have a selected option:
  if (rgpTypeAccounts.ItemIndex = -1) then
  begin
    rgpTypeAccounts.ParentBackground := False;
    rgpTypeAccounts.Color := $00B3B3FF;
    pnlAccountError.Visible := True;
    bAccountError2 := True;
  end
  else
  begin
    rgpTypeAccounts.ParentBackground := True;
    pnlAccountError.Visible := False;
  end;
  // if either (edtCreateUserName) or (edtPassword) is not empty, now each character is scanned:
  if (sCreateUsername <> '') or (sCurrentPassKey <> '') then
    while (bUsernameChar2 = False) AND (iIndex <= Length(sCreateUsername)) do
    begin
      if (sCreateUsername[iIndex] = '.') or (sCreateUsername[iIndex] = '_') or
        (sCreateUsername[iIndex] = ' ') then
      begin
        bUsernameChar2 := True;
      end
      else
        edtCreateUserName.Color := clWindow;
      Inc(iIndex);
      if Length(sCreatePasskey) < 4 then
      begin
        ShowMessage('Passkey cannot be shorter than 4 digits');
        bPasskeyLength2 := False;
      end;
    end;

  // Loads registered users into a TMemo (memAccounts)
  memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
  for memCurrentAccounts in memAccounts.Lines do
  begin
    sRegisteredUsers := memCurrentAccounts;
    iPos := 0;
    sRegisteredUsername := '';
    iIndexUsername := 1;
    bCheck2 := False;
    // Scanning for '.' in each entry of (memAccounts):
    while (bCheck2 = False) and (iIndexUsername <= Length(sRegisteredUsers)) do
    begin
      if (sRegisteredUsers[iIndexUsername] = '.') then
      begin
        bCheck2 := True;
        iPos := iIndexUsername;
      end;
      Inc(iIndexUsername);
    end;
    // Build up string until dot '.'  delimiter
    for I := 1 to iPos - 1 do
    begin
      sRegisteredUsername := sRegisteredUsername + sRegisteredUsers[I];
    end;
    memRegisteredUsernames.Lines.Add(sRegisteredUsername);
  end;
  // Checks if the inputted name exists in memNames
  // LowerCase() allows names to be compared, and case is not a factor; encouraging uniqueness.
  sLowerCreateUsername := LowerCase(sCreateUsername);
  if bCheck2 = True then
  begin
    for memCurrentNames in memRegisteredUsernames.Lines do
      if sLowerCreateUsername = LowerCase(memCurrentNames) then
      begin
        bRegisteredUsernameSecondary := True;
        edtCreateUserName.Color := clWebOrange;
      end
  end;
  // If the new username does match with an entry in the TMemo, this ShowMessage() appears...
  if bRegisteredUsernameSecondary = False then
    edtCreateUserName.Color := clWindow;

  if (bUsernameChar2 = True) or (bUsernameError2 = True) or
    (bRegisteredUsernameSecondary = True) then
    edtCreateUserName.Color := $00B3B3FF
  else
    edtCreateUserName.Color := clWindow;
  if (bPassKeyError2 = True) or (bPasskeyLength2 = True) then
    edtCreatePassKey.Color := $00B3B3FF;
  // If neither of these conditions are met (ie both Boolean flags are False):
  if (bUsernameChar2 = False) and (bUsernameError2 = False) and
    (bPassKeyError2 = False) and (bAccountError2 = False) and
    (bRegisteredUsernameSecondary = False) then
  begin
    ShowMessage('Account created successfully.');
    // Concatenats different parts of new username into one and stores in sNewUser
    sNewUser := sCreateUsername + '.' + sCreatePasskey + '_' + sUserType;
    // Loads existing accounts:
    memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
    // Appends new entry to memAccounts
    memAccounts.Lines.Add(sNewUser);
    // Saves to textfile (Logins.txt)
    memAccounts.Lines.SaveToFile('Assets\Logins.txt');
    bmbReturnLogIn.Enabled := True;
    bmbReturnLogIn.Glyph.LoadFromFile('Assets/Return.bmp');
    rgpTypeAccounts.Buttons[1].Enabled := True;
    // Reets interface:
    edtCreateUserName.Clear;
    edtCreatePassKey.Clear;
    rgpTypeAccounts.ItemIndex := -1;
  end;
end;

procedure TfrmRetailEase.bmbAddproductClick(Sender: TObject);
begin
  // Prepares interface and tab focus for adding a product to stock catalogue (lstStock, Stock.txt)
  pgcMain.ActivePage := tsAddStock;
  tsAddStock.TabVisible := True;
  tsStock.TabVisible := False;
  tsAccounts.TabVisible := False;
  tsCreateAccount.TabVisible := False;
  redNewProductPreview.Lines.Add('New product preview:');
  tsAddStock.Caption := 'Add Stock';
  lblCustomizeStockHeader.Caption := 'Add Stock';
  bmbAddProductReset.Visible := True;
  bmbStockEditRevert.Visible := False;
  bmbRegisterNewStock.Visible := True;
  bmbSaveStockEdits.Visible := False;
end;

procedure TfrmRetailEase.bmbChangeClick(Sender: TObject);
var
  rChange, rGiven: Real;
  iTHundred, iHundred, iFifty, iTwenty, iTen, iFive, iTwo, iOne, iRand: Integer;
  rCent: Real;
  iError, I, iPosComma: Integer;
  sGiven: String;
  bMoney : Boolean;
begin
  // Stores input from (edtMoney) to be handled by the code
  rGiven := 0;
      bMoney := Dialogs.InputQuery('Cash tendered',
      'Enter money given by customer', sGiven);
    // If input is detected and 'OK' was clicked
    if (sGiven <> '') and (bMoney = True) then
    begin
      // Check if comma present and replace with dot for auto math
      iPosComma := Pos(',', sGiven);
      sGiven[iPosComma] := '.';
      { See if this value can be a real; iError is a 0 if possible. Stores value of
        where it fails if else }
      Val(sGiven, rGiven, iError);
      if (iError = 0) then
      // If sGiven can successfully become a real, (rGiven)
      begin
        rGiven := Trunc(rGiven * 100) / 100;
        FloatToStrF(rGiven, ffFixed, 8, 2);

        if rGiven < rTotal then
         begin
          ShowMessage(
            'Insufficient cash tendered. Please ensure the customer gives at least '
              + FloatToStrF(rTotal, ffCurrency, 8, 2) + '.');
            bmbChangeClick(bmbChange);
         end
      end
      else if (iError <> 0) and (bMoney = True) then
      begin
        // If cannot become a real
        ShowMessage('Invalid input. Please enter decimal value.');
        sGiven := '';
        bmbChangeClick(bmbChange);
      end
    end
    // If cancel clicked
    else if (sGiven = '') and (bMoney = True) then
    begin
      ShowMessage('Invalid input. Please enter a decimal value.');
      sGiven := '';
      bmbChangeClick(bmbChange);
    end
    else if rGiven >= 1000000 then
  begin
    ShowMessage('Cash tendered cannot exceed R1 000 000.');
    bmbChangeClick(bmbChange);
  end;
  
  begin
    if (bMoney = True) and (sGiven <> '') then
    begin
      if iError = 0 then
      begin
        if not(rGiven < rTotal) then
        begin
          case MessageDlg('Please ensure the cash tendered is correct: ' +
              FloatToStrF(rGiven, ffCurrency, 8, 2), mtConfirmation, mbYesNo,
            0) of
            mrYes:
              begin
                redChange.Lines.Add('Change calculated for: ' + sCustomer);
                rChange := rGiven - rTotal;
                begin
                  bmbPrint.Enabled := True;
                  bmbPrint.Glyph.LoadFromFile('Assets/Print.bmp');
                  redChange.Lines.Add('Money received: ' + #9 + FloatToStrF
                      (rGiven, ffCurrency, 8, 2));
                  redChange.Lines.Add
                    ('Actual total: ' + #9 + FloatToStrF(rTotal,
                      ffCurrency, 8, 2));
                  redChange.Lines.Add('Change returned: ' + #9 + FloatToStrF
                      (rChange, ffCurrency, 8, 2));
                  iRand := Trunc(rChange);
                  rCent := Frac(rChange);
                  rCent := rCent * 100;

                  begin
                    // Mathematics used to break up the Change into the amount of each denomination required.
                    // Program is able to not display a numeration if it is = 0, saving space.

                    // How many R200 needed:
                    iTHundred := iRand div 200;
                    iRand := iRand - iTHundred * (200);
                    if iTHundred > 0 then
                    begin
                      redChange.Lines.Add
                        ('R200:' + #9 + '×' + IntToStr(iTHundred));
                    end;
                    // How many R100 needed:
                    iHundred := iRand div 100;
                    iRand := iRand - iHundred * (100);
                    if iHundred > 0 then
                    begin
                      redChange.Lines.Add
                        ('R100:' + #9 + '×' + IntToStr(iHundred));
                    end;
                    // How many R50 needed:
                    iFifty := iRand div 50;
                    iRand := iRand - iFifty * (50);
                    if iFifty > 0 then
                    begin
                      redChange.Lines.Add('R50:' + #9 + '×' + IntToStr(iFifty));
                    end;
                    // How many R20 needed:
                    iTwenty := iRand div 20;
                    iRand := iRand - iTwenty * (20);
                    if iTwenty > 0 then
                    begin
                      redChange.Lines.Add
                        ('R20:' + #9 + '×' + IntToStr(iTwenty));
                    end;
                    // How many R10 needed:
                    iTen := iRand div 10;
                    iRand := iRand - iTen * (10);
                    if iTen > 0 then
                    begin
                      redChange.Lines.Add('R10:' + #9 + '×' + IntToStr(iTen));
                    end;
                    // How many R5 needed:
                    iFive := iRand div 5;
                    iRand := iRand - iFive * (5);
                    if iFive > 0 then
                    begin
                      redChange.Lines.Add('R5:' + #9 + '×' + IntToStr(iFive));
                    end;
                    // How many R2 needed:
                    iTwo := iRand div 2;
                    iRand := iRand - iTwo * (2);
                    if iTwo > 0 then
                    begin
                      redChange.Lines.Add('R2:' + #9 + '×' + IntToStr(iTwo));
                    end;
                    // How many R1 needed:
                    iOne := iRand div 1;
                    if iOne > 0 then
                    begin
                      redChange.Lines.Add('R1:' + #9 + '×' + IntToStr(iOne));
                    end;
                    // The amount of cents that needs to be returned:
                    if rCent > 0 then
                    begin
                      redChange.Lines.Add
                        (#13 + 'Cents: ' + #9 + FloatToStrF(rCent, ffGeneral,
                          8, 2) + 'c');
                    end;
                    // Copies lines from (redChange) to (redFinalReceipt)
                    for I := 0 to 3 do
                    begin
                      redFinalReciept.Lines.Add(redChange.Lines[I]);
                    end;
                    // Footer for receipt (redFinalReceipt)
                    redFinalReciept.Lines.Add(#13 +
                        'Thank you for shopping at TopTech.' + #13 +
                        'Have a wonderful day!' + #13);
                    redFinalReciept.Lines.Add
                      ('Contact Details:' + #13 + 'Phone: 074 562 8961' +
                        #13 + 'Email: toptech-dbn@gmail.com');
                    bmbChange.Enabled := False;
                    bmbChange.Glyph.Assign(nil);
                  end;
                end;
              end;
          end;
        end;
      end
      else
      // if coversion from string to real is not successful, the value is <> 0
      begin
        ShowMessage('Invalid input. Please enter a valid decimal value.');
      end;
    end
  end;
end;

procedure TfrmRetailEase.bmbCreateAccountClick(Sender: TObject);
var
  sCreateUsername, sCreatePasskey, sNewUser, sUserType, sRegisteredUsername,
    sRegisteredUsers, sLowerCreateUsername: String;
  // use 'mem' prefix as they are not normal string variables; connected to TMemos
  memCurrentNames, memCurrentAccounts: string;
  iIndex, iPos, iIndexUsername, I: Integer;
  bAccountError1, bUsernameError1, bPassKeyError1, bPassKeyLength1,
    bCheck1: Boolean;
begin
  // Stores values from (edtCreateUserName) and (edtCreatePassword) in variables to be validated and handled.
  sCreateUsername := edtCreateUserName.Text;
  sCreatePasskey := edtCreatePassKey.Text;
  sNewUser := '';
  sUserType := '';
  bCheck1 := False;
  bAccountError1 := False;
  bPassKeyError1 := False;
  bUsernameError1 := False;
  bPassKeyLength1 := False;
  bRegisteredUsernameMain := False;
  bUsernameChar := False;
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if memLogins.Lines.Count <> 0 then
    lblToolTip.Caption := '';
  // Variables for checking if username in use.
  bRegisteredUsernameMain := False;
  iIndex := 1;
  // Code for assigning type of user account. Chosen via selection in (rgpAccounts)
  case rgpTypeAccounts.ItemIndex of
    0:
      begin
        sUserType := 'm';
      end;
    1:
      begin
        sUserType := 'c';
      end;
  end;
  // This code validates input data:

  // If (rgpAccounts) does not have a selected option:
  if (rgpTypeAccounts.ItemIndex = -1) then
  begin
    rgpTypeAccounts.ParentBackground := False;
    rgpTypeAccounts.Color := $00B3B3FF;
    pnlAccountError.Visible := True;
    bAccountError1 := True;
  end
  else
  begin
  rgpTypeAccounts.ParentBackground := True;
  pnlAccountError.Visible := False;
  end;
  // if either (edtCreateUserName) or (edtPassword) is empty
  if (sCreateUsername = '') then
  begin
    edtCreateUserName.Color := $00B3B3FF;
    bUsernameError1 := True;
  end
  else
    edtCreateUserName.Color := clWindow;
  if (sCreatePasskey = '') then
  begin
    edtCreatePassKey.Color := $00B3B3FF;
    bPassKeyError1 := True;
  end
  else
    edtCreatePassKey.Color := clWhite;
  // if either (edtCreateUserName) or (edtPassword) is empty, now each character is scanned:
  if (sCreateUsername <> '') then
    while (bUsernameChar = False) AND (iIndex <= Length(sCreateUsername)) do
    begin
      if (sCreateUsername[iIndex] = '.') or (sCreateUsername[iIndex] = '_') or
        (sCreateUsername[iIndex] = ' ') then
      begin
        bUsernameChar := True;
        edtCreateUserName.Color := clWebRed;
      end
      else
        edtCreateUserName.Color := clWindow;
      Inc(iIndex);
    end;
  if Length(sCreatePasskey) < 4 then
  begin
    bPassKeyLength1 := True;
    edtCreatePassKey.Color := clWebOrange;
  end
  else
    edtCreatePassKey.Color := clWindow;
  // Loads registered users into a TMemo (memAccounts)
  memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
  for memCurrentAccounts in memAccounts.Lines do
  begin
    sRegisteredUsers := memCurrentAccounts;
    iPos := 0;
    sRegisteredUsername := '';
    iIndexUsername := 1;
    bCheck1 := False;
    // Scanning for '.' in each entry of (memAccounts):
    while (bCheck1 = False) and (iIndexUsername <= Length(sRegisteredUsers)) do
    begin
      if (sRegisteredUsers[iIndexUsername] = '.') then
      begin
        bCheck1 := True;
        iPos := iIndexUsername;
      end;
      Inc(iIndexUsername);
    end;
    // Build up string until dot '.'  delimiter
    for I := 1 to iPos - 1 do
    begin
      sRegisteredUsername := sRegisteredUsername + sRegisteredUsers[I];
    end;
    memRegisteredUsernames.Lines.Add(sRegisteredUsername);
  end;
  // Checks if the inputted name exists in memNames
  // LowerCase() allows names to be compared, and case is not a factor; encouraging uniqueness.
  sLowerCreateUsername := LowerCase(sCreateUsername);
  if bCheck1 = True then
  begin
    for memCurrentNames in memRegisteredUsernames.Lines do
      if sLowerCreateUsername = LowerCase(memCurrentNames) then
      begin
        bRegisteredUsernameMain := True;
      end
  end;
  // If the new username does match with an entry in the TMemo, this ShowMessage() appears...
  if bRegisteredUsernameMain = True then
    edtCreateUserName.Color := clWebOrange
  else
    edtCreateUserName.Color := clWindow;

  // If neither of these conditions are met (ie both Boolean flags are False):
  if (bUsernameChar = True) or (bUsernameError1 = True) then
    edtCreateUserName.Color := $00B3B3FF;
  if (bPassKeyError1 = True) then
    edtCreatePassKey.Color := $00B3B3FF;
  if (bUsernameError1 = False) and (bPassKeyError1 = False) and
    (bAccountError1 = False) and
    (bRegisteredUsernameMain = False) and (bUsernameChar = False) and
    (bPassKeyLength1 = False) then
  begin
    // Concatenats different parts of new username into one and stores in sNewUser
    sNewUser := sCreateUsername + '.' + sCreatePasskey + '_' + sUserType;
    // Loads existing accounts:
    memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
    // Appends new entry to memAccounts
    memAccounts.Lines.Add(sNewUser);
    // Saves to textfile (Logins.txt)
    memAccounts.Lines.SaveToFile('Assets\Logins.txt');
    bmbReturnLogIn.Enabled := True;
    bmbReturnLogIn.Glyph.LoadFromFile('Assets/Return.bmp');
    rgpTypeAccounts.Buttons[1].Enabled := True;
    // Reets interface:
    edtCreateUserName.Clear;
    edtCreatePassKey.Clear;
    rgpTypeAccounts.ItemIndex := -1;

    pgcMain.ActivePage := tsLogon;
    tsLogon.TabVisible := True;
    tsCreateAccount.TabVisible := False;
    imgViewLogin.Visible := False;
    imgHideLogin.Visible := True;

    sTempUsername := sCreateUsername;
    sTempPassword := sCreatePasskey;
    edtUserName.Text := sTempUsername;
    edtPassKey.Text := sTempPassword;
  end;
end;

procedure TfrmRetailEase.bmbCreateAccountPromptClick(Sender: TObject);
begin
  // Adjusts what needs to happen when 'Add Account' is pressed on admin side
  tsCreateAccount.TabVisible := True;
  pgcMain.ActivePage := tsCreateAccount;
  tsLogon.TabVisible := False;
  rgpTypeAccounts.Buttons[1].Enabled := True;
  tmrGreet.Enabled := False;
  lblToolTip.Caption := '';
  imgHideCreate.Visible := True;
  imgViewCreate.Visible := False;
  // Reset and clear interface
  edtUserName.Clear;
  edtUserName.ShowHint := False;
  edtUserName.Color := clWindow;
  edtPassKey.Clear;
  edtUserName.ShowHint := False;
  edtPassKey.Color := clWindow;
  edtPassKey.PasswordChar := '*';
  edtCreatePassKey.PasswordChar := '*';
  edtCreateUserName.Clear;
  edtCreateUserName.ShowHint := False;
  edtCreateUserName.Color := clWindow;
  edtCreatePassKey.Clear;
  edtCreatePassKey.ShowHint := False;
  edtCreatePassKey.Color := clWindow;
end;

procedure TfrmRetailEase.bmbDeleteAccountClick(Sender: TObject);
begin
  // Checks if an item has been selected from TListBox (lstUsers)
  if lstRegisteredUsers.ItemIndex = -1 then
    lstRegisteredUsers.Color := $00B3B3FF
    // Prevents user from removing themselves.
  else if sCurrentUser = lstRegisteredUsers.Items[lstRegisteredUsers.ItemIndex]
    then
    ShowMessage('Cannot remove currently signed in user.')
  else
    // Prompts user about if they want to delete their account
    case MessageDlg('Do you really want to remove this account?', mtWarning,
      mbYesNo, 0, mbNo) of
      mrYes:
        begin
          lstRegisteredUsers.DeleteSelected;
        end;
    end;
end;

procedure TfrmRetailEase.bmbStockDeleteClick(Sender: TObject);
begin
  // Shows error message if user tries to delete without selecting an item
  if lstStockCustomize.ItemIndex = -1 then
    lstStockCustomize.Color := $00B3B3FF
  else
  begin
    // Prompts user about if they want to delete the selected item
    case MessageDlg(
      'Do you really want to remove this item from the stock catalogue?',
      mtWarning, mbYesNo, 0, mbNo) of
      mrYes:
        begin
          lstStockCustomize.DeleteSelected;
        end;
    end;
  end;
end;

procedure TfrmRetailEase.bmbStockEditRevertClick(Sender: TObject);
begin
  // Resets editing interface to original values
  edtCategory.Text := sCategory;
  edtProductName.Text := sProductName;
  edtPrice.Text := sPrice;

  edtCategory.Color := clWindow;
  edtProductName.Color := clWindow;
  edtPrice.Color := clWindow;
  sedCurrentStockNew.Color := clWindow;
  sedMinimumStockNew.Color := clWindow;

  sedCurrentStockNew.Text := sCurrentStock;
  sedMinimumStockNew.Text := sMinimumStock;
end;

procedure TfrmRetailEase.bmbLoadAccountsClick(Sender: TObject);
begin
  { Loads accounts from textfile. Since you are interacting with this window,
    other windows become inaccessable. }
  lstRegisteredUsers.Items.LoadFromFile('Assets\Logins.txt');
  bmbAddAccounts.Enabled := True;
  bmbAddAccounts.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbDeleteAccount.Enabled := True;
  bmbDeleteAccount.Glyph.LoadFromFile('Assets/Delete.bmp');
  tsStock.TabVisible := False;
end;

procedure TfrmRetailEase.bmbLoginClick(Sender: TObject);
var
  sUsername, sPassword, sAccount, sRegisteredUsername, sRegisteredPassword,
    sAccountType: string;
  memCurrentUsername: string;
  iPosUsernameDL, iPosPasswordDL, iPosAccountDL, iCurrentAccount: Integer;
  bFoundAcnt, bFoundPwd, bUsernameMatch, bPasswordMatch, bAccountType : Boolean;
  I, J, K, L: Integer;
begin
  // Initialize values to store username and password; as well as their checkers (Booleans)
  sUsername := edtUserName.Text;
  sPassword := edtPassKey.Text;
  bUsernameMatch := False;
  bPasswordMatch := False;
  bAccountType := False;
  // Load the accounts in from Logins.txt
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  // Makes edit box red if nothing has been enetered
  if (sUsername = '') then
  begin
    edtUserName.Color := $00B3B3FF;
    bUsernameChar := False;
  end
  else
    edtUserName.Color := clWindow;
  if (sPassword = '') then
  begin
    edtPassKey.Color := $00B3B3FF;
  end
  else
    edtPassKey.Color := clWindow;
  // Begins to scan input, if it is not empty.
  if (edtPassKey.Text <> '') and (edtUserName.Text <> '') then
  begin
    for I := 0 to memLogins.Lines.Count - 1 do
    begin
      // Intiliaze values
      sRegisteredUsername := '';
      sRegisteredPassword := '';
      sAccountType := '';
      sAccount := memLogins.Lines[I];
      bFoundAcnt := False;
      bFoundPwd := False;
      bUsernameMatch := False;
      bPasswordMatch := False;

      iPosUsernameDL := 0;
      iPosPasswordDL := 0;
      iPosAccountDL := 1;

      while (bFoundAcnt = False) and (bFoundPwd = False) or
        (iPosAccountDL <= Length(sAccount)) do
      begin
        // Find position of delimiters: '.' and '_'
        if sAccount[iPosAccountDL] = '.' then
        begin
          bFoundAcnt := True;
          iPosUsernameDL := iPosAccountDL;
        end
        else if sAccount[iPosAccountDL] = '_' then
        begin
          bFoundPwd := True;
          iPosPasswordDL := iPosAccountDL;
        end;
        Inc(iPosAccountDL);
      end;
      // Build up username and password values
      for J := 1 to iPosUsernameDL - 1 do
      begin
        sRegisteredUsername := sRegisteredUsername + sAccount[J];
      end;
      // Load built up value into respective memo
      memUserNames.Lines.Add(sRegisteredUsername);
      for K := iPosUsernameDL + 1 to iPosPasswordDL - 1 do
      begin
        sRegisteredPassword := sRegisteredPassword + sAccount[K];
      end;
      // Load built up value into respective memo
      memPasswords.Lines.Add(sRegisteredPassword);
      for L := iPosPasswordDL + 1 to Length(sAccount) do
      begin
        sAccountType := sAccountType + sAccount[L];
      end;
      // Load built up value into respective memo
      memTypeAccount.Lines.Add(sAccountType);
    end;
    { memUsername does the equilvalent work of memUsernames.Lines[M]. Stores the current .Lines
      property; comparing it to sUsername. If they are the same, sUsername is analyzed. If not, a
      showmessage appears telling you the credentials are wrong }
    for memCurrentUsername in memUserNames.Lines do
      if sUsername = memCurrentUsername then
      begin
        bUsernameMatch := True;
        iCurrentAccount := memUserNames.Lines.IndexOf(memCurrentUsername);
        sCurrentUser := memLogins.Lines[iCurrentAccount];
        sUser := sUsername;
        sCurrentPassKey := sPassword;
        if sPassword = memPasswords.Lines[iCurrentAccount] then
        begin
          bPasswordMatch := True;
          tmrGreet.Enabled := False;
          lblToolTip.Caption := '';
          // Adjusts the interface if this is a cashier account, recognized by '_c' suffix
          if memTypeAccount.Lines[iCurrentAccount] = 'c' then
          begin
            imgLock.Visible := True;
            bmbPrint.Enabled := False;
            bmbPrint.Glyph.Assign(nil);
            sedQuantity.Value := 1;

            rTotal := 0;
            tsRegister.TabVisible := True;
            pgcMain.ActivePage := tsRegister;
            tsChange.TabVisible := False;
            tsAccounts.TabVisible := False;
            tsStock.TabVisible := False;
            tsAddStock.TabVisible := False;
            tsLogon.TabVisible := False;
            tsCreateAccount.TabVisible := False;
            lstStockViewBE.Items.LoadFromFile('Assets\Stock.txt');

            redReciept.Lines.Clear;
            redReciept.Lines.Add('Welcome to TopTech');
            redReciept.Lines.Add('-------------------------------------------');
            redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
            redReciept.Lines.Add('-------------------------------------------');
            if redReciept.Lines.Count < 6 then
            begin
              bmbFinalizeOrder.Enabled := False;
              bmbFinalizeOrder.Glyph.Assign(nil);
              bmbRegisterReset.Enabled := False;
              bmbRegisterReset.Glyph.Assign(nil);
            end;
            bAccountType := True;
          end
          // Adjusts the interface if this is a manager account, recognized by '_m' suffix
          else if memTypeAccount.Lines[iCurrentAccount] = 'm' then
          begin
            bAccountType := False;
            imgLock.Visible := True;

            tsStock.TabVisible := True;
            pgcMain.ActivePage := tsStock;
            tsAccounts.TabVisible := True;
            tsRegister.TabVisible := False;
            tsChange.TabVisible := False;
            tsAddStock.TabVisible := False;
            tsLogon.TabVisible := False;
            tsCreateAccount.TabVisible := False;
            lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
            lstRegisteredUsers.Items.LoadFromFile('Assets\Logins.txt');
          end;
        end;
      end;
    // If match is found to be false then the respective input field becomes red
  end;

      if bUsernameMatch = False then
    begin
      edtUserName.Color := $00B3B3FF;
    end
    else
      edtUserName.Color := clWindow;
    if bPasswordMatch = False then
    begin
      edtPassKey.Color := $00B3B3FF;
    end
    else
      edtPassKey.Color := clWindow;

  if (lstStockCustomize.Items.Count = 0) and (bAccountType = False) and
    (bUsernameMatch = True) and (bPasswordMatch = True) then
  begin
    // prompts the user to register stock if none is detected.
    case MessageDlg('There is no stock registered. Register some?',
      mtConfirmation, mbYesNo, 0) of
      mrYes:
        begin
          tsAddStock.TabVisible := True;
          pgcMain.ActivePage := tsAddStock;
          tsAccounts.TabVisible := False;
          tsStock.TabVisible := False;
        end;
    end;
  end
  else if (lstStockViewBE.Items.Count = 0) and (bAccountType = True) and
    (bUsernameMatch = True) and (bPasswordMatch = True) then
  begin
    ShowMessage(
      'There is no stock in the catalogue. Please ask the manager to register some stock.');
  end;
end;

procedure TfrmRetailEase.bmbMasterResetClick(Sender: TObject);
var
  sPasskey: string;
  bChoice: Boolean;
  iTry: Integer;
begin
  iTry := 3;
  sPasskey := '';
  // Informs user that the app will be reset
  case MessageDlg(
    'Welcome to Master Role Reset. This will reset RetailEase. Continue?',
    mtWarning, mbYesNo, 0) of
    mrYes:
      begin
        // if they select yes, a further warning will be issued.
        case MessageDlg(
          'Kindly be advised that all data, including catalog and user information, will be permanently deleted. This action is irreversible and cannot be undone. '
            + 'By clicking OK, you acknowledge that any data loss is not attributed to RetailEase. Click Cancel to cancel the reset.', mtConfirmation, mbOKCancel, 0) of
          mrOk:
            begin
              repeat
                { If they agree, they are asked to input password; getting 3 tries. if
                  they fail on all, the procedure will close to ensure user safety. }
                bChoice := Dialogs.InputQuery('Confirm reset',
                  'Please input your account password below to confirm reset: '
                    , sPasskey);
                begin
                  if bChoice = True then
                  begin
                    if sPasskey = sCurrentPassKey then
                    begin
                      memLogins.Lines.Clear;
                      memLogins.Lines.SaveToFile('Assets\Logins.txt');
                      lstStockCustomize.Items.Clear;
                      lstStockCustomize.Items.SaveToFile('Assets\Stock.txt');
                      ShowMessage('RetailEase reset successfully.');
                      Exit;
                    end
                    else
                    begin
                      iTry := iTry - 1;
                      if iTry = 0 then
                        // if there are too many incorrect attempts they are warned
                        ShowMessage(
                          'Too many incorrect attempts. Process aborted for saftey.')
                      else
                      begin
                        ShowMessage(IntToStr(iTry) + ' attempts remaining.');
                      end;
                    end
                  end
                end;
              until iTry = 0;
            end;
        end;
      end;

  end;
end;

procedure TfrmRetailEase.bmbPreviewNewStockClick(Sender: TObject);
var
  sCategory, sProduct, sPrice, sCurrentStock, sMinimumStock: string;
  iCurrentS, iMinimumS, iError, iPosSymbol: Integer;
  iCategory, iProduct, iPrice, iCurrent, iMinimum : Integer;
  rPrice: Real;
begin
  iCategory := 1;
  iPrice := 1;
  iProduct := 1;

  sCategory := edtCategory.Text;
  sProduct := edtProductName.Text;
  sPrice := edtPrice.Text;

  iCurrentS := sedCurrentStockNew.Value;
  iMinimumS := sedMinimumStockNew.Value;

  bCategoryEdit := False;
  bProductNameEdit := False;
  bPriceEdit := False;
  // Making use of boolean flags as 'triggers': only is true when something does not meet expectation.
  while (bCategoryEdit = False) and (iCategory <= Length(sCategory)) do
  begin
    // If any of the criterea below is met, the boolean is set to True.
    if (Length(sCategory) > 3) or (sCategory[iCategory] = ' ') or (sCategory[iCategory] = '_')
      or (sCategory[iCategory] = '@') or (sCategory[iCategory] = ',') or (sCategory[iCategory] = '/')
      or (sCategory[iCategory] = '|') or (Length(sCategory) < 3) or
      (Length(sCategory) = 0) then
    begin
      bCategoryEdit := True;
    end;
    Inc(iCategory);
  end;

  while (bProductNameEdit = False) and (iProduct <= Length(sProduct)) do
  begin
    if (sProduct[iProduct] = ' ') or (sProduct[iProduct] = '_') or (sProduct[iProduct] = '@') or
      (sProduct[iProduct] = ',') or (sProduct[iProduct] = '/') or (sProduct[iProduct] = '|') or
      (Length(sProduct) = 0) then
    begin
      bProductNameEdit := True;
    end;
    Inc(iProduct);
  end;

  while (bPriceEdit = False) and (iPrice <= Length(sPrice)) do
  begin
    if (sPrice[iPrice] <> ' ') or (sPrice <> '') then
    begin
      iPosSymbol := Pos(',', sPrice);
      if iPosSymbol <> 0 then
        sPrice[iPosSymbol] := '.';
      Val(sPrice, rPrice, iError);
      rPrice := Trunc(rPrice * 100) / 100;
      if iError = 0 then
      begin
        bPriceEdit := False;
      end
      else
        bPriceEdit := True;
      if rPrice >= 1000000 then
        bPriceEdit := True
      else
        bPriceEdit := False;
    end
    else
      bPriceEdit := True;
    Inc(iPrice);
  end;

  if (bPriceEdit = False) and (sPrice <> '') then
  begin
    sPrice := FloatToStrF(rPrice, ffGeneral, 8, 2)
  end;

  if sProduct = '' then
    bProductNameEdit := True;
  if sCategory = '' then
    bCategoryEdit := True;
  if sPrice = '' then
    bPriceEdit := True;

  if (bCategoryEdit = True) then
    edtCategory.Color := $00B3B3FF;
  if bProductNameEdit = True then
    edtProductName.Color := $00B3B3FF;
  if bPriceEdit = True then
    edtPrice.Color := $00B3B3FF;

  if (bCategoryEdit = False) then
    edtCategory.Color := clWindow;
  if bProductNameEdit = False then
    edtProductName.Color := clWindow;
  if bPriceEdit = False then
    edtPrice.Color := clWindow;

  if (bCategoryEdit = False) and (bProductNameEdit = False) and
    (bPriceEdit = False) then
  begin
    edtCategory.Color := clWindow;
    edtProductName.Color := clWindow;
    edtPrice.Color := clWindow;
    sedCurrentStockNew.Color := clWindow;
    sedMinimumStockNew.Color := clWindow;
    sNewProduct := '';
    sNewProduct := sCategory + '_' + sProduct + '@' + sPrice + '|' + IntToStr
      (iCurrentS) + '/' + IntToStr(iMinimumS);
    redNewProductPreview.Clear;
    redNewProductPreview.Lines.Add('New Product Preview: ');
    redNewProductPreview.Lines.Add(sNewProduct);
    sCategory := '';
    sProduct := '';
    sPrice := '';
    sCurrentStock := '';
    sMinimumStock := '';
  end;
end;

procedure TfrmRetailEase.bmbFinalizeOrderClick(Sender: TObject);
var
  I: Integer;
  dtTime: TTime;
  sTime: string;
  dtDate: TDate;
begin
  dtTime := Now;
  sTime := FormatDateTime('hh:nn', dtTime);
  dtDate := Date;

  redReciept.Lines.Add(#13 + 'Grand total:' + #9 + FloatToStrF(rTotal,
      ffCurrency, 8, 2));
  redReciept.Lines.Add('-------------------------------------------');
  sCustomerName := 'CUS' + IntToStr(Random(9999 - 1999 + 1) + 1999);
  redReciept.Lines.Add('Transaction of: ' + sCustomerName + #13 + DateToStr
      (dtDate) + #9 + sTime);

  pgcMain.ActivePage := tsChange;
  tsChange.TabVisible := True;
  tsRegister.TabVisible := False;
  redReciept.Lines.Add('-------------------------------------------');
  for I := 0 to redReciept.Lines.Count do
  begin
    redFinalReciept.Lines.Add(redReciept.Lines[I])
  end;
end;

procedure TfrmRetailEase.bmbAddProductResetClick(Sender: TObject);
begin
  edtCategory.Color := clWindow;
  edtProductName.Color := clWindow;
  edtPrice.Color := clWindow;
  sedCurrentStockNew.Color := clWindow;
  sedMinimumStockNew.Color := clWindow;
  edtCategory.Clear;
  edtProductName.Clear;
  edtPrice.Clear;
  sedCurrentStockNew.Value := 0;
  sedMinimumStockNew.Value := 0;
  redNewProductPreview.Clear;
  redNewProductPreview.Lines.Add('New product preview:');
end;

procedure TfrmRetailEase.bmbRegisterNewStockClick(Sender: TObject);
var
  sCategory, sProduct, sPrice, sCurrentStock, sMinimumStock: string;
  iCurrentS, iMinimumS, iError, iPosSymbol: Integer;
  iCategory, iProduct, iPrice, iCurrent, iMinimum : Integer;
  rPrice: Real;
begin
  iCategory := 1;
  iPrice := 1;
  iProduct := 1;

  sCategory := edtCategory.Text;
  sProduct := edtProductName.Text;
  sPrice := edtPrice.Text;

  iCurrentS := sedCurrentStockNew.Value;
  iMinimumS := sedMinimumStockNew.Value;

  bCategoryEdit := False;
  bProductNameEdit := False;
  bPriceEdit := False;
  // Making use of boolean flags as 'triggers': only is true when something does not meet expectation.
  while (bCategoryEdit = False) and (iCategory <= Length(sCategory)) do
  begin
    if (Length(sCategory) > 3) or (sCategory[iCategory] = ' ') or (sCategory[iCategory] = '_')
      or (sCategory[iCategory] = '@') or (sCategory[iCategory] = ',') or (sCategory[iCategory] = '/')
      or (sCategory[iCategory] = '|') or (Length(sCategory) < 3) or
      (Length(sCategory) = 0) then
    begin
      bCategoryEdit := True;
    end;
    Inc(iCategory);
  end;

  while (bProductNameEdit = False) and (iProduct <= Length(sProduct)) do
  begin
    if (sProduct[iProduct] = ' ') or (sProduct[iProduct] = '_') or (sProduct[iProduct] = '@') or
      (sProduct[iProduct] = ',') or (sProduct[iProduct] = '/') or (sProduct[iProduct] = '|') or
      (Length(sProduct) = 0) then
    begin
      bProductNameEdit := True;
    end;
    Inc(iProduct);
  end;

  while (bPriceEdit = False) and (iPrice <= Length(sPrice)) do
  begin
    if (sPrice[iPrice] <> ' ') or (sPrice <> '') then
    begin
      iPosSymbol := Pos(',', sPrice);
      if iPosSymbol <> 0 then
        sPrice[iPosSymbol] := '.';
      Val(sPrice, rPrice, iError);
      rPrice := Trunc(rPrice * 100) / 100;
      if iError = 0 then
      begin
        bPriceEdit := False;
      end
      else
        bPriceEdit := True;
      if rPrice >= 1000000 then
        bPriceEdit := True
    end
    else
      bPriceEdit := True;
    Inc(iPrice);
  end;

  if (bPriceEdit = False) and (sPrice <> '') then
  begin
    sPrice := FloatToStrF(rPrice, ffGeneral, 8, 2)
  end;

  if sProduct = '' then
    bProductNameEdit := True;
  if sCategory = '' then
    bCategoryEdit := True;
  if sPrice = '' then
    bPriceEdit := True;

  if (bCategoryEdit = True) then
    edtCategory.Color := $00B3B3FF;
  if bProductNameEdit = True then
    edtProductName.Color := $00B3B3FF;
  if bPriceEdit = True then
    edtPrice.Color := $00B3B3FF;

  if (bCategoryEdit = False) then
    edtCategory.Color := clWindow;
  if bProductNameEdit = False then
    edtProductName.Color := clWindow;
  if bPriceEdit = False then
    edtPrice.Color := clWindow;
  if bStock = False then

  if (bCategoryEdit = False) and (bProductNameEdit = False) and
    (bPriceEdit = False) then
  begin
    sNewProduct := '';
    sNewProduct := sCategory + '_' + sProduct + '@' + sPrice + '|' + IntToStr
      (iCurrentS) + '/' + IntToStr(iMinimumS);
    lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
    lstStockCustomize.Items.Add(sNewProduct);
    lstStockCustomize.Items.SaveToFile('Assets\Stock.txt');
    ShowMessage('New product registered successfully.');
    edtCategory.Clear;
    edtProductName.Clear;
    edtPrice.Clear;
    sedCurrentStockNew.Clear;
    sedMinimumStockNew.Clear;

    edtCategory.Color := clWindow;
    edtProductName.Color := clWindow;
    edtPrice.Color := clWindow;
    sedCurrentStockNew.Color := clWindow;
    sedMinimumStockNew.Color := clWindow;

    sCategory := '';
    sProductName := '';
    sPrice := '';
    sCurrentStock := '';
    sMinimumStock := '';
    sNewProduct := '';

    tsStock.TabVisible := False;
    pgcMain.ActivePage := tsStock;
    tsStock.TabVisible := True;
    tsAccounts.TabVisible := True;
  end;
end;

procedure TfrmRetailEase.bmbRegisterResetClick(Sender: TObject);
begin
  case MessageDlg('Are you sure you want to cancel the transaction?',
    mtConfirmation, mbYesNo, 0, mbNo) of
    mrYes:
      begin
        redReciept.Lines.Clear;
        sedQuantity.Value := 1;
        sCustomerName := '';
        redFinalReciept.Clear;
        redChange.Lines.Clear;
        bmbChange.Enabled := True;
        bmbChange.Glyph.LoadFromFile('Assets/MoneyBag.bmp');
        lstStockViewBE.Items.Clear;
        lstStockViewBE.Items.LoadFromFile('Assets\Stock.txt');
        lstStockViewBE.Color := clWindow;
        if lstStockViewBE.Items.Count = 0 then
        begin
          ShowMessage(
            'There is no stock in the catalogue. Please ask the manager to register some stock.');
        end;
        rTotal := 0;
        edtSubTotal.Clear;
        redReciept.Lines.Clear;
        redReciept.Lines.Add('Welcome to TopTech');
        redReciept.Lines.Add('-------------------------------------------');
        redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
        redReciept.Lines.Add('-------------------------------------------');
        if redReciept.Lines.Count < 6 then
        begin
          bmbFinalizeOrder.Enabled := False;
          bmbFinalizeOrder.Glyph.Assign(nil);
          bmbRegisterReset.Enabled := False;
          bmbRegisterReset.Glyph.Assign(nil);
        end;
        tsRegister.TabVisible := True;
        pgcMain.ActivePage := tsRegister;
        tsChange.TabVisible := False;
      end;
  end;

end;

procedure TfrmRetailEase.bmbRegisterResetMouseEnter(Sender: TObject);
begin
  bmbRegisterReset.ShowHint := True;
  bmbRegisterReset.Hint := 'Cancel order and start over'
end;

procedure TfrmRetailEase.bmbReturnClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsLogon;
end;

procedure TfrmRetailEase.bmbReturnLogInClick(Sender: TObject);
begin
  tsLogon.TabVisible := True;
  pgcMain.ActivePage := tsLogon;
  tsCreateAccount.TabVisible := False;
  imgViewLogin.Visible := False;
  imgHideLogin.Visible := True;
  tmrGreet.Enabled := True;
  rgpTypeAccounts.ParentBackground := True;
  pnlAccountError.Visible := False;
  edtUserName.Clear;
  edtUserName.Color := clWindow;
  edtPassKey.Clear;
  edtPassKey.Color := clWindow;
  edtPassKey.PasswordChar := '*';
  edtCreatePassKey.PasswordChar := '*';
  edtCreateUserName.Clear;
  edtCreateUserName.Color := clWindow;
  edtCreatePassKey.Clear;
  edtCreatePassKey.Color := clWindow;
  rgpTypeAccounts.ItemIndex := -1;
end;

procedure TfrmRetailEase.bmbCancelEditClick(Sender: TObject);
begin
  case MessageDlg(
    'Do you want to exit this process? All unsaved data will be discarded.',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsStock;
        edtCategory.Clear;
        edtProductName.Clear;
        edtPrice.Clear;
        sedCurrentStockNew.Clear;
        sedMinimumStockNew.Clear;
        edtCategory.Color := clWindow;
        edtProductName.Color := clWindow;
        edtPrice.Color := clWindow;
        sedCurrentStockNew.Color := clWindow;
        sedMinimumStockNew.Color := clWindow;
        tsStock.TabVisible := True;
        tsAddStock.TabVisible := False;
        tsAccounts.TabVisible := True;
        lstStockCustomize.Items.Clear;
        lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
        redNewProductPreview.Clear;
        sCategory := '';
        sProductName := '';
        sPrice := '';
        sCurrentStock := '';
        sMinimumStock := '';
        sNewProduct := '';
      end;
  end;
end;

procedure TfrmRetailEase.FormActivate(Sender: TObject);
begin
  mplBoot.Open;
  mplBoot.Play;
  rTotal := 0;
  rPrice := 0;
  redHelpChange(redHelp);
end;

procedure TfrmRetailEase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  sQuery: string;
begin
  mplBoot.Pause;
  CanClose := False;
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  if bmbReturnAccounts.Enabled = True then
  begin
    ShowMessage(
      'Cannot close RetailEase while in the account creation process. Please return to the Accounts tabsheet and try again');
  end
  else if pgcMain.ActivePage = tsAddStock then
    ShowMessage(
      'Cannot close RetailEase while editing and/or modifying stock. Please save or discard edits, and try again.')
  else
  begin
    if (pgcMain.ActivePage = tsLogon) or (pgcMain.ActivePage = tsCreateAccount)
      or (pgcMain.ActivePage = tsAbout) then
    begin
      sQuery := 'Close RetailEase?'
    end
    else if (pgcMain.ActivePage = tsStock) or (pgcMain.ActivePage = tsAddStock)
      or (pgcMain.ActivePage = tsAccounts) then
    begin
      sQuery := 'Close RetailEase?' + #13 +
        'All unsaved data will be discarded. To save, press "💾 Save Edits"';
    end
    else
      sQuery := 'Close RetailEase?' + #13 +
        'All unsaved data will be discarded.';

    case MessageDlg(sQuery, mtConfirmation, mbYesNo, 0, mbNo) of
      mrYes:
        begin
          CanClose := True;
        end;
      mrNo:
        begin
          CanClose := False;
          mplBoot.Resume;
        end;
    end;
  end;
end;

procedure TfrmRetailEase.FormCreate(Sender: TObject);
begin
  frmRetailEase.Position := poDesktopCenter;

  imgLock.Picture.LoadFromFile('Assets/Lock.png');
  imgHelp.Picture.LoadFromFile('Assets/Help.png');
  imgLogon.Picture.LoadFromFile('Assets/Abstract.jpeg');
  imgChange.Picture.LoadFromFile('Assets/Cashier.jpg');
  imgStock.Picture.LoadFromFile('Assets/WorkSpace.png');
  imgAddStock.Picture.LoadFromFile('Assets/WorkSpace.png');
  imgAccounts.Picture.LoadFromFile('Assets/UserAccounts.jpg');
  imgRegister.Picture.LoadFromFile('Assets/CashRegister.jpeg');
  imgCreate.Picture.LoadFromFile('Assets/CreateAccount.jpg');
  imgSubTotal.Picture.LoadFromFile('Assets/Money.png');
  imgProfile.Picture.LoadFromFile('Assets/Profile.png');
  imgCreateAccount.Picture.LoadFromFile('Assets/NewProfile.png');

  bmbLogin.Glyph.LoadFromFile('Assets/Login.bmp');
  bmbCreateAccountPrompt.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbCreateAccount.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbAddAccounts.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbReturnLogIn.Glyph.LoadFromFile('Assets/Return.bmp');
  bmbReturnAccounts.Glyph.LoadFromFile('Assets/Return.bmp');
  bmbFinalizeOrder.Glyph.LoadFromFile('Assets/Wallet.bmp');
  bmbRegisterReset.Glyph.LoadFromFile('Assets/Reset.bmp');
  bmbAddReceipt.Glyph.LoadFromFile('Assets/Receipt.bmp');
  bmbChange.Glyph.LoadFromFile('Assets/MoneyBag.bmp');
  bmbCancelOrder.Glyph.LoadFromFile('Assets/Reset.bmp');
  bmbPrint.Glyph.LoadFromFile('Assets/Print.bmp');
  bmbAddproduct.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbStockDelete.Glyph.LoadFromFile('Assets/Delete.bmp');
  bmbEditStock.Glyph.LoadFromFile('Assets/Edit.bmp');
  bmbStockSave.Glyph.LoadFromFile('Assets/Saved.bmp');
  bmbPreviewNewStock.Glyph.LoadFromFile('Assets/Eyes.bmp');
  bmbStockEditRevert.Glyph.LoadFromFile('Assets/Reset.bmp');
  bmbCancelEdit.Glyph.LoadFromFile('Assets/Return.bmp');
  bmbSaveStockEdits.Glyph.LoadFromFile('Assets/Saved.bmp');
  bmbRegisterNewStock.Glyph.LoadFromFile('Assets/Saved.bmp');
  bmbAddAccounts.Glyph.LoadFromFile('Assets/AddAccount.bmp');
  bmbDeleteAccount.Glyph.LoadFromFile('Assets/Delete.bmp');
  bmbSaveAccount.Glyph.LoadFromFile('Assets/Saved.bmp');
  bmbMasterReset.Glyph.LoadFromFile('Assets/MasterKey.bmp');

  // Every time app launches, will run this check to see if any accounts are registered.
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if memLogins.Lines.Count = 0 then
  begin
    tmrGreet.Enabled := False;
    redHelp.Visible := False;
    tsCreateAccount.TabVisible := True;
    pgcMain.ActivePage := tsCreateAccount;
    tsLogon.TabVisible := False;
    bmbReturnLogIn.Enabled := False;
    bmbReturnLogIn.Glyph.Assign(nil);
    tsRegister.TabVisible := False;
    tsChange.TabVisible := False;
    tsAccounts.TabVisible := False;
    tsStock.TabVisible := False;
    tsAddStock.TabVisible := False;
  end
  else
  begin
    redHelp.Visible := False;
    memLogins.Lines.Clear;
    pgcMain.ActivePage := tsLogon;
    tsLogon.TabVisible := True;
    tsCreateAccount.TabVisible := False;
    tsRegister.TabVisible := False;
    tsChange.TabVisible := False;
    tsAccounts.TabVisible := False;
    tsStock.TabVisible := False;
    tsAddStock.TabVisible := False;
  end;
  bmbReturnLogIn.Visible := True;
  bmbReturnAccounts.Visible := False;
  bmbAddNewAccounts.Visible := False;
  imgLock.Visible := False;
end;

procedure TfrmRetailEase.tmrGreetTimer(Sender: TObject);
begin
Randomize;
lblToolTip.Caption := memPhrases.Lines[Random(memPhrases.Lines.Count)];
end;


procedure TfrmRetailEase.tsAboutShow(Sender: TObject);
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  imgLock.Visible := False;
  imgHelp.Visible := False;
  redAbout.Clear;
  redAbout.Lines.LoadFromFile('Assets\About.txt');
  lblToolTip.Caption := '';
  tmrGreet.Enabled := False;
end;

procedure TfrmRetailEase.tsAccountsShow(Sender: TObject);
begin
  OnShow;
  lstRegisteredUsers.Color := clWindow;
end;

procedure TfrmRetailEase.tsAddStockShow(Sender: TObject);
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  imgLock.Visible := False;
  imgHelp.Visible := True;
  edtCategory.SetFocus;
end;

procedure TfrmRetailEase.tsChangeShow(Sender: TObject);
begin
  OnShow;
  imgLock.Visible := False;
end;

procedure TfrmRetailEase.tsCreateAccountShow(Sender: TObject);
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  imgLock.Visible := False;
  imgHelp.Visible := True;
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if memLogins.Lines.Count = 0 then
  begin
      tmrGreet.Enabled := False;
      lblToolTip.Caption :=
      'Welcome to RetailEase! Register an account to get started.';
      rgpTypeAccounts.Buttons[1].Enabled := False;
      edtCreatePassKey.SetFocus;
      edtCreateUsername.SetFocus;
  end;
  edtCreateUsername.SetFocus;
end;

procedure TfrmRetailEase.tsLogonShow(Sender: TObject);
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  imgLock.Visible := False;
  imgLock.Visible := False;
  imgHelp.Visible := True;
  edtUserName.SetFocus;
  tmrGreet.Enabled := True;
  tmrGreetTimer(tmrGreet);
end;

procedure TfrmRetailEase.tsRegisterShow(Sender: TObject);
var
  I, J, iPosEnd, iIndex : Integer;
  bFoundEnd : Boolean;
  sCurrent, sView : string;
begin
  OnShow;
  lstStockViewFE.Color := clWindow;
  lstStockViewBE.Items.LoadFromFile('Assets\Stock.txt');
  for I := 0 to lstStockViewBE.Items.Count - 1 do
    begin
      sCurrent := lstStockViewBE.Items[I];
      bFoundEnd := False;
      iPosEnd := 0;
      iIndex := 1;

      while (bFoundEnd = False) and (iIndex <= Length(sCurrent)) do
      begin
        if sCurrent[iIndex] = '@' then
        begin
          bFoundEnd := True;
          iPosEnd := iIndex;
        end;
        Inc(iIndex);
      end;

      if bFoundEnd = True then
        begin
          sView := '';
          for J := 1 to iPosEnd - 1 do
          sView := sView + sCurrent[J]
        end;
        lstStockViewFE.Items.Add(sView)
    end;
end;

procedure TfrmRetailEase.tsStockShow(Sender: TObject);
begin
  OnShow;
  lstStockCustomize.Color := clWindow;
end;

procedure TfrmRetailEase.Help(HelpBox: TRichEdit);
begin
  if HelpBox.Visible = True then
  begin
    HelpBox.Visible := False;
    imgHelp.Picture.LoadFromFile('Assets\Help.png');
  end
  else if HelpBox.Visible = False then
  begin
    HelpBox.Visible := True;
    imgHelp.Picture.LoadFromFile('Assets\Exit.png');
  end;
end;

procedure TfrmRetailEase.bmbSaveAccountClick(Sender: TObject);
begin
  lstRegisteredUsers.Items.SaveToFile('Assets\Logins.txt');
  ShowMessage('Edits saved successfully.');
  tsStock.TabVisible := True;
end;

procedure TfrmRetailEase.bmbSaveStockEditsClick(Sender: TObject);
var
  sCategory, sProduct, sPrice, sCurrentStock, sMinimumStock: string;
  iCurrentS, iMinimumS, iError, iPosSymbol: Integer;
  iCategory, iProduct, iPrice, iCurrent, iMinimum : Integer;
  rPrice: Real;
begin
  iCategory := 1;
  iPrice := 1;
  iProduct := 1;

  sCategory := edtCategory.Text;
  sProduct := edtProductName.Text;
  sPrice := edtPrice.Text;

  iCurrentS := sedCurrentStockNew.Value;
  iMinimumS := sedMinimumStockNew.Value;

  bCategoryEdit := False;
  bProductNameEdit := False;
  bPriceEdit := False;
  // Making use of boolean flags as 'triggers': only is true when something does not meet expectation.
  while (bCategoryEdit = False) and (iCategory <= Length(sCategory)) do
  begin
    if (Length(sCategory) > 3) or (sCategory[iCategory] = ' ') or (sCategory[iCategory] = '_')
      or (sCategory[iCategory] = '@') or (sCategory[iCategory] = ',') or (sCategory[iCategory] = '/')
      or (sCategory[iCategory] = '|') or (Length(sCategory) < 3) or
      (Length(sCategory) = 0) then
    begin
      bCategoryEdit := True;
    end;
    Inc(iCategory);
  end;

  while (bProductNameEdit = False) and (iProduct <= Length(sProduct)) do
  begin
    if (sProduct[iProduct] = ' ') or (sProduct[iProduct] = '_') or (sProduct[iProduct] = '@') or
      (sProduct[iProduct] = ',') or (sProduct[iProduct] = '/') or (sProduct[iProduct] = '|') or
      (Length(sProduct) = 0) then
    begin
      bProductNameEdit := True;
    end;
    Inc(iProduct);
  end;

  while (bPriceEdit = False) and (iPrice <= Length(sPrice)) do
  begin
    if (sPrice[iPrice] <> ' ') or (sPrice <> '') then
    begin
      iPosSymbol := Pos(',', sPrice);
      if iPosSymbol <> 0 then
        sPrice[iPosSymbol] := '.';
      Val(sPrice, rPrice, iError);
      rPrice := Trunc(rPrice * 100) / 100;
      if iError = 0 then
      begin
        bPriceEdit := False;
      end
      else
        bPriceEdit := True;
      if rPrice >= 1000000 then
        bPriceEdit := True
      else
        bPriceEdit := False;
    end
    else
      bPriceEdit := True;
    Inc(iPrice);
  end;

  if (bPriceEdit = False) and (sPrice <> '') then
  begin
    sPrice := FloatToStrF(rPrice, ffGeneral, 8, 2)
  end;

  if sProduct = '' then
    bProductNameEdit := True;
  if sCategory = '' then
    bCategoryEdit := True;
  if sPrice = '' then
    bPriceEdit := True;

  if (bCategoryEdit = True) then
    edtCategory.Color := $00B3B3FF;
  if bProductNameEdit = True then
    edtProductName.Color := $00B3B3FF;
  if bPriceEdit = True then
    edtPrice.Color := $00B3B3FF;
  if bStock = True then
  begin
    sedCurrentStockNew.Color := $00B3B3FF;
    sedMinimumStockNew.Color := $00B3B3FF;
  end;

  if (bCategoryEdit = False) then
    edtCategory.Color := clWindow;
  if bProductNameEdit = False then
    edtProductName.Color := clWindow;
  if bPriceEdit = False then
    edtPrice.Color := clWindow;
  if bStock = False then

  if (bCategoryEdit = False) and (bProductNameEdit = False) and
    (bPriceEdit = False) then
  begin
    sNewProduct := '';
    sNewProduct := sCategory + '_' + sProduct + '@' + sPrice + '|' + IntToStr
      (iCurrentS) + '/' + IntToStr(iMinimumS);
    lstStockCustomize.Items[iSelect] := sNewProduct;
    tsStock.TabVisible := True;
    pgcMain.ActivePage := tsStock;
    tsAddStock.TabVisible := False;
    tsAccounts.TabVisible := True;
    redNewProductPreview.Clear;

    edtCategory.Clear;
    edtProductName.Clear;
    edtPrice.Clear;
    sedMinimumStockNew.Clear;
    sedCurrentStockNew.Clear;
    edtCategory.Color := clWindow;
    edtProductName.Color := clWindow;
    edtPrice.Color := clWindow;
    sedCurrentStockNew.Color := clWindow;
    sedMinimumStockNew.Color := clWindow;
  end;
end;

procedure TfrmRetailEase.bmbStockSaveClick(Sender: TObject);
begin
  lstStockCustomize.Items.SaveToFile('Assets\Stock.txt');
  ShowMessage('Edits saved successfully.');
end;

procedure TfrmRetailEase.btnAboutClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAbout;
end;

procedure TfrmRetailEase.btnCreateAccountClick(Sender: TObject);
var
  sUsername, sPasskey, sNewUser, sUserType: String;
  iIndex: Integer;
  bFound: Boolean;
begin
  sUsername := edtCreateUserName.Text;
  sPasskey := edtCreatePassKey.Text;
  sNewUser := '';
  sUserType := '';

  bFound := False;
  iIndex := 1;

  case rgpTypeAccounts.ItemIndex of
    0:
      begin
        sUserType := 'm';
      end;
    1:
      begin
        sUserType := 'c';
      end;
  end;

  if (rgpTypeAccounts.ItemIndex = -1) then
    ShowMessage('Indicate Account Type.')
  else if (sUsername = '') or (sPasskey = '') then
    ShowMessage('Create username and password.')
  else if (sUsername <> '') or (sPasskey <> '') then
    while (bFound = False) AND (iIndex <= Length(sUsername)) do
    begin
      if (sUsername[iIndex] = '.') or (sUsername[iIndex] = '_') then
      begin
        ShowMessage('Username contains forbidden characters.');
        bFound := True;
      end;
      Inc(iIndex);
    end;

  if (bFound = False) then
  begin
    ShowMessage('Account created successfully.');
    sNewUser := sUsername + '.' + sPasskey + '_' + sUserType;
    memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
    memAccounts.Lines.Add(sNewUser);
    memAccounts.Lines.SaveToFile('Assets\Logins.txt');
    bmbReturnLogIn.Enabled := True;
    bmbReturnLogIn.Glyph.LoadFromFile('Assets/Return.bmp');

    edtCreateUserName.Clear;
    edtCreatePassKey.Clear;
    rgpTypeAccounts.ItemIndex := -1;
  end;
end;

procedure TfrmRetailEase.btnLoadStockClick(Sender: TObject);
begin
  lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
  ShowMessage('Stock loaded successfully.');
end;

procedure TfrmRetailEase.edtCategoryMouseEnter(Sender: TObject);
begin
  edtCategory.ShowHint := True;
  edtCategory.Hint := 'Can only contain 3 letters';
end;

procedure TfrmRetailEase.edtCreatePassKeyChange(Sender: TObject);
begin
edtCreatePassKey.Color := clWindow;
edtCreatePassKey.ShowHint := False;
end;

procedure TfrmRetailEase.edtCreatePassKeyMouseEnter(Sender: TObject);
begin
if edtCreatePassKey.Color = clWebOrange then
begin
  edtCreatePassKey.ShowHint := True;
  edtCreatePassKey.Hint := 'Passkey must be 4 digits'
end;
if (edtCreatePassKey.Color = $00B3B3FF) and (edtCreatePassKey.Text = '') then
begin
  edtCreatePassKey.ShowHint := True;
  edtCreatePassKey.Hint := 'Field cannot be left empty'
end;
end;

procedure TfrmRetailEase.edtCreateUserNameChange(Sender: TObject);
begin
edtCreateUserName.Color := clWindow;
edtCreateUserName.ShowHint := False;
end;

procedure TfrmRetailEase.edtCreateUserNameMouseEnter(Sender: TObject);
begin
if edtCreateUserName.Color = clWebOrange then
begin
  edtCreateUserName.ShowHint := True;
  edtCreateUserName.Hint := 'Username already in use'
end;
if (edtCreateUserName.Color = $00B3B3FF) and (edtCreateUserName.Text = '') then
begin
  edtCreateUserName.ShowHint := True;
  edtCreateUserName.Hint := 'Field cannot be left empty'
end;
if (edtCreateUserName.Color = $00B3B3FF) and (edtCreateUserName.Text <> '') then
begin
  edtCreateUserName.ShowHint := True;
  edtCreateUserName.Hint := 'Username cannot contain: [._ ]'
end;
end;

procedure TfrmRetailEase.edtPassKeyChange(Sender: TObject);
begin
edtPassKey.Color := clWindow;
edtPassKey.ShowHint := False;
end;

procedure TfrmRetailEase.edtPassKeyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bmbLoginClick(bmbLogin);
  end;
end;

procedure TfrmRetailEase.edtPassKeyMouseEnter(Sender: TObject);
begin
if edtPassKey.Color = $00B3B3FF then
begin
  edtPassKey.ShowHint := True;
  edtPassKey.Hint := 'Passkey does not match'
end;
end;

procedure TfrmRetailEase.edtPriceMouseEnter(Sender: TObject);
begin
  edtPrice.ShowHint := True;
  edtPrice.Hint := 'Please ensure that a price is entered'
end;

procedure TfrmRetailEase.edtProductNameMouseEnter(Sender: TObject);
begin
  edtProductName.ShowHint := True;
  edtProductName.Hint := 'Enter a descriptive product name'
end;

procedure TfrmRetailEase.edtUserNameChange(Sender: TObject);
begin
edtUserName.Color := clWindow;
edtUserName.ShowHint := False;
end;

procedure TfrmRetailEase.edtUserNameMouseEnter(Sender: TObject);
begin
if edtUserName.Color = $00B3B3FF then
begin
  edtUserName.ShowHint := True;
  edtUserName.Hint := 'Username does not match'
end;
end;

procedure TfrmRetailEase.bmbAddReceiptClick(Sender: TObject);
var
  sProduct, sPrice, sSelect, sBackup, sOldCurrentStock, sFirstPart, sLastPart,
    sAddItem, sMinimumStock: string;
  I, J, K, L, M, N, O, iPosPriceDL, iPosCategoryDL, iPosCurrentStockDL,
    iQuantity, iIndex, iPosMinimumStockDL, iOldCurrentStock, iSelect,
    iNewCurrentStock, iMinimumStock: Integer;
  bFoundCategory, bFoundPrice, bFoundCurrentStock, bFoundMinimumStock: Boolean;
  dtpDetails : TDateTime;
begin
  bFoundCategory := False;
  bFoundPrice := False;
  bFoundCurrentStock := False;
  bFoundMinimumStock := False;
  iIndex := 1;
  iPosPriceDL := 0;
  iPosCategoryDL := 0;
  iPosCurrentStockDL := 0;
  iPosMinimumStockDL := 0;
  sOldCurrentStock := '';
  sProduct := '';
  sPrice := '';
  sBackup := '';
  sFirstPart := '';
  sLastPart := '';

  rPrice := 0;
  iQuantity := sedQuantity.Value;
  if (lstStockViewBE.Items.Count = 0) then
  begin
    ShowMessage(
      'There is no stock in the catalogue. Please ask the manager to register some stock.');
  end
  else
  begin
    if (lstStockViewFE.ItemIndex <> -1) then
    begin
      sSelect := lstStockViewBE.Items[lstStockViewFE.ItemIndex];
      iSelect := lstStockViewBE.Items.IndexOf(sSelect);
      bmbFinalizeOrder.Enabled := True;
      bmbFinalizeOrder.Glyph.LoadFromFile('Assets/Wallet.bmp');
      bmbRegisterReset.Enabled := True;
      bmbRegisterReset.Glyph.LoadFromFile('Assets/Reset.bmp');
      for I := 1 to Length(sSelect) do
      begin
        while (bFoundCategory = False) and (iIndex <= Length(sSelect)) or
          (bFoundPrice = False) or (bFoundCurrentStock = False) or
          (bFoundMinimumStock = False) do
        begin
          if sSelect[iIndex] = '_' then
          begin
            bFoundCategory := True;
            iPosCategoryDL := iIndex;
          end
          else if sSelect[iIndex] = '@' then
          begin
            bFoundPrice := True;
            iPosPriceDL := iIndex;
          end
          else if sSelect[iIndex] = '|' then
          begin
            bFoundCurrentStock := True;
            iPosCurrentStockDL := iIndex;
          end
          else if sSelect[iIndex] = '/' then
          begin
            bFoundMinimumStock := True;
            iPosMinimumStockDL := iIndex;
          end;
          Inc(iIndex);
        end;
      end;

      if (bFoundCategory = True) and (bFoundPrice = True) and
        (bFoundCurrentStock = True) and (bFoundMinimumStock = True) then
      begin
        for J := iPosCategoryDL + 1 to iPosPriceDL - 1 do
        begin
          sProduct := sProduct + sSelect[J]
        end;
        for K := iPosPriceDL + 1 to iPosCurrentStockDL - 1 do
        begin
          sPrice := sPrice + sSelect[K];
        end;
        for L := iPosCurrentStockDL + 1 to iPosMinimumStockDL - 1 do
        begin
          sOldCurrentStock := sOldCurrentStock + sSelect[L];
        end;
        for M := iPosMinimumStockDL + 1 to Length(sSelect) do
        begin
          sMinimumStock := sMinimumStock + sSelect[M];
        end;
      end;

      // Stock control
      iOldCurrentStock := StrToInt(sOldCurrentStock);
      iMinimumStock := StrToInt(sMinimumStock);
      iNewCurrentStock := iOldCurrentStock - iQuantity;

      for N := 1 to iPosCurrentStockDL do
      begin
        sFirstPart := sFirstPart + sSelect[N];
      end;
      for O := iPosMinimumStockDL to Length(sSelect) do
      begin
        sLastPart := sLastPart + sSelect[O]
      end;

      if iQuantity > iOldCurrentStock then
      begin
        ShowMessage('Not enough stock available');
      end
      else if iOldCurrentStock <= iMinimumStock then
      begin
        rPrice := StrToFloat(sPrice);
        rTotal := rTotal + (rPrice * iQuantity);
        if rTotal >= 1000000 then
        begin
          ShowMessage('Order cannot exceed R1 000 000.');
          rTotal := rTotal - (rPrice * iQuantity);
        end
        else
        begin
          sSelect := sFirstPart + IntToStr(iNewCurrentStock) + sLastPart;
          lstStockViewBE.Items[iSelect] := sSelect;
          redReciept.Lines.Add(sProduct + ' (*' + IntToStr(iQuantity)
              + ')' + #13 + FloatToStrF(rPrice, ffCurrency, 8, 2));
          sAddItem := sProduct + ' (*' + IntToStr(iQuantity)
            + ')' + #9 + FloatToStrF(rPrice, ffCurrency, 8, 2);
          edtSubTotal.Text := FloatToStrF(rTotal, ffCurrency, 8, 2);
        end;
      end
      else if iOldCurrentStock = 0 then
      begin
        ShowMessage(
          'No stock remaining. Please contact supplier to order more stock.');
      end
      else
      begin
        rPrice := StrToFloat(sPrice);
        rTotal := rTotal + (rPrice * iQuantity);
        if rTotal >= 1000000 then
        begin
          ShowMessage('Order cannot exceed R1 000 000.');
          rTotal := rTotal - (rPrice * iQuantity);
        end
        else
        begin
          sSelect := sFirstPart + IntToStr(iNewCurrentStock) + sLastPart;
          lstStockViewBE.Items[iSelect] := sSelect;
          redReciept.Lines.Add(sProduct + ' (*' + IntToStr(iQuantity)
              + ')' + #13 + FloatToStrF(rPrice, ffCurrency, 8, 2));
          sAddItem := sProduct + ' (*' + IntToStr(iQuantity)
            + ')' + #9 + FloatToStrF(rPrice, ffCurrency, 8, 2);
          edtSubTotal.Text := FloatToStrF(rTotal, ffCurrency, 8, 2);
        end;
      end;
    end
    else
      lstStockViewFE.Color :=  $00B3B3FF;
  end;
end;

procedure TfrmRetailEase.imgHideLoginClick(Sender: TObject);
begin
  edtPassKey.PasswordChar := #0;
  imgHideLogin.Visible := False;
  imgViewLogin.Visible := True;
end;

procedure TfrmRetailEase.imgHideLoginMouseEnter(Sender: TObject);
begin
imgViewLogin.ShowHint := True;
imgViewLogin.Hint := 'View passkey';
end;

procedure TfrmRetailEase.imgHideCreateClick(Sender: TObject);
begin
  edtCreatePassKey.PasswordChar := #0;
  imgHideCreate.Visible := False;
  imgViewCreate.Visible := True;
end;

procedure TfrmRetailEase.imgChangeLockClick(Sender: TObject);
begin
  case MessageDlg('Do you want to log out? Make sure to save: 💾',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsLogon;
        tsLogon.TabVisible := True;
        tsCreateAccount.TabVisible := False;
        tsRegister.TabVisible := False;
        tsChange.TabVisible := False;
        tsAccounts.TabVisible := False;
        tsStock.TabVisible := False;
        tsAddStock.TabVisible := False;
        redReciept.Lines.Clear;
        redFinalReciept.Lines.Clear;
        // edtMoney.Clear;
        lstStockViewBE.Items.Clear;
        rTotal := 0;
        edtSubTotal.Clear;
      end;
  end;
end;

procedure TfrmRetailEase.imgChangeLockMouseEnter(Sender: TObject);
begin
  imgLock.ShowHint := True;
  imgLock.Hint := 'Log off ' + sUser;
end;

procedure TfrmRetailEase.imgAccountsNextClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsStock;
end;

procedure TfrmRetailEase.imgAddPreviousClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsStock
end;

procedure TfrmRetailEase.imgRegisterPreviousClick(Sender: TObject);
begin
  case MessageDlg('Do you want to log out? Make sure to save: 💾',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsLogon;
        tsLogon.TabVisible := True;
        tsCreateAccount.TabVisible := False;
        tsRegister.TabVisible := False;
        tsChange.TabVisible := False;
        tsAccounts.TabVisible := False;
        tsStock.TabVisible := False;
        tsAddStock.TabVisible := False;
        redReciept.Lines.Clear;
        redFinalReciept.Lines.Clear;
        // edtMoney.Clear;
        lstStockViewBE.Items.Clear;
        rTotal := 0;
        edtSubTotal.Clear;
      end;
  end;
end;

procedure TfrmRetailEase.imgAccountsLockClick(Sender: TObject);
begin
  case MessageDlg('Do you want to log out? Make sure to save: 💾',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsLogon;
        tsLogon.TabVisible := True;
        tsCreateAccount.TabVisible := False;
        tsRegister.TabVisible := False;
        tsChange.TabVisible := False;
        tsAccounts.TabVisible := False;
        tsStock.TabVisible := False;
        tsAddStock.TabVisible := False;
        lstStockCustomize.Items.Clear;
        edtCategory.Clear;
        edtProductName.Clear;
        edtPrice.Clear;
      end;
  end;
end;

procedure TfrmRetailEase.imgHelpClick(Sender: TObject);
begin
  Help(redHelp);
  if pgcMain.ActivePage = tsLogon then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\LoginHelp.txt')
  end
  else if pgcMain.ActivePage = tsCreateAccount then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\CreateAccHelp.txt')
  end
  else if pgcMain.ActivePage = tsRegister then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\RegisterHelp.txt')
  end
  else if pgcMain.ActivePage = tsChange then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\ChangeHelp.txt')
  end
  else if pgcMain.ActivePage = tsStock then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\StockHelp.txt')
  end
  else if pgcMain.ActivePage = tsAddStock then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\AddStockHelp.txt')
  end
  else if pgcMain.ActivePage = tsAccounts then
  begin
    redHelp.Clear;
    redHelp.Lines.LoadFromFile('Assets\HelpFiles\AccountHelp.txt');
  end;
end;

procedure TfrmRetailEase.imgHelpMouseEnter(Sender: TObject);
begin
  imgHelp.Cursor := crHandPoint;
  imgHelp.ShowHint := true;
end;

procedure TfrmRetailEase.imgLockClick(Sender: TObject);
var
  sQuery: string;
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  if (pgcMain.ActivePage = tsStock) or (pgcMain.ActivePage = tsAddStock) or
    (pgcMain.ActivePage = tsAccounts) then
  begin
    sQuery := 'Do you want to log out?  Make sure to save: 💾';
  end
  else
    sQuery := 'Do you want to log out?';

  case MessageDlg(sQuery, mtConfirmation, mbYesNo, 0, mbNo) of
    mrYes:
      begin
        if (pgcMain.ActivePage = tsStock) or (pgcMain.ActivePage = tsAccounts)
          then
        begin
          lstStockCustomize.Clear;
          lstStockCustomize.Clear;
          edtCategory.Clear;
          edtProductName.Clear;
          edtPrice.Clear;
          sedCurrentStockNew.Clear;
          sedMinimumStockNew.Clear;
          sCategory := '';
          sProductName := '';
          sPrice := '';
          sCurrentStock := '';
          sMinimumStock := '';
        end;

        if (pgcMain.ActivePage = tsRegister) or (pgcMain.ActivePage = tsChange)
          then
        begin
          lstStockViewBE.Clear;
          redChange.Clear;
          redReciept.Clear;
          redFinalReciept.Clear;
          edtSubTotal.Clear;
          sCustomerName := '';
        end;

        pgcMain.ActivePage := tsLogon;
        tmrGreet.Enabled := True;
        tmrGreetTimer(tmrGreet);
        tsLogon.TabVisible := True;
        tsCreateAccount.TabVisible := False;
        tsRegister.TabVisible := False;
        tsChange.TabVisible := False;
        tsAccounts.TabVisible := False;
        tsStock.TabVisible := False;
        tsAddStock.TabVisible := False;
        imgLock.Visible := False;
        imgViewLogin.Visible := False;
        imgHideLogin.Visible := True;
        edtUserName.Clear;
        edtPassKey.Clear;
      end;
  end;
end;

procedure TfrmRetailEase.imgLockMouseEnter(Sender: TObject);
begin
  imgLock.ShowHint := True;
  imgLock.Hint := 'Log off ' + sUser;
  imgLock.Cursor := crHandPoint;
end;

procedure TfrmRetailEase.imgViewLoginClick(Sender: TObject);
begin
  edtPassKey.PasswordChar := '*';
  imgViewLogin.Visible := False;
  imgHideLogin.Visible := True;
end;

procedure TfrmRetailEase.imgViewCreateClick(Sender: TObject);
begin
  edtCreatePassKey.PasswordChar := '*';
  imgViewCreate.Visible := False;
  imgHideCreate.Visible := True;
end;

procedure TfrmRetailEase.lstRegisteredUsersMouseEnter(Sender: TObject);
begin
  lstRegisteredUsers.Cursor := crHandPoint;
    if lstRegisteredUsers.Color = $00B3B3FF then
  begin
    lstRegisteredUsers.ShowHint := True;
    lstRegisteredUsers.Hint := 'Please select an item'
  end
  else
    lstRegisteredUsers.ShowHint := False;
end;

procedure TfrmRetailEase.lstRegisteredUsersMouseLeave(Sender: TObject);
begin
  lstRegisteredUsers.Cursor := crArrow;
end;

procedure TfrmRetailEase.lstStockCustomizeClick(Sender: TObject);
begin
lstStockCustomize.Color := clWindow;
end;

procedure TfrmRetailEase.lstStockCustomizeMouseEnter(Sender: TObject);
begin
  lstStockCustomize.Cursor := crHandPoint;
  if lstStockCustomize.Color = $00B3B3FF then
  begin
    lstStockCustomize.ShowHint := True;
    lstStockCustomize.Hint := 'Please select an item'
  end
  else
    lstStockCustomize.ShowHint := False;
end;

procedure TfrmRetailEase.lstStockCustomizeMouseLeave(Sender: TObject);
begin
  lstStockCustomize.Cursor := crArrow;
end;

procedure TfrmRetailEase.lstStockViewBEMouseLeave(Sender: TObject);
begin
  lstStockViewBE.Cursor := crArrow;
end;

procedure TfrmRetailEase.lstStockViewFEClick(Sender: TObject);
begin
if lstStockViewFE.ItemIndex <> -1 then
begin
  lstStockViewFE.Color := clWindow;
end;
end;

procedure TfrmRetailEase.lstStockViewFEDblClick(Sender: TObject);
begin
if Sender = lstStockViewFE then
begin
  if lstStockViewFE.ItemIndex <> -1 then
    bmbAddReceiptClick(bmbAddReceipt);
end;
end;

procedure TfrmRetailEase.lstStockViewFEMouseEnter(Sender: TObject);
begin
lstStockViewFE.Cursor := crHandPoint;
  if lstStockViewFE.Color = $00B3B3FF then
begin
  lstStockViewFE.ShowHint := True;
  lstStockViewFE.Hint := 'Please select an item'
end
  else
    lstStockViewFE.ShowHint := False;
end;

procedure TfrmRetailEase.OnShow;
begin
  redHelp.Visible := False;
  imgHelp.Picture.LoadFromFile('Assets\Help.png');
  imgHelp.Visible := True;
  imgLock.Visible := True;
end;

procedure TfrmRetailEase.redHelpChange(Sender: TObject);
begin
  imgHelp.ShowHint := True;
  if redHelp.Visible = True then
  begin
    Self.Refresh;
  imgHelp.Hint := 'Close Help'
  end
  else
  begin
    Self.Refresh;
    imgHelp.Hint := 'Get Help';
  end;
end;

procedure TfrmRetailEase.redRecieptDblClick(Sender: TObject);
begin
  bmbAddReceiptClick(bmbAddReceipt);
end;

procedure TfrmRetailEase.Refresh;
begin
  lstStockCustomize.Items.Clear;
  lstStockCustomize.Items.LoadFromFile('Assets\Stock.txt');
  lstStockCustomize.ItemIndex := -1;
end;

procedure TfrmRetailEase.rgpTypeAccountsClick(Sender: TObject);
begin
rgpTypeAccounts.ParentBackground := True;
pnlAccountError.Visible := False;
end;
end.

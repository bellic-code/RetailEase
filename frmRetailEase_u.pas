unit frmRetailEase_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, pngimage, ExtCtrls, Buttons, Spin, JPEG, Math,
  Printers;

type
  TfrmRetailEase = class(TForm)
    tsLogon: TTabSheet;
    imgBackgroundLogon: TImage;
    lblUserName: TLabel;
    lblPassword: TLabel;
    imgProfile: TImage;
    imgView1: TImage;
    imgHide1: TImage;
    edtUserName: TEdit;
    edtPassword: TEdit;
    memUserNames: TMemo;
    memPasswords: TMemo;
    memLogins: TMemo;
    memTypeAccount: TMemo;
    bmbLogin: TBitBtn;
    bmbCreateAccountPrompt: TBitBtn;
    tsCreateAccount: TTabSheet;
    imgBackgroundCreate: TImage;
    lblCreatePassword: TLabel;
    lblCreateUserName: TLabel;
    imgCreateAccount: TImage;
    imgView2: TImage;
    imgHide2: TImage;
    edtCreateUserName: TEdit;
    edtCreatePassword: TEdit;
    rgpAccounts: TRadioGroup;
    tsRegister: TTabSheet;
    imgBackgroundRegister: TImage;
    lblReceiptHeader: TLabel;
    lblQuantityHeader: TLabel;
    sedQuantity: TSpinEdit;
    bmbFinalizeOrder: TBitBtn;
    bmbAddReceipt: TBitBtn;
    tsChange: TTabSheet;
    imgBackgroundChange: TImage;
    lblChangeHeader: TLabel;
    redChange: TRichEdit;
    edtMoney: TEdit;
    bmbChange: TBitBtn;
    tsAccounts: TTabSheet;
    imgBackgroundAccounts: TImage;
    lblAccountHeader: TLabel;
    lstUsers: TListBox;
    bmbDeleteAccount: TBitBtn;
    bmbSaveAccount: TBitBtn;
    tsStock: TTabSheet;
    imgBackgroundStock: TImage;
    lblCurrentHeader: TLabel;
    lblMinHeader: TLabel;
    lstCustomize: TListBox;
    bmbDelete: TBitBtn;
    sedCurrent: TSpinEdit;
    sedMin: TSpinEdit;
    bmbStockSaveChanges: TBitBtn;
    tsAbout: TTabSheet;
    redAbout: TRichEdit;
    redReciept: TRichEdit;
    memAccounts: TMemo;
    bmbCreateAccount: TBitBtn;
    bmbReturnLogIn: TBitBtn;
    memNames: TMemo;
    lblStockHeader: TLabel;
    bmbStockRefresh: TBitBtn;
    bmbRegisterReset: TBitBtn;
    bmbLoadStock: TBitBtn;
    pnlStock: TPanel;
    bmbSaveStock: TBitBtn;
    bmbGenerate: TBitBtn;
    tsAddStock: TTabSheet;
    imgBackgroundAddStock: TImage;
    pnlAddStock: TPanel;
    lblAddStockHeader: TLabel;
    edtCategory: TEdit;
    edtProductName: TEdit;
    edtPrice: TEdit;
    sedCurrentStock: TSpinEdit;
    sedMinimumStock: TSpinEdit;
    lblProductName: TLabel;
    lblCategory1: TLabel;
    lblPrice: TLabel;
    lblMinStock: TLabel;
    lblCurrentStock: TLabel;
    bmbRegisterNewStock: TBitBtn;
    redNewProduct: TRichEdit;
    bmbPreviewNewStock: TBitBtn;
    pgcMain: TPageControl;
    bmbAddProductReset: TBitBtn;
    bmbLoadAccounts: TBitBtn;
    bmbAddAccounts: TBitBtn;
    bmbReturnAccounts: TBitBtn;
    bmbReturnStock: TBitBtn;
    bmbReturnRegister: TBitBtn;
    lstStock: TListBox;
    redFinalReciept: TRichEdit;
    lblChangeHeader1: TLabel;
    bmbPrint: TBitBtn;
    bmbMasterReset: TBitBtn;
    bmbAddproduct: TBitBtn;
    memReceipt: TMemo;
    pnlNavigationRegister1: TPanel;
    edtSubTotal: TEdit;
    lbl1: TLabel;
    lblCurrentEdit: TLabel;
    pnlStatus: TPanel;
    imgHelp: TImage;
    imgLogout: TImage;

    procedure imgView1Click(Sender: TObject);
    procedure imgHide1Click(Sender: TObject);
    procedure imgHelpMouseEnter(Sender: TObject);
    procedure imgHelpMouseLeave(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure imgLogoutMouseEnter(Sender: TObject);
    procedure imgLogoutMouseLeave(Sender: TObject);

    procedure bmbReturnClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure bmbAboutClick(Sender: TObject);
    procedure bmbCreateAccountPromptClick(Sender: TObject);
    procedure bmbStockSaveChangesClick(Sender: TObject);
    procedure bmbLoginClick(Sender: TObject);
    procedure btnCreateAccountClick(Sender: TObject);
    procedure bmbCreateAccountClick(Sender: TObject);
    procedure bmbReturnLogInClick(Sender: TObject);
    procedure bmbDeleteAccountClick(Sender: TObject);
    procedure bmbChangeClick(Sender: TObject);
    procedure bmbFinalizeOrderClick(Sender: TObject);
    procedure btnLoadCatergoryClick(Sender: TObject);
    procedure btnLoadStockClick(Sender: TObject);
    procedure bmbSaveAccountClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bmbDeleteClick(Sender: TObject);
    procedure bmbAddReceiptClick(Sender: TObject);
    procedure bmbEntryDeleteClick(Sender: TObject);
    procedure bmbRegisterResetClick(Sender: TObject);
    procedure bmbLoadStockClick(Sender: TObject);
    procedure bmbSaveStockClick(Sender: TObject);
    procedure bmbGenerateClick(Sender: TObject);
    procedure bmbGenerateMouseEnter(Sender: TObject);
    procedure bmbGenerateMouseLeave(Sender: TObject);
    procedure bmbPreviewNewStockClick(Sender: TObject);
    procedure bmbAddProductResetClick(Sender: TObject);
    procedure bmbLoadAccountsClick(Sender: TObject);
    procedure bmbAddAccountsClick(Sender: TObject);
    procedure bmbReturnAccountsClick(Sender: TObject);
    procedure bmbReturnStockClick(Sender: TObject);
    procedure bmbReturnRegisterClick(Sender: TObject);
    procedure bmbFindClick(Sender: TObject);
    procedure bmbPrintClick(Sender: TObject);
    procedure bmbMasterResetClick(Sender: TObject);
    procedure bmbReturnRegisterMouseEnter(Sender: TObject);
    procedure bmbReturnRegisterMouseLeave(Sender: TObject);
    procedure bmbRegisterNewStockClick(Sender: TObject);
    procedure bmbAddproductClick(Sender: TObject);
    procedure bmbPrintMouseEnter(Sender: TObject);
    procedure bmbPrintMouseLeave(Sender: TObject);
    procedure lstCustomizeMouseEnter(Sender: TObject);
    procedure lstCustomizeMouseLeave(Sender: TObject);
    procedure bmbStockRefreshClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure bmbReturnStockMouseEnter(Sender: TObject);
    procedure bmbReturnStockMouseLeave(Sender: TObject);
    procedure tsLogonShow(Sender: TObject);
  private
    { Private declarations }
    sCustomer, sCurrent, sUser, sCurrentPassKey, sCurrentUser, sNewProduct,
      sCustomerName: string;
    rTotal, rPrice: Real;

    procedure setStatusPanel(statusText: string; statusType: integer);
  public
    { Public declarations }
    procedure TransactionDetails(RichEdit: TRichEdit);
    procedure Help(HelpBox: TRichEdit);
    procedure Exit(RetailEase: TForm);
    procedure GreetingFoot(RichEdit: TRichEdit);
    procedure Lock(imgLock: TImage);
    procedure Refresh();
  end;

var
  frmRetailEase: TfrmRetailEase;

implementation

{$R *.dfm}

procedure TfrmRetailEase.bmbLoadStockClick(Sender: TObject);
var
  sSelect, sCurrentStock, sMinimumStock: string;
  iPosCurrentDL, iPosMinimumDL: integer;
  I, J: integer;
begin
  if lstCustomize.ItemIndex = -1 then
  // Checks if an item has been selected in the TListBox
  begin
    // ShowMessage(
    // 'No stock has been selected. Please select an item from the stock viewer.'
    // );
    setStatusPanel
      ('No stock has been selected. Please select an item from the stock viewer.',
      1);
  end
  else
  begin // If something has been selected, certain buttons now become available, and the curretly selected item gets processed.
    sedCurrent.Enabled := True;
    sedMin.Enabled := True;
    bmbStockRefresh.Enabled := False;
    sSelect := '';
    sSelect := lstCustomize.Items[lstCustomize.ItemIndex];
    lblCurrentEdit.Caption := sSelect;
    iPosCurrentDL := Pos('|', sSelect);
    iPosMinimumDL := Pos('/', sSelect);
    for I := iPosCurrentDL + 1 to iPosMinimumDL - 1 do
    begin
      sCurrentStock := sCurrentStock + sSelect[I];
    end;
    for J := iPosMinimumDL + 1 to Length(sSelect) do
    begin
      sMinimumStock := sMinimumStock + sSelect[J]
    end;
    sedCurrent.Value := StrToInt(sCurrentStock);
    sedMin.Value := StrToInt(sMinimumStock);
    bmbLoadStock.Enabled := False;
    bmbStockSaveChanges.Enabled := False;
    bmbAddproduct.Enabled := False;
    bmbDelete.Enabled := False;
    bmbSaveStock.Enabled := True;
  end;
end;

procedure TfrmRetailEase.bmbStockRefreshClick(Sender: TObject);
begin
  case MessageDlg('Refresh the stock catalogue view?.', mtConfirmation,
    mbYesNo, 0) of
    mrYes:
      begin // if the user chooses to refresh the catalogue view (lstCustomize), the following code is run.
        lstCustomize.Items.Clear;
        lstCustomize.Items.LoadFromFile('Assets\Stock.txt');
        lstCustomize.ItemIndex := -1;
        if lstCustomize.Items.Count = 0 then
        begin
          case MessageDlg('There is no stock registered. Add some?',
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
                // ShowMessage('Please add some stock when you are ready.');
                setStatusPanel
                  ('Please add some stock when you are ready. No items in stock',
                  1);
              end;
          end;
        end;
      end;
    mrNo:
      begin
        // ShowMessage('Catalogue not refreshed.');
        setStatusPanel('Catalogue not refreshed', 1);
      end;
  end;
end;

procedure TfrmRetailEase.bmbReturnAccountsClick(Sender: TObject);
begin
  // Clears the fields so they are empty the next time the user returns:
  edtCreateUserName.Clear;
  edtCreatePassword.Clear;
  rgpAccounts.ItemIndex := -1;
  // Adjusts active and inactive tabs:
  pgcMain.ActivePage := tsAccounts;
  tsAccounts.TabVisible := True;
  tsCreateAccount.TabVisible := False;
  tsStock.TabVisible := True;
  bmbReturnLogIn.Visible := True;
  bmbReturnAccounts.Visible := False;
  // Prompts the user to refresh the Acccounts view (lstUsers)
  case MessageDlg('Changes were detected. Refresh registered account view?',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        lstUsers.Clear;
        lstUsers.Items.LoadFromFile('Assets\Logins.txt');
        // ShowMessage('Registered account view refreshed successfully!');
        setStatusPanel('Regustered account view refreshed successfully!', 0);
      end;
    mrNo:
      begin
        // ShowMessage('App may not function as intended. Please refresh manually, by pressing: 🔃 Load Acccounts');
        setStatusPanel
          ('App may not function as intended. Please refresh manually, by pressing: 🔃 Load Acccounts',
          2);
      end;
  end;
end;

procedure TfrmRetailEase.bmbPrintClick(Sender: TObject);
var
  I: integer;
  ReceiptName: string;
begin
  // Copies receipt view from (redFinalReceipt) to (memReceipt), in preparation to save to text file.
  for I := 0 to redFinalReciept.Lines.Count do
  begin
    memReceipt.Lines.Add(redFinalReciept.Lines[I]);
  end;
  // Saves to auto-generated textfile; named after the customer ID.
  memReceipt.Lines.SaveToFile('Receipts\' + sCustomerName + '.txt');
  ShowMessage('File printed successfully!' + #13 + 'Please view: "Receipts\' +
    sCustomerName + '.txt"');
  pgcMain.ActivePage := tsRegister;
  redNewProduct.Lines.Clear;
  // For good measure, the (lstStock) TListBox is reloaded.
  lstStock.Items.Clear;
  lstStock.Items.LoadFromFile('Assets\Stock.txt');
  // Warning to register stock if none is detected.
  if lstStock.Items.Count = 0 then
  begin
    // ShowMessage('There is no stock in the catalogue. Please ask the manager to add some.');
    setStatusPanel
      ('There is no stock in the catalogue. Please ask the manager to add some.',
      2);
  end;
  // Continue to reset and clear up interface
  redChange.Lines.Clear;
  redReciept.Lines.Clear;
  redFinalReciept.Lines.Clear;
  tsRegister.TabVisible := True;
  tsChange.TabVisible := False;
  bmbChange.Enabled := True;
  bmbPrint.Enabled := False;
  rTotal := 0;
  edtSubTotal.Clear;
  // Loads default text into (redReceipt)
  redReciept.Lines.Add('Welcome to TopTech!');
  redReciept.Lines.Add('-------------------------------------------');
  redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
  redReciept.Lines.Add('-------------------------------------------' + #13);
  // ShowMessage('Ready for next transaction!');
  setStatusPanel('Ready for next transaction!', 0);
  // Disables 'Finalize Order' button, unless one item has been selected (ItemIndex will be 6.)
  if redReciept.Lines.Count < 6 then
    bmbFinalizeOrder.Enabled := False;
end;

procedure TfrmRetailEase.bmbPrintMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := 'Prints contents of receipt to textfile (Receipt.txt)';
end;

procedure TfrmRetailEase.bmbPrintMouseLeave(Sender: TObject);
begin
  ShowHint := False;
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
end;

procedure TfrmRetailEase.bmbAddproductClick(Sender: TObject);
begin
  // Prepares interface and tab focus for adding a product to stock catalogue (lstStock, Stock.txt)
  pgcMain.ActivePage := tsAddStock;
  tsAddStock.TabVisible := True;
  tsStock.TabVisible := False;
  tsAccounts.TabVisible := False;
  tsCreateAccount.TabVisible := False;
  redNewProduct.Lines.Add('New product preview:')
end;

procedure TfrmRetailEase.bmbChangeClick(Sender: TObject);
var
  rChange, rGiven: Real;
  iTHundred, iHundred, iFifty, iTwenty, iTen, iFive, iTwo, iOne, iRand: integer;
  rCent: Real;
  I, iError, J: integer;
  sGiven: String;
  bCheck: Boolean;
begin
  // Stores input from (edtMoney) to be handled by the code
  sGiven := edtMoney.Text;
  // Attempts to see if that input can be a real value. iError = 0 if conversion is successful.
  Val(sGiven, rGiven, iError);
  rGiven := Trunc(rGiven * 100) / 100;
  if iError = 0 then
  begin
    case MessageDlg('Please ensure the amount inputted is correct: ' +
      FloatToStrF(rGiven, ffCurrency, 8, 2), mtConfirmation, mbYesNo, 0) of
      mrYes:
        begin
          redChange.Lines.Add('Change calculated for: ' + sCustomer);
          rChange := rGiven - rTotal;
          bCheck := False;

          if rGiven < rTotal then
          begin
            redChange.Lines.Clear;
            ShowMessage('Insufficient Amount!');
          end
          else
          begin
            bmbPrint.Enabled := True;
            redChange.Lines.Add('Money received: ' + #9 + FloatToStrF(rGiven,
              ffCurrency, 8, 2));
            redChange.Lines.Add('Actual total: ' + #9 + FloatToStrF(rTotal,
              ffCurrency, 8, 2));
            redChange.Lines.Add('Change returned: ' + #9 + FloatToStrF(rChange,
              ffCurrency, 8, 2));
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
                redChange.Lines.Add('R200:' + #9 + '×' + IntToStr(iTHundred));
              end;
              // How many R100 needed:
              iHundred := iRand div 100;
              iRand := iRand - iHundred * (100);
              if iHundred > 0 then
              begin
                redChange.Lines.Add('R100:' + #9 + '×' + IntToStr(iHundred));
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
                redChange.Lines.Add('R20:' + #9 + '×' + IntToStr(iTwenty));
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
              iRand := iRand - iOne * (1);
              if iOne > 0 then
              begin
                redChange.Lines.Add('R1:' + #9 + '×' + IntToStr(iOne));
              end;
              // The amount of cents that needs to be returned:
              redChange.Lines.Add(#13 + 'Cents: ' + #9 + FloatToStrF(rCent,
                ffGeneral, 8, 2) + 'c');
              // Copies lines from (redChange) to (redFinalReceipt)
              for J := 0 to redChange.Lines.Count do
              begin
                redFinalReciept.Lines.Add(redChange.Lines[J]);
              end;
              // Footer for receipt (redFinalReceipt)
              redFinalReciept.Lines.Add('Thank you for shopping at TopTech!' +
                #13 + 'Have a wonderful day!' + #13);
              redFinalReciept.Lines.Add('Contact Details:' + #13 +
                'Phone:️074 562 8961' + #13 + 'Email: toptech-dbn@gmail.com');
              bmbChange.Enabled := False;
            end;
          end;
        end;
      mrNo:
        begin
          // if the user selects 'No'because they inputted the incorrect amount or want to change it.
          // ShowMessage('Please ensure the amount given by the customer has been added up correctly, and try again!');
          setStatusPanel
            ('Please ensure the amount given by the customer has been added up correctly, and try again!',
            2);
        end;
    end;
  end
  else
  // if coversion from string to real is not successful, the value is <> 0
  begin
    // ShowMessage('Invalid input. Please enter a valid numeric value!');
    setStatusPanel('Invalid input. Please enter a valid numeric value!', 2);
    edtMoney.Clear;
  end;
end;

procedure TfrmRetailEase.bmbCreateAccountClick(Sender: TObject);
var
  sCreateUsername, sCreatePasskey, sNewUser, sUserType, sRegisteredUsername,
    sRegisteredUsers, sLowerCreateUsername: String;
  iIndex, iPos, iIndexUsername, I, J, O: integer;
  bError, bCheck, bRegisteredUsername: Boolean;
begin
  // Stores values from (edtCreateUserName) and (edtCreatePassword) in variables to be validated and handled.
  sCreateUsername := edtCreateUserName.Text;
  sCreatePasskey := edtCreatePassword.Text;
  sNewUser := '';
  sUserType := '';
  bCheck := False;
  // Variables for checking if username in use.
  bRegisteredUsername := False;
  bError := False;
  iIndex := 1;
  // Code for assigning type of user account. Chosen via selection in (rgpAccounts)
  case rgpAccounts.ItemIndex of
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
  if (rgpAccounts.ItemIndex = -1) then
  begin
    // ShowMessage('Indicate Account Type!');
    setStatusPanel('Indicate account type!', 2);
    bError := True;
  end
  // if either (edtCreateUserName) or (edtPassword) is empty
  else if (sCreateUsername = '') or (sCreatePasskey = '') then
  begin
    // ShowMessage('Please enter username and password.');
    setStatusPanel('Please enter username and password.', 1);
    bError := True;
  end
  // if either (edtCreateUserName) or (edtPassword) is empty, now each character is scanned:
  else if (sCreateUsername <> '') or (sCreatePasskey <> '') then
    while (bError = False) AND (iIndex <= Length(sCreateUsername)) do
    begin
      if (sCreateUsername[iIndex] = '.') or (sCreateUsername[iIndex] = '_') or
        (sCreateUsername[iIndex] = ' ') then
      begin
        // ShowMessage('Username contains forbidden characters!');
        setStatusPanel('Username contains invalid characters!', 2);
        bError := True;
      end;
      Inc(iIndex);
    end;
  // Loads registered users into a TMemo (memAccounts)
  memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
  for I := 0 to memAccounts.Lines.Count - 1 do
  begin
    sRegisteredUsers := memAccounts.Lines[I];
    iPos := 0;
    sRegisteredUsername := '';
    iIndexUsername := 1;
    bCheck := False;
    // Scanning for '.' in each entry of (memAccounts):
    while (bCheck = False) and (iIndexUsername <= Length(sRegisteredUsers)) do
    begin
      if (sRegisteredUsers[iIndexUsername] = '.') then
      begin
        bCheck := True;
        iPos := iIndexUsername;
      end;
      Inc(iIndexUsername);
    end;
    // Build up string until dot '.'  delimiter
    for J := 1 to iPos - 1 do
    begin
      sRegisteredUsername := sRegisteredUsername + sRegisteredUsers[J];
    end;
    memNames.Lines.Add(sRegisteredUsername);
  end;
  // Checks if the inputted name exists in memNames
  // LowerCase() allows names to be compared, and case is not a factor; encouraging uniqueness.
  sLowerCreateUsername := LowerCase(sCreateUsername);
  if bCheck = True then
  begin
    for O := 0 to memNames.Lines.Count - 1 do
      if sLowerCreateUsername = LowerCase(memNames.Lines[O]) then
      begin
        bRegisteredUsername := True;
      end
  end;
  // If the new username does match with an entry in the TMemo, this ShowMessage() appears...
  if bRegisteredUsername = True then
    ShowMessage('Username already in use!')
    // If neither of these conditions are met (ie both Boolean flags are False):
  else if (bError = False) and (bRegisteredUsername = False) then
  begin
    // ShowMessage('Account created successfully!');
    setStatusPanel('Account created!', 0);
    // Concatenats different parts of new username into one and stores in sNewUser
    sNewUser := sCreateUsername + '.' + sCreatePasskey + '_' + sUserType;
    // Loads existing accounts:
    memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
    // Appends new entry to memAccounts
    memAccounts.Lines.Add(sNewUser);
    // Saves to textfile (Logins.txt)
    memAccounts.Lines.SaveToFile('Assets\Logins.txt');
    bmbReturnLogIn.Enabled := True;
    rgpAccounts.Buttons[1].Enabled := True;
    // Reets interface:
    edtCreateUserName.Clear;
    edtCreatePassword.Clear;
    rgpAccounts.ItemIndex := -1;
  end;
end;

procedure TfrmRetailEase.bmbCreateAccountPromptClick(Sender: TObject);
begin
  tsCreateAccount.TabVisible := True;
  pgcMain.ActivePage := tsCreateAccount;
  rgpAccounts.Buttons[1].Enabled := True;
end;

procedure TfrmRetailEase.bmbDeleteAccountClick(Sender: TObject);
begin
  // Checks if an item has been selected from TListBox (lstUsers)
  if lstUsers.ItemIndex = -1 then
    // ShowMessage('No account has been selected!')
    setStatusPanel('No account has been selected!', 2)

  else if sCurrentUser = lstUsers.Items[lstUsers.ItemIndex] then
    ShowMessage('Cannot remove current user!')
  else
    case MessageDlg('Do you really want to remove this account?', mtWarning,
      mbYesNo, 0) of
      mrYes:
        begin
          lstUsers.DeleteSelected;
          ShowMessage('Account removed successfully from the system!');
          case MessageDlg
            ('The registered accounts were modified. Save changes now?',
            mtConfirmation, mbYesNo, 0) of
            mrYes:
              begin
                lstUsers.Items.SaveToFile('Logins.txt');
                ShowMessage('Changes saved successfully!');
              end;
            mrNo:
              begin
                ShowMessage('Please save changes manually by clicking: 💾.');
              end;
          end;
        end;
      mrNo:
        begin
          ShowMessage('Account not removed from system!')
        end;
    end;
end;

procedure TfrmRetailEase.bmbDeleteClick(Sender: TObject);
var
  sDelete: string;
  I: integer;
begin
  if lstCustomize.ItemIndex = -1 then
    ShowMessage('No stock has been selected!')
  else
  begin
    case MessageDlg('Do you really want to remove this stock?', mtWarning,
      mbYesNo, 0) of
      mrYes:
        begin
          lstCustomize.DeleteSelected;
          // now delete from lstCustomize
          ShowMessage('Stock removed from system!');
        end;
      mrNo:
        ShowMessage('Stock not removed from system!')
    end;
  end;
end;

procedure TfrmRetailEase.bmbEntryDeleteClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex := redReciept.Lines.IndexOf(sCurrent);
  redReciept.Lines.Delete(iIndex);
end;

procedure TfrmRetailEase.bmbFindClick(Sender: TObject);
begin
  lstStock.Items.LoadFromFile('Assets\Stock.txt');
end;

procedure TfrmRetailEase.bmbGenerateClick(Sender: TObject);
var
  iPassKey: integer;
begin
  edtCreatePassword.Clear;
  Randomize;
  iPassKey := Random(9999 - 1000 + 1) + 1000;
  edtCreatePassword.Text := IntToStr(iPassKey);
end;

procedure TfrmRetailEase.bmbGenerateMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := ('Generate a random passkey.')
end;

procedure TfrmRetailEase.bmbGenerateMouseLeave(Sender: TObject);
begin
  ShowHint := False;
end;

procedure TfrmRetailEase.bmbLoadAccountsClick(Sender: TObject);
begin
  lstUsers.Items.LoadFromFile('Assets\Logins.txt');
  bmbAddAccounts.Enabled := True;
  bmbDeleteAccount.Enabled := True;
  bmbSaveAccount.Enabled := True;
end;

procedure TfrmRetailEase.bmbLoginClick(Sender: TObject);
var
  sUsername, sPassword, sAccount, sRegisteredUsername, sRegisteredPassword,
    sAccountType: string;
  iPosUsernameDL, iPosPasswordDL, iPosAccountDL, iCurrentAccount: integer;
  bFoundAcnt, bFoundPwd, bUsernameMatch, bPaasswordMatch, bAccountType: Boolean;
  I, J, K, L, M, N, O: integer;
begin
  sUsername := edtUserName.Text;
  sPassword := edtPassword.Text;

  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if (edtUserName.Text = '') or (edtPassword.Text = '') then
  begin
    // ShowMessage('Invalid username or password!');
    pnlStatus.Caption := 'Invalid username or password!';
    pnlStatus.Color := clRed;
  end
  else
  begin
    iCurrentAccount := -1;
    for I := 0 to memLogins.Lines.Count - 1 do
    begin
      sRegisteredUsername := '';
      sRegisteredPassword := '';
      sAccountType := '';
      sAccount := memLogins.Lines[I];
      bFoundAcnt := False;
      bFoundPwd := False;
      bUsernameMatch := False;
      bPaasswordMatch := False;

      iPosUsernameDL := 0;
      iPosPasswordDL := 0;
      iPosAccountDL := 1;

      while (bFoundAcnt = False) and (bFoundPwd = False) or
        (iPosAccountDL <= Length(sAccount)) do
      begin
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

      for J := 1 to iPosUsernameDL - 1 do
      begin
        sRegisteredUsername := sRegisteredUsername + sAccount[J];
      end;
      memUserNames.Lines.Add(sRegisteredUsername);
      for K := iPosUsernameDL + 1 to iPosPasswordDL - 1 do
      begin
        sRegisteredPassword := sRegisteredPassword + sAccount[K];
      end;
      memPasswords.Lines.Add(sRegisteredPassword);
      for L := iPosPasswordDL + 1 to Length(sAccount) do
      begin
        sAccountType := sAccountType + sAccount[L];
      end;
      memTypeAccount.Lines.Add(sAccountType);
    end;

    for M := 0 to memUserNames.Lines.Count - 1 do
      if sUsername = memUserNames.Lines[M] then
      begin
        bUsernameMatch := True;
        iCurrentAccount := memUserNames.Lines.IndexOf(memUserNames.Lines[M]);
        sCurrentUser := memLogins.Lines[iCurrentAccount];
        sUser := sUsername;
        sCurrentPassKey := sPassword;
        edtUserName.Clear;
        edtPassword.Clear;
        if sPassword = memPasswords.Lines[iCurrentAccount] then
        begin
          bPaasswordMatch := True;

          for O := 0 to memTypeAccount.Lines.Count - 1 do
          begin
            // ShowMessage('Welcome, ' + sUser + '.');
            pnlStatus.Caption := 'Welcome, ' + sUser + '.';
            pnlStatus.Color := clSilver;
            if memTypeAccount.Lines[iCurrentAccount] = 'c' then
            begin
              bmbPrint.Enabled := False;

              tsRegister.TabVisible := True;
              pgcMain.ActivePage := tsRegister;
              tsChange.TabVisible := False;
              tsAccounts.TabVisible := False;
              tsStock.TabVisible := False;
              tsAddStock.TabVisible := False;
              tsLogon.TabVisible := False;
              tsCreateAccount.TabVisible := False;
              lstStock.Items.LoadFromFile('Assets\Stock.txt');

              redReciept.Lines.Clear;
              redReciept.Lines.Add('Welcome to TopTech!');
              redReciept.Lines.Add
                ('-------------------------------------------');
              redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
              redReciept.Lines.Add
                ('-------------------------------------------');
              if redReciept.Lines.Count < 6 then
                bmbFinalizeOrder.Enabled := False;
              bAccountType := True;
            end
            else if memTypeAccount.Lines[iCurrentAccount] = 'm' then
            begin
              bAccountType := False;
              bmbSaveStock.Enabled := False;
              sedCurrent.Enabled := False;
              sedMin.Enabled := False;
              bmbRegisterNewStock.Enabled := False;

              tsStock.TabVisible := True;
              pgcMain.ActivePage := tsStock;
              tsAccounts.TabVisible := True;
              tsRegister.TabVisible := False;
              tsChange.TabVisible := False;
              tsAddStock.TabVisible := False;
              tsLogon.TabVisible := False;
              tsCreateAccount.TabVisible := False;
              lstCustomize.Items.LoadFromFile('Assets\Stock.txt');

              bmbAddAccounts.Enabled := False;
              bmbDeleteAccount.Enabled := False;
              bmbSaveAccount.Enabled := False;
            end;
            // ShowMessage('Welcome, '+ sCurrentUser);
          end;
        end;
      end;

    if (bUsernameMatch = False) or (bPaasswordMatch = False) then
    begin
      // ShowMessage('Incorrect username or password!')
      pnlStatus.Caption := 'Invalid username or password!';
      pnlStatus.Color := clRed;
    end
    else
  end;
  if (lstCustomize.Items.Count = 0) and not(bAccountType) and (bUsernameMatch)
    and (bPaasswordMatch) then
  begin
    pnlStatus.Caption := 'There is no stock registered, please add some!';
    pnlStatus.Color := clYellow;

    // case MessageDlg('There is no stock registered. Add some?',
    // mtConfirmation, mbYesNo, 0) of
    // mrYes:
    // begin
    tsAddStock.TabVisible := True;
    pgcMain.ActivePage := tsAddStock;
    tsAccounts.TabVisible := False;
    tsStock.TabVisible := False;
    // end;
    // mrNo:
    // begin
    // ShowMessage('Please add some stock when you are ready.');
    // end;
    // end;
  end
  else if (lstStock.Items.Count = 0) and (bAccountType) and (bUsernameMatch) and
    (bPaasswordMatch) then
  begin
    // ShowMessage('There is no stock in the catalogue. Please ask the manager to add some.');
    pnlStatus.Caption :=
      'There is no stock registered, please tell the manager!';
    pnlStatus.Color := clRed;
  end;
end;

procedure TfrmRetailEase.bmbMasterResetClick(Sender: TObject);
var
  sPasskey: string;
  bChoice: Boolean;
begin
  bChoice := False;
  sPasskey := '';

  case MessageDlg
    ('Welcome to Master Role Reset. This will reset RetailEase. Continue?',
    mtWarning, mbYesNo, 0) of
    mrYes:
      begin
        case MessageDlg
          ('Kindly be advised that all data, including catalog and user information, will be permanently deleted. This action is irreversible and cannot be undone. '
          + 'By clicking OK, you acknowledge that any data loss is not attributed to RetailEase. Click Cancel to cancel the reset.',
          mtConfirmation, mbOKCancel, 0) of
          mrOk:
            begin
              bChoice := Dialogs.InputQuery('Confirm reset',
                'Please input your account password below: ', sPasskey);
              if bChoice = True then
              begin
                if sPasskey = sCurrentPassKey then
                begin
                  memLogins.Lines.Clear;
                  memLogins.Lines.SaveToFile('Assets\Logins.txt');
                  lstCustomize.Items.Clear;
                  lstCustomize.Items.SaveToFile('Assets\Stock.txt');
                  ShowMessage('RetailEase reset successfully!');
                  Exit(frmRetailEase);
                end
                else
                  ShowMessage
                    ('Passkey incorrect. Operation aborted for protection.');
              end
              else
                ShowMessage('Operation cancelled by user.');
            end;
          mrCancel:
            begin
              ShowMessage('Reset cancelled.');
            end;
        end;
      end;
  end;
end;

procedure TfrmRetailEase.bmbPreviewNewStockClick(Sender: TObject);
var
  sCategory, sProduct, sPrice, sCurrentStock, sMinimumStock: string;
  bCategory, bProduct, bPrice, bStock: Boolean;
  iCurrentS, iMinimumS, I, J, K, iError, iPosSymbol: integer;
  rPrice: Real;
begin
  sCategory := edtCategory.Text;
  sProduct := edtProductName.Text;
  sPrice := edtPrice.Text;

  iCurrentS := sedCurrentStock.Value;
  iMinimumS := sedMinimumStock.Value;

  bCategory := False;
  bProduct := False;
  bPrice := False;
  bStock := False;
  // Making use of boolean flags as 'triggers': only is true when something does not meet expectation.
  for I := 1 to Length(sCategory) do
  begin
    if (Length(sCategory) > 3) or (sCategory[I] = ' ') or (sCategory[I] = '_')
      or (sCategory[I] = '@') or (sCategory[I] = ',') or (sCategory[I] = '/') or
      (sCategory[I] = '|') or (Length(sCategory) < 3) then
    begin
      bCategory := True;
    end
    else
    begin
      bCategory := False;
    end;
  end;

  for J := 1 to Length(sProduct) do
  begin
    if (Length(sProduct) > 10) or (sProduct[J] = ' ') or (sProduct[J] = '_') or
      (sProduct[J] = '@') or (sProduct[J] = ',') or (sProduct[J] = '/') or
      (sProduct[J] = '|') or (Length(sProduct) = 0) then
    begin
      bProduct := True;
    end
    else
    begin
      bProduct := False;
    end;
  end;

  for K := 1 to Length(sPrice) do
  begin
    if (sPrice[K] <> ' ') or (sPrice <> '') then
    begin
      Val(sPrice, rPrice, iError);
      rPrice := Trunc(rPrice * 100) / 100;
      if iError = 0 then
      begin
        bPrice := False;
      end
      else
        bPrice := True;
    end
    else
      bPrice := True;
  end;

  if (bPrice = False) and (sPrice <> '') then
  begin
    sPrice := FloatToStrF(rPrice, ffGeneral, 8, 2)
  end;

  case MessageDlg('Are these values correct?' + #13 + 'Current stock: ' +
    IntToStr(iCurrentS) + #13 + 'Minimum stock: ' + IntToStr(iMinimumS),
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        bStock := False;
        sCurrentStock := IntToStr(iCurrentS);
        sMinimumStock := IntToStr(iMinimumS);
      end;
    mrNo:
      begin
        bStock := True;
        ShowMessage('Please input your preferred values and attempt again.');
      end;
  end;

  if sProduct = '' then
    bProduct := True;
  if sCategory = '' then
    bCategory := True;
  if sPrice = '' then
    bPrice := True;

  if (bCategory = True) then
    edtCategory.Color := $00B3B3FF;
  if bProduct = True then
    edtProductName.Color := $00B3B3FF;
  if bPrice = True then
    edtPrice.Color := $00B3B3FF;
  if bStock = True then
  begin
    sedCurrentStock.Color := $00B3B3FF;
    sedMinimumStock.Color := $00B3B3FF;
  end;

  if (bCategory = True) or (bProduct = True) or (bPrice = True) or
    (bStock = True) then
  begin
    ShowMessage
      ('One or more fields have been filled incorrectly, and are indicated with red. Consult with Help.');
  end;

  if (bCategory = False) and (bProduct = False) and (bPrice = False) and
    (bStock = False) then
  begin
    edtCategory.Color := clWindow;
    edtProductName.Color := clWindow;
    edtPrice.Color := clWindow;
    sedCurrentStock.Color := clWindow;
    sedMinimumStock.Color := clWindow;

    sNewProduct := sCategory + '_' + sProduct + '@' + sPrice + '|' +
      IntToStr(iCurrentS) + '/' + IntToStr(iMinimumS);
    redNewProduct.Lines.Add(sNewProduct);
    bmbRegisterNewStock.Enabled := True;
  end;
end;

procedure TfrmRetailEase.bmbFinalizeOrderClick(Sender: TObject);
var
  DateTime: TDateTime;
  I: integer;
  dtTime: TTime;
  dtDate: TDate;
  iNum: integer;
  bCheck, bCustomerName: Boolean;
begin
  dtTime := Now;
  dtDate := Date;
  bCustomerName := Dialogs.InputQuery('Customer details',
    'Enter customer name for transaction: ', sCustomerName);

  if bCustomerName = True then
  begin
    if Trim(sCustomerName) = '' then
    begin
      redReciept.Lines.Add(#13 + 'Grand total:' + #9 + FloatToStrF(rTotal,
        ffCurrency, 8, 2));
      redReciept.Lines.Add('-------------------------------------------');
      ShowMessage('Random customer ID generated!');
      sCustomerName := 'CUS' + IntToStr(Random(9999 - 1999 + 1) + 1999) + '#';
      redReciept.Lines.Add('Transaction of: ' + sCustomerName + #13 +
        DateToStr(dtDate) + #9 + TimeToStr(dtTime));
    end
    else
    begin
      redReciept.Lines.Add(#13 + 'Grand total:' + #9 + FloatToStrF(rTotal,
        ffCurrency, 8, 2));
      redReciept.Lines.Add('-------------------------------------------');
      Randomize;
      sCustomerName := 'CUS' + IntToStr(Random(9999 - 1999 + 1) + 1999) +
        sCustomerName[1];
      redReciept.Lines.Add('Transaction of: ' + sCustomerName + #13 +
        DateToStr(dtDate) + #9 + TimeToStr(dtTime));

    end;
    pgcMain.ActivePage := tsChange;
    tsChange.TabVisible := True;
    tsRegister.TabVisible := False;
    redReciept.Lines.Add('-------------------------------------------');
    for I := 0 to redReciept.Lines.Count do
    begin
      redFinalReciept.Lines.Add(redReciept.Lines[I])
    end;
  end
  else
  begin
    ShowMessage('Operation cancelled by user!');
  end;
end;

procedure TfrmRetailEase.bmbAddProductResetClick(Sender: TObject);
begin
  edtCategory.Color := clWindow;
  edtProductName.Color := clWindow;
  edtPrice.Color := clWindow;
  sedCurrentStock.Color := clWindow;
  sedMinimumStock.Color := clWindow;
  edtCategory.Clear;
  edtProductName.Clear;
  edtPrice.Clear;
  sedCurrentStock.Value := 0;
  sedMinimumStock.Value := 0;
  bmbRegisterNewStock.Enabled := False;

  ShowMessage('Interface cleared!');
end;

procedure TfrmRetailEase.bmbRegisterNewStockClick(Sender: TObject);
begin
  lstCustomize.Items.LoadFromFile('Assets\Stock.txt');
  lstCustomize.Items.Add(sNewProduct);
  lstCustomize.Items.SaveToFile('Assets\Stock.txt');
  ShowMessage('New product registered successfully!');
  Refresh;
end;

procedure TfrmRetailEase.bmbRegisterResetClick(Sender: TObject);
begin
  redReciept.Lines.Clear;
  lstStock.Items.Clear;
  lstStock.Items.LoadFromFile('Assets\Stock.txt');
  if lstStock.Items.Count = 0 then
  begin
    ShowMessage
      ('There is no stock in the catalogue. Please ask the manager to add some.');
  end;
  rTotal := 0;
  edtSubTotal.Clear;
  redReciept.Lines.Clear;
  redReciept.Lines.Add('Welcome to TopTech!');
  redReciept.Lines.Add('-------------------------------------------');
  redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
  redReciept.Lines.Add('-------------------------------------------');
  ShowMessage('Register has been successfully reset!');
  if redReciept.Lines.Count < 6 then
    bmbFinalizeOrder.Enabled := False;
end;

procedure TfrmRetailEase.bmbReturnClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsLogon;
end;

procedure TfrmRetailEase.bmbReturnLogInClick(Sender: TObject);
begin
  tsLogon.TabVisible := True;
  pgcMain.ActivePage := tsLogon;
end;

procedure TfrmRetailEase.bmbReturnRegisterClick(Sender: TObject);
begin
  case MessageDlg
    ('Ready for new transaction? Make sure to print the receipt: 🖨️',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsRegister;
        redNewProduct.Lines.Clear;
        lstStock.Items.Clear;
        lstStock.Items.LoadFromFile('Assets\Stock.txt');
        if lstStock.Items.Count = 0 then
        begin
          ShowMessage
            ('There is no stock in the catalogue. Please ask the manager to add some.');
        end;
        redChange.Lines.Clear;
        redFinalReciept.Lines.Clear;
        tsRegister.TabVisible := True;
        tsChange.TabVisible := False;
        bmbChange.Enabled := True;
        bmbPrint.Enabled := False;
        rTotal := 0;
        edtSubTotal.Clear;
        redReciept.Lines.Clear;
        redReciept.Lines.Add('Welcome to TopTech!');
        redReciept.Lines.Add('-------------------------------------------');
        redReciept.Lines.Add('Product' + #9 + 'Q' + #13 + 'Price ');
        redReciept.Lines.Add('-------------------------------------------');
        if redReciept.Lines.Count < 6 then
          bmbFinalizeOrder.Enabled := False;
        ShowMessage
          ('All fields cleared! Ready for the next transaction. All unsaved data discarded.');
      end;
    mrNo:
      begin
        ShowMessage('You have not exited.');
      end
  end;

end;

procedure TfrmRetailEase.bmbReturnRegisterMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := 'Readies system for next transaction. All fields cleared.'
end;

procedure TfrmRetailEase.bmbReturnRegisterMouseLeave(Sender: TObject);
begin
  ShowHint := False;
end;

procedure TfrmRetailEase.bmbReturnStockClick(Sender: TObject);
begin
  case MessageDlg('Do you want to exit this process? Make sure to save: 💾',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsStock;
        tsStock.TabVisible := True;
        tsAddStock.TabVisible := False;
        tsAccounts.TabVisible := True;
        ShowMessage('All unsaved data discarded.');
      end;
    mrNo:
      begin
        ShowMessage('You have not exited.');
      end
  end;

end;

procedure TfrmRetailEase.bmbReturnStockMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := 'Cancel process and return back to Product Stock interface.'
end;

procedure TfrmRetailEase.bmbReturnStockMouseLeave(Sender: TObject);
begin
  ShowHint := False;
end;

procedure TfrmRetailEase.FormActivate(Sender: TObject);
begin
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if memLogins.Lines.Count = 0 then
  begin
    ShowMessage
      ('Welcome to TopTech RetailEase POS! Please register a user account to get full access to our services.');
    rgpAccounts.Buttons[1].Enabled := False;
  end;
  memLogins.Lines.Clear;
  bmbReturnLogIn.Visible := True;
  bmbReturnAccounts.Visible := False;
  rTotal := 0;
end;

procedure TfrmRetailEase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  case MessageDlg('Close RetailEase? All unsaved data will be discarded.' + #13
    + 'To save, press: 💾.', mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        CanClose := True;
      end;
    mrNo:
      begin
        CanClose := False;
        ShowMessage('RetailEase not closed.');
      end;
  end;

end;

procedure TfrmRetailEase.FormCreate(Sender: TObject);
begin
  rTotal := 0;
  rPrice := 0;

  frmRetailEase.Position := poDesktopCenter;
  memLogins.Lines.LoadFromFile('Assets\Logins.txt');
  if memLogins.Lines.Count = 0 then
  begin
    tsCreateAccount.TabVisible := True;
    pgcMain.ActivePage := tsCreateAccount;
    tsLogon.TabVisible := False;
    bmbReturnLogIn.Enabled := False;
    tsRegister.TabVisible := False;
    tsChange.TabVisible := False;
    tsAccounts.TabVisible := False;
    tsStock.TabVisible := False;
    tsAddStock.TabVisible := False;
  end
  else
  begin
    memLogins.Lines.Clear;
    pgcMain.ActivePage := tsLogon;
    tsLogon.TabVisible := True;
    tsCreateAccount.TabVisible := True;
    tsRegister.TabVisible := False;
    tsChange.TabVisible := False;
    tsAccounts.TabVisible := False;
    tsStock.TabVisible := False;
    tsAddStock.TabVisible := False;
  end;
end;

procedure TfrmRetailEase.GreetingFoot(RichEdit: TRichEdit);
begin

end;

procedure TfrmRetailEase.TransactionDetails(RichEdit: TRichEdit);
begin

end;

procedure TfrmRetailEase.tsLogonShow(Sender: TObject);
begin
  imgLogout.Visible := False;
end;

procedure TfrmRetailEase.Help(HelpBox: TRichEdit);
begin
  if HelpBox.Visible = True then
    HelpBox.Visible := False
  else if HelpBox.Visible = False then
    HelpBox.Visible := True;
end;

procedure TfrmRetailEase.bmbSaveAccountClick(Sender: TObject);
begin
  lstUsers.Items.SaveToFile('Assets\Logins.txt');
  ShowMessage('Changes saved!');
end;

procedure TfrmRetailEase.bmbStockSaveChangesClick(Sender: TObject);
begin
  lstCustomize.Items.SaveToFile('Assets\Stock.txt');
  ShowMessage('Changes saved!');
end;

procedure TfrmRetailEase.bmbSaveStockClick(Sender: TObject);
var
  sSelect, sNewCurrentStock, sNewMinimumStock, sFirstPart, sLastPast: string;
  iPosCurrentStockDL, iPosMinimumStockDL, iSelect: integer;
  I: integer;
begin
  sedCurrent.Enabled := False;
  sedMin.Enabled := False;
  bmbStockRefresh.Enabled := False;
  // Initialize and assign:
  sFirstPart := '';
  sLastPast := '';
  sSelect := lstCustomize.Items[lstCustomize.ItemIndex];
  iSelect := lstCustomize.Items.IndexOf(sSelect);
  sNewCurrentStock := IntToStr(sedCurrent.Value);
  sNewMinimumStock := IntToStr(sedMin.Value);

  iPosCurrentStockDL := Pos('|', sSelect);
  iPosMinimumStockDL := Pos('/', sSelect);

  // break string into seperate chunks:
  for I := 1 to iPosCurrentStockDL do
  begin
    sFirstPart := sFirstPart + sSelect[I]
  end;
  sLastPast := sSelect[iPosMinimumStockDL];

  // Insert new amounts inbetween these chunks, overwriting original sSelect:
  sSelect := sFirstPart + sNewCurrentStock + sLastPast + sNewMinimumStock;
  lstCustomize.Items[lstCustomize.ItemIndex] := sSelect;
  lstCustomize.Items[iSelect] := sSelect;
  lblCurrentEdit.Caption := 'Select an item to edit';
  bmbSaveStock.Enabled := False;
  sedCurrent.Value := 0;
  sedMin.Value := 0;
  bmbStockSaveChanges.Enabled := True;
  bmbAddproduct.Enabled := True;
  bmbDelete.Enabled := True;
  bmbLoadStock.Enabled := True;
  lstCustomize.ItemIndex := -1;
end;

procedure TfrmRetailEase.btnAboutClick(Sender: TObject);
begin
  pgcMain.ActivePage := tsAbout;
end;

procedure TfrmRetailEase.btnCreateAccountClick(Sender: TObject);
var
  sUsername, sPasskey, sNewUser, sUserType: String;
  iIndex: integer;
  bFound: Boolean;
begin
  sUsername := edtCreateUserName.Text;
  sPasskey := edtCreatePassword.Text;
  sNewUser := '';
  sUserType := '';

  bFound := False;
  iIndex := 1;

  case rgpAccounts.ItemIndex of
    0:
      begin
        sUserType := 'm';
      end;
    1:
      begin
        sUserType := 'c';
      end;
  end;

  if (rgpAccounts.ItemIndex = -1) then
    ShowMessage('Indicate Account Type!')
  else if (sUsername = '') or (sPasskey = '') then
    ShowMessage('Create username and password!')
  else if (sUsername <> '') or (sPasskey <> '') then
    while (bFound = False) AND (iIndex <= Length(sUsername)) do
    begin
      if (sUsername[iIndex] = '.') or (sUsername[iIndex] = '_') then
      begin
        ShowMessage('Username contains forbidden characters!');
        bFound := True;
      end;
      Inc(iIndex);
    end;

  if (bFound = False) then
  begin
    ShowMessage('Account created successfully!');
    sNewUser := sUsername + '.' + sPasskey + '_' + sUserType;
    memAccounts.Lines.LoadFromFile('Assets\Logins.txt');
    memAccounts.Lines.Add(sNewUser);
    memAccounts.Lines.SaveToFile('Assets\Logins.txt');
    bmbReturnLogIn.Enabled := True;

    edtCreateUserName.Clear;
    edtCreatePassword.Clear;
    rgpAccounts.ItemIndex := -1;
  end;
end;

procedure TfrmRetailEase.btnLoadCatergoryClick(Sender: TObject);
begin
  // cmbCatergory.Items.LoadFromFile('Category.txt');
  // cmbCatergory.ItemIndex := 0;
end;

procedure TfrmRetailEase.btnLoadStockClick(Sender: TObject);
begin
  lstCustomize.Items.LoadFromFile('Assets\Stock.txt');
  ShowMessage('Stock loaded successfully!');
end;

procedure TfrmRetailEase.bmbAddReceiptClick(Sender: TObject);
var
  sProduct, sPrice, sSelect, sBackup, sOldCurrentStock, sFirstPart, sLastPart,
    sAddItem, sMinimumStock: string;
  I, J, K, L, M, N, O, iPosPriceDL, iPosCategoryDL, iPosCurrentStockDL,
    iQuantity, iIndex, iPosMinimumStockDL, iOldCurrentStock, iSelect,
    iNewCurrentStock, iMinimumStock: integer;
  bFoundCategory, bFoundPrice, bFoundCurrentStock, bFoundMinimumStock: Boolean;
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
  iOldCurrentStock := 0;
  iNewCurrentStock := 0;
  sOldCurrentStock := '';
  sProduct := '';
  sPrice := '';
  sBackup := '';
  sFirstPart := '';
  sLastPart := '';

  rPrice := 0;
  iQuantity := sedQuantity.Value;
  if (lstStock.Items.Count = 0) then
  begin
    ShowMessage
      ('There is no stock in the catalogue. Please ask the manager to add some.');
  end
  else
  begin
    if (lstStock.ItemIndex <> -1) then
    begin
      sSelect := lstStock.Items[lstStock.ItemIndex];
      iSelect := lstStock.Items.IndexOf(sSelect);
      bmbFinalizeOrder.Enabled := True;
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
        ShowMessage('Stock levels low!' + #13 +
          'Please contact supplier to get more.');
        sSelect := sFirstPart + IntToStr(iNewCurrentStock) + sLastPart;
        lstStock.Items[iSelect] := sSelect;
        rPrice := StrToFloat(sPrice);
        redReciept.Lines.Add(sProduct + ' (*' + IntToStr(iQuantity) + ')' + #13
          + FloatToStrF(rPrice, ffCurrency, 8, 2));
        sAddItem := sProduct + ' (*' + IntToStr(iQuantity) + ')' + #9 +
          FloatToStrF(rPrice, ffCurrency, 8, 2);
        rTotal := rTotal + (rPrice * iQuantity);
        lstStock.ItemIndex := -1;
        edtSubTotal.Text := FloatToStrF(rTotal, ffCurrency, 8, 2);
      end
      else if iOldCurrentStock = 0 then
      begin
        ShowMessage
          ('No stock remaining. Please contact supplier to order more stock.');
      end
      else
      begin
        sSelect := sFirstPart + IntToStr(iNewCurrentStock) + sLastPart;
        lstStock.Items[iSelect] := sSelect;
        rPrice := StrToFloat(sPrice);
        redReciept.Lines.Add(sProduct + ' (*' + IntToStr(iQuantity) + ')' + #13
          + FloatToStrF(rPrice, ffCurrency, 8, 2));
        sAddItem := sProduct + ' (*' + IntToStr(iQuantity) + ')' + #9 +
          FloatToStrF(rPrice, ffCurrency, 8, 2);
        rTotal := rTotal + (rPrice * iQuantity);
        lstStock.ItemIndex := -1;
        sedQuantity.Value := 1;
        edtSubTotal.Text := FloatToStrF(rTotal, ffCurrency, 8, 2);
      end;
    end
    else
      ShowMessage('No item selected!');
  end;
end;

procedure TfrmRetailEase.Exit(RetailEase: TForm);
begin

end;

procedure TfrmRetailEase.imgHelpMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := 'Get Help'
end;

procedure TfrmRetailEase.imgHelpMouseLeave(Sender: TObject);
begin
  ShowHint := False;
end;

procedure TfrmRetailEase.imgLogoutClick(Sender: TObject);
begin
  case MessageDlg('Do you want to log out?', mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        pgcMain.ActivePage := tsLogon;
        tsLogon.TabVisible := True;
        tsCreateAccount.TabVisible := True;
        tsRegister.TabVisible := False;
        tsChange.TabVisible := False;
        tsAccounts.TabVisible := False;
        tsStock.TabVisible := False;
        tsAddStock.TabVisible := False;
        redReciept.Lines.Clear;
        redFinalReciept.Lines.Clear;
        edtMoney.Clear;
        lstStock.Items.Clear;
        rTotal := 0;
        edtSubTotal.Clear;
        // ShowMessage('You have been logged out. All unsaved data discarded.');
      end;
    mrNo:
      begin
        // ShowMessage('You have not been logged out.');
      end
  end;
end;

procedure TfrmRetailEase.imgLogoutMouseEnter(Sender: TObject);
begin
  ShowHint := True;
  Hint := 'Log off ' + sUser;
end;

procedure TfrmRetailEase.imgLogoutMouseLeave(Sender: TObject);
begin
  ShowHint := False;
end;

procedure TfrmRetailEase.imgView1Click(Sender: TObject);
begin
  edtPassword.PasswordChar := '*';
  edtCreatePassword.PasswordChar := '*';
  imgView1.Visible := False;
  imgHide1.Visible := True;
end;

procedure TfrmRetailEase.imgHide1Click(Sender: TObject);
begin
  edtPassword.PasswordChar := #0;
  edtCreatePassword.PasswordChar := #0;
  imgHide1.Visible := False;
  imgView1.Visible := True;
end;

procedure TfrmRetailEase.Lock(imgLock: TImage);
begin

end;

procedure TfrmRetailEase.lstCustomizeMouseEnter(Sender: TObject);
begin
  if lstCustomize.ItemIndex = -1 then
  begin
    ShowHint := True;
    Hint := 'Please select an item from the list to modify.'
  end
  else
    ShowHint := False;
end;

procedure TfrmRetailEase.lstCustomizeMouseLeave(Sender: TObject);
begin
  if lstCustomize.ItemIndex = -1 then
  begin
    ShowHint := False;
  end;
end;

procedure TfrmRetailEase.Refresh;
begin
  case MessageDlg('The stock control has been modified.' + #13 + 'Refresh?',
    mtConfirmation, mbYesNo, 0) of
    mrYes:
      begin
        lstCustomize.Items.Clear;
        lstCustomize.Items.LoadFromFile('Assets\Stock.txt');
        lstCustomize.ItemIndex := -1;
        ShowMessage('Catalogue has been refreshed successfully!');
      end;
    mrNo:
      begin
        ShowMessage
          ('Catalogue not refreshed. App may not function as intended. Please refresh manually by pressing: "Refresh Catalogue" button.');
      end;
  end;
end;

procedure TfrmRetailEase.setStatusPanel(statusText: string;
  statusType: integer);
var
  pnlColor: integer;
begin
  pnlStatus.Caption := statusText;
  case statusType of
    0:
      pnlColor := clSilver;
    1:
      pnlColor := clYellow;
    2:
      pnlColor := clRed;
  end;
  pnlStatus.Color := pnlColor;
end;



// procedure TfrmRetailEase.imgAboutExitClick(Sender: TObject);
// begin
// Exit(frmRetailEase);
// end;

// procedure TfrmRetailEase.imgHide2Click(Sender: TObject);
// begin
// edtCreatePassword.PasswordChar := #0;
// imgHide2.Visible := False;
// imgView2.Visible := True;
// end;

// procedure TfrmRetailEase.imgLoginExitClick(Sender: TObject);
// begin
// Exit(frmRetailEase);
// end;

// procedure TfrmRetailEase.imgRegisterHelpMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgRegisterHelpMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgRegisterNextClick(Sender: TObject);
// begin
// pgcMain.ActivePage := tsChange;
// end;

// procedure TfrmRetailEase.imgChangeHelpMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgChangeHelpMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgChangeLockClick(Sender: TObject);
// begin
// case MessageDlg('Do you want to log out? Make sure to save: 💾',
// mtConfirmation, mbYesNo, 0) of
// mrYes:
// begin
// pgcMain.ActivePage := tsLogon;
// tsLogon.TabVisible := True;
// tsCreateAccount.TabVisible := True;
// tsRegister.TabVisible := False;
// tsChange.TabVisible := False;
// tsAccounts.TabVisible := False;
// tsStock.TabVisible := False;
// tsAddStock.TabVisible := False;
// redReciept.Lines.Clear;
// redFinalReciept.Lines.Clear;
// edtMoney.Clear;
// lstStock.Items.Clear;
// rTotal := 0;
// edtSubTotal.Clear;
// ShowMessage('You have been logged out. All unsaved data discarded.');
// end;
// mrNo:
// begin
// ShowMessage('You have not been logged out.');
// end
// end;
// end;

// procedure TfrmRetailEase.imgChangeLockMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Log off ' + sUser;
// end;

// procedure TfrmRetailEase.imgChangeLockMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgAccountsNextClick(Sender: TObject);
// begin
// pgcMain.ActivePage := tsStock;
// end;

// procedure TfrmRetailEase.imgAddPreviousClick(Sender: TObject);
// begin
// pgcMain.ActivePage := tsStock
// end;

// procedure TfrmRetailEase.imgAddStockBackgroundMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgAddStockBackgroundMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgChangePreviousClick(Sender: TObject);
// begin
// pgcMain.ActivePage := tsRegister;
// end;

// procedure TfrmRetailEase.imgCreateAccountExitClick(Sender: TObject);
// begin
// Exit(frmRetailEase);
// end;

// procedure TfrmRetailEase.imgCreateAccountHelpMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgCreateAccountHelpMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgAccountsHelpMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgAccountsHelpMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgAccountsLockClick(Sender: TObject);
// begin
// case MessageDlg('Do you want to log out? Make sure to save: 💾',
// mtConfirmation, mbYesNo, 0) of
// mrYes:
// begin
// pgcMain.ActivePage := tsLogon;
// tsLogon.TabVisible := True;
// tsCreateAccount.TabVisible := True;
// tsRegister.TabVisible := False;
// tsChange.TabVisible := False;
// tsAccounts.TabVisible := False;
// tsStock.TabVisible := False;
// tsAddStock.TabVisible := False;
// lstCustomize.Items.Clear;
// edtCategory.Clear;
// edtProductName.Clear;
// edtPrice.Clear;
// ShowMessage('You have been logged out. All unsaved data discarded.');
// end;
// mrNo:
// begin
// ShowMessage('You have not been logged out.');
// end
// end;
// end;

// procedure TfrmRetailEase.imgAccountsLockMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Log off ' + sUser;
// end;

// procedure TfrmRetailEase.imgAccountsLockMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgStockHelpMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Get Help'
// end;

// procedure TfrmRetailEase.imgStockHelpMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgStockLockClick(Sender: TObject);
// begin
// case MessageDlg('Do you want to log out? Make sure to save: 💾',
// mtConfirmation, mbYesNo, 0) of
// mrYes:
// begin
// pgcMain.ActivePage := tsLogon;
// tsLogon.TabVisible := True;
// tsCreateAccount.TabVisible := True;
// tsRegister.TabVisible := False;
// tsChange.TabVisible := False;
// tsAccounts.TabVisible := False;
// tsStock.TabVisible := False;
// tsAddStock.TabVisible := False;
// lstCustomize.Items.Clear;
// edtCategory.Clear;
// edtProductName.Clear;
// edtPrice.Clear;
// ShowMessage('You have been logged out. All unsaved data discarded.');
// end;
// mrNo:
// begin
// ShowMessage('You have not been logged out.');
// end
// end;
// end;

// procedure TfrmRetailEase.imgStockLockMouseEnter(Sender: TObject);
// begin
// ShowHint := True;
// Hint := 'Log off ' + sUser;
// end;

// procedure TfrmRetailEase.imgStockLockMouseLeave(Sender: TObject);
// begin
// ShowHint := False;
// end;

// procedure TfrmRetailEase.imgStockPreviousClick(Sender: TObject);
// begin
// pgcMain.SelectNextPage(False);
// end;

// procedure TfrmRetailEase.imgView2Click(Sender: TObject);
// begin
// edtCreatePassword.PasswordChar := '*';
// imgView2.Visible := False;
// imgHide2.Visible := True;
// end;

// procedure TfrmRetailEase.imgPrevious5Click(Sender: TObject);
// begin
// pgcMain.ActivePage := tsStock;
// end;

end.

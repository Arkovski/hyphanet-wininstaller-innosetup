; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppName "Freenet"
#include "fred_version.iss"
#define AppPublisher "freenetproject.org"
#define AppURL "https://freenetproject.org/"
#define AppExeName "FreenetTray.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3196C62F-9C7B-4392-88B4-05C037D05518}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
DefaultDirName={localappdata}\{#AppName}
DefaultGroupName={#AppName}
OutputBaseFilename=FreenetInstaller
SetupIconFile=FreenetInstaller_InnoSetup.ico
SolidCompression=yes
PrivilegesRequired=lowest
WizardImageFile=Wizard_FreenetInstall.bmp
WizardSmallImageFile=blue_bunny_package.bmp
;Space needed 650 Mo
ExtraDiskSpaceRequired=681574400
Compression=lzma2/ultra
InternalCompressLevel=ultra
RestartIfNeededByRun=False
AllowUNCPath=False
AllowNoIcons=yes
;Prevent installer from being run multiple times in parallel
SetupMutex=SetupMutex{#SetupSetting("AppId")}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl,.\translations\Messages_en.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl,.\translations\Messages_fr.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl,.\translations\Messages_es.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl,.\translations\Messages_nl.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl,.\translations\Messages_ru.isl"
Name: "hungarian"; MessagesFile: ".\unofficial\Hungarian.isl,.\translations\Messages_hu.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl,.\translations\Messages_fi.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl,.\translations\Messages_cs.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl,.\translations\Messages_de.isl"
Name: "greek"; MessagesFile: ".\unofficial\Greek.isl,.\translations\Messages_el.isl"
Name: "indonesian"; MessagesFile: ".\unofficial\Indonesian.isl,.\translations\Messages_id_ID.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl,.\translations\Messages_it.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl,.\translations\Messages_pl.isl"
Name: "brazilian_portuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl,.\translations\Messages_pt_BR.isl"
Name: "simplified_chinese"; MessagesFile: ".\unofficial\ChineseSimplified.isl,.\translations\Messages_zh_CN.isl"
Name: "portuguese_portugal"; MessagesFile: "compiler:Languages\Portuguese.isl,.\translations\Messages_pt_PT.isl"
Name: "serbian"; MessagesFile: ".\unofficial\SerbianCyrillic.isl,.\translations\Messages_sr.isl"
Name: "bulgarian"; MessagesFile: ".\unofficial\Bulgarian.isl,.\translations\Messages_bg.isl"
Name: "croatian"; MessagesFile: ".\unofficial\Croatian.isl,.\translations\Messages_hr.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl,.\translations\Messages_ja.isl"
Name: "traditional_chinese"; MessagesFile: ".\unofficial\ChineseTraditional.isl,.\translations\Messages_zh_TW.isl"

[Files]
// this is used to copy wrapper.conf to wrapper.conf.old before overwriting the file when updating the node.
// there is a check for wrapper.conf.old you have to adjust if you change the name here.
Source: "{app}\wrapper\wrapper.conf"; DestDir: "{app}\wrapper"; DestName: "wrapper.conf.old"; Flags: external skipifsourcedoesntexist

[Files]
Source: "FreenetInstaller_InnoSetup_library\FreenetInstaller_InnoSetup_library.dll"; DestDir: "{tmp}"; Flags: ignoreversion dontcopy
Source: "install_bundle\OpenJDK11U-jre_x86-32_windows_hotspot_11.0.15_10.msi"; DestDir: "{tmp}"; Flags: ignoreversion dontcopy nocompression
Source: "install_bundle\OpenJDK11U-jre_x64_windows_hotspot_11.0.15_10.msi"; DestDir: "{tmp}"; Flags: ignoreversion dontcopy nocompression
Source: "install_bundle\dotNetFx40_Full_setup.exe"; DestDir: "{tmp}"; Flags: ignoreversion dontcopy nocompression
#include "fred_deps.iss"
Source: "install_node\FreenetTray.exe"; DestDir: "{app}"; Flags: ignoreversion nocompression
Source: "install_node\FreenetTray.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\freenet.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\freenetoffline.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\seednodes.fref"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\installid.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\installlayout.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "install_node\licenses\LICENSE.Freenet"; DestDir: "{app}\licenses"; Flags: ignoreversion
Source: "install_node\licenses\LICENSE.Mantissa"; DestDir: "{app}\licenses"; Flags: ignoreversion
Source: "install_node\plugins\JSTUN.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\plugins\KeyUtils.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\plugins\Library.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\plugins\ThawIndexBrowser.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\plugins\UPnP.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\plugins\Sharesite.jar"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "install_node\updater\sha1test.jar"; DestDir: "{app}\updater"; Flags: ignoreversion
Source: "install_node\updater\startssl.pem"; DestDir: "{app}\updater"; Flags: ignoreversion
Source: "install_node\updater\update.cmd"; DestDir: "{app}\updater"; Flags: ignoreversion
Source: "install_node\updater\wget.exe"; DestDir: "{app}\updater"; Flags: ignoreversion
Source: "install_node\wrapper\freenetwrapper.exe"; DestDir: "{app}\wrapper"; Flags: ignoreversion nocompression
Source: "install_node\wrapper\freenetwrapper-64.exe"; DestDir: "{app}\wrapper"; Flags: ignoreversion nocompression
Source: "install_node\wrapper\wrapper.jar"; DestDir: "{app}\wrapper"; Flags: ignoreversion
Source: "install_node\wrapper\wrapper-windows-x86-32.dll"; DestDir: "{app}\wrapper"; Flags: ignoreversion
Source: "install_node\wrapper\wrapper-windows-x86-64.dll"; DestDir: "{app}\wrapper"; Flags: ignoreversion
Source: "install_node\wrapper\wrapper.conf"; DestDir: "{app}\wrapper"; Flags: ignoreversion; AfterInstall: WrapperConfDoAfterInstall

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{group}\{cm:UninstallProgram,{#AppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#AppExeName}"; Parameters: "-welcome"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(AppName, '&', '&&')}}"

[UninstallDelete]
; TODO: See http://www.jrsoftware.org/ishelp/index.php?topic=uninstalldeletesection - this should enumerate expected files instead of complete wildcard.
Type: filesandordirs; Name: "{app}\*"
Type: filesandordirs; Name: "{localappdata}\FreenetTray"

[Registry]
Root: "HKCU"; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "Freenet"; ValueData: """{app}\{#AppExeName}"""; Flags: uninsdeletevalue

[ThirdParty]
UseRelativePaths=True

[Code]
type
  TDependencyPage = record
    Page: TWizardPage;
    Explanation: TNewStaticText;
  end;

var
  JavaDependency, NetDependency: TDependencyPage;

  sWrapperJavaMaxMemory, sFproxyPort, sFcpPort :string;

function IsPortAvailable(sIpAddress: ansistring; wPort: word): boolean;
external 'fIsPortAvailable@files:FreenetInstaller_InnoSetup_library.dll stdcall setuponly';

function MemoryTotalPhys(var NodeMaxMem: integer): boolean;
external 'fMemoryTotalPhys@files:FreenetInstaller_InnoSetup_library.dll stdcall setuponly';

function CreateDependencyPage(Name, MissingKey: string; InstallClickHandler: TNotifyEvent) : TDependencyPage; Forward;

procedure OpenWebSupport();
var
ErrorCode : Integer;
sErrorCode: string;
begin
  if not ShellExec('', 'https://freenetproject.org/support', '', '', SW_SHOW, ewWaitUntilIdle, ErrorCode) then 
    begin
      sErrorCode := inttostr(ErrorCode);
      MsgBox(FmtMessage(CustomMessage('ErrorLaunchBrowser'), [sErrorCode, SysErrorMessage(ErrorCode)]), mbError, MB_OK);
    end;
end;

procedure ExistingInstallationDamaged();
begin
  case MsgBox(CustomMessage('ErrorInstallationDamaged'), mbError, MB_YESNO) of
    IDYES:
    begin
      OpenWebSupport();
    end;
    IDNO:
    begin
      // user pressed No
    end;
  end;
end;

function OpenUpdateScript(InstallationPath: string) :boolean;
var
ErrorCode : Integer;
sErrorCode: string;
begin
  result := true;

  if not ShellExec('', Format('%s\update.cmd', [InstallationPath]), '', '', SW_SHOW, ewWaitUntilTerminated, ErrorCode) then 
  begin
    ExistingInstallationDamaged();
  end;
end;

function OpenWebInterface(InstallationPath: string) :boolean;
var
ErrorCode : Integer;
sErrorCode: string;
begin
  result := true;

  if not ShellExec('', Format('%s\FreenetTray.exe', [InstallationPath]), '-welcome', '', SW_SHOW, ewWaitUntilIdle, ErrorCode) then 
  begin
    ExistingInstallationDamaged();
  end;
end;

function InitializeSetup: boolean;
var 
RegKey: string;
ExistingInstallation: Boolean;
RegistryLocationRootKey: Integer;
ExistingInstallationPath : string;
begin
  result := true;
  ExistingInstallation := false;
  
  RegKey := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#SetupSetting("AppId")}_is1');

  if RegKeyExists(HKLM, RegKey) then 
  begin 
    ExistingInstallation := true;
    RegistryLocationRootKey := HKLM;
  end;
  
  if RegKeyExists(HKCU, RegKey) then 
  begin 
    ExistingInstallation := true;
    RegistryLocationRootKey := HKCU;
  end;
  
  if RegKeyExists(HKU, RegKey) then 
  begin 
    ExistingInstallation := true;
    RegistryLocationRootKey := HKU;
  end;

  if ExistingInstallation then
  begin
    if RegQueryStringValue(RegistryLocationRootKey, RegKey, 'InstallLocation', ExistingInstallationPath) then
    begin
      case MsgBox(CustomMessage('ErrorFreenetAlreadyInstalled'), mbError, MB_YESNO) of
        IDYES:
        begin
          result := True;

          // Don't use outdated script - instead just overwrite installation
          // Installer will warn if "FreenetTray.exe", "OpenJDK Platform binary" or "Java Service Wrapper Community Edition" are running
          //OpenUpdateScript(ExistingInstallationPath);
        end;
        IDNO:
        begin
          // user pressed No
          result := False;
        end;
      end;
    end else begin
      ExistingInstallationDamaged();
    end;
  end;
end;

function fCheckJavaInstall():boolean;
var
  ErrorCode : Integer;
  JavaVersion : string;
begin
  Result := False;
  // the installer is a 32-bit process, so we need to explicitly 
  // check the 64-bit registry view to find out if a 64-bit JVM is installed
  // then also check for 32-bit JVM.
  // 'JavaVersion' does not change, if nothing was found.
  RegQueryStringValue(HKLM64, 'SOFTWARE\JavaSoft\Java Runtime Environment', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM64, 'SOFTWARE\JavaSoft\JRE', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM, 'SOFTWARE\JavaSoft\Java Runtime Environment', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM, 'SOFTWARE\JavaSoft\JRE', 'CurrentVersion', JavaVersion)

  RegQueryStringValue(HKLM64, 'SOFTWARE\JavaSoft\Java Development Kit', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM64, 'SOFTWARE\JavaSoft\JDK', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM, 'SOFTWARE\JavaSoft\Java Development Kit', 'CurrentVersion', JavaVersion)
  RegQueryStringValue(HKLM, 'SOFTWARE\JavaSoft\JDK', 'CurrentVersion', JavaVersion)
  
    if CompareStr(JavaVersion,'1.9') >= 0  then
      Result := True;

  if not Result then begin
    // Fallback, check if java.exe in PATH
    Result := ShellExec('', 'java', '', '', SW_HIDE, ewWaitUntilIdle, ErrorCode);
  end;
end;

function IsNetInstalled() : boolean;
var
  NetVersion : string;
begin
// TODO: is this correct by accident? As the installer is a 32-bit process, if .NET installers always put a registry key 
// in the 32-bit registery view on a 64-bit machine this will always work. If not it may break on some machines, or on all
// machines in the future if that changes
  Result := RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full', 'Version', NetVersion);
end;

procedure ButtonInstallJavaOnClick(Sender: TObject);
var
  ErrorCode : Integer;
  sErrorCode: string;
  sJavaInstaller: string;
  ButtonInstallJava: TNewButton;
begin
  ButtonInstallJava := TNewButton (Sender);
  ButtonInstallJava.Enabled := False;
  if (isWin64()) then begin
    sJavaInstaller := '{tmp}\OpenJDK11U-jre_x64_windows_hotspot_11.0.15_10.msi';
  end else begin
    sJavaInstaller := '{tmp}\OpenJDK11U-jre_x86-32_windows_hotspot_11.0.15_10.msi';
  end;
  ExtractTemporaryFiles(sJavaInstaller);
  if not ShellExec('',ExpandConstant(sJavaInstaller),'ADDLOCAL=FeatureMain,FeatureEnvironment,FeatureJarFileRunWith,FeatureOracleJavaSoft','',SW_SHOW,ewWaitUntilTerminated,ErrorCode) then begin
    sErrorCode := inttostr(ErrorCode);
    MsgBox(FmtMessage(CustomMessage('ErrorLaunchDependencyInstaller'), ['Java', sErrorCode,SysErrorMessage(ErrorCode)]), mbError, MB_OK)
    ButtonInstallJava.Enabled := True;
  end else begin
    ButtonInstallJava.Enabled := True;
    if fCheckJavaInstall() then begin
      ButtonInstallJava.Visible := False;
      JavaDependency.Explanation.Caption := FmtMessage(CustomMessage('DependencyInstalled'), ['Java']);
      WizardForm.NextButton.Enabled :=  True;
    end;
  end;
end;

procedure NetInstallOnClick(Sender: TObject);
var
  ErrorCode : Integer;
  InstallButton: TNewButton;
begin
  InstallButton := TNewButton (Sender);
  InstallButton.Enabled := False;
  ExtractTemporaryFiles('{tmp}\dotNetFx40_Full_setup.exe');
  if not ShellExec('runas', ExpandConstant('{tmp}\dotNetFx40_Full_setup.exe'), '', '', SW_SHOW, ewWaitUntilTerminated,ErrorCode) then begin
    MsgBox(FmtMessage(CustomMessage('ErrorLaunchDependencyInstaller'), ['.NET 4.0', inttostr(ErrorCode), SysErrorMessage(ErrorCode)]),
           mbError, MB_OK);
    InstallButton.Enabled := True;
  end else begin
    InstallButton.Enabled := True;
    if IsNetInstalled() then begin
      InstallButton.Visible := False;
      NetDependency.Explanation.Caption := FmtMessage(CustomMessage('DependencyInstalled'), ['.NET 4.0']);
      WizardForm.NextButton.Enabled :=  True;
    end;
  end;
end;

procedure FreenetJarDoAfterInstall();
var
  sConfigLines : array[0..5] of string;
begin
  if not FileExists(ExpandConstant('{app}\freenet.ini')) then begin
    sConfigLines[0] := 'fproxy.port=' + sFproxyPort;
    sConfigLines[1] := 'fcp.port=' + sFcpPort;
    sConfigLines[2] := 'pluginmanager.loadplugin=JSTUN;KeyUtils;UPnP;Sharesite';
    sConfigLines[3] := 'node.updater.autoupdate=true';
    sConfigLines[4] := 'node.downloadsDir=.\downloads';
    sConfigLines[5] := 'End';
    SaveStringsToUTF8File(ExpandConstant('{app}\freenet.ini'), sConfigLines, False);
  end;
end;

procedure WrapperConfDoAfterInstall();
begin
  if FileExists(ExpandConstant('{app}\wrapper\wrapper.conf.old')) then begin // do not notify on very first installation, only when updating   
    MsgBox(CustomMessage('WrapperOverwritten'), mbInformation, MB_OK);
  end;

  SaveStringToFile(ExpandConstant('{app}\wrapper\wrapper.conf'), '# Memory limit for the node' + #13#10 , True);
  SaveStringToFile(ExpandConstant('{app}\wrapper\wrapper.conf'), 'wrapper.java.maxmemory=' + sWrapperJavaMaxMemory + #13#10 , True);
end;

procedure InitializeWizard;
var
  iMemTotalPhys, iWrapperJavaMaxMemory, iFproxyPort, iFcpPort : integer;
begin
  JavaDependency := CreateDependencyPage('Java', 'JavaMissingText', @ButtonInstallJavaOnClick);
  NetDependency := CreateDependencyPage('.NET 4.0', 'NetMissingText', @NetInstallOnClick);

  iFproxyPort := 8888;
  repeat
    if IsPortAvailable('127.0.0.1', iFproxyPort) then
      Break
    else begin
      iFproxyPort := iFproxyPort + 1;
      Continue;
    end;
  until iFproxyPort = 8888 + 256;
  sFproxyPort := IntToStr(iFproxyPort);

  iFcpPort := 9481;
  repeat
    if IsPortAvailable('127.0.0.1', iFcpPort) then
      Break
    else begin
      iFcpPort := iFcpPort + 1;
      Continue;
    end;
  until iFcpPort = 9481 + 256;
  sFcpPort := IntToStr(iFcpPort);

  MemoryTotalPhys(iMemTotalPhys);
  if iMemTotalPhys >= 4096 then
    iWrapperJavaMaxMemory := 1024
  else if iMemTotalPhys >= 2048 then
    iWrapperJavaMaxMemory := 512
  else if iMemTotalPhys >= 1024 then
    iWrapperJavaMaxMemory := 256
  else if iMemTotalPhys >= 512 then
    iWrapperJavaMaxMemory := 192
  else
    iWrapperJavaMaxMemory := 128;

  sWrapperJavaMaxMemory := InttoStr(iWrapperJavaMaxMemory);
 
  fCheckJavaInstall();
end;

function CreateDependencyPage(Name, MissingKey: string; InstallClickHandler: TNotifyEvent) : TDependencyPage;
var
  InstallButton: TNewButton;
begin;
  Result.Page := CreateCustomPage(wpWelcome,
                                  CustomMessage('DependencyMissingPageCaption'),
                                  FmtMessage(CustomMessage('DependencyMissingPageDescription'), [Name]));
  
  Result.Explanation := TNewStaticText.Create(Result.Page);
  Result.Explanation.Top := 10;
  Result.Explanation.AutoSize := True;
  Result.Explanation.WordWrap := True;
  Result.Explanation.Parent := Result.Page.Surface;
  Result.Explanation.Caption := CustomMessage(MissingKey);
  Result.Explanation.Width := ScaleX(400);

  InstallButton := TNewButton.Create(Result.Page);
  InstallButton.Width := ScaleX(280);
  InstallButton.Height := ScaleY(30);
  InstallButton.Top := 100;
  InstallButton.Left := 60;
  InstallButton.Caption := FmtMessage(CustomMessage('ButtonInstallDependency'), [Name]);
  InstallButton.OnClick := InstallClickHandler;
  InstallButton.Parent := Result.Page.Surface;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = JavaDependency.Page.ID) or
     (CurPageID = NetDependency.Page.ID)
      then begin
    WizardForm.NextButton.Enabled := False;
  end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  Result := False;
  if (PageID = JavaDependency.Page.ID) And fCheckJavaInstall() then Result := True;
  if (PageID = NetDependency.Page.ID) And IsNetInstalled() then Result := True;
end;

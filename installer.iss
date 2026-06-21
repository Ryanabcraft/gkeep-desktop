[Setup]
AppName=Google Keep Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/gkeep-desktop
AppSupportURL=https://github.com/Ryanabcraft/gkeep-desktop/issues
DefaultDirName={localappdata}\Google Keep Desktop
DefaultGroupName=Google Keep Desktop
UninstallDisplayIcon={app}\GKeep.exe
UninstallDisplayName=Google Keep Desktop
OutputDir=dist_installer
OutputBaseFilename=GoogleKeep-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\GKeep.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Google Keep"; Filename: "{app}\GKeep.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Google Keep Desktop"; Filename: "{app}\GKeep.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Google Keep Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\GKeep.exe"; Description: "Executar Google Keep Desktop"; Flags: postinstall nowait skipifsilent

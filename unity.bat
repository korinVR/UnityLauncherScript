@echo off

if not exist "ProjectSettings\ProjectVersion.txt" (
  echo This folder doesn't look like a Unity project root. >&2
  exit /b 1
)

for /f "tokens=2 delims=: " %%V in ('findstr "m_EditorVersion:" "ProjectSettings\ProjectVersion.txt"') do set "UVERSION=%%V"

if not defined UVERSION (
  echo Failed to detect Unity version from ProjectVersion.txt >&2
  exit /b 1
)

set "UNITYEXE=C:\Program Files\Unity\Hub\Editor\%UVERSION%\Editor\Unity.exe"
if not exist "%UNITYEXE%" (
  echo Unity %UVERSION% not found at %UNITYEXE% >&2
  exit /b 1
)

start "" "%UNITYEXE%" -projectPath "%CD%"

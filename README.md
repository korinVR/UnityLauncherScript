# Unity Launcher Script

Simple scripts to launch Unity Editor from the terminal. Automatically detects the project version from `ProjectSettings/ProjectVersion.txt` and launches the corresponding Unity Editor installed via Unity Hub.

## Installation

**macOS/Linux:**
```bash
cp unity.sh /usr/local/bin/unity
chmod +x /usr/local/bin/unity
```

**Windows:**
Copy `unity.bat` to a directory in your PATH (or add a custom directory to your PATH environment variable).

Once installed, simply run `unity` from any Unity project root directory to launch the editor.

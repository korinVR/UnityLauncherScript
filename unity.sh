#!/bin/bash

if [ ! -f "ProjectSettings/ProjectVersion.txt" ]; then
  echo "This folder doesn't look like a Unity project root." >&2
  exit 1
fi

UVERSION=$(grep "m_EditorVersion:" "ProjectSettings/ProjectVersion.txt" | awk '{print $2}')

if [ -z "$UVERSION" ]; then
  echo "Failed to detect Unity version from ProjectVersion.txt" >&2
  exit 1
fi

UNITYAPP="/Applications/Unity/Hub/Editor/${UVERSION}/Unity.app/Contents/MacOS/Unity"
if [ ! -f "$UNITYAPP" ]; then
  echo "Unity ${UVERSION} not found at ${UNITYAPP}" >&2
  exit 1
fi

"$UNITYAPP" -projectPath "$(pwd)" &

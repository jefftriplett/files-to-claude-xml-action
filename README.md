# files-to-claude-xml-action README

## Example of how to use this action

```yaml
name: Convert Files to Claude XML

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  convert-to-xml:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - name: Convert files to Claude XML
      uses: jefftriplett/files-to-claude-xml-action@main
      with:
        files: |
          README.md
        output: '_claude.xml'
        verbose: 'true'
    - name: Upload XML artifact
      uses: actions/upload-artifact@v4
      with:
        name: claude-xml
        path: _claude.xml
```

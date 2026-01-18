#!/bin/bash

# FreeToolBox - Add New Tool Script
# Usage: ./add-tool.sh "tool-name" "category" "Tool Title" "Description"
# Example: ./add-tool.sh "mortgage-calculator" "math" "Mortgage Calculator" "Calculate monthly mortgage payments"

TOOL_NAME=$1
CATEGORY=$2
TITLE=$3
DESCRIPTION=$4

if [ -z "$TOOL_NAME" ] || [ -z "$CATEGORY" ] || [ -z "$TITLE" ]; then
    echo "Usage: ./add-tool.sh <tool-name> <category> <title> [description]"
    echo "Categories: text, dev, math, conversion, generators"
    echo ""
    echo "Example:"
    echo "  ./add-tool.sh mortgage-calculator math \"Mortgage Calculator\" \"Calculate monthly payments\""
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SITE_DIR="$(dirname "$SCRIPT_DIR")"
TOOL_PATH="$SITE_DIR/tools/$CATEGORY/$TOOL_NAME.html"

# Create tool directory if it doesn't exist
mkdir -p "$SITE_DIR/tools/$CATEGORY"

# Create the tool template
cat > "$TOOL_PATH" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$TITLE - Free Online Tool</title>
  <meta name="description" content="$DESCRIPTION. Free online tool, no signup required.">
  <meta name="keywords" content="$TOOL_NAME, free tool, online $TOOL_NAME">
  <link rel="canonical" href="https://freetoolbox.com/tools/$CATEGORY/$TOOL_NAME.html">
  <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
  <header>
    <div class="container">
      <a href="/" class="logo">Free<span>ToolBox</span></a>
      <nav>
        <a href="/about.html">About</a>
        <a href="/privacy.html">Privacy</a>
      </nav>
    </div>
  </header>

  <section class="tool-page">
    <div class="container">
      <div class="breadcrumb">
        <a href="/">Home</a> &rsaquo; <a href="/">Tools</a> &rsaquo; $TITLE
      </div>

      <div class="tool-header">
        <h1>$TITLE</h1>
        <p>$DESCRIPTION</p>
      </div>

      <div class="ad-container horizontal">
        <p>Advertisement</p>
      </div>

      <div class="tool-container">
        <!-- TODO: Add tool interface here -->
        <p>Tool implementation goes here.</p>
      </div>

      <div class="ad-container horizontal">
        <p>Advertisement</p>
      </div>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="footer-content">
        <p>&copy; 2025 FreeToolBox. Free tools for everyone.</p>
        <div class="footer-links">
          <a href="/about.html">About</a>
          <a href="/privacy.html">Privacy Policy</a>
        </div>
      </div>
    </div>
  </footer>

  <script>
    // TODO: Add tool JavaScript here
  </script>
</body>
</html>
EOF

echo "Created tool template at: $TOOL_PATH"
echo ""
echo "Next steps:"
echo "1. Edit the tool file to add the actual functionality"
echo "2. Update index.html to add a link to the new tool"
echo "3. Update sitemap.xml to include the new tool URL"
echo ""
echo "Or run Claude Code to implement it:"
echo "  claude \"Implement the $TITLE tool at $TOOL_PATH. It should $DESCRIPTION.\""

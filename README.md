# WebViewPluginTest

Sample project to reproduce the following Cocoa WebView issue:

When using WebViews hosted within an NSTableView Apple's documentation recommends to use the setHostWindow:YES API of the WebView class. This works work around the issue that "Plug-ins and JavaScript depend on a window to function properly even if the web view is not in an actual window".

However, when using this API and switching back and forth between the tabs, the Plugin's contents suddenly flip vertically.

Screenshots:

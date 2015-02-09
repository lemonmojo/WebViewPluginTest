# WebViewPluginTest

Sample project to reproduce the following Cocoa WebView bug:

When using `WebView`s hosted within an `NSTabView` [Apple's documentation](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/WebKit/Classes/WebView_Class/index.html#//apple_ref/occ/instm/WebView/setHostWindow:) recommends to use the `setHostWindow:YES` API of the `WebView` class. This works around the issue that _"Plug-ins and JavaScript depend on a window to function properly even if the web view is not in an actual window"_.

However, when using this API and switching back and forth between the tabs, the Plugin's contents suddenly **flip vertically and horizontally**.

For me, this is **reproducible** with the following systems/configurations:
* OS X 10.10.2 with Safari 8.0.3 (10600.3.18)
* OS X 10.9.5 with Safari 7.1.3 (9537.85.12.18)
* OS X 10.9.5 with Safari 7.1.2 (9537.85.11.5)

I can **NOT reproduce** it with the following systems/configurations:
* OS X 10.8.5  with Safari 6.2.3 (8537.85.12.18)

Furthermore, it's **only reproducible** if the application is targeting the **64 bit** architecture. 
For this reason there are two targets included in the sample project, one targeting 32 bit (WebViewPluginTest x86) and one targeting 64 bit (WebViewPluginTest x64).

###Steps to reproduce
- Start the x64 based sample.
- Switch from the 'No Plugin' tab to the 'Quick Time' tab (or 'Flash' if installed and configured properly).
- At this stage everything is working as expected.
- Now switch back to the 'No Plugin' tab and once again back to the 'Quick Time' tab.
- Now the Quick Time logo on the right is flipped vertically and horizontally. (see screenshots below)

###Screenshots

Before Switching Tab:
![Before Switching Tab](https://raw.githubusercontent.com/lemonmojo/WebViewPluginTest/master/Screenshots/WebView_Good.png)

After Switching Tab:
![After Switching Tab](https://raw.githubusercontent.com/lemonmojo/WebViewPluginTest/master/Screenshots/WebView_Bad.png)

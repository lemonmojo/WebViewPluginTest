//
//  AppDelegate.m
//  WebViewFlashTest
//
//  Created by Felix Deimel on 03.02.15.
//  Copyright (c) 2015 Lemon Mojo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window, webViewNoPlugin, webViewFlash, webViewQuickTime;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self connectToUrl:@"http://www.google.com/" inView:self.webViewNoPlugin];
    [self connectToUrl:@"http://www.adobe.com/software/flash/about/" inView:self.webViewFlash];
    [self connectToUrl:@"http://www.medicalrounds.com/quicktimecheck/troubleshooting.html" inView:self.webViewQuickTime];
}

- (void)connectToUrl:(NSString*)urlString inView:(WebView*)webView
{
    // Can reproduce on:
    // - OS X 10.10.2 with Safari 8.0.3 (10600.3.18)
    // - OS X 10.9.5  with Safari 7.1.3 (9537.85.12.18)
    // - OS X 10.9.5  with Safari 7.1.2 (9537.85.11.5)
    
    // Can NOT reproduce on:
    // - OS X 10.8.5  with Safari 6.2.3 (8537.85.12.18)
    // - x86 variant works on all tested systems
    
    // Works fine in both x86 and x64 WITHOUT this line
    [webView setHostWindow:self.window];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *req = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:30];
    
    [webView.mainFrame loadRequest:req];
}

@end
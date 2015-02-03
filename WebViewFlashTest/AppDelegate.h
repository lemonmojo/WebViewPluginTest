//
//  AppDelegate.h
//  WebViewFlashTest
//
//  Created by Felix Deimel on 03.02.15.
//  Copyright (c) 2015 Lemon Mojo. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSWindow *window;
    
    IBOutlet WebView *webViewNoPlugin;
    IBOutlet WebView *webViewFlash;
    IBOutlet WebView *webViewQuickTime;
}

@property (weak) IBOutlet NSWindow *window;

@property (weak) IBOutlet WebView *webViewNoPlugin;
@property (weak) IBOutlet WebView *webViewFlash;
@property (weak) IBOutlet WebView *webViewQuickTime;

@end
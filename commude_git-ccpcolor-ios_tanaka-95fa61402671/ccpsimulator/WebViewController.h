//
//  WebViewController.h
//  ccpsimulator
//
//  Created by 坂本 功 on 2015/03/26.
//  Copyright (c) 2015年 Isao Sakamoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate> {
    IBOutlet UIWebView *webView;
    IBOutlet UIToolbar *toolBar;
    
    IBOutlet UIBarButtonItem *buttonClose;
    IBOutlet UIBarButtonItem *buttonRefresh;
    
    IBOutlet UIBarButtonItem *buttonNext;
    IBOutlet UIBarButtonItem *buttonBack;
}

@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UIToolbar *toolBar;

@property (strong, nonatomic) UIBarButtonItem *buttonClose;
@property (strong, nonatomic) UIBarButtonItem *buttonRefresh;

@property (strong, nonatomic) UIBarButtonItem *buttonNext;
@property (strong, nonatomic) UIBarButtonItem *buttonBack;

- (IBAction)handleClose:(id)sender;
- (IBAction)handleRefresh:(id)sender;

- (IBAction)handleNext:(id)sender;
- (IBAction)handleBack:(id)sender;

@end

//
//  WebViewController.m
//  ccpsimulator
//
//  Created by 坂本 功 on 2015/03/26.
//  Copyright (c) 2015年 Isao Sakamoto. All rights reserved.
//

#import "WebViewController.h"
//#import "SVProgressHUD.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize webView;
@synthesize toolBar;

@synthesize buttonClose;
@synthesize buttonRefresh;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[buttonClose setTitle:NSLocalizedString(@"WebViewButtonClose", nil)];
    //[buttonRefresh setTitle:NSLocalizedString(@"WebViewButtonRefresh", nil)];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int url = [defaults integerForKey:@"url"];
    
    NSString* targetURL = @"http://www.google.com/";
    if(url==0) {
        targetURL = @"http://www.tokaiopt.co.jp/eyelife/";
    } else if(url==1) {
        targetURL = @"http://eyelifemegane.jp/";
    } else {
        targetURL = @"http://www.google.com/";
    }
    
    [buttonClose setTitle:@"Close"];
    [buttonRefresh setTitle:@"Reload"];
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: HELP_PAGE_URL]]];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: targetURL]]];
}

- (void)webViewDidStartLoad:(UIWebView*)webView {
    //インジケーターの表示
    //[SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeGradient];
}

- (void)webViewDidFinishLoad:(UIWebView*)webView {
    //インジケーターの非表示
    //[SVProgressHUD dismiss];
    
    if ([webView canGoBack]) {
        self.buttonBack.enabled = YES;
    } else {
        self.buttonBack.enabled = NO;
    }
    
    if ([webView canGoForward]) {
        self.buttonNext.enabled = YES;
    } else {
        self.buttonNext.enabled = NO;
    }
}

- (void)webView:(UIWebView*)webView didFailLoadWithError:(NSError*)error {
    //インジケーターの非表示
    //[SVProgressHUD dismiss];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleClose:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)handleRefresh:(id)sender
{
    [webView reload];
}

- (IBAction)handleNext:(id)sender
{
    if (webView.canGoForward) {
        [webView goForward];
    }
}

- (IBAction)handleBack:(id)sender
{
    if (webView.canGoBack) {
        [webView goBack];
    }
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end

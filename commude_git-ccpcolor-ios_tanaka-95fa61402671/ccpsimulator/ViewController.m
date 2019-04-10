//
//  ViewController.m
//  ccpsimulator
//
//  Created by 坂本 功 on 2015/02/10.
//  Copyright (c) 2015年 Isao Sakamoto. All rights reserved.
//

#import "ViewController.h"
#import "LendsTableViewController.h"
#import "WebViewController.h"

@interface ViewController ()

// あとで変更が必要なものをインスタンス変数にする
@property(nonatomic) GPUImagePicture *imagePicture1;
@property(nonatomic) GPUImagePicture *imagePicture2;
@property(nonatomic) GPUImagePicture *imagePicture3;
@property(nonatomic) GPUImagePicture *imagePicture4;
@property(nonatomic) GPUImagePicture *imagePicture5;
@property(nonatomic) GPUImagePicture *imagePicture6;
@property(nonatomic) GPUImagePicture *imagePicture7;
@property(nonatomic) GPUImagePicture *filterPicture;
@property(nonatomic) GPUImageFilterGroup *filterGroup;
@property(nonatomic) GPUImageContrastFilter *contrastFilter;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter;
@property(nonatomic) GPUImageRGBFilter *rgbFilter;
@property(nonatomic) GPUImageExposureFilter *exposureFilter;

@property(nonatomic) GPUImageFilterGroup *filterGroup2;
@property(nonatomic) GPUImageContrastFilter *contrastFilter2;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter2;
@property(nonatomic) GPUImageExposureFilter *exposureFilter2;

@property (strong, nonatomic) GPUImageVideoCamera *videoCamera;
@property (strong, nonatomic) GPUImagePicture *maskGPUImage;
@property (strong, nonatomic) GPUImageVideoCamera *videoCamera2;

@property(nonatomic) GPUImagePicture *sourcePicture;

@property(nonatomic) GPUImageFilterGroup *filterGroup3;
@property(nonatomic) GPUImageContrastFilter *contrastFilter3;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter3;
@property(nonatomic) GPUImageRGBFilter *rgbFilter3;
@property(nonatomic) GPUImageExposureFilter *exposureFilter3;
@property(nonatomic) GPUImageMaskFilter *maskFilter;

@property(nonatomic) GPUImageFilterGroup *filterGroup4;
@property(nonatomic) GPUImageFilter *nonFilter;
@property(nonatomic) GPUImageContrastFilter *contrastFilter4;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter4;


@property(nonatomic) GPUImageFilterGroup *filterGroup5;
@property(nonatomic) GPUImageContrastFilter *contrastFilter5;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter5;
@property(nonatomic) GPUImageExposureFilter *exposureFilter5;

@property(nonatomic) GPUImageFilterGroup *filterGroup6;
@property(nonatomic) GPUImageContrastFilter *contrastFilter6;
@property(nonatomic) GPUImageBrightnessFilter *brightnessFilter6;
@property(nonatomic) GPUImageRGBFilter *rgbFilter6;
@property(nonatomic) GPUImageExposureFilter *exposureFilter6;

@property(strong, nonatomic) AVCaptureDeviceInput *videoInput;
@property(strong, nonatomic) AVCaptureStillImageOutput *stillImageOutput;
@property(strong, nonatomic) AVCaptureSession *session;




@property(readwrite,nonatomic) CGFloat red;
@property(readwrite,nonatomic) CGFloat green;
@property(readwrite,nonatomic) CGFloat blue;

@property(readwrite,nonatomic) CGFloat exposure;
@property(readwrite,nonatomic) CGFloat ratio;

@property(readwrite,nonatomic) CGFloat contrast;

@property(readwrite,nonatomic) NSString *dataTitle;
@property(readwrite,nonatomic) NSInteger targetNo;

@property(readwrite,nonatomic) NSInteger target2;

@property(readwrite,nonatomic) CGFloat red2;
@property(readwrite,nonatomic) CGFloat green2;
@property(readwrite,nonatomic) CGFloat blue2;

@property(readwrite,nonatomic) CGFloat exposure2;
@property(readwrite,nonatomic) CGFloat ratio2;
@property(readwrite,nonatomic) CGFloat contrast2;

@property(readwrite,nonatomic) NSInteger flagVisible;

@property(readwrite,nonatomic) NSString *imgFileName;

@property(readwrite,nonatomic) NSInteger stepNumber;

@property(readwrite,nonatomic) CGFloat positionX;
@property(readwrite,nonatomic) CGFloat positionY;

@property(readwrite,nonatomic) CGFloat imgX;
@property(readwrite,nonatomic) CGFloat imgY;

@property(readwrite,nonatomic) CGFloat halfPosX;
@property(readwrite,nonatomic) CGFloat halfPosY;

@property(readwrite,nonatomic) CGFloat halfX;
@property(readwrite,nonatomic) CGFloat halfY;

@property(readwrite,nonatomic) NSInteger flagSelector1;
@property(readwrite,nonatomic) NSInteger flagSelector2;
@property(readwrite,nonatomic) NSInteger flagMask1;

@property(readwrite,nonatomic) NSInteger flagMode;
@property(readwrite,nonatomic) NSInteger flagHalfMode;
@property(readwrite,nonatomic) NSInteger flagRightMode;

@property(readwrite,nonatomic) NSInteger flagHalfCat;
@property(readwrite,nonatomic) NSInteger flagHalfLeftCat;
@property(readwrite,nonatomic) NSInteger flagLargeCat;

@property(readwrite,nonatomic) NSInteger flagExpMode;
@property(readwrite,nonatomic) NSInteger expNumber;

@property (nonatomic, strong) AVCaptureStillImageOutput *imageOutput;

@property (nonatomic, strong) AVCaptureDevice *device;
@property (nonatomic, strong) AVCaptureDeviceInput *deviceInput;
@property (nonatomic, strong) AVCaptureVideoDataOutput *dataOutput;
@property (nonatomic, strong) AVCaptureConnection *videoConnection;


@property(readwrite,nonatomic) NSInteger flagRotate;
@property(readwrite,nonatomic) NSInteger flagLensOn;
@property(readwrite,nonatomic) NSInteger flagHelp;
@property(readwrite,nonatomic) NSInteger flagInitial;

@property(readwrite,nonatomic) NSInteger flagRetina;
@property(readwrite,nonatomic) NSInteger flagWebView;

@end

@implementation ViewController

@synthesize shopButton = _shopButton;

@synthesize selectorView = _selectorView;
@synthesize selectorButton1 = _selectorButton1;

@synthesize selectorView2 = _selectorView2;
@synthesize selectorButton2 = _selectorButton2;
@synthesize selectorButton3 = _selectorButton3;

@synthesize nav01 = _nav01;
@synthesize nav02 = _nav02;
@synthesize nav03 = _nav03;
@synthesize nav04 = _nav04;
@synthesize nav05 = _nav05;
@synthesize nav06 = _nav06;
@synthesize nav07 = _nav07;
@synthesize nav_cover = _nav_cover;
@synthesize nav_cover2 = _nav_cover2;
@synthesize nav_cover3 = _nav_cover3;

@synthesize nav11 = _nav11;
@synthesize nav12 = _nav12;
@synthesize nav13 = _nav13;
@synthesize nav14 = _nav14;
@synthesize nav15 = _nav15;
@synthesize nav16 = _nav16;
@synthesize nav17 = _nav17;

@synthesize mainBackImage = _mainBackImage;
@synthesize mainFrontImage = _mainFrontImage;
@synthesize frameImage = _frameImage;

@synthesize myButton1 = _myButton1;
@synthesize mySlider1 = _mySlider1;
@synthesize myTextField1 = _myTextField1;

@synthesize myButton2 = _myButton2;
@synthesize mySlider2 = _mySlider2;
@synthesize myTextField2 = _myTextField2;

@synthesize myButton3 = _myButton3;
@synthesize mySlider3 = _mySlider3;
@synthesize myTextField3 = _myTextField3;

@synthesize myButton4 = _myButton4;
@synthesize mySlider4 = _mySlider4;
@synthesize myTextField4 = _myTextField4;

@synthesize myButton5 = _myButton5;
@synthesize mySlider5 = _mySlider5;
@synthesize myTextField5 = _myTextField5;

@synthesize myButton6 = _myButton6;
@synthesize mySlider6 = _mySlider6;
@synthesize myTextField6 = _myTextField6;
@synthesize myLeftButton = _myLeftButton;
@synthesize myRightButton = _myRightButton;

@synthesize myButton7 = _myButton7;
@synthesize mySlider7 = _mySlider7;
@synthesize myTextField7 = _myTextField7;

@synthesize saveButton = _saveButton;
@synthesize listButton = _listButton;
@synthesize saveTextField = _saveTextField;
@synthesize onoffButton = _onoffButton;

@synthesize imgButton1 = _imgButton1;
@synthesize imgButton2 = _imgButton2;
@synthesize imgButton3 = _imgButton3;
@synthesize imgButton4 = _imgButton4;
@synthesize imgButton5 = _imgButton5;
@synthesize imgButton6 = _imgButton6;
@synthesize imgButton7 = _imgButton7;

@synthesize initialView = _initialView;
@synthesize helpView = _helpView;

@synthesize scrollView1 = _scrollView1;
@synthesize myImage1 = _myImage1;

@synthesize gestureView = _gestureView;
@synthesize expView = _expView;
@synthesize expImage = _expImage;

@synthesize infoView = _infoView;
@synthesize infoLeftImage = _infoLeftImage;
@synthesize infoRightImage = _infoRightImage;

@synthesize topPhotoView = _topPhotoView;
@synthesize topPhotoImage = _topPhotoImage;
@synthesize maskedPhotoImage = _maskedPhotoImage;

@synthesize halfLeftMainView = _halfLeftMainView;
@synthesize halfLeftMainImage = _halfLeftMainImage;
@synthesize halfLeftMaskedImage = _halfLeftMaskedImage;

@synthesize halfRightMainView = _halfRightMainView;
@synthesize halfRightMainImage = _halfRightMainImage;
@synthesize halfRightMaskedImage = _halfRightMaskedImage;

@synthesize halfLeftView = _halfLeftView;
@synthesize halfRightView = _halfRightView;
@synthesize halfLeftImage = _halfLeftImage;
@synthesize halfRightImage = _halfRightImage;

@synthesize halfFrameView = _halfFrameView;

@synthesize cameraView = _cameraView;
@synthesize cameraBackView = _cameraBackView;
@synthesize cameraBackImage = _cameraBackImage;
@synthesize cameraMaskImage = _cameraMaskImage;
@synthesize cameraLendsImage = _cameraLendsImage;

@synthesize videoView = _videoView;
@synthesize videoRawImage = _videoRawImage;
@synthesize videoBackImage = _videoBackImage;
@synthesize videoFrontImage = _videoFrontImage;

@synthesize largeFrameView = _largeFrameView;
@synthesize largeFrameImage = _largeFrameImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // サイズチェック
    int mainScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    int mainScreenWidth = [[UIScreen mainScreen] bounds].size.width;
    int statusBarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
    int navigationBarHeight = self.navigationController.navigationBar.frame.size.height;
    
    NSLog(@"mainScreenHeight: %d", mainScreenHeight); // 768
    NSLog(@"mainScreenWidth: %d", mainScreenWidth); // 1024
    NSLog(@"statusBarHeight: %d", statusBarHeight); // 20
    NSLog(@"navigationBarHeight: %d", navigationBarHeight); // 0

    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    NSLog(@"screenSize.width: %f", screenSize.width); // 1024.0
    NSLog(@"screenSize.height: %f", screenSize.height); // 768.0
    if(screenSize.width == 1024.0 && screenSize.height == 768.0) {
    }
    
    //CGRect rect = CGRectMake(0, 0, screenSize.width, screenSize.height);
    // ImageView frame をCGRectMakeで作った矩形に合わせる
    //_mainBackImage.frame = rect;
    //_mainFrontImage.frame = rect;
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
    [self.view addGestureRecognizer:pan];
    
    
    self.flagVisible = 1;
    _mainFrontImage.hidden = YES;
    [_onoffButton setTitle:@"On" forState:UIControlStateNormal];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
    self.targetNo = [defaults integerForKey:@"target"];
    self.target2 = self.targetNo;
    
    //self.targetNo = 3;
    NSArray *phrases = [[mArray objectAtIndex:self.targetNo] componentsSeparatedByString:@"<>"];
    
    self.dataTitle = [phrases objectAtIndex:1];
    self.red = [[phrases objectAtIndex:2] floatValue];
    self.green = [[phrases objectAtIndex:3] floatValue];
    self.blue = [[phrases objectAtIndex:4] floatValue];
    self.contrast = [[phrases objectAtIndex:5] floatValue];
    self.exposure = [[phrases objectAtIndex:6] floatValue];
    self.ratio = [[phrases objectAtIndex:8] floatValue];
    
    self.red2 = [[phrases objectAtIndex:2] floatValue];
    self.green2 = [[phrases objectAtIndex:3] floatValue];
    self.blue2 = [[phrases objectAtIndex:4] floatValue];
    self.contrast2 = [[phrases objectAtIndex:5] floatValue];
    self.exposure2 = [[phrases objectAtIndex:6] floatValue];
    self.ratio2 = [[phrases objectAtIndex:8] floatValue];
    
    NSLog(@"red: %f, green: %f, blue: %f", self.red, self.green, self.blue);
    
    _saveTextField.text = self.dataTitle;
    
    self.shopButton.hidden = YES;
    self.flagMask1 = 1;
    
    self.flagMode = 0;
    self.flagHalfMode = 0;
    self.flagRightMode = 0;
    self.flagWebView = 0;
    
    self.flagHalfCat = 0;
    self.flagHalfLeftCat = 0;
    self.flagLargeCat = 0;
    
    self.flagExpMode = 0;
    self.expNumber = 0;
    _expView.hidden = YES;
    
    self.flagRotate = 0;
    self.flagLensOn = 1;
    self.flagHelp = 0;
    self.flagInitial = 1;
    
    self.flagRetina = 1;
    if([[UIScreen mainScreen] scale] >= 2.0f) {
        self.flagRetina = 1;
    } else {
        self.flagRetina = 0;
        NSLog(@"iPad2!!");
    }
    
    _nav_cover.hidden = YES;
    _nav_cover2.hidden = YES;
    _nav_cover3.hidden = YES;
    
    if(self.imgFileName == nil) {
        if(self.flagRetina==0) {
            self.imgFileName = @"photo01";
        } else {
            self.imgFileName = @"photo01";
        }
    }
    
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _moveImageView.hidden = YES;
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
    
    path= [[NSBundle mainBundle] pathForResource:@"filter" ofType:@"png"];
    UIImage *fltImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *fltImage = [UIImage imageNamed:@"filter.png"];
    self.filterPicture = [[GPUImagePicture alloc] initWithImage:fltImage];
    
    _halfPosX = 768;
    _halfPosY = 192;
    
    UIImage *dstImage2 = nil;
    CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
    CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect2);
    dstImage2 = [UIImage imageWithCGImage:cliped2
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    CGImageRelease(cliped2);
    
    
    largeFrameView.hidden = NO;
    halfFrameView.hidden = YES;
    
    _halfRightView.clipsToBounds = YES;
    _halfLeftView.clipsToBounds = YES;
    
    _halfX = -384.0;
    _halfY = -96.0;
    
    
    _halfLeftView.hidden = YES;
    _halfRightView.hidden = YES;
    
    _selectorView.hidden = NO;
    _selectorView2.hidden = YES;
    
    
    _infoLeftImage.frame = CGRectMake(284, 530, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    _infoRightImage.frame = CGRectMake(796, 530, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    
    [self changeLeftInfo:self.targetNo];
    [self changeRightInfo:self.targetNo];
    
    _infoLeftImage.hidden = YES;
    
    [self setParameter];
    
    /*
    _frameImage.image = [UIImage imageNamed:@"frame.png"];
    
    _myTextField1.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField2.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField3.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField4.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField5.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField6.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    _myTextField7.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    
    _myButton1.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton1.layer.borderWidth = 1.0f;
    _myButton1.layer.cornerRadius = 7.5f;
    _myButton1.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton2.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton2.layer.borderWidth = 1.0f;
    _myButton2.layer.cornerRadius = 7.5f;
    _myButton2.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton3.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton3.layer.borderWidth = 1.0f;
    _myButton3.layer.cornerRadius = 7.5f;
    _myButton3.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton4.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton4.layer.borderWidth = 1.0f;
    _myButton4.layer.cornerRadius = 7.5f;
    _myButton4.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton5.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton5.layer.borderWidth = 1.0f;
    _myButton5.layer.cornerRadius = 7.5f;
    _myButton5.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton6.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton6.layer.borderWidth = 1.0f;
    _myButton6.layer.cornerRadius = 7.5f;
    _myButton6.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _myButton7.layer.borderColor = [UIColor grayColor].CGColor;
    _myButton7.layer.borderWidth = 1.0f;
    _myButton7.layer.cornerRadius = 7.5f;
    _myButton7.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _saveButton.layer.borderColor = [UIColor grayColor].CGColor;
    _saveButton.layer.borderWidth = 1.0f;
    _saveButton.layer.cornerRadius = 7.5f;
    _saveButton.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _listButton.layer.borderColor = [UIColor grayColor].CGColor;
    _listButton.layer.borderWidth = 1.0f;
    _listButton.layer.cornerRadius = 7.5f;
    _listButton.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    _onoffButton.layer.borderColor = [UIColor grayColor].CGColor;
    _onoffButton.layer.borderWidth = 1.0f;
    _onoffButton.layer.cornerRadius = 7.5f;
    _onoffButton.layer.backgroundColor = [UIColor blackColor].CGColor;
    
    self.stepNumber = 1;
    _myTextField6.text = [NSString stringWithFormat:@" %d", self.stepNumber];
     */
    
    _initialView.hidden = NO;
    _helpView.hidden = YES;
    
    path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    UIImage *image= [[UIImage alloc] initWithContentsOfFile:path];
    
    UIImageView *img1 = [[UIImageView alloc] initWithImage:image];
    //[_myImage1 setImage:img1];
    
    _scrollView1.pagingEnabled = NO;
    _scrollView1.contentSize = CGSizeMake(img1.frame.size.width, img1.frame.size.height);
    _scrollView1.showsHorizontalScrollIndicator = NO;
    _scrollView1.showsVerticalScrollIndicator = NO;
    _scrollView1.scrollsToTop = YES;
    _scrollView1.delegate = self;
    
    //[_scrollView1 addSubview: img1];
    //[img1 release];
    
    
    
    //[_topPhotoImage setImage:dstImage];
    //[_maskedPhotoImage setImage:dstImage];
    
    
    _flagSelector1 = 0;
    _flagSelector2 = 0;
    //_scrollView1.hidden = YES;

    
    
    // 画像 → コントラストフィルターをつなげる
    //[self.imagePicture1 addTarget:self.contrastFilter];
    
    // コントラストフィルター → imageViewをつなげる
    //[self.contrastFilter addTarget:_mainBackImage];
    
    // フィルター実行！
    //[self.imagePicture1 processImage];
    
    // Camera
    /*
    self.videoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionBack];
    self.videoCamera.outputImageOrientation = UIInterfaceOrientationLandscapeRight;
    self.videoCamera.horizontallyMirrorFrontFacingCamera = NO;
    self.videoCamera.horizontallyMirrorRearFacingCamera = NO;
    
    self.videoCamera2 = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionBack];
    self.videoCamera2.outputImageOrientation = UIInterfaceOrientationLandscapeLeft |UIInterfaceOrientationLandscapeRight;
    self.videoCamera2.horizontallyMirrorFrontFacingCamera = NO;
    self.videoCamera2.horizontallyMirrorRearFacingCamera = NO;
    */
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didRotate:)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
    

}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    switch (orientation) {
        case UIInterfaceOrientationLandscapeRight:
            self.flagRotate = 0;
            break;
        case UIInterfaceOrientationLandscapeLeft:
            self.flagRotate = 1;
            break;
        case UIInterfaceOrientationPortrait:
            self.flagRotate = 2;
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            self.flagRotate = 3;
            break;
        default:
            self.flagRotate = 0;
            break;
    }
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tmpTarget = [defaults integerForKey:@"target"];
    
    [self lendsSelectHidden];
    [self lendsSelectHidden2];
    [self updateLends];
    [self changeLendsSelector];
    
    if(self.flagHalfMode!=1) {
        _halfFrameView.hidden = YES;
    }
    
    if((tmpTarget != self.targetNo) || (self.flagWebView == 1)){
        self.flagWebView = 0;
        
        NSLog(@"Data Changed!!!");
        self.targetNo = tmpTarget;
        
        NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
        NSArray *phrases = [[mArray objectAtIndex:self.targetNo] componentsSeparatedByString:@"<>"];
        
        self.dataTitle = [phrases objectAtIndex:1];
        self.red = [[phrases objectAtIndex:2] floatValue];
        self.green = [[phrases objectAtIndex:3] floatValue];
        self.blue = [[phrases objectAtIndex:4] floatValue];
        self.contrast = [[phrases objectAtIndex:5] floatValue];
        self.exposure = [[phrases objectAtIndex:6] floatValue];
        self.ratio = [[phrases objectAtIndex:8] floatValue];
        
        self.red2 = [[phrases objectAtIndex:2] floatValue];
        self.green2 = [[phrases objectAtIndex:3] floatValue];
        self.blue2 = [[phrases objectAtIndex:4] floatValue];
        self.contrast2 = [[phrases objectAtIndex:5] floatValue];
        self.exposure2 = [[phrases objectAtIndex:6] floatValue];
        self.ratio2 = [[phrases objectAtIndex:8] floatValue];
        
        NSLog(@"red: %f, green: %f, blue: %f", self.red, self.green, self.blue);
        
        _saveTextField.text = self.dataTitle;
        
        self.flagVisible = 1;
        _mainFrontImage.hidden = NO;
        [_onoffButton setTitle:@"On" forState:UIControlStateNormal];
        
        if(self.imgFileName == nil) {
            if(self.flagRetina==0) {
                self.imgFileName = @"photo01";
            } else {
                self.imgFileName = @"photo01";
            }
        }
        
        NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
        //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
        UIImage *dstImage = nil;
        
        CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
        CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
        dstImage = [UIImage imageWithCGImage:cliped
                                       scale:[[UIScreen mainScreen] scale]
                                 orientation:UIImageOrientationUp];
        
        
        self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
        self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
        CGImageRelease(cliped);
        
        if(self.flagHalfMode==0) {
            self.nav_cover.hidden = YES;
        } else {
            self.nav_cover.hidden = NO;
        }
        
        if(self.flagMode==7) {
            _nav_cover2.hidden = NO;
            _nav_cover3.hidden = NO;
        } else {
            _nav_cover2.hidden = YES;
            _nav_cover3.hidden = YES;
        }
        
        [self setParameter];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setParameter
{
    NSLog(@"setParameter called...");
    
    
    if(self.flagHalfMode==0) {
    
    // 画像を作る
    /*
    if(self.imgFileName == nil) {
        self.imgFileName = @"dummy01.png";
        NSLog(@"FileName is nil");
    }
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
     */
    
    //_mySlider1.value = self.contrast;
    //_myTextField1.text = [NSString stringWithFormat:@"%.2f",self.contrast];
    
    // コントラストフィルター
    self.contrastFilter = [[GPUImageContrastFilter alloc] init];
    // コントラストを設定する。コントラストは0~4の間の値で、1が普通
    [self.contrastFilter setContrast:self.contrast];
    
    // Brightnessフィルター
    self.brightnessFilter = [[GPUImageBrightnessFilter alloc] init];
    [self.brightnessFilter setBrightness:0.00];
    
    //_mySlider5.value = 0;
    //_myTextField5.text = @"0.00";
    
    // Exposureフィルター
    NSLog(@"Exposure: %f, Ration %f", self.exposure, self.ratio);
    self.exposureFilter = [[GPUImageExposureFilter alloc] init];
    [self.exposureFilter setExposure:(self.exposure * self.ratio)];
    
    //_mySlider6.value = self.exposure;
    //_myTextField6.text = [NSString stringWithFormat:@"%.2f",self.exposure];
    
    //_mySlider7.value = self.ratio;
    //_myTextField7.text = [NSString stringWithFormat:@"%.2f",self.ratio];
    //self.ratio = 0.2;
    
    // RGBフィルター
    //self.red = 1.000;
    //self.green = 1.000;
    //self.blue = 1.000;
    self.rgbFilter = [[GPUImageRGBFilter alloc] init];
    [self.rgbFilter setRed:self.red];
    [self.rgbFilter setGreen:self.green];
    [self.rgbFilter setBlue:self.blue];
    
    //_mySlider2.value = self.red;
    //_myTextField2.text = [NSString stringWithFormat:@"%.3f",self.red];
    
    //_mySlider3.value = self.green;
    //_myTextField3.text = [NSString stringWithFormat:@"%.3f",self.green];
    
    //_mySlider4.value = self.blue;
    //_myTextField4.text = [NSString stringWithFormat:@"%.3f",self.blue];
    
    // フィルターグループ作成
    self.filterGroup = [[GPUImageFilterGroup alloc] init];
    
    [self.filterGroup addFilter:self.contrastFilter];
    [self.filterGroup addFilter:self.brightnessFilter];
    [self.filterGroup addFilter:self.exposureFilter];
    [self.filterGroup addFilter:self.rgbFilter];
    
    [self.contrastFilter addTarget:self.brightnessFilter];
    [self.brightnessFilter addTarget:self.exposureFilter];
    [self.exposureFilter addTarget:self.rgbFilter];
    
    [self.filterGroup setInitialFilters:@[self.contrastFilter]];
    [self.filterGroup setTerminalFilter:self.rgbFilter];
    
    //[self.filterGroup forceProcessingAtSize:_mainBackImage.sizeInPixels];
    
    
    
    // 背面画像用フィルター
    
    // コントラストフィルター
    self.contrastFilter2 = [[GPUImageContrastFilter alloc] init];
    // コントラストを設定する。コントラストは0~4の間の値で、1が普通
    [self.contrastFilter2 setContrast:self.contrast];
    
    // Brightnessフィルター
    self.brightnessFilter2 = [[GPUImageBrightnessFilter alloc] init];
    [self.brightnessFilter2 setBrightness:0.00];
    
    // Exposureフィルター
    NSLog(@"Exposure: %f, Ration %f", self.exposure, self.ratio);
    self.exposureFilter2 = [[GPUImageExposureFilter alloc] init];
    [self.exposureFilter2 setExposure:self.exposure];
    
    self.filterGroup2 = [[GPUImageFilterGroup alloc] init];
    
    [self.filterGroup2 addFilter:self.contrastFilter2];
    [self.filterGroup2 addFilter:self.brightnessFilter2];
    [self.filterGroup2 addFilter:self.exposureFilter2];
    
    [self.contrastFilter2 addTarget:self.brightnessFilter2];
    [self.brightnessFilter2 addTarget:self.exposureFilter2];
    
    [self.filterGroup2 setInitialFilters:@[self.contrastFilter2]];
    [self.filterGroup2 setTerminalFilter:self.exposureFilter2];
    

        // ビデオ映像をマスク
        /*
    self.maskFilter = [[GPUImageMaskFilter alloc] init];
    //[self.videoCamera addTarget:self.maskFilter];
    
    self.maskGPUImage = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"mask2"] smoothlyScaleOutput:NO];
    [self.maskGPUImage addTarget:self.maskFilter];
    [self.maskGPUImage processImage];
    [self.maskFilter useNextFrameForImageCapture];
        */
        
        
    
    self.filterGroup3 = [[GPUImageFilterGroup alloc] init];
    
    //[self.filterGroup3 addFilter:self.maskFilter];
    [self.filterGroup3 addFilter:self.contrastFilter];
    [self.filterGroup3 addFilter:self.brightnessFilter];
    [self.filterGroup3 addFilter:self.exposureFilter];
    [self.filterGroup3 addFilter:self.rgbFilter];
    //[self.filterGroup3 addFilter:self.maskFilter];
    
    //[self.maskFilter addTarget:self.contrastFilter];
    [self.contrastFilter addTarget:self.brightnessFilter];
    //[self.brightnessFilter addTarget:self.maskFilter];
    //[self.maskFilter addTarget:self.exposureFilter];
    [self.brightnessFilter addTarget:self.exposureFilter];
    [self.exposureFilter addTarget:self.rgbFilter];
    //[self.rgbFilter addTarget:self.maskFilter];
    
    [self.filterGroup3 setInitialFilters:@[self.contrastFilter]];
    [self.filterGroup3 setTerminalFilter:self.rgbFilter];
         
    
    
    self.contrastFilter4 = [[GPUImageContrastFilter alloc] init];
    // コントラストを設定する。コントラストは0~4の間の値で、1が普通
    [self.contrastFilter4 setContrast:self.contrast];
    
    // Brightnessフィルター
    self.brightnessFilter4 = [[GPUImageBrightnessFilter alloc] init];
    [self.brightnessFilter4 setBrightness:0.00];
    
    self.filterGroup4 = [[GPUImageFilterGroup alloc] init];
    [self.filterGroup4 addFilter:self.contrastFilter4];
    [self.filterGroup4 addFilter:self.brightnessFilter4];
    [self.contrastFilter4 addTarget:self.brightnessFilter4];
    [self.filterGroup4 setInitialFilters:@[self.contrastFilter4]];
    [self.filterGroup4 setTerminalFilter:self.brightnessFilter4];
    
    
    } else {
        
        self.contrastFilter = [[GPUImageContrastFilter alloc] init];
        // コントラストを設定する。コントラストは0~4の間の値で、1が普通
        [self.contrastFilter setContrast:self.contrast];
        
        // Brightnessフィルター
        self.brightnessFilter = [[GPUImageBrightnessFilter alloc] init];
        [self.brightnessFilter setBrightness:0.00];
        
        //_mySlider5.value = 0;
        //_myTextField5.text = @"0.00";
        
        // Exposureフィルター
        self.exposureFilter = [[GPUImageExposureFilter alloc] init];
        [self.exposureFilter setExposure:(self.exposure * self.ratio)];
        
        NSLog(@"ratio: %f, exposure: %f", self.ratio, self.exposure);
        
        //_mySlider6.value = self.exposure;
        //_myTextField6.text = [NSString stringWithFormat:@"%.2f",self.exposure];
        
        //_mySlider7.value = self.ratio;
        //_myTextField7.text = [NSString stringWithFormat:@"%.2f",self.ratio];
        //self.ratio = 0.2;
        
        // RGBフィルター
        //self.red = 1.000;
        //self.green = 1.000;
        //self.blue = 1.000;
        self.rgbFilter = [[GPUImageRGBFilter alloc] init];
        [self.rgbFilter setRed:self.red];
        [self.rgbFilter setGreen:self.green];
        [self.rgbFilter setBlue:self.blue];
        
        //_mySlider2.value = self.red;
        //_myTextField2.text = [NSString stringWithFormat:@"%.3f",self.red];
        
        //_mySlider3.value = self.green;
        //_myTextField3.text = [NSString stringWithFormat:@"%.3f",self.green];
        
        //_mySlider4.value = self.blue;
        //_myTextField4.text = [NSString stringWithFormat:@"%.3f",self.blue];
        
        // フィルターグループ作成
        self.filterGroup = [[GPUImageFilterGroup alloc] init];
        
        [self.filterGroup addFilter:self.contrastFilter];
        [self.filterGroup addFilter:self.brightnessFilter];
        [self.filterGroup addFilter:self.exposureFilter];
        [self.filterGroup addFilter:self.rgbFilter];
        
        [self.contrastFilter addTarget:self.brightnessFilter];
        [self.brightnessFilter addTarget:self.exposureFilter];
        [self.exposureFilter addTarget:self.rgbFilter];
        
        [self.filterGroup setInitialFilters:@[self.contrastFilter]];
        [self.filterGroup setTerminalFilter:self.rgbFilter];
        
    
    
    // 分割背面画像用フィルター
    
    // コントラストフィルター
    self.contrastFilter5 = [[GPUImageContrastFilter alloc] init];
    // コントラストを設定する。コントラストは0~4の間の値で、1が普通
    [self.contrastFilter5 setContrast:self.contrast];
    
    // Brightnessフィルター
    self.brightnessFilter5 = [[GPUImageBrightnessFilter alloc] init];
    [self.brightnessFilter5 setBrightness:0.00];
    
    // Exposureフィルター
    self.exposureFilter5 = [[GPUImageExposureFilter alloc] init];
    [self.exposureFilter5 setExposure:self.exposure];
    //[self.exposureFilter5 setExposure:(self.exposure * self.ratio2)];
    
    self.filterGroup5 = [[GPUImageFilterGroup alloc] init];
    
    [self.filterGroup5 addFilter:self.contrastFilter5];
    [self.filterGroup5 addFilter:self.brightnessFilter5];
    [self.filterGroup5 addFilter:self.exposureFilter5];
    
    [self.contrastFilter5 addTarget:self.brightnessFilter5];
    [self.brightnessFilter5 addTarget:self.exposureFilter5];
    
    [self.filterGroup5 setInitialFilters:@[self.contrastFilter5]];
    [self.filterGroup5 setTerminalFilter:self.exposureFilter5];
    
    
    
    self.contrastFilter6 = [[GPUImageContrastFilter alloc] init];
    [self.contrastFilter6 setContrast:self.contrast2];
    self.brightnessFilter6 = [[GPUImageBrightnessFilter alloc] init];
    [self.brightnessFilter6 setBrightness:0.00];
    self.exposureFilter6 = [[GPUImageExposureFilter alloc] init];
    [self.exposureFilter6 setExposure:(self.exposure * self.ratio2)];
    self.rgbFilter6 = [[GPUImageRGBFilter alloc] init];
    [self.rgbFilter6 setRed:self.red2];
    [self.rgbFilter6 setGreen:self.green2];
    [self.rgbFilter6 setBlue:self.blue2];
        
        NSLog(@"ratio2: %f, exposure: %f", self.ratio2, self.exposure);
    
    self.filterGroup6 = [[GPUImageFilterGroup alloc] init];
    
    [self.filterGroup6 addFilter:self.contrastFilter6];
    [self.filterGroup6 addFilter:self.brightnessFilter6];
    [self.filterGroup6 addFilter:self.exposureFilter6];
    [self.filterGroup6 addFilter:self.rgbFilter6];
    
    [self.contrastFilter6 addTarget:self.brightnessFilter6];
    [self.brightnessFilter6 addTarget:self.exposureFilter6];
    [self.exposureFilter6 addTarget:self.rgbFilter6];
    
    [self.filterGroup6 setInitialFilters:@[self.contrastFilter6]];
    [self.filterGroup6 setTerminalFilter:self.rgbFilter6];
    
    }
    
    
    
    
    
    //[self drawImage];
    if(self.flagHalfMode==1) {
        [self drawHalfImage];
    } else {
        [self drawLargeImage];
    }
    
    if(self.flagMode==7) {
        [self cameraMode];
    }
}

- (IBAction) sliderValueChanged:(UISlider *)sender {
    _myTextField1.text = [NSString stringWithFormat:@" %.2f", [sender value]];
    
    // コントラストをスライダーの値にする
    [self.contrastFilter setContrast:sender.value];
    
    // フィルターを実行する
    //[self.imagePicture1 processImage];
    
    [self drawImage];
}

- (IBAction) changeButtonPressed:(id)sender {
    NSString *textValue = [_myTextField1 text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 4) value = 4;
    _mySlider1.value = value;
    _myTextField1.text = [NSString stringWithFormat:@"%.2f", value];
    if ([_myTextField1 canResignFirstResponder]) [_myTextField1 resignFirstResponder];
    
    // コントラストをスライダーの値にする
    [self.contrastFilter setContrast:value];
    
    // フィルターを実行する
    //[self.imagePicture1 processImage];
    
    [self drawImage];
}

- (IBAction) slider2ValueChanged:(UISlider *)sender {
    _myTextField2.text = [NSString stringWithFormat:@" %.3f", [sender value]];
    
    [self.rgbFilter setRed:sender.value];
    self.red = sender.value;
    
    [self drawImage];
}

- (IBAction) change2ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField2 text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 2) value = 2;
    _mySlider2.value = value;
    _myTextField2.text = [NSString stringWithFormat:@"%.3f", value];
    if ([_myTextField2 canResignFirstResponder]) [_myTextField2 resignFirstResponder];
    
    [self.rgbFilter setRed:value];
    self.red = value;
    
    [self drawImage];
}

- (IBAction) slider3ValueChanged:(UISlider *)sender {
    _myTextField3.text = [NSString stringWithFormat:@" %.3f", [sender value]];
    
    [self.rgbFilter setGreen:sender.value];
    self.green = sender.value;
    
    [self drawImage];
}

- (IBAction) change3ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField3 text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 2) value = 2;
    _mySlider3.value = value;
    _myTextField3.text = [NSString stringWithFormat:@"%.3f", value];
    if ([_myTextField3 canResignFirstResponder]) [_myTextField3 resignFirstResponder];
    
    [self.rgbFilter setGreen:value];
    self.green = value;
    
    [self drawImage];
}

- (IBAction) slider4ValueChanged:(UISlider *)sender {
    _myTextField4.text = [NSString stringWithFormat:@" %.3f", [sender value]];
    
    [self.rgbFilter setBlue:sender.value];
    self.blue = sender.value;
    
    [self drawImage];
}

- (IBAction) change4ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField4 text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 2) value = 2;
    _mySlider4.value = value;
    _myTextField4.text = [NSString stringWithFormat:@"%.3f", value];
    if ([_myTextField4 canResignFirstResponder]) [_myTextField4 resignFirstResponder];
    
    [self.rgbFilter setBlue:value];
    self.blue = value;
    
    [self drawImage];
}

- (IBAction) slider5ValueChanged:(UISlider *)sender {
    _myTextField5.text = [NSString stringWithFormat:@" %.2f", [sender value]];
    
    [self.brightnessFilter2 setBrightness:sender.value];
    
    [self drawImage];
}

- (IBAction) change5ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField5 text];
    float value = [textValue floatValue];
    if (value < -1) value = -1;
    if (value > 1) value = 1;
    _mySlider5.value = value;
    _myTextField5.text = [NSString stringWithFormat:@"%.2f", value];
    if ([_myTextField5 canResignFirstResponder]) [_myTextField5 resignFirstResponder];
    
    [self.brightnessFilter2 setBrightness:value];
    
    [self drawImage];
}

- (IBAction) slider6ValueChanged:(UISlider *)sender {
    [_mySlider6 setValue:((int)((_mySlider6.value + 0.09) / 0.18) * 0.18) animated:NO];
    
    self.stepNumber = (int)((_mySlider6.value + 0.09) / 0.18) + 1;
    
    //_myTextField6.text = [NSString stringWithFormat:@" %.2f", [sender value]];
    _myTextField6.text = [NSString stringWithFormat:@" %d", self.stepNumber];
    
    self.exposure = sender.value;
    [self.exposureFilter2 setExposure:sender.value];
    if(self.ratio>0) {
        [self.exposureFilter setExposure:(sender.value * self.ratio)];
    }

    [self drawImage];
}

- (IBAction) change6ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField6 text];
    float value = [textValue floatValue];
    if (value < -2) value = -2;
    if (value > 2) value = 2;
    _mySlider6.value = value;
    _myTextField6.text = [NSString stringWithFormat:@"%.2f", value];
    if ([_myTextField6 canResignFirstResponder]) [_myTextField6 resignFirstResponder];
    
    self.exposure = value;
    [self.exposureFilter2 setExposure:value];
    if(self.ratio>0) {
        [self.exposureFilter setExposure:(value * self.ratio)];
    }
    
    [self drawImage];
}

- (IBAction) leftButtonPressed:(id)sender {
    NSLog(@"leftButtonPressed");
    if(self.stepNumber>1) {
        int tmpNum = self.stepNumber - 2;
        self.stepNumber = tmpNum + 1;
        
        _myTextField6.text = [NSString stringWithFormat:@" %d", self.stepNumber];
        
        [_mySlider6 setValue:(tmpNum * 0.18) animated:NO];
        self.exposure = tmpNum * 0.18;
        //self.exposure = tmpNum;
        NSLog(@"exposure %d", tmpNum);
        //[self.exposureFilter2 setExposure:(tmpNum * 0.18)];
        //if(self.ratio>0) {
        //    [self.exposureFilter setExposure:((tmpNum * 0.18) * self.ratio)];
        //}
        
        NSString *path= [[NSBundle mainBundle] pathForResource:@"exp01" ofType:@"png"];
        UIImage *image= [[UIImage alloc] initWithContentsOfFile:path];
        //UIImage *image = [UIImage imageNamed:@"exp01.png"];
        
        NSString *path2 = [[NSBundle mainBundle] pathForResource:@"plus_on" ofType:@"png"];
        UIImage *plus_on = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"plus_off" ofType:@"png"];
        UIImage *plus_off = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"minus_on" ofType:@"png"];
        UIImage *minus_on = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"minus_off" ofType:@"png"];
        UIImage *minus_off = [[UIImage alloc] initWithContentsOfFile:path2];
        
        
        switch ((self.stepNumber)) {
            case 1:
                path= [[NSBundle mainBundle] pathForResource:@"exp01" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp01.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_off forState:UIControlStateNormal];
                break;
            case 2:
                path= [[NSBundle mainBundle] pathForResource:@"exp02" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp02.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 3:
                path= [[NSBundle mainBundle] pathForResource:@"exp03" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp03.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 4:
                path= [[NSBundle mainBundle] pathForResource:@"exp04" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp04.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 5:
                path= [[NSBundle mainBundle] pathForResource:@"exp05" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp05.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 6:
                path= [[NSBundle mainBundle] pathForResource:@"exp06" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp06.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 7:
                path= [[NSBundle mainBundle] pathForResource:@"exp07" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp07.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 8:
                path= [[NSBundle mainBundle] pathForResource:@"exp08" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp08.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 9:
                path= [[NSBundle mainBundle] pathForResource:@"exp09" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp09.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 10:
                path= [[NSBundle mainBundle] pathForResource:@"exp10" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp10.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 11:
                path= [[NSBundle mainBundle] pathForResource:@"exp11" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp11.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 12:
                path= [[NSBundle mainBundle] pathForResource:@"exp12" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp12.png"];
                [_myRightButton setImage:plus_off forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
        [_expImage setImage:image];
        
        [self setParameter];
        //[self drawImage];
        //[self drawLargeImage];
    }
}

- (IBAction) rightButtonPressed:(id)sender {
    NSLog(@"rightButtonPressed");
    if(self.stepNumber<12) {
        int tmpNum = self.stepNumber;
        self.stepNumber = tmpNum + 1;
        
        _myTextField6.text = [NSString stringWithFormat:@" %d", self.stepNumber];
        
        [_mySlider6 setValue:(tmpNum * 0.18) animated:NO];
        self.exposure = tmpNum * 0.18;
        //self.exposure = tmpNum;
        NSLog(@"exposure %d", tmpNum);
        //[self.exposureFilter2 setExposure:(tmpNum * 0.18)];
        //if(self.ratio>0) {
        //    [self.exposureFilter setExposure:((tmpNum * 0.18) * self.ratio)];
        //}
        
        NSString *path= [[NSBundle mainBundle] pathForResource:@"exp01" ofType:@"png"];
        UIImage *image= [[UIImage alloc] initWithContentsOfFile:path];
        //UIImage *image = [UIImage imageNamed:@"exp01.png"];
        
        NSString *path2 = [[NSBundle mainBundle] pathForResource:@"plus_on" ofType:@"png"];
        UIImage *plus_on = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"plus_off" ofType:@"png"];
        UIImage *plus_off = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"minus_on" ofType:@"png"];
        UIImage *minus_on = [[UIImage alloc] initWithContentsOfFile:path2];
        
        path2 = [[NSBundle mainBundle] pathForResource:@"minus_off" ofType:@"png"];
        UIImage *minus_off = [[UIImage alloc] initWithContentsOfFile:path2];
        
        switch ((self.stepNumber)) {
            case 1:
                path= [[NSBundle mainBundle] pathForResource:@"exp01" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp01.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_off forState:UIControlStateNormal];
                break;
            case 2:
                path= [[NSBundle mainBundle] pathForResource:@"exp02" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp02.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 3:
                path= [[NSBundle mainBundle] pathForResource:@"exp03" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp03.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 4:
                path= [[NSBundle mainBundle] pathForResource:@"exp04" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp04.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 5:
                path= [[NSBundle mainBundle] pathForResource:@"exp05" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp05.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 6:
                path= [[NSBundle mainBundle] pathForResource:@"exp06" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp06.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 7:
                path= [[NSBundle mainBundle] pathForResource:@"exp07" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp07.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 8:
                path= [[NSBundle mainBundle] pathForResource:@"exp08" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp08.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 9:
                path= [[NSBundle mainBundle] pathForResource:@"exp09" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp09.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 10:
                path= [[NSBundle mainBundle] pathForResource:@"exp10" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp10.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 11:
                path= [[NSBundle mainBundle] pathForResource:@"exp11" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp11.png"];
                [_myRightButton setImage:plus_on forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
            case 12:
                path= [[NSBundle mainBundle] pathForResource:@"exp12" ofType:@"png"];
                image= [[UIImage alloc] initWithContentsOfFile:path];
                //image = [UIImage imageNamed:@"exp12.png"];
                [_myRightButton setImage:plus_off forState:UIControlStateNormal];
                [_myLeftButton setImage:minus_on forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
        [_expImage setImage:image];
        
        [self setParameter];
        //[self drawImage];
        
        //[self drawLargeImage];
    }
    
}

- (IBAction) slider7ValueChanged:(UISlider *)sender {
    //[_mySlider7 setValue:((int)((_mySlider7.value + 0.05) / 0.1) * 0.1) animated:NO];
    
    _myTextField7.text = [NSString stringWithFormat:@"%.2f", [sender value]];
    
    self.ratio = sender.value;
    [self.exposureFilter2 setExposure:self.exposure];
    if(sender.value>0){
        [self.exposureFilter setExposure:(self.exposure * sender.value)];
    }
    
    [self drawImage];
}

- (IBAction) change7ButtonPressed:(id)sender {
    NSString *textValue = [_myTextField7 text];
    float value = [textValue floatValue];
    if (value < 0) value = 0;
    if (value > 1) value = 1;
    _mySlider7.value = value;
    _myTextField7.text = [NSString stringWithFormat:@"%.2f", value];
    if ([_myTextField7 canResignFirstResponder]) [_myTextField7 resignFirstResponder];
    
    self.ratio = value;
    [self.exposureFilter2 setExposure:self.exposure];
    if(value>0) {
        [self.exposureFilter2 setExposure:(self.exposure * value)];
    }
    
    [self drawImage];
}

- (IBAction) saveButtonPressed:(id)sender {
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"データ上書き保存" message:@"データを更新してよろしいですか？"
                              delegate:self cancelButtonTitle:@"いいえ" otherButtonTitles:@"はい", nil];
    [alert show];
}

- (void)saveData {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
    NSMutableArray *mArraycopy = [NSMutableArray arrayWithArray:mArray];
    
    self.dataTitle = [_saveTextField text];
    NSString *arrString = [NSString stringWithFormat:@"%d<>%@<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>",
                           self.targetNo,self.dataTitle,
                           self.red,self.green,self.blue,self.contrast,self.exposure,self.ratio,0.00f,0.00f,0.00f];
    
    [mArraycopy replaceObjectAtIndex:self.targetNo withObject:arrString];
    [defaults setObject:mArraycopy forKey:@"LendsList"];
    mArray = nil;
    
    //BOOL successful = [defaults synchronize];
    [defaults synchronize];
}

-(void)alertView:(UIAlertView*)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            NSLog(@"No button");
            break;
        case 1:
            [self saveData];
            break;
    }
}

- (IBAction) listButtonPressed:(id)sender {
    //ListViewController *list = [[ListViewController alloc] init];
    //LendsTableViewController *lends = [[LendsTableViewController alloc] initWithNibName:@"LendsTableViewController" bundle:nil];
    LendsTableViewController *lends = [[LendsTableViewController alloc] initWithNibName:@"LendsTableViewController" bundle:nil];
    [self presentViewController:lends animated:NO completion:nil];
}

- (IBAction) onoffButtonPressed:(id)sender {
    if(self.flagVisible==1) {
        self.flagVisible = 0;
        _mainFrontImage.hidden = YES;
        [_onoffButton setTitle:@"Off" forState:UIControlStateNormal];
    } else {
        self.flagVisible = 1;
        _mainFrontImage.hidden = NO;
        [_onoffButton setTitle:@"On" forState:UIControlStateNormal];
    }
    
}

/*
- (IBAction) imgButton1Pressed:(id)sender {
    self.imgFileName = @"dummy01.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton2Pressed:(id)sender {
    self.imgFileName = @"dummy02.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton3Pressed:(id)sender {
    self.imgFileName = @"dummy03.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton4Pressed:(id)sender {
    self.imgFileName = @"dummy04.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton5Pressed:(id)sender {
    self.imgFileName = @"dummy05.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton6Pressed:(id)sender {
    self.imgFileName = @"dummy06.png";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
- (IBAction) imgButton7Pressed:(id)sender {
    self.imgFileName = @"sample.jpg";
    UIImage *image = [UIImage imageNamed:self.imgFileName];
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:image];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:image];
    [self drawImage];
}
*/

- (IBAction) selector1ButtonPressed:(id)sender {
    NSLog(@"Selector Botton Clicked...");
    if(_flagSelector1==0) {
        [self changeLendsSelector];
        
        [self updateSelector1];
        
        _flagSelector1 = 1;
        _selectorView.frame = CGRectMake(0, 255, 1024, 520);
        
        _infoLeftImage.frame = CGRectMake(284, 95, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 95, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    } else {
        _flagSelector1 = 0;
        _selectorView.frame = CGRectMake(0, 715, 1024, 520);
        
        _infoLeftImage.frame = CGRectMake(284, 530, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 530, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    }
}

- (IBAction) selector2ButtonPressed:(id)sender {
    NSLog(@"Selector Botton Clicked...");
    [self lendsSelectHidden2];
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"selector2left" ofType:@"png"];

    if(_flagSelector2==0) {
        _flagRightMode = 0;
        [self changeLendsSelector2];
        [self updateSelector2];
        
        path= [[NSBundle mainBundle] pathForResource:@"selector2left" ofType:@"png"];
        [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        
        _flagSelector2 = 1;
        _selectorView2.frame = CGRectMake(0, 248, 1024, 500);
                _infoLeftImage.frame = CGRectMake(284, 60, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 60, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    } else {
        _flagRightMode = 0;
        _flagSelector2 = 0;
        path= [[NSBundle mainBundle] pathForResource:@"selector2" ofType:@"png"];
        [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        
        _selectorView2.frame = CGRectMake(0, 715, 1024, 500);
        
        _infoLeftImage.frame = CGRectMake(284,
                                          528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        
        [self lendsSelectHidden2];
    }
}

- (IBAction) selector3ButtonPressed:(id)sender {
    NSLog(@"Selector Botton Clicked...");
    [self lendsSelectHidden2];
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"selector2right" ofType:@"png"];
    
    if(_flagSelector2==0) {
        _flagRightMode = 1;
        
        [self changeLendsSelector2];
        [self updateSelector3];
        path= [[NSBundle mainBundle] pathForResource:@"selector2right" ofType:@"png"];
        [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        
        
        _flagSelector2 = 1;
      //  _selectorView2.frame = CGRectMake(0, 352, 1024, 416);
        _selectorView2.frame = CGRectMake(0, 248, 1024, 500);

        
        _infoLeftImage.frame = CGRectMake(284, 60, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 60, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    } else {
        _flagRightMode = 0;
        _flagSelector2 = 0;
        path= [[NSBundle mainBundle] pathForResource:@"selector2" ofType:@"png"];
        [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        
        //_selectorView2.frame = CGRectMake(0, 726, 1024, 416);
        
        _selectorView2.frame = CGRectMake(0, 715, 1024, 500);

        
        _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        
        [self lendsSelectHidden2];
    }
}

- (void) updateSelector1 {
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_on" ofType:@"png"];
    UIImage *cat01_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_on" ofType:@"png"];
    UIImage *cat02_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_on" ofType:@"png"];
    UIImage *cat03_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"blank" ofType:@"png"];
    UIImage *blank = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover02" ofType:@"png"];
    UIImage *selector_cover02 = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover03" ofType:@"png"];
    UIImage *selector_cover03 = [[UIImage alloc] initWithContentsOfFile:path];
    
    switch(self.flagLargeCat) {
        case 0:
            [_largeCat01 setImage:cat01_on];
            [_largeCat02 setImage:cat02_off];
            [_largeCat03 setImage:cat03_off];
            [_largeCover setImage:blank];
            break;
        case 1:
            [_largeCat01 setImage:cat01_off];
            [_largeCat02 setImage:cat02_on];
            [_largeCat03 setImage:cat03_off];
            [_largeCover setImage:selector_cover02];
            break;
        case 2:
            [_largeCat01 setImage:cat01_off];
            [_largeCat02 setImage:cat02_off];
            [_largeCat03 setImage:cat03_on];
            [_largeCover setImage:selector_cover03];
            break;
        default:
            [_largeCat01 setImage:cat01_on];
            [_largeCat02 setImage:cat02_off];
            [_largeCat03 setImage:cat03_off];
            [_largeCover setImage:blank];
            break;
    }
}
- (void) updateSelector2 {
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_on" ofType:@"png"];
    UIImage *cat01_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_on" ofType:@"png"];
    UIImage *cat02_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_on" ofType:@"png"];
    UIImage *cat03_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"blank" ofType:@"png"];
    UIImage *blank = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover02" ofType:@"png"];
    UIImage *selector_cover02 = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover03" ofType:@"png"];
    UIImage *selector_cover03 = [[UIImage alloc] initWithContentsOfFile:path];
    
    switch(self.flagHalfLeftCat) {
        case 0:
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:blank];
            break;
        case 1:
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_on];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:selector_cover02];
            break;
        case 2:
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_on];
            [_halfCover setImage:selector_cover03];
            break;
        default:
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:blank];
            break;
    }
    
}
- (void) updateSelector3 {
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_on" ofType:@"png"];
    UIImage *cat01_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_on" ofType:@"png"];
    UIImage *cat02_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_on" ofType:@"png"];
    UIImage *cat03_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"blank" ofType:@"png"];
    UIImage *blank = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover02" ofType:@"png"];
    UIImage *selector_cover02 = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover03" ofType:@"png"];
    UIImage *selector_cover03 = [[UIImage alloc] initWithContentsOfFile:path];
    
    switch(self.flagHalfCat) {
        case 0:
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:blank];
            break;
        case 1:
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_on];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:selector_cover02];
            break;
        case 2:
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_on];
            [_halfCover setImage:selector_cover03];
            break;
        default:
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            [_halfCover setImage:blank];
            break;
    }
    
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (_myTextField1) {
        if ([_myTextField1 canResignFirstResponder]) [_myTextField1 resignFirstResponder];
    }
    if (_myTextField2) {
        if ([_myTextField2 canResignFirstResponder]) [_myTextField2 resignFirstResponder];
    }
    if (_myTextField3) {
        if ([_myTextField3 canResignFirstResponder]) [_myTextField3 resignFirstResponder];
    }
    if (_myTextField4) {
        if ([_myTextField4 canResignFirstResponder]) [_myTextField4 resignFirstResponder];
    }
    if (_myTextField5) {
        if ([_myTextField5 canResignFirstResponder]) [_myTextField5 resignFirstResponder];
    }
    if (_myTextField6) {
        if ([_myTextField6 canResignFirstResponder]) [_myTextField6 resignFirstResponder];
    }
    if (_myTextField7) {
        if ([_myTextField7 canResignFirstResponder]) [_myTextField7 resignFirstResponder];
    }
    if (_saveTextField) {
        if ([_saveTextField canResignFirstResponder]) [_saveTextField resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}

- (void) drawImage {
    [self.imagePicture1 addTarget:self.filterGroup];
    [self.filterGroup addTarget:_mainFrontImage];
    [self.imagePicture1 processImage];
    
    
    
    //UIImage *outputImage = [self.filterGroup imageFromCurrentFramebuffer];
    
    [self.imagePicture2 addTarget:self.filterGroup2];
    [self.filterGroup2 addTarget:_mainBackImage];
    [self.imagePicture2 processImage];
    
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"mask" ofType:@"png"];
    
    UIImage *img = [[UIImage alloc] initWithContentsOfFile:path];
    CALayer *mask = [CALayer layer];
    mask.contents = (id)[img CGImage];
    mask.frame = CGRectMake(0,0,img.size.width,img.size.height);
    _mainFrontImage.layer.mask = mask;


    [self.imagePicture1 removeAllTargets];
    //self.imagePicture1 = nil;
    [self.imagePicture2 removeAllTargets];
    //self.imagePicture2 = nil;

}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction) shopButtonPressed:(id)sender {
    WebViewController *webview = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    [self presentViewController:webview animated:YES completion:nil];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    //_maskedPhotoImage.hidden = YES;
    //self.flagMask1 = 0;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    return;
    
    //if(!decelerate) {
        _maskedPhotoImage.hidden = NO;
        //self.flagMask1 = 1;
        
    [CATransaction begin];
    [CATransaction setValue:(id)kCFBooleanTrue forKey:kCATransactionDisableActions];
    
    NSLog(@"Scrolling...");
    CGPoint contentOffset = scrollView.contentOffset;
    NSLog(@"X: %f, Y: %f", contentOffset.x, contentOffset.y);
    
    UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = (contentOffset.x * 1.0);
    if(_positionX<0) {
        _positionX = 0;
    }
    if(_positionX>512) {
        _positionX = 512;
    }
    
    _positionY = (contentOffset.y * 1.0);
    if(_positionY<0) {
        _positionY = 0;
    }
    if(_positionY>384) {
        _positionY = 384;
    }
    
    NSLog(@"X: %f, Y: %f", _positionX, _positionY);
    
    CGRect clipRect = CGRectMake(0+_positionX, 0+_positionY, 2048, 1536);
    //CGRect clipRect = CGRectMake(0, 0, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    CGImageRelease(cliped);
    
    //[_topPhotoImage setImage:dstImage];
    //[_maskedPhotoImage setImage:dstImage];
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    
    [self setParameter];
    
    [CATransaction commit];
    //}
}

- (void) drawHalfImage {
    NSLog(@"drawHalfImage called...");
    
    [self.imagePicture4 addTarget:self.filterGroup];
    [self.filterGroup addTarget:_halfLeftMaskedImage];
    [self.imagePicture4 processImage];
    
    
    
    [self.imagePicture5 addTarget:self.filterGroup6];
    [self.filterGroup6 addTarget:_halfRightMaskedImage];
    [self.imagePicture5 processImage];
    
    
    
    [self.imagePicture3 addTarget:self.filterGroup5];
    [self.filterGroup5 addTarget:_halfLeftMainImage];
    [self.filterGroup5 addTarget:_halfRightMainImage];
    [self.imagePicture3 processImage];
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"half_mask" ofType:@"png"];
    
    UIImage *img = [[UIImage alloc] initWithContentsOfFile:path];
    CALayer *mask = [CALayer layer];
    mask.contents = (id)[img CGImage];
    mask.frame = CGRectMake(0,0,img.size.width,img.size.height);
    _halfLeftMaskedImage.layer.mask = mask;
    
    CALayer *mask2 = [CALayer layer];
    mask2.contents = (id)[img CGImage];
    mask2.frame = CGRectMake(0,0,img.size.width,img.size.height);
    _halfRightMaskedImage.layer.mask = mask2;
    
    _halfLeftMainView.hidden = NO;
    _halfRightMainView.hidden = NO;
    
    if(_halfLeftView.hidden==NO) {
        _halfLeftView.hidden = YES;
        _halfRightView.hidden = YES;
    }
    
    [self.imagePicture4 removeAllTargets];
    //self.imagePicture4 = nil;
    
    [self.imagePicture5 removeAllTargets];
    //self.imagePicture5 = nil;
    
    [self.imagePicture3 removeAllTargets];
    //self.imagePicture3 = nil;
    
    if(self.flagLensOn==1) {
        NSLog(@"flagLensOn");
        _halfLeftMaskedImage.hidden = NO;
        _halfRightMaskedImage.hidden = NO;
    } else {
        NSLog(@"flagLensOff");
        _halfLeftMaskedImage.hidden = YES;
        _halfRightMaskedImage.hidden = YES;
    }
}

- (void) drawLargeImage {
    NSLog(@"drawlargeImage called...");

    if(self.flagMask1 == 1) {
        [self.imagePicture1 addTarget:self.filterGroup];
        [self.filterGroup addTarget:_maskedPhotoImage];
        [self.imagePicture1 processImage];
        
        
    }
    
    [self.imagePicture2 addTarget:self.filterGroup2];
    [self.filterGroup2 addTarget:_topPhotoImage];
    [self.imagePicture2 processImage];
    
    
    
    if(self.flagMask1 == 1) {
        NSString *path= [[NSBundle mainBundle] pathForResource:@"mask" ofType:@"png"];
        UIImage *img = [[UIImage alloc] initWithContentsOfFile:path];
        CALayer *mask = [CALayer layer];
        mask.contents = (id)[img CGImage];
        mask.frame = CGRectMake(0,0,img.size.width,img.size.height);
        _maskedPhotoImage.layer.mask = mask;
    }
    
    _topPhotoImage.hidden = NO;
    _maskedPhotoImage.hidden = NO;
    
    if(_moveImageView.hidden==NO) {
        _moveImageView.hidden = YES;
    }
    
    /*
    [self.filterPicture addTarget:self.filterGroup];
    [self.filterGroup addTarget:_filterImage];
    [self.filterPicture processImage];
    self.filterView.alpha = 0.1;*/
    
    
    [self.imagePicture1 removeAllTargets];
    //self.imagePicture1 = nil;
    
    [self.imagePicture2 removeAllTargets];
    //self.imagePicture2 = nil;
    
    if(self.flagLensOn==1) {
        NSLog(@"flagLensOn");
        maskedPhotoImage.hidden = NO;
    } else {
        NSLog(@"flagLensOff");
        _maskedPhotoImage.hidden = YES;
    }
}


- (IBAction) buttonNav01Pressed:(id)sender
{
    NSLog(@"buttonNav01 Pressed...");
    self.flagMode = 1;
    [self navButtonHidden];
    self.nav01.hidden = NO;
    
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo01";
    } else {
        self.imgFileName = @"photo01";
    }
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
        
    //if(self.flagHalfMode==1) {
    if(self.flagRetina==0) {
        self.imgFileName = @"photo01";
    } else {
        self.imgFileName = @"photo01";
    }
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
        //UIImage *srcImage2 = [UIImage imageNamed:self.imgFileName];
        
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}
- (IBAction) buttonNav02Pressed:(id)sender
{
    NSLog(@"buttonNav02 Pressed...");
    self.flagMode = 2;
    [self navButtonHidden];
    self.nav02.hidden = NO;
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo02";
    } else {
        self.imgFileName = @"photo02";
    }
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
    
    //if(self.flagHalfMode==1) {
    if(self.flagRetina==0) {
        self.imgFileName = @"photo02";
    } else {
        self.imgFileName = @"photo02";
    }
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
        
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}
- (IBAction) buttonNav03Pressed:(id)sender
{
    NSLog(@"buttonNav03 Pressed...");
    self.flagMode = 3;
    [self navButtonHidden];
    self.nav03.hidden = NO;
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo03";
    } else {
        self.imgFileName = @"photo03";
    }
    
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
        
    //if(self.flagHalfMode==1) {
        if(self.flagRetina==0) {
            self.imgFileName = @"photo03";
        } else {
            self.imgFileName = @"photo03";
        }
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
    
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}
- (IBAction) buttonNav04Pressed:(id)sender
{
    NSLog(@"buttonNav04 Pressed...");
    self.flagMode = 4;
    [self navButtonHidden];
    self.nav04.hidden = NO;
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo04";
    } else {
        self.imgFileName = @"photo04";
    }
    
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
    
    //if(self.flagHalfMode==1) {
        if(self.flagRetina==0) {
            self.imgFileName = @"photo04";
        } else {
            self.imgFileName = @"photo04";
        }
    
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
    
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}

- (IBAction) buttonNav05Pressed:(id)sender
{
    NSLog(@"buttonNav05 Pressed...");
    self.flagMode = 5;
    [self navButtonHidden];
    self.nav05.hidden = NO;
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo05";
    } else {
        self.imgFileName = @"photo05";
    }
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
        
    //if(self.flagHalfMode==1) {
    if(self.flagRetina==0) {
        self.imgFileName = @"photo05";
    } else {
        self.imgFileName = @"photo05";
    }
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
    
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}
- (IBAction) buttonNav06Pressed:(id)sender
{
    NSLog(@"buttonNav06 Pressed...");
    self.flagMode = 6;
    [self navButtonHidden];
    self.nav06.hidden = NO;
    
    if(self.flagRetina==0) {
        self.imgFileName = @"photo06";
    } else {
        self.imgFileName = @"photo06";
    }
    
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    [self.moveImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    _positionX = 256.0;
    _positionY = 192.0;
    
    _imgX = -128.0;
    _imgY = -96.0;
    
    _scrollView1.contentOffset = CGPointMake(256, 192);
    
    CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
    CGImageRelease(cliped);
        
    //if(self.flagHalfMode==1) {
        if(self.flagRetina==0) {
            self.imgFileName = @"photo06";
        } else {
            self.imgFileName = @"photo06";
        }
        path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        [_halfLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        [_halfRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    
        UIImage *srcImage2 = [[UIImage alloc] initWithContentsOfFile:path];
    
        UIImage *dstImage2 = nil;
        CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
        CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage2.CGImage, clipRect2);
        dstImage2 = [UIImage imageWithCGImage:cliped2
                                        scale:[[UIScreen mainScreen] scale]
                                  orientation:UIImageOrientationUp];
        
        self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
        CGImageRelease(cliped2);
        
    //}
    
    [self setParameter];
}

- (IBAction) buttonNav07Pressed:(id)sender
{
    /* 20160620 LASSIC追加 start */
    // カメラを許可しているか確認、許可していなければアラートを表示しカメラを起動しない
    // 一旦コメントアウト
    /*
    NSString *nssTitle = @"カメラの起動に失敗しました";
    NSString *nssMessage = @"設定 > プライバシー > カメラ から ccpsimulator を選択し、カメラへのアクセスを許可してください。";
    BOOL cameraAlert = false;
    Class class = NSClassFromString(@"UIAlertController");
    
    // iOS8以降の場合のみカメラが許可されているか確認
    // iOS7までは権限がなくてもカメラが使用できるため確認しない
    if(class) {
        // カメラの権限を確認
        AVAuthorizationStatus AVstatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        
        if (AVstatus == AVAuthorizationStatusAuthorized) {
            // カメラが使用許可されている→何もしない
        } else if (AVstatus == AVAuthorizationStatusDenied) {
                // カメラが使用許可されていない→アラート
                cameraAlert = TRUE;
        } else if (AVstatus == AVAuthorizationStatusRestricted) {
                // 機能制限→何もしない
        } else if (AVstatus == AVAuthorizationStatusNotDetermined) {
                // 初回起動時の許可設定
                [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            if (granted) {
                                // 許可された→何もしない
                            } else {
                                // 許可ダイアログ表示して戻る
                                UIAlertController *alert = nil;
                                alert = [UIAlertController alertControllerWithTitle:nssTitle
                                                                            message:nssMessage
                                                                     preferredStyle:UIAlertControllerStyleAlert];
                                [alert addAction:[UIAlertAction actionWithTitle:@"OK"
                                                                          style:UIAlertActionStyleDefault
                                                                        handler:nil]];
                                [self presentViewController:alert animated:YES completion:nil];
                                return;
                            }
                        });
                }];
        } else {
            // 想定外→起動する可能性があるので何もしない
        }

        if(cameraAlert){
            UIAlertController *alert = nil;
            alert = [UIAlertController alertControllerWithTitle:nssTitle
                                                        message:nssMessage
                                                 preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"OK"
                                                      style:UIAlertActionStyleDefault
                                                    handler:nil]];
            [self presentViewController:alert animated:YES completion:nil];
            return;
        }
    }
     */
    /* 20160620 LASSIC追加 end */
    if(self.flagHalfMode==1) {
        return;
    }
    
    if(self.flagExpMode==1) {
        //return;
        
        self.flagExpMode = 0;
        self.nav11.hidden = YES;
        _expView.hidden = YES;
    }
    
    NSLog(@"buttonNav07 Pressed...");
    self.flagMode = 7;
    [self navButtonHidden];
    self.nav07.hidden = NO;
    
    _nav_cover2.hidden = NO;
    _nav_cover3.hidden = NO;

    [self cameraMode];
    
    
    /*
    GPUImageFilter *videoFilter = [[GPUImageFilter alloc] init];
    [self.videoCamera addTarget:videoFilter];
    [videoFilter addTarget:_cameraMaskImage];
    [self.videoCamera startCameraCapture];*/
    
    /*
    GPUImageFilter *videoFilter = [[GPUImageFilter alloc] init];
    [self.videoCamera2 addTarget:videoFilter];
    [videoFilter addTarget:_cameraBackImage];
    [self.videoCamera2 startCameraCapture];*/
    
    
    //[self.videoCamera addTarget:self.filterGroup3];
    //[self.filterGroup3 addTarget:_cameraMaskImage];
    //[self.filterGroup3 useNextFrameForImageCapture];
    //[self.videoCamera startCameraCapture];
    

    
    /*
    GPUImageMaskFilter * maskFilter = [[GPUImageMaskFilter alloc] init];
    [self.videoCamera addTarget:maskFilter];
    
    self.maskGPUImage = [[GPUImagePicture alloc] initWithImage:[UIFƒImage imageNamed:@"mask2"] smoothlyScaleOutput:YES];
    [self.maskGPUImage addTarget:maskFilter];
    [self.maskGPUImage processImage];
    

    
    [maskFilter addTarget:_cameraMaskImage];
    [self.videoCamera startCameraCapture];
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    GPUImageMaskFilter *maskFilter = [[GPUImageMaskFilter alloc] init];
    [self.videoCamera addTarget:maskFilter];
    
    
    
    GPUImagePicture * maskGPUImage = [[GPUImagePicture alloc] initWithImage:[UIImage imageNamed:@"mask.png"] smoothlyScaleOutput:YES];
    [maskGPUImage addTarget:maskFilter];
    
    [maskFilter useNextFrameForImageCapture];
    
    
    [maskGPUImage processImage];
    
    [maskFilter addTarget:_cameraMaskImage];
    [self.videoCamera startCameraCapture];*/
    
    //_cameraView.hidden = NO;
    
    /*
    UIImage *inputImage = [UIImage imageNamed:@"mask.png"];
    self.sourcePicture = [[GPUImagePicture alloc] initWithImage:inputImage smoothlyScaleOutput:YES];
    [self.sourcePicture processImage];
    [self.sourcePicture addTarget:maskFilter];
    
    [maskFilter addTarget:_cameraMaskImage];
    [self.videoCamera startCameraCapture];*/
    
    /*
    [self.videoCamera addTarget:self.filterGroup];
    [self.filterGroup addTarget:_cameraMaskImage];
    [self.videoCamera startCameraCapture];
     */
    
    
}

- (void) cameraMode
{
    /*
    self.session = [[AVCaptureSession alloc] init];
    AVCaptureDevice *camera = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    self.videoInput = [[AVCaptureDeviceInput alloc] initWithDevice:camera error:nil];
    [self.session addInput:self.videoInput];
    self.stillImageOutput = [[AVCaptureStillImageOutput alloc] init];
    [self.session addOutput:self.stillImageOutput];
    AVCaptureVideoPreviewLayer *captureVideoPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
    captureVideoPreviewLayer.frame = self.view.bounds;
    captureVideoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;

    CALayer *previewLayer = _cameraBackView.layer;
    previewLayer.masksToBounds = YES;
    [previewLayer addSublayer:captureVideoPreviewLayer];
    
    [self.session startRunning];
    
    _cameraBackView.hidden = NO;
     */
    
    
    /*
    UIImage *lendsImage = [UIImage imageNamed:@"video_base"];
    self.sourcePicture = [[GPUImagePicture alloc] initWithImage:lendsImage];
    self.filterGroup3 = [[GPUImageFilterGroup alloc] init];
    [self.sourcePicture addTarget:self.filterGroup3];
    [self.filterGroup3 addTarget:_cameraLendsImage];
    [self.sourcePicture processImage];*/

    /*
    [self.videoCamera2 addTarget:self.filterGroup4];
    [self.filterGroup4 addTarget:_cameraMaskImage];
    [self.filterGroup4 useNextFrameForImageCapture];
    [self.videoCamera2 startCameraCapture];
    UIImage *currentFilteredVideo2Frame = [self.filterGroup4 imageFromCurrentFramebuffer];
    [self.cameraRawImage setImage:currentFilteredVideo2Frame];*/
    
    
    
    
    
    
    
    // 全画面に動画表示
    /*
    [self.videoCamera2 addTarget:self.filterGroup4];
    [self.filterGroup4 addTarget:_cameraBackImage];
    [self.filterGroup4 useNextFrameForImageCapture];
    [self.videoCamera2 startCameraCapture];
    _cameraBackView.hidden = NO;
    */
    
    
    
    
    /*
    UIImage *currentFilteredVideo2Frame = [self.filterGroup4 imageFromCurrentFramebuffer];
    [self.cameraRawImage setImage:currentFilteredVideo2Frame];*/
    
    //_cameraBackView.hidden = YES;
    //[self.cameraRawImage setImage:[UIImage imageNamed:@"photo06.jpg"]];
    
    
    /*[self.videoCamera2 addTarget:self.filterGroup4];
    [self.filterGroup4 addTarget:_cameraBackImage];
    [self.filterGroup4 useNextFrameForImageCapture];
    [self.videoCamera2 startCameraCapture];
    _cameraBackView.hidden = NO;*/
    
    
    /*
    // カメラデバイスの初期化
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    // 入力の初期化
    NSError *error = nil;
    AVCaptureInput *captureInput = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice
                                                                         error:&error];
    
    if (!captureInput) {
        NSLog(@"ERROR:%@", error);
        return;
    }
    
    // セッション初期化
    AVCaptureSession *captureSession = [[AVCaptureSession alloc] init];
    [captureSession addInput:captureInput];
    [captureSession beginConfiguration];
    captureSession.sessionPreset = AVCaptureSessionPresetPhoto;
    [captureSession commitConfiguration];
    
    // プレビュー表示
    AVCaptureVideoPreviewLayer *previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:captureSession];
    previewLayer.automaticallyAdjustsMirroring = NO;
    previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    previewLayer.frame = self.view.bounds;
    [self.cameraBackView.layer insertSublayer:previewLayer atIndex:0];
    
    // 出力の初期化
    self.imageOutput = [[AVCaptureStillImageOutput alloc] init];
    [captureSession addOutput:self.imageOutput];
    
    // セッション開始
    [captureSession startRunning];
    _cameraBackView.hidden = NO;*/
    
    

    
    /*
    [self.videoCamera addTarget:self.filterGroup2];
    [self.filterGroup2 addTarget:_cameraBackImage];
    [self.filterGroup3 useNextFrameForImageCapture];
    [self.videoCamera startCameraCapture];
    */
    
    
    
    // フィルターマスク後の動画表示
    /*
    [self.videoCamera addTarget:self.filterGroup3];
    [self.filterGroup3 addTarget:_cameraMaskImage];
    [self.filterGroup3 useNextFrameForImageCapture];
    [self.videoCamera startCameraCapture];
    _cameraView.hidden = YES;
    */
    

    
    
    
    
    
    
    /*
    UIImage *currentFilteredVideoFrame = [self.filterGroup3 imageFromCurrentFramebuffer];
    [self.cameraFrontImage setImage:currentFilteredVideoFrame];*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    _videoView.hidden = NO;
    //デバイス取得
    self.device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    //入力作成
    self.deviceInput = [AVCaptureDeviceInput deviceInputWithDevice:self.device error:NULL];
    
    //ビデオデータ出力作成
    NSDictionary* settings = @{(id)kCVPixelBufferPixelFormatTypeKey:[NSNumber numberWithInt:kCVPixelFormatType_32BGRA]};
    self.dataOutput = [[AVCaptureVideoDataOutput alloc] init];
    self.dataOutput.videoSettings = settings;
    [self.dataOutput setSampleBufferDelegate:self queue:dispatch_get_main_queue()];
    
    //セッション作成
    self.session = [[AVCaptureSession alloc] init];
    [self.session addInput:self.deviceInput];
    [self.session addOutput:self.dataOutput];
    //self.session.sessionPreset = AVCaptureSessionPresetHigh;
    self.session.sessionPreset = AVCaptureSessionPresetMedium;
    
    self.videoConnection = NULL;
    
    // カメラの向きなどを設定する
    [self.session beginConfiguration];
    
    for ( AVCaptureConnection *connection in [self.dataOutput connections] )
    {
        for ( AVCaptureInputPort *port in [connection inputPorts] )
        {
            if ( [[port mediaType] isEqual:AVMediaTypeVideo] )
            {
                self.videoConnection = connection;
                
            }
        }
    }
    if([self.videoConnection isVideoOrientationSupported]) // **Here it is, its always false**
    {
        //[videoConnection setVideoOrientation:AVCaptureVideoOrientationPortrait];
        
        if(self.flagRotate==1) {
            [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationLandscapeLeft];
        } else {
            [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationLandscapeRight];
        }
    }
    
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    switch (orientation) {
        case UIInterfaceOrientationLandscapeRight:
            self.flagRotate = 0;
            break;
        case UIInterfaceOrientationLandscapeLeft:
            self.flagRotate = 1;
            break;
        case UIInterfaceOrientationPortrait:
            self.flagRotate = 2;
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            self.flagRotate = 3;
            break;
        default:
            self.flagRotate = 0;
            break;
    }
    if(self.flagRotate==1) {
        [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationLandscapeLeft];
    } else {
        [self.videoConnection setVideoOrientation:AVCaptureVideoOrientationLandscapeRight];
    }
    
    [self.session commitConfiguration];
    // セッションをスタートする
    [self.session startRunning];
    
}
- (IBAction) buttonNav11Pressed:(id)sender
{
    NSLog(@"buttonNav11 Pressed...");
    
    if(self.flagHelp == 1) {
        return;
    }
    if(self.flagInitial == 1) {
        return;
    }
    
    //self.flagMode = 11;
    //[self navButtonHidden];
    if(self.stepNumber<1) {
        self.stepNumber = 1;
    }
    NSLog(@"stepNum %d", self.stepNumber);
    
    if((self.flagMode>0) && (self.flagMode<7)) {
        if(self.flagExpMode==0) {
            self.flagExpMode = 1;
            self.nav11.hidden = NO;
            //self.nav_cover.hidden = NO;
            _expView.hidden = NO;
        } else {
            self.flagExpMode = 0;
            self.nav11.hidden = YES;
            self.nav_cover.hidden = YES;
            _expView.hidden = YES;
        }
    }
    
    
}
- (IBAction) buttonNav12Pressed:(id)sender
{
    NSLog(@"buttonNav12 Pressed...");
    
    if((self.flagMode == 7) || (self.flagHelp == 1)) {
        return;
    }
    
    if(self.flagInitial == 1) {
        return;
    }
    
    //self.flagMode = 12;
    //[self navButtonHidden];
    
    
    
    if(self.flagHalfMode==0) {
        self.flagHalfMode = 1;
        self.nav12.hidden = NO;
        self.nav_cover.hidden = NO;
        
        _selectorView.hidden = YES;
        _selectorView2.hidden = NO;
        
        _halfLeftMainView.hidden = NO;
        _halfRightMainView.hidden = NO;
        
        //_halfLeftView.hidden = NO;
        //_halfRightView.hidden = NO;
        
        _largeFrameView.hidden = YES;
        _halfFrameView.hidden = NO;
        
        _infoLeftImage.hidden = NO;

        /*
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        self.target2 = [defaults integerForKey:@"targetHalf"];
        [self changeRightInfo:self.target2];
        */
        
        self.flagHalfCat = self.flagLargeCat;
        self.flagHalfLeftCat = self.flagLargeCat;
        
        // 左レンズデータに強制的にあわせる
        self.target2 = self.targetNo;
        [self updateRightLends];
    } else {
        self.flagHalfMode = 0;
        self.nav12.hidden = YES;
        self.nav_cover.hidden = YES;
        
        _flagRightMode = 0;
        _flagSelector2 = 0;
        
        _selectorView.hidden = NO;
        _selectorView2.hidden = YES;
        
        _halfLeftMainView.hidden = YES;
        _halfRightMainView.hidden = YES;
        
        //_halfLeftView.hidden = YES;
        //_halfRightView.hidden = YES;
        
        _largeFrameView.hidden = NO;
        _halfFrameView.hidden = YES;
        
        _infoLeftImage.hidden = YES;
        
        _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        
        self.flagLargeCat = self.flagHalfLeftCat;

        [self changeRightInfo:self.targetNo];
        
    }
    
    [self setParameter];
    
    
}
- (IBAction) buttonNav13Pressed:(id)sender
{
    NSLog(@"buttonNav13 Pressed...");
    //self.flagMode = 13;
    [self navButtonHidden];
    
    
    if(self.flagHalfMode==1) {
        self.flagHalfMode = 0;
        self.nav12.hidden = YES;
    
        _selectorView.hidden = NO;
        _selectorView2.hidden = YES;
    
        _halfLeftMainView.hidden = YES;
        _halfRightMainView.hidden = YES;
    
        _largeFrameView.hidden = NO;
        _halfFrameView.hidden = YES;
    
        _infoLeftImage.hidden = YES;
    
        _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    
        [self changeRightInfo:self.targetNo];
        [self setParameter];
    
    }






    self.flagExpMode = 0;
    self.nav11.hidden = YES;
    _expView.hidden = YES;
    self.stepNumber = 1;
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"exp01" ofType:@"png"];
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:path];
    [_expImage setImage:image];
    
    self.exposure = 0;
    [self.exposureFilter2 setExposure:0];
    if(self.ratio>0) {
        [self.exposureFilter setExposure:0];
    }
    [self drawLargeImage];
    
    
    
    self.nav13.hidden = NO;
    
    
    //path = [[NSBundle mainBundle] pathForResource:@"loading" ofType:@"png"];
    //[self.initialImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];

    _nav_cover.hidden = YES;
    _initialView.hidden = NO;
    self.flagInitial = 1;
}
- (IBAction) buttonNav14Pressed:(id)sender
{
    NSLog(@"buttonNav14 Pressed...");
    //self.flagMode = 14;
    [self navButtonHidden];
    self.nav14.hidden = NO;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:0 forKey:@"url"];
    //BOOL successful = [defaults synchronize];
    [defaults synchronize];
    
    WebViewController *webview = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    [self presentViewController:webview animated:YES completion:nil];
    
    self.nav14.hidden = YES;
    self.flagWebView = 1;
}
- (IBAction) buttonNav15Pressed:(id)sender
{
    NSLog(@"buttonNav15 Pressed...");
    //self.flagMode = 15;
    [self navButtonHidden];
    self.nav15.hidden = NO;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:1 forKey:@"url"];
    //BOOL successful = [defaults synchronize];
    [defaults synchronize];
    
    WebViewController *webview = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    [self presentViewController:webview animated:YES completion:nil];
    
    self.nav15.hidden = YES;
    self.flagWebView = 1;
}
- (IBAction) buttonNav16Pressed:(id)sender
{
    NSLog(@"buttonNav16 Pressed...");
    //self.flagMode = 16;buttonNav07 Pressed...
    //[self navButtonHidden];
    
    if(self.flagHelp==0) {

        //NSString *path= [[NSBundle mainBundle] pathForResource:@"help2" ofType:@"png"];
        //[self.helpImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        
        self.flagHelp = 1;
       // self.nav16.hidden = NO;
        _helpView.hidden = NO;
    } else {
        self.flagHelp = 0;
        //self.helpImage = nil;
        //self.helpImage.image = nil;
     //   self.nav16.hidden = YES;
        _helpView.hidden = YES;
    }
    
    
    
    
}
- (IBAction) buttonNav17Pressed:(id)sender
{
    NSLog(@"buttonNav17 Pressed...");
    
    if(self.flagHelp == 1) {
        return;
    }
    if(self.flagInitial == 1) {
        return;
    }
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"nav17_off" ofType:@"png"];
    
    if(self.flagLensOn==1) {
        self.flagLensOn = 0;
        path= [[NSBundle mainBundle] pathForResource:@"nav17_off" ofType:@"png"];
        [_nav17 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        _maskedPhotoImage.hidden = YES;
        _halfLeftMaskedImage.hidden = YES;
        _halfRightMaskedImage.hidden = YES;
        _videoFrontImage.hidden = YES;
    } else {
        self.flagLensOn = 1;
        path= [[NSBundle mainBundle] pathForResource:@"nav17" ofType:@"png"];
        [_nav17 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
        _maskedPhotoImage.hidden = NO;
        _halfLeftMaskedImage.hidden = NO;
        _halfRightMaskedImage.hidden = NO;
        _videoFrontImage.hidden = NO;
    }
    /*self.flagMode = 16;
    [self navButtonHidden];
    self.nav16.hidden = NO;
    
    _helpView.hidden = NO;
    */
}

- (void) navButtonHidden {
    [self teardownVideo];
    
    _helpView.hidden = YES;
    _initialView.hidden = YES;
    _cameraView.hidden = YES;
    _cameraBackView.hidden = YES;
    _videoView.hidden = YES;
    
    _nav_cover2.hidden = YES;
    _nav_cover3.hidden = YES;
    
    //self.initialImage = nil;
    //self.initialImage.image = nil;
    //self.helpImage = nil;
    //self.helpImage.image = nil;
    
//    self.nav01.hidden = YES;
//    self.nav02.hidden = YES;
//    self.nav03.hidden = YES;
//    self.nav04.hidden = YES;
//    self.nav05.hidden = YES;
//    self.nav06.hidden = YES;
//    self.nav07.hidden = YES;
    
    self.nav11.hidden = YES;
    //self.nav12.hidden = YES;
    self.nav13.hidden = YES;
    self.nav14.hidden = YES;
    self.nav15.hidden = YES;
    //self.nav16.hidden = YES;
    
    if(self.flagHalfMode==0) {
        self.nav12.hidden = YES;
    } else {
        self.nav12.hidden = NO;
    }
    
    self.flagInitial = 0;
    
    /*
    if(self.flagHelp==1) {
        self.flagHelp = 0;
    }*/
    
}

- (void) teardownVideo {
    if(self.session!=nil) {
        [self.session stopRunning];
        
        for (AVCaptureOutput *output in self.session.outputs) {
            [self.session removeOutput:output];
        }
        for (AVCaptureInput *input in self.session.inputs) {
            [self.session removeInput:input];
        }
        
        self.device = nil;
        self.deviceInput = nil;
        self.dataOutput = nil;
        self.videoConnection = nil;
        self.session = nil;
    }
}

- (IBAction) buttonLends01Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==0) {
            return;
        }
    } else {
        if(self.target2==0) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends01.hidden = NO;
    self.lends_text01.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:0 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:0 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends02Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==1) {
            return;
        }
    } else {
        if(self.target2==1) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends02.hidden = NO;
    self.lends_text02.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:1 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:1 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends03Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==2) {
            return;
        }
    } else {
        if(self.target2==2) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends03.hidden = NO;
    self.lends_text03.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:2 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:2 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends04Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==3) {
            return;
        }
    } else {
        if(self.target2==3) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends04.hidden = NO;
    self.lends_text04.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:3 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:3 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends05Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==4) {
            return;
        }
    } else {
        if(self.target2==4) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends05.hidden = NO;
    self.lends_text05.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:4 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:4 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends06Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==5) {
            return;
        }
    } else {
        if(self.target2==5) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends06.hidden = NO;
    self.lends_text06.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:5 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:5 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends07Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==6) {
            return;
        }
    } else {
        if(self.target2==6) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends07.hidden = NO;
    self.lends_text07.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:6 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:6 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends08Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==7) {
            return;
        }
    } else {
        if(self.target2==7) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends08.hidden = NO;
    self.lends_text08.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:7 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:7 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends09Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==8) {
            return;
        }
    } else {
        if(self.target2==8) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends09.hidden = NO;
    self.lends_text09.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:8 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:8 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends10Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==9) {
            return;
        }
    } else {
        if(self.target2==9) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends10.hidden = NO;
    self.lends_text10.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:9 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:9 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends11Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==10) {
            return;
        }
    } else {
        if(self.target2==10) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends11.hidden = NO;
    self.lends_text11.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:10 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:10 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends12Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==11) {
            return;
        }
    } else {
        if(self.target2==11) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends12.hidden = NO;
    self.lends_text12.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:11 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:11 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends13Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==12) {
            return;
        }
    } else {
        if(self.target2==12) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends13.hidden = NO;
    self.lends_text13.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:12 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:12 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends14Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==13) {
            return;
        }
    } else {
        if(self.target2==13) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends14.hidden = NO;
    self.lends_text14.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:13 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:13 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends15Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==14) {
            return;
        }
    } else {
        if(self.target2==14) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends15.hidden = NO;
    self.lends_text15.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:14 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:14 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends16Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==15) {
            return;
        }
    } else {
        if(self.target2==15) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends16.hidden = NO;
    self.lends_text16.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:15 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:15 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends17Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==16) {
            return;
        }
    } else {
        if(self.target2==16) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends17.hidden = NO;
    self.lends_text17.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:16 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:16 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends18Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==17) {
            return;
        }
    } else {
        if(self.target2==17) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends18.hidden = NO;
    self.lends_text18.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:17 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:17 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends19Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==18) {
            return;
        }
    } else {
        if(self.target2==18) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends19.hidden = NO;
    self.lends_text19.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:18 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:18 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends20Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>1) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==19) {
            return;
        }
    } else {
        if(self.target2==19) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends20.hidden = NO;
    self.lends_text20.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:19 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:19 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends21Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==20) {
            return;
        }
    } else {
        if(self.target2==20) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends21.hidden = NO;
    self.lends_text21.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:20 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:20 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends22Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==21) {
            return;
        }
    } else {
        if(self.target2==21) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends22.hidden = NO;
    self.lends_text22.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:21 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:21 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends23Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    if(self.flagLargeCat>0) {
        return;
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==22) {
            return;
        }
    } else {
        if(self.target2==22) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends23.hidden = NO;
    self.lends_text23.hidden = NO;
    
    if(self.flagRightMode==0) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:22 forKey:@"target"];
    //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:22 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends24Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    /*
    if(self.flagLargeCat>0) {
        return;
    }*/
    
    if(self.flagRightMode==0) {
        if(self.targetNo==23) {
            return;
        }
    } else {
        if(self.target2==23) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends24.hidden = NO;
    self.lends_text24.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:23 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:23 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends25Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    /*if(self.flagLargeCat>0) {
        return;
    }*/
    
    if(self.flagRightMode==0) {
        if(self.targetNo==24) {
            return;
        }
    } else {
        if(self.target2==24) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends25.hidden = NO;
    self.lends_text25.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:24 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:24 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}
- (IBAction) buttonLends26Pressed:(id)sender
{
    NSLog(@"buttonLends01Pressed Pressed...");
    
    /*if(self.flagLargeCat>0) {
        return;
    }*/
    
    if(self.flagRightMode==0) {
        if(self.targetNo==25) {
            return;
        }
    } else {
        if(self.target2==25) {
            return;
        }
    }
    
    [self lendsSelectHidden];
    self.lends26.hidden = NO;
    self.lends_text26.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:25 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:25 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends];
}

- (IBAction) buttonHalf01Pressed:(id)sender
{
    
    NSLog(@"buttonHalf01Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==0) {
            return;
        }
    } else {
        if(self.target2==0) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends01.hidden = NO;
    self.halfLends_text01.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:0 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:0 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf02Pressed:(id)sender
{
    NSLog(@"buttonHalf02Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==1) {
            return;
        }
    } else {
        if(self.target2==1) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends02.hidden = NO;
    self.halfLends_text02.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:1 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:1 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf03Pressed:(id)sender
{
    NSLog(@"buttonHalf03Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==2) {
            return;
        }
    } else {
        if(self.target2==2) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends03.hidden = NO;
    self.halfLends_text03.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:2 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:2 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf04Pressed:(id)sender
{
    NSLog(@"buttonHalf04Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==3) {
            return;
        }
    } else {
        if(self.target2==3) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends04.hidden = NO;
    self.halfLends_text04.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:3 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:3 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf05Pressed:(id)sender
{
    NSLog(@"buttonHalf05Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==4) {
            return;
        }
    } else {
        if(self.target2==4) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends05.hidden = NO;
    self.halfLends_text05.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:4 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:4 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf06Pressed:(id)sender
{
    NSLog(@"buttonHalf06Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==5) {
            return;
        }
    } else {
        if(self.target2==5) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends06.hidden = NO;
    self.halfLends_text06.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:5 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:5 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf07Pressed:(id)sender
{
    NSLog(@"buttonHalf07Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==6) {
            return;
        }
    } else {
        if(self.target2==6) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends07.hidden = NO;
    self.halfLends_text07.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:6 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:6 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf08Pressed:(id)sender
{
    NSLog(@"buttonHalf08Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==7) {
            return;
        }
    } else {
        if(self.target2==7) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends08.hidden = NO;
    self.halfLends_text08.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:7 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:7 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf09Pressed:(id)sender
{
    NSLog(@"buttonHalf09Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==8) {
            return;
        }
    } else {
        if(self.target2==8) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends09.hidden = NO;
    self.halfLends_text09.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:8 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:8 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf10Pressed:(id)sender
{
    NSLog(@"buttonHalf10Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==9) {
            return;
        }
    } else {
        if(self.target2==9) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends10.hidden = NO;
    self.halfLends_text10.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:9 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:9 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf11Pressed:(id)sender
{
    NSLog(@"buttonHalf11Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==10) {
            return;
        }
    } else {
        if(self.target2==10) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends11.hidden = NO;
    self.halfLends_text11.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:10 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:10 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf12Pressed:(id)sender
{
    NSLog(@"buttonHalf12Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==11) {
            return;
        }
    } else {
        if(self.target2==11) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends12.hidden = NO;
    self.halfLends_text12.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:11 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:11 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf13Pressed:(id)sender
{
    NSLog(@"buttonHalf13Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==12) {
            return;
        }
    } else {
        if(self.target2==12) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends13.hidden = NO;
    self.halfLends_text13.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:12 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:12 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf14Pressed:(id)sender
{
    NSLog(@"buttonHalf14Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==13) {
            return;
        }
    } else {
        if(self.target2==13) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends14.hidden = NO;
    self.halfLends_text14.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:13 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:13 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf15Pressed:(id)sender
{
    NSLog(@"buttonHalf15Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==14) {
            return;
        }
    } else {
        if(self.target2==14) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends15.hidden = NO;
    self.halfLends_text15.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:14 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:14 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf16Pressed:(id)sender
{
    NSLog(@"buttonHalf16Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==15) {
            return;
        }
    } else {
        if(self.target2==15) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends16.hidden = NO;
    self.halfLends_text16.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:15 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:15 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf17Pressed:(id)sender
{
    NSLog(@"buttonHalf17Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==16) {
            return;
        }
    } else {
        if(self.target2==16) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends17.hidden = NO;
    self.halfLends_text17.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:16 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:16 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf18Pressed:(id)sender
{
    NSLog(@"buttonHalf18Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.targetNo==17) {
            return;
        }
    } else {
        if(self.target2==17) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends18.hidden = NO;
    self.halfLends_text18.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:17 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:17 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf19Pressed:(id)sender
{
    NSLog(@"buttonHalf19Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==18) {
            return;
        }
    } else {
        if(self.target2==18) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends19.hidden = NO;
    self.halfLends_text19.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:18 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:18 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf20Pressed:(id)sender
{
    NSLog(@"buttonHalf20Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>1) {
            return;
        }
    } else {
        if(self.flagHalfCat>1) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==19) {
            return;
        }
    } else {
        if(self.target2==19) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends20.hidden = NO;
    self.halfLends_text20.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:19 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:19 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf21Pressed:(id)sender
{
    NSLog(@"buttonHalf21Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==20) {
            return;
        }
    } else {
        if(self.target2==20) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends21.hidden = NO;
    self.halfLends_text21.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:20 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:20 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf22Pressed:(id)sender
{
    NSLog(@"buttonHalf22Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==21) {
            return;
        }
    } else {
        if(self.target2==21) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends22.hidden = NO;
    self.halfLends_text22.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:21 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:21 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf23Pressed:(id)sender
{
    NSLog(@"buttonHalf23Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==22) {
            return;
        }
    } else {
        if(self.target2==22) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends23.hidden = NO;
    self.halfLends_text23.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:22 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:22 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}
- (IBAction) buttonHalf24Pressed:(id)sender
{
    
    self.flagHalfLeftCat = 0;
    self.flagHalfCat = 0;
    
    NSLog(@"buttonHalf24Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==23) {
            return;
        }
    } else {
        if(self.target2==23) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends24.hidden = NO;
    self.halfLends_text24.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:23 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:23 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}

- (IBAction) buttonHalf25Pressed:(id)sender
{
    self.flagHalfLeftCat = 0;
    self.flagHalfCat = 0;
    NSLog(@"buttonHalf25Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==24) {
            return;
        }
    } else {
        if(self.target2==24) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends25.hidden = NO;
    self.halfLends_text25.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:24 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:24 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}
- (IBAction) buttonHalf26Pressed:(id)sender
{
    self.flagHalfLeftCat = 0;
    self.flagHalfCat = 0;
    NSLog(@"buttonHalf26Pressed Pressed...");
    
    if(self.flagRightMode==0) {
        if(self.flagHalfLeftCat>0) {
            return;
        }
    } else {
        if(self.flagHalfCat>0) {
            return;
        }
    }
    
    if(self.flagRightMode==0) {
        if(self.targetNo==25) {
            return;
        }
    } else {
        if(self.target2==25) {
            return;
        }
    }
    
    [self lendsSelectHidden2];
    self.halfLends26.hidden = NO;
    self.halfLends_text26.hidden = NO;
    
    if(self.flagRightMode==0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:25 forKey:@"target"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:25 forKey:@"targetHalf"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    [self updateLends2];
}
- (void) updateLends {
    NSLog(@"updateLends");
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tmpTarget = [defaults integerForKey:@"target"];
    
    if(tmpTarget != self.targetNo) {
        NSLog(@"Data Changed!!!");
        self.targetNo = tmpTarget;
        
        [self changeLeftInfo:self.targetNo];
        [self changeRightInfo:self.targetNo];
        
        NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
        NSArray *phrases = [[mArray objectAtIndex:self.targetNo] componentsSeparatedByString:@"<>"];
        
        self.dataTitle = [phrases objectAtIndex:1];
        self.red = [[phrases objectAtIndex:2] floatValue];
        self.green = [[phrases objectAtIndex:3] floatValue];
        self.blue = [[phrases objectAtIndex:4] floatValue];
        self.contrast = [[phrases objectAtIndex:5] floatValue];
        //self.exposure = [[phrases objectAtIndex:6] floatValue];
        self.ratio = [[phrases objectAtIndex:8] floatValue];
        
        NSLog(@"red: %f, green: %f, blue: %f", self.red, self.green, self.blue);
        
        _saveTextField.text = self.dataTitle;
        
        self.flagVisible = 1;
        _mainFrontImage.hidden = NO;
        [_onoffButton setTitle:@"On" forState:UIControlStateNormal];
        
        if(self.flagInitial==1) {
            //self.imgFileName = @"photo01";
            if(self.flagRetina==0) {
                self.imgFileName = @"photo01";
            } else {
                self.imgFileName = @"photo01";
            }
            _initialView.hidden = YES;
            self.flagInitial = 0;
            
            self.flagMode = 1;
            [self navButtonHidden];
            self.nav01.hidden = NO;
            
        }
        
        if(self.imgFileName == nil) {
            //self.imgFileName = @"photo01";
            if(self.flagRetina==0) {
                self.imgFileName = @"photo01";
            } else {
                self.imgFileName = @"photo01";
            }
        }
        
        NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
        
        //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
        UIImage *dstImage = nil;
        
        CGRect clipRect = CGRectMake(_positionX, _positionY, 2048, 1536);
        CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
        dstImage = [UIImage imageWithCGImage:cliped
                                       scale:[[UIScreen mainScreen] scale]
                                 orientation:UIImageOrientationUp];
        
        
        self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
        self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
        CGImageRelease(cliped);
        
        _flagSelector1 = 0;
        _flagSelector2 = 0;
        _selectorView.frame = CGRectMake(0, 715, 1024, 500);
        
        _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        
        [self setParameter];
    }
}

- (void) updateLends2 {
    NSLog(@"updateLends2");
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tmpTarget = [defaults integerForKey:@"target"];
    if(self.flagRightMode==1) {
        tmpTarget = [defaults integerForKey:@"targetHalf"];
        
        if(tmpTarget != self.target2) {
            NSLog(@"Data Changed!!!");
            self.target2 = tmpTarget;

            [self changeRightInfo:self.target2];
            
            NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
            NSArray *phrases = [[mArray objectAtIndex:self.target2] componentsSeparatedByString:@"<>"];

            self.red2 = [[phrases objectAtIndex:2] floatValue];
            self.green2 = [[phrases objectAtIndex:3] floatValue];
            self.blue2 = [[phrases objectAtIndex:4] floatValue];
            self.contrast2 = [[phrases objectAtIndex:5] floatValue];
            //self.exposure2 = [[phrases objectAtIndex:6] floatValue];
            self.ratio2 = [[phrases objectAtIndex:8] floatValue];
            
            NSLog(@"red: %f, green: %f, blue: %f", self.red, self.green, self.blue);

            
            if(self.imgFileName == nil) {
                //self.imgFileName = @"photo01";
                if(self.flagRetina==0) {
                    self.imgFileName = @"photo01";
                } else {
                    self.imgFileName = @"photo01";
                }
            }
            
            NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
            UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
            //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
            
            UIImage *dstImage2 = nil;
            CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
            CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect2);
            dstImage2 = [UIImage imageWithCGImage:cliped2
                                            scale:[[UIScreen mainScreen] scale]
                                      orientation:UIImageOrientationUp];
            
            self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            CGImageRelease(cliped2);
            
            _flagSelector1 = 0;
            _flagSelector2 = 0;
            path= [[NSBundle mainBundle] pathForResource:@"selector2" ofType:@"png"];
            [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
          //  _selectorView2.frame = CGRectMake(0, 726, 1024, 416);
            
            _selectorView2.frame = CGRectMake(0, 715, 1024, 500);

            
            _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
            _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        }
    } else {
        if(tmpTarget != self.targetNo) {
            NSLog(@"Data Changed!!!");
            self.targetNo = tmpTarget;
            
            [self changeLeftInfo:self.targetNo];
            
            NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
            NSArray *phrases = [[mArray objectAtIndex:self.targetNo] componentsSeparatedByString:@"<>"];
            
            self.dataTitle = [phrases objectAtIndex:1];
            self.red = [[phrases objectAtIndex:2] floatValue];
            self.green = [[phrases objectAtIndex:3] floatValue];
            self.blue = [[phrases objectAtIndex:4] floatValue];
            self.contrast = [[phrases objectAtIndex:5] floatValue];
            //self.exposure = [[phrases objectAtIndex:6] floatValue];
            self.ratio = [[phrases objectAtIndex:8] floatValue];
            
            
            if(self.imgFileName == nil) {
                //self.imgFileName = @"photo01";
                if(self.flagRetina==0) {
                    self.imgFileName = @"photo01";
                } else {
                    self.imgFileName = @"photo01";
                }
            }
            
            NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
            UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
            //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
            
            UIImage *dstImage2 = nil;
            CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
            CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect2);
            dstImage2 = [UIImage imageWithCGImage:cliped2
                                            scale:[[UIScreen mainScreen] scale]
                                      orientation:UIImageOrientationUp];
            
            self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            CGImageRelease(cliped2);
            
            _flagSelector1 = 0;
            _flagSelector2 = 0;
            path= [[NSBundle mainBundle] pathForResource:@"selector2" ofType:@"png"];
            [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            //[self.selector2 setImage:[UIImage imageNamed:@"selector2.png"]];
           // _selectorView2.frame = CGRectMake(0, 726, 1024, 416);
            
            _selectorView2.frame = CGRectMake(0, 715, 1024, 500);

            
            _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
            _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
        }
    }
    
    [self lendsSelectHidden2];
    [self setParameter];
}

- (void) updateRightLends {
    
    [self changeRightInfo:self.target2];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *mArray = [defaults arrayForKey:@"LendsList"];
    NSArray *phrases = [[mArray objectAtIndex:self.target2] componentsSeparatedByString:@"<>"];
    
    self.red2 = [[phrases objectAtIndex:2] floatValue];
    self.green2 = [[phrases objectAtIndex:3] floatValue];
    self.blue2 = [[phrases objectAtIndex:4] floatValue];
    self.contrast2 = [[phrases objectAtIndex:5] floatValue];
    //self.exposure2 = [[phrases objectAtIndex:6] floatValue];
    self.ratio2 = [[phrases objectAtIndex:8] floatValue];
    
    NSLog(@"red: %f, green: %f, blue: %f", self.red, self.green, self.blue);
    
    
    if(self.imgFileName == nil) {
        //self.imgFileName = @"photo01";
        if(self.flagRetina==0) {
            self.imgFileName = @"photo01";
        } else {
            self.imgFileName = @"photo01";
        }
    }
    NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
    UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    
    UIImage *dstImage2 = nil;
    CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
    CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect2);
    dstImage2 = [UIImage imageWithCGImage:cliped2
                                    scale:[[UIScreen mainScreen] scale]
                              orientation:UIImageOrientationUp];
    
    self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
    CGImageRelease(cliped2);
    
    _flagSelector1 = 0;
    _flagSelector2 = 0;
    path= [[NSBundle mainBundle] pathForResource:@"selector2" ofType:@"png"];
    [self.selector2 setImage:[[UIImage alloc] initWithContentsOfFile:path]];
    //[self.selector2 setImage:[UIImage imageNamed:@"selector2.png"]];
  //  _selectorView2.frame = CGRectMake(0, 726, 1024, 416);
    
    _selectorView2.frame = CGRectMake(0, 715, 1024, 500);
    
    _infoLeftImage.frame = CGRectMake(284, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    _infoRightImage.frame = CGRectMake(796, 528, _infoLeftImage.frame.size.width, _infoLeftImage.frame.size.height);
    
    [self setParameter];
}

- (void) lendsSelectHidden {
    self.lends01.hidden = YES;
    self.lends02.hidden = YES;
    self.lends03.hidden = YES;
    self.lends04.hidden = YES;
    self.lends05.hidden = YES;
    self.lends06.hidden = YES;
    self.lends07.hidden = YES;
    self.lends08.hidden = YES;
    self.lends09.hidden = YES;
    self.lends10.hidden = YES;
    self.lends11.hidden = YES;
    self.lends12.hidden = YES;
    self.lends13.hidden = YES;
    self.lends14.hidden = YES;
    self.lends15.hidden = YES;
    self.lends16.hidden = YES;
    self.lends17.hidden = YES;
    self.lends18.hidden = YES;
    self.lends19.hidden = YES;
    self.lends20.hidden = YES;
    self.lends21.hidden = YES;
    self.lends22.hidden = YES;
    self.lends23.hidden = YES;
    self.lends24.hidden = YES;
    self.lends25.hidden = YES;
    self.lends26.hidden = YES;


    
    self.lends_text01.hidden = YES;
    self.lends_text02.hidden = YES;
    self.lends_text03.hidden = YES;
    self.lends_text04.hidden = YES;
    self.lends_text05.hidden = YES;
    self.lends_text06.hidden = YES;
    self.lends_text07.hidden = YES;
    self.lends_text08.hidden = YES;
    self.lends_text09.hidden = YES;
    self.lends_text10.hidden = YES;
    self.lends_text11.hidden = YES;
    self.lends_text12.hidden = YES;
    self.lends_text13.hidden = YES;
    self.lends_text14.hidden = YES;
    self.lends_text15.hidden = YES;
    self.lends_text16.hidden = YES;
    self.lends_text17.hidden = YES;
    self.lends_text18.hidden = YES;
    self.lends_text19.hidden = YES;
    self.lends_text20.hidden = YES;
    self.lends_text21.hidden = YES;
    self.lends_text22.hidden = YES;
    self.lends_text23.hidden = YES;
    self.lends_text24.hidden = YES;
    self.lends_text25.hidden = YES;
    self.lends_text26.hidden = YES;


    
    
}

- (void) lendsSelectHidden2 {
    self.halfLends01.hidden = YES;
    self.halfLends02.hidden = YES;
    self.halfLends03.hidden = YES;
    self.halfLends04.hidden = YES;
    self.halfLends05.hidden = YES;
    self.halfLends06.hidden = YES;
    self.halfLends07.hidden = YES;
    self.halfLends08.hidden = YES;
    self.halfLends09.hidden = YES;
    self.halfLends10.hidden = YES;
    self.halfLends11.hidden = YES;
    self.halfLends12.hidden = YES;
    self.halfLends13.hidden = YES;
    self.halfLends14.hidden = YES;
    self.halfLends15.hidden = YES;
    self.halfLends16.hidden = YES;
    self.halfLends17.hidden = YES;
    self.halfLends18.hidden = YES;
    self.halfLends19.hidden = YES;
    self.halfLends20.hidden = YES;
    self.halfLends21.hidden = YES;
    self.halfLends22.hidden = YES;
    self.halfLends23.hidden = YES;
    self.halfLends24.hidden = YES;
     self.halfLends25.hidden = YES;
     self.halfLends26.hidden = YES;
    
    self.halfLends_text01.hidden = YES;
    self.halfLends_text02.hidden = YES;
    self.halfLends_text03.hidden = YES;
    self.halfLends_text04.hidden = YES;
    self.halfLends_text05.hidden = YES;
    self.halfLends_text06.hidden = YES;
    self.halfLends_text07.hidden = YES;
    self.halfLends_text08.hidden = YES;
    self.halfLends_text09.hidden = YES;
    self.halfLends_text10.hidden = YES;
    self.halfLends_text11.hidden = YES;
    self.halfLends_text12.hidden = YES;
    self.halfLends_text13.hidden = YES;
    self.halfLends_text14.hidden = YES;
    self.halfLends_text15.hidden = YES;
    self.halfLends_text16.hidden = YES;
    self.halfLends_text17.hidden = YES;
    self.halfLends_text18.hidden = YES;
    self.halfLends_text19.hidden = YES;
    self.halfLends_text20.hidden = YES;
    self.halfLends_text21.hidden = YES;
    self.halfLends_text22.hidden = YES;
    self.halfLends_text23.hidden = YES;
     self.halfLends_text24.hidden = YES;
     self.halfLends_text25.hidden = YES;
     self.halfLends_text26.hidden = YES;
}

- (void) changeLendsSelector {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tmpTarget = [defaults integerForKey:@"target"];
    
    [self lendsSelectHidden];
    
    switch (tmpTarget) {
        case 0:
            self.lends01.hidden = NO;
            self.lends_text01.hidden = NO;
            break;
        case 1:
            self.lends02.hidden = NO;
            self.lends_text02.hidden = NO;
            break;
        case 2:
            self.lends03.hidden = NO;
            self.lends_text03.hidden = NO;
            break;
        case 3:
            self.lends04.hidden = NO;
            self.lends_text04.hidden = NO;
            break;
        case 4:
            self.lends05.hidden = NO;
            self.lends_text05.hidden = NO;
            break;
        case 5:
            self.lends06.hidden = NO;
            self.lends_text06.hidden = NO;
            break;
        case 6:
            self.lends07.hidden = NO;
            self.lends_text07.hidden = NO;
            break;
        case 7:
            self.lends08.hidden = NO;
            self.lends_text08.hidden = NO;
            break;
        case 8:
            self.lends09.hidden = NO;
            self.lends_text09.hidden = NO;
            break;
        case 9:
            self.lends10.hidden = NO;
            self.lends_text10.hidden = NO;
            break;
        case 10:
            self.lends11.hidden = NO;
            self.lends_text11.hidden = NO;
            break;
        case 11:
            self.lends12.hidden = NO;
            self.lends_text12.hidden = NO;
            break;
        case 12:
            self.lends13.hidden = NO;
            self.lends_text13.hidden = NO;
            break;
        case 13:
            self.lends14.hidden = NO;
            self.lends_text14.hidden = NO;
            break;
        case 14:
            self.lends15.hidden = NO;
            self.lends_text15.hidden = NO;
            break;
        case 15:
            self.lends16.hidden = NO;
            self.lends_text16.hidden = NO;
            break;
        case 16:
            self.lends17.hidden = NO;
            self.lends_text17.hidden = NO;
            break;
        case 17:
            self.lends18.hidden = NO;
            self.lends_text18.hidden = NO;
            break;
        case 18:
            self.lends19.hidden = NO;
            self.lends_text19.hidden = NO;
            break;
        case 19:
            self.lends20.hidden = NO;
            self.lends_text20.hidden = NO;
            break;
        case 20:
            self.lends21.hidden = NO;
            self.lends_text21.hidden = NO;
            break;
        case 21:
            self.lends22.hidden = NO;
            self.lends_text22.hidden = NO;
            break;
        case 22:
            self.lends23.hidden = NO;
            self.lends_text23.hidden = NO;
            break;
        case 23:
            self.lends24.hidden = NO;
            self.lends_text24.hidden = NO;
            break;
        case 24:
            self.lends25.hidden = NO;
            self.lends_text25.hidden = NO;
            break;
        case 25:
            self.lends26.hidden = NO;
            self.lends_text26.hidden = NO;
            break;
        default:
            break;
    }

}

- (void) changeLendsSelector2 {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tmpTarget = [defaults integerForKey:@"target"];
    
    if(self.flagRightMode==1) {
        tmpTarget = self.target2;
        NSLog(@"flagRightMode");
    }
    
    switch (tmpTarget) {
        case 0:
            self.halfLends01.hidden = NO;
            self.halfLends_text01.hidden = NO;
            break;
        case 1:
            self.halfLends02.hidden = NO;
            self.halfLends_text02.hidden = NO;
            break;
        case 2:
            self.halfLends03.hidden = NO;
            self.halfLends_text03.hidden = NO;
            break;
        case 3:
            self.halfLends04.hidden = NO;
            self.halfLends_text04.hidden = NO;
            break;
        case 4:
            self.halfLends05.hidden = NO;
            self.halfLends_text05.hidden = NO;
            break;
        case 5:
            self.halfLends06.hidden = NO;
            self.halfLends_text06.hidden = NO;
            break;
        case 6:
            self.halfLends07.hidden = NO;
            self.halfLends_text07.hidden = NO;
            break;
        case 7:
            self.halfLends08.hidden = NO;
            self.halfLends_text08.hidden = NO;
            break;
        case 8:
            self.halfLends09.hidden = NO;
            self.halfLends_text09.hidden = NO;
            break;
        case 9:
            self.halfLends10.hidden = NO;
            self.halfLends_text10.hidden = NO;
            break;
        case 10:
            self.halfLends11.hidden = NO;
            self.halfLends_text11.hidden = NO;
            break;
        case 11:
            self.halfLends12.hidden = NO;
            self.halfLends_text12.hidden = NO;
            break;
        case 12:
            self.halfLends13.hidden = NO;
            self.halfLends_text13.hidden = NO;
            break;
        case 13:
            self.halfLends14.hidden = NO;
            self.halfLends_text14.hidden = NO;
            break;
        case 14:
            self.halfLends15.hidden = NO;
            self.halfLends_text15.hidden = NO;
            break;
        case 15:
            self.halfLends16.hidden = NO;
            self.halfLends_text16.hidden = NO;
            break;
        case 16:
            self.halfLends17.hidden = NO;
            self.halfLends_text17.hidden = NO;
            break;
        case 17:
            self.halfLends18.hidden = NO;
            self.halfLends_text18.hidden = NO;
            break;
        case 18:
            self.halfLends19.hidden = NO;
            self.halfLends_text19.hidden = NO;
            break;
        case 19:
            self.halfLends20.hidden = NO;
            self.halfLends_text20.hidden = NO;
            break;
        case 20:
            self.halfLends21.hidden = NO;
            self.halfLends_text21.hidden = NO;
            break;
        case 21:
            self.halfLends22.hidden = NO;
            self.halfLends_text22.hidden = NO;
            break;
        case 22:
            self.halfLends23.hidden = NO;
            self.halfLends_text23.hidden = NO;
            break;
        case 23:
            self.halfLends24.hidden = NO;
            self.halfLends_text24.hidden = NO;
            break;
        case 24:
            self.halfLends25.hidden = NO;
            self.halfLends_text25.hidden = NO;
            break;
        case 25:
            self.halfLends26.hidden = NO;
            self.halfLends_text26.hidden = NO;
            break;
        default:
            break;
    }
    
}

- (void) pan:(UIPanGestureRecognizer *)gestureRecognizer
{
    if(gestureRecognizer.state == UIGestureRecognizerStateEnded || gestureRecognizer.state == UIGestureRecognizerStateFailed || gestureRecognizer.state == UIGestureRecognizerStateCancelled) {
        NSLog(@"Gesture END!");
    }
}

- (void) panAction:(UIPanGestureRecognizer *)sender
{
    NSLog(@"panAction called");
    
    CGPoint p = [sender translationInView:self.view];
    
    if(self.flagHalfMode==1) {
        _halfLeftView.hidden = NO;
        _halfRightView.hidden = NO;
        
        CGRect halfFrame = _halfLeftImage.frame;
        
        _halfX += (p.x * 0.5);
        if(_halfX > 0) {
            _halfX = 0;
        }
        if(_halfX < -768) {
            _halfX = -768;
        }
        
        _halfY += (p.y * 0.5);
        if(_halfY > 0) {
            _halfY = 0;
        }
        if(_halfY < -192) {
            _halfY = -192;
        }
        
        halfFrame.origin.x = _halfX;
        halfFrame.origin.y = _halfY;
        _halfLeftImage.frame = halfFrame;
        _halfRightImage.frame = halfFrame;
        
        _halfPosX += (p.x * -1.0);
        if(_halfPosX<0) {
            _halfPosX = 0;
        }
        if(_halfPosX>1536) {
            _halfPosX = 1536;
        }
        
        _halfPosY += (p.y * -1.0);
        if(_halfPosY<0) {
            _halfPosY = 0;
        }
        if(_halfPosY>384) {
            _halfPosY = 384;
        }
        
        [sender setTranslation:CGPointZero inView:self.view];
        
        if(sender.state == UIGestureRecognizerStateEnded || sender.state == UIGestureRecognizerStateFailed || sender.state == UIGestureRecognizerStateCancelled) {
            NSLog(@"Gesture END!");
            
            NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
            UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
            //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
            
            UIImage *dstImage2 = nil;
            CGRect clipRect2 = CGRectMake(_halfPosX, _halfPosY, 1024, 1536);
            CGImageRef cliped2 = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect2);
            dstImage2 = [UIImage imageWithCGImage:cliped2
                                            scale:[[UIScreen mainScreen] scale]
                                      orientation:UIImageOrientationUp];
            
            self.imagePicture3 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture4 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            self.imagePicture5 = [[GPUImagePicture alloc] initWithImage:dstImage2];
            CGImageRelease(cliped2);
            
            [self setParameter];
            
            //_moveImageView.hidden = YES;
        }
        
    } else {
    
    
    
    if((self.flagMode<1) || (self.flagMode>6)) {
        return;
    }
    
    _moveImageView.hidden = NO;
    
    
    
    //NSLog(@"X: %f, Y: %f", p.x, p.y);
    
    CGRect moveFrame = self.moveImageView.frame;
    
    _imgX += (p.x * 0.5);
    if(_imgX > 0) {
        _imgX = 0;
    }
    if(_imgX < -256) {
        _imgX = -256;
    }
    
    _imgY += (p.y * 0.5);
    if(_imgY > 0) {
        _imgY = 0;
    }
    if(_imgY < -192) {
        _imgY = -192;
    }

    moveFrame.origin.x = _imgX;
    moveFrame.origin.y = _imgY;
    self.moveImageView.frame = moveFrame;
    
    NSLog(@"X: %f, Y: %f", moveFrame.origin.x, moveFrame.origin.y);
    
    //[sender setTranslation:CGPointZero inView:self.view];
    

    _positionX += (p.x * -1.0);
    if(_positionX<0) {
        _positionX = 0;
    }
    if(_positionX>512) {
        _positionX = 512;
    }
    
    _positionY += (p.y * -1.0);
    if(_positionY<0) {
        _positionY = 0;
    }
    if(_positionY>384) {
        _positionY = 384;
    }
    
    NSLog(@"X: %f, Y: %f", _positionX, _positionY);
    
    /*
    UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
    UIImage *dstImage = nil;
    
    CGRect clipRect = CGRectMake(0+_positionX, 0+_positionY, 2048, 1536);
    CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
    CGImageRelease(cliped);
    
    self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
    self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
     
    [self setParameter];
     */
    
    [sender setTranslation:CGPointZero inView:self.view];
    
    if(sender.state == UIGestureRecognizerStateEnded || sender.state == UIGestureRecognizerStateFailed || sender.state == UIGestureRecognizerStateCancelled) {
        NSLog(@"Gesture END!");
        
        NSString *path= [[NSBundle mainBundle] pathForResource:self.imgFileName ofType:@"jpg"];
        UIImage *srcImage= [[UIImage alloc] initWithContentsOfFile:path];
        
        //UIImage *srcImage = [UIImage imageNamed:self.imgFileName];
        UIImage *dstImage = nil;
        
        CGRect clipRect = CGRectMake(0+_positionX, 0+_positionY, 2048, 1536);
        CGImageRef cliped = CGImageCreateWithImageInRect(srcImage.CGImage, clipRect);
        dstImage = [UIImage imageWithCGImage:cliped
                                       scale:[[UIScreen mainScreen] scale]
                                 orientation:UIImageOrientationUp];
        CGImageRelease(cliped);
        
        self.imagePicture1 = [[GPUImagePicture alloc] initWithImage:dstImage];
        self.imagePicture2 = [[GPUImagePicture alloc] initWithImage:dstImage];
        
        [self setParameter];
        
        //_moveImageView.hidden = YES;
    }
        
    }

}

- (IBAction) buttonHalfCat01Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_on" ofType:@"png"];
    UIImage *cat01_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"blank" ofType:@"png"];
    UIImage *blank = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagRightMode==1) {
        if(self.flagHalfCat!=0) {
            self.flagHalfCat = 0;
            //self.flagLargeCat = 0;
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            
            [_halfCover setImage:blank];
        }
    } else {
        if(self.flagHalfLeftCat!=0) {
            //self.flagHalfCat = 0;
            self.flagHalfLeftCat = 0;
            //self.flagLargeCat = 0;
            [_halfCat01 setImage:cat01_on];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_off];
            
            [_halfCover setImage:blank];
        }
    }
}
- (IBAction) buttonHalfCat02Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_on" ofType:@"png"];
    UIImage *cat02_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover02" ofType:@"png"];
    UIImage *selector_cover02 = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagRightMode==1) {
        if(self.flagHalfCat!=1) {
            self.flagHalfCat = 1;
            //self.flagLargeCat = 1;
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_on];
            [_halfCat03 setImage:cat03_off];
            
            [_halfCover setImage:selector_cover02];
        }
    } else {
        if(self.flagHalfLeftCat!=1) {
            //self.flagHalfCat = 1;
            //self.flagLargeCat = 1;
            self.flagHalfLeftCat = 1;
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_on];
            [_halfCat03 setImage:cat03_off];
            
            [_halfCover setImage:selector_cover02];
        }
    }
}
- (IBAction) buttonHalfCat03Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_on" ofType:@"png"];
    UIImage *cat03_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover03" ofType:@"png"];
    UIImage *selector_cover03 = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagRightMode==1) {
        if(self.flagHalfCat!=2) {
            self.flagHalfCat = 2;
            //self.flagLargeCat = 2;
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_on];
            
            [_halfCover setImage:selector_cover03];
        }
    } else {
        if(self.flagHalfLeftCat!=2) {
            //self.flagHalfCat = 2;
            //self.flagLargeCat = 2;
            self.flagHalfLeftCat = 2;
            [_halfCat01 setImage:cat01_off];
            [_halfCat02 setImage:cat02_off];
            [_halfCat03 setImage:cat03_on];
            
            [_halfCover setImage:selector_cover03];
        }
    }
}
- (IBAction) buttonLargeCat01Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_on" ofType:@"png"];
    UIImage *cat01_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"blank" ofType:@"png"];
    UIImage *blank = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagLargeCat!=0) {
        self.flagLargeCat = 0;
        //self.flagHalfCat = 0;
        [_largeCat01 setImage:cat01_on];
        [_largeCat02 setImage:cat02_off];
        [_largeCat03 setImage:cat03_off];
        
        [_largeCover setImage:blank];
    }
}
- (IBAction) buttonLargeCat02Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_on" ofType:@"png"];
    UIImage *cat02_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_off" ofType:@"png"];
    UIImage *cat03_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover02" ofType:@"png"];
    UIImage *selector_cover02 = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagLargeCat!=1) {
        self.flagLargeCat = 1;
        //self.flagHalfCat = 1;
        [_largeCat01 setImage:cat01_off];
        [_largeCat02 setImage:cat02_on];
        [_largeCat03 setImage:cat03_off];
        
        [_largeCover setImage:selector_cover02];
    }
}
- (IBAction) buttonLargeCat03Pressed:(id)sender
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"cat01_off" ofType:@"png"];
    UIImage *cat01_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat02_off" ofType:@"png"];
    UIImage *cat02_off = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"cat03_on" ofType:@"png"];
    UIImage *cat03_on = [[UIImage alloc] initWithContentsOfFile:path];
    
    path= [[NSBundle mainBundle] pathForResource:@"selector_cover03" ofType:@"png"];
    UIImage *selector_cover03 = [[UIImage alloc] initWithContentsOfFile:path];
    
    if(self.flagLargeCat!=2) {
        self.flagLargeCat = 2;
        //self.flagHalfCat = 2;
        [_largeCat01 setImage:cat01_off];
        [_largeCat02 setImage:cat02_off];
        [_largeCat03 setImage:cat03_on];
        
        [_largeCover setImage:selector_cover03];
    }
}

- (void) changeLeftInfo:(NSInteger)target
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"category01" ofType:@"png"];
    
    switch(target)
    {
        case 0:
            path= [[NSBundle mainBundle] pathForResource:@"category01" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 1:
            path= [[NSBundle mainBundle] pathForResource:@"category02" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 2:
            path= [[NSBundle mainBundle] pathForResource:@"category03" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 3:
            path= [[NSBundle mainBundle] pathForResource:@"category04" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 4:
            path= [[NSBundle mainBundle] pathForResource:@"category05" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 5:
            path= [[NSBundle mainBundle] pathForResource:@"category06" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 6:
            path= [[NSBundle mainBundle] pathForResource:@"category07" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 7:
            path= [[NSBundle mainBundle] pathForResource:@"category08" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 8:
            path= [[NSBundle mainBundle] pathForResource:@"category09" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 9:
            path= [[NSBundle mainBundle] pathForResource:@"category10" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 10:
            path= [[NSBundle mainBundle] pathForResource:@"category11" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 11:
            path= [[NSBundle mainBundle] pathForResource:@"category12" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 12:
            path= [[NSBundle mainBundle] pathForResource:@"category13" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 13:
            path= [[NSBundle mainBundle] pathForResource:@"category14" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 14:
            path= [[NSBundle mainBundle] pathForResource:@"category15" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 15:
            path= [[NSBundle mainBundle] pathForResource:@"category16" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 16:
            path= [[NSBundle mainBundle] pathForResource:@"category17" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 17:
            path= [[NSBundle mainBundle] pathForResource:@"category18" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 18:
            path= [[NSBundle mainBundle] pathForResource:@"category19" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 19:
            path= [[NSBundle mainBundle] pathForResource:@"category20" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 20:
            path= [[NSBundle mainBundle] pathForResource:@"category21" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 21:
            path= [[NSBundle mainBundle] pathForResource:@"category22" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 22:
            path= [[NSBundle mainBundle] pathForResource:@"category23" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 23:
            path= [[NSBundle mainBundle] pathForResource:@"category24" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 24:
            path= [[NSBundle mainBundle] pathForResource:@"category25" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 25:
            path= [[NSBundle mainBundle] pathForResource:@"category26" ofType:@"png"];
            [_infoLeftImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        default:
            break;
    }
}

- (void) changeRightInfo:(NSInteger)target
{
    NSString *path= [[NSBundle mainBundle] pathForResource:@"category01" ofType:@"png"];
    
    switch(target)
    {
        case 0:
            path= [[NSBundle mainBundle] pathForResource:@"category01" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 1:
            path= [[NSBundle mainBundle] pathForResource:@"category02" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 2:
            path= [[NSBundle mainBundle] pathForResource:@"category03" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 3:
            path= [[NSBundle mainBundle] pathForResource:@"category04" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 4:
            path= [[NSBundle mainBundle] pathForResource:@"category05" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 5:
            path= [[NSBundle mainBundle] pathForResource:@"category06" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 6:
            path= [[NSBundle mainBundle] pathForResource:@"category07" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 7:
            path= [[NSBundle mainBundle] pathForResource:@"category08" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 8:
            path= [[NSBundle mainBundle] pathForResource:@"category09" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 9:
            path= [[NSBundle mainBundle] pathForResource:@"category10" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 10:
            path= [[NSBundle mainBundle] pathForResource:@"category11" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 11:
            path= [[NSBundle mainBundle] pathForResource:@"category12" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 12:
            path= [[NSBundle mainBundle] pathForResource:@"category13" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 13:
            path= [[NSBundle mainBundle] pathForResource:@"category14" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 14:
            path= [[NSBundle mainBundle] pathForResource:@"category15" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 15:
            path= [[NSBundle mainBundle] pathForResource:@"category16" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 16:
            path= [[NSBundle mainBundle] pathForResource:@"category17" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 17:
            path= [[NSBundle mainBundle] pathForResource:@"category18" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 18:
            path= [[NSBundle mainBundle] pathForResource:@"category19" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 19:
            path= [[NSBundle mainBundle] pathForResource:@"category20" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 20:
            path= [[NSBundle mainBundle] pathForResource:@"category21" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 21:
            path= [[NSBundle mainBundle] pathForResource:@"category22" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 22:
            path= [[NSBundle mainBundle] pathForResource:@"category23" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 23:
            path= [[NSBundle mainBundle] pathForResource:@"category24" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 24:
            path= [[NSBundle mainBundle] pathForResource:@"category25" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        case 25:
            path= [[NSBundle mainBundle] pathForResource:@"category26" ofType:@"png"];
            [_infoRightImage setImage:[[UIImage alloc] initWithContentsOfFile:path]];
            break;
        default:
            break;
    }
}

//delegateメソッド。各フレームにおける処理
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection
{
    //NSLog(@"captureOutput called");
    // 画像の表示
    //_videoBackImage.image = [self imageFromSampleBufferRef:sampleBuffer];

    
    _videoRawImage.image = [self imageFromSampleBufferRef:sampleBuffer];
    
    /*
    float width = _videoRawImage.image.size.width;
    float height = _videoRawImage.image.size.height;
    
    NSLog(@"Width: %f, Height: %f", width, height);
     */
    
    
    
    
    self.imagePicture6 = [[GPUImagePicture alloc] initWithImage:[self imageFromSampleBufferRef:sampleBuffer]];
    [self.imagePicture6 addTarget:self.filterGroup3];
    [self.filterGroup3 addTarget:_videoFrontImage];
    [self.imagePicture6 processImage];

    NSString *path= [[NSBundle mainBundle] pathForResource:@"mask" ofType:@"png"];
    UIImage *img = [[UIImage alloc] initWithContentsOfFile:path];
    //UIImage *img = [UIImage imageNamed:@"mask.png"];
    CALayer *mask = [CALayer layer];
    mask.contents = (id)[img CGImage];
    mask.frame = CGRectMake(0,0,img.size.width,img.size.height);
    _videoFrontImage.layer.mask = mask;
    
    [self.imagePicture6 removeAllTargets];
    
    //[self.imagePicture6 release];
    //self.imagePicture6 = nil;
    
    /*
    self.imagePicture7 = [[GPUImagePicture alloc] initWithImage:[self imageFromSampleBufferRef:sampleBuffer]];
    [self.imagePicture7 addTarget:self.filterGroup4];
    [self.filterGroup4 addTarget:_videoBackImage];
    [self.imagePicture7 processImage];
     */
    
}

// CMSampleBufferRefをUIImageへ
- (UIImage *)imageFromSampleBufferRef:(CMSampleBufferRef)sampleBuffer
{
    // イメージバッファの取得
    CVImageBufferRef    buffer;
    buffer = CMSampleBufferGetImageBuffer(sampleBuffer);
    
    // イメージバッファのロック
    CVPixelBufferLockBaseAddress(buffer, 0);
    // イメージバッファ情報の取得
    uint8_t*    base;
    size_t      width, height, bytesPerRow;
    base = CVPixelBufferGetBaseAddress(buffer);
    width = CVPixelBufferGetWidth(buffer);
    height = CVPixelBufferGetHeight(buffer);
    bytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
    
    // ビットマップコンテキストの作成
    CGColorSpaceRef colorSpace;
    CGContextRef    cgContext;
    colorSpace = CGColorSpaceCreateDeviceRGB();
    cgContext = CGBitmapContextCreate(
                                      base, width, height, 8, bytesPerRow, colorSpace,
                                      kCGBitmapByteOrder32Little | kCGImageAlphaPremultipliedFirst);
    CGColorSpaceRelease(colorSpace);
    
    // 画像の作成
    CGImageRef  cgImage;
    UIImage*    image;
    cgImage = CGBitmapContextCreateImage(cgContext);
    image = [UIImage imageWithCGImage:cgImage scale:1.0f
                          orientation:UIImageOrientationUp];
    CGImageRelease(cgImage);
    CGContextRelease(cgContext);
    
    // イメージバッファのアンロック
    CVPixelBufferUnlockBaseAddress(buffer, 0);
    
    /*
    int imageW = image.size.width;
    int imageH = image.size.height;
    float scale = (imageW > imageH ? 320.0f/imageH : 320.0f/imageW);
    
    NSLog(@"imgW: %d, imgH: %d", imageW, imageH);
    
    //CGSize resizedSize = CGSizeMake(imageW * scale, imageH * scale);
    CGSize resizedSize = CGSizeMake(160.0f, 120.0f);
    UIGraphicsBeginImageContext(resizedSize);
    [image drawInRect:CGRectMake(0, 0, resizedSize.width, resizedSize.height)];
    UIImage* resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    UIImage *dstImage = nil;
    CGRect clipRect = CGRectMake(240, 0, 1440, 1080);
    CGImageRef cliped = CGImageCreateWithImageInRect(image.CGImage, clipRect);
    dstImage = [UIImage imageWithCGImage:cliped
                                   scale:[[UIScreen mainScreen] scale]
                             orientation:UIImageOrientationUp];
     */
    
    
    return image;
}

- (void) didRotate:(NSNotification *)notification {
    NSLog(@"Rotate call");

    if(self.flagMode!=7) {
        return;
    }
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    switch (orientation) {
        case UIInterfaceOrientationLandscapeRight:
            if(self.flagRotate!=0) {
                self.flagRotate = 0;
            }
            break;
        case UIInterfaceOrientationLandscapeLeft:
            if(self.flagRotate!=1) {
                self.flagRotate = 1;
            }
            break;
        case UIInterfaceOrientationPortrait:
            self.flagRotate = 2;
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            self.flagRotate = 3;
            break;
        default:
            self.flagRotate = 0;
            break;
    }
}

- (BOOL)shouldAutorotate
{
    if(self.flagMode==7) {
        return NO;
    } else {
        return YES;
    }
}
@end;

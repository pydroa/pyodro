//
//  ViewController.h
//  ccpsimulator
//
//  Created by 坂本 功 on 2015/02/10.
//  Copyright (c) 2015年 Isao Sakamoto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GPUImage.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIWebViewDelegate,UIGestureRecognizerDelegate,MFMailComposeViewControllerDelegate,UIScrollViewDelegate,AVCaptureVideoDataOutputSampleBufferDelegate> {
    
    IBOutlet UIButton *shopButton;
    
    IBOutlet UIImageView *nav01;
    IBOutlet UIImageView *nav02;
    IBOutlet UIImageView *nav03;
    IBOutlet UIImageView *nav04;
    IBOutlet UIImageView *nav05;
    IBOutlet UIImageView *nav06;
    IBOutlet UIImageView *nav07;
    IBOutlet UIImageView *nav_cover;
    IBOutlet UIImageView *nav_cover2;
    IBOutlet UIImageView *nav_cover3;
    
    IBOutlet UIImageView *nav11;
    IBOutlet UIImageView *nav12;
    IBOutlet UIImageView *nav13;
    IBOutlet UIImageView *nav14;
    IBOutlet UIImageView *nav15;
    IBOutlet UIImageView *nav16;
    IBOutlet UIImageView *nav17;
    
    IBOutlet UIButton *buttonNav01;
    IBOutlet UIButton *buttonNav02;
    IBOutlet UIButton *buttonNav03;
    IBOutlet UIButton *buttonNav04;
    IBOutlet UIButton *buttonNav05;
    IBOutlet UIButton *buttonNav06;
    IBOutlet UIButton *buttonNav07;
    
    IBOutlet UIButton *buttonNav11;
    IBOutlet UIButton *buttonNav12;
    IBOutlet UIButton *buttonNav13;
    IBOutlet UIButton *buttonNav14;
    IBOutlet UIButton *buttonNav15;
    IBOutlet UIButton *buttonNav16;
    IBOutlet UIButton *buttonNav17;
    
    IBOutlet UIImageView *lends01;
    IBOutlet UIImageView *lends02;
    IBOutlet UIImageView *lends03;
    IBOutlet UIImageView *lends04;
    IBOutlet UIImageView *lends05;
    IBOutlet UIImageView *lends06;
    IBOutlet UIImageView *lends07;
    IBOutlet UIImageView *lends08;
    IBOutlet UIImageView *lends09;
    IBOutlet UIImageView *lends10;
    IBOutlet UIImageView *lends11;
    IBOutlet UIImageView *lends12;
    IBOutlet UIImageView *lends13;
    IBOutlet UIImageView *lends14;
    IBOutlet UIImageView *lends15;
    IBOutlet UIImageView *lends16;
    IBOutlet UIImageView *lends17;
    IBOutlet UIImageView *lends18;
    IBOutlet UIImageView *lends19;
    IBOutlet UIImageView *lends20;
    IBOutlet UIImageView *lends21;
    IBOutlet UIImageView *lends22;
    IBOutlet UIImageView *lends23;
    
    IBOutlet UIImageView *lends_text01;
    IBOutlet UIImageView *lends_text02;
    IBOutlet UIImageView *lends_text03;
    IBOutlet UIImageView *lends_text04;
    IBOutlet UIImageView *lends_text05;
    IBOutlet UIImageView *lends_text06;
    IBOutlet UIImageView *lends_text07;
    IBOutlet UIImageView *lends_text08;
    IBOutlet UIImageView *lends_text09;
    IBOutlet UIImageView *lends_text10;
    IBOutlet UIImageView *lends_text11;
    IBOutlet UIImageView *lends_text12;
    IBOutlet UIImageView *lends_text13;
    IBOutlet UIImageView *lends_text14;
    IBOutlet UIImageView *lends_text15;
    IBOutlet UIImageView *lends_text16;
    IBOutlet UIImageView *lends_text17;
    IBOutlet UIImageView *lends_text18;
    IBOutlet UIImageView *lends_text19;
    IBOutlet UIImageView *lends_text20;
    IBOutlet UIImageView *lends_text21;
    IBOutlet UIImageView *lends_text22;
    IBOutlet UIImageView *lends_text23;
    
    IBOutlet UIImageView *selector2;
    
    IBOutlet UIImageView *halfLends01;
    IBOutlet UIImageView *halfLends02;
    IBOutlet UIImageView *halfLends03;
    IBOutlet UIImageView *halfLends04;
    IBOutlet UIImageView *halfLends05;
    IBOutlet UIImageView *halfLends06;
    IBOutlet UIImageView *halfLends07;
    IBOutlet UIImageView *halfLends08;
    IBOutlet UIImageView *halfLends09;
    IBOutlet UIImageView *halfLends10;
    IBOutlet UIImageView *halfLends11;
    IBOutlet UIImageView *halfLends12;
    IBOutlet UIImageView *halfLends13;
    IBOutlet UIImageView *halfLends14;
    IBOutlet UIImageView *halfLends15;
    IBOutlet UIImageView *halfLends16;
    IBOutlet UIImageView *halfLends17;
    IBOutlet UIImageView *halfLends18;
    IBOutlet UIImageView *halfLends19;
    IBOutlet UIImageView *halfLends20;
    IBOutlet UIImageView *halfLends21;
    IBOutlet UIImageView *halfLends22;
    IBOutlet UIImageView *halfLends23;
//    IBOutlet UIImageView *halfLends24;
//    IBOutlet UIImageView *halfLends25;
//    IBOutlet UIImageView *halfLends26;

    
    IBOutlet UIImageView *halfLends_text01;
    IBOutlet UIImageView *halfLends_text02;
    IBOutlet UIImageView *halfLends_text03;
    IBOutlet UIImageView *halfLends_text04;
    IBOutlet UIImageView *halfLends_text05;
    IBOutlet UIImageView *halfLends_text06;
    IBOutlet UIImageView *halfLends_text07;
    IBOutlet UIImageView *halfLends_text08;
    IBOutlet UIImageView *halfLends_text09;
    IBOutlet UIImageView *halfLends_text10;
    IBOutlet UIImageView *halfLends_text11;
    IBOutlet UIImageView *halfLends_text12;
    IBOutlet UIImageView *halfLends_text13;
    IBOutlet UIImageView *halfLends_text14;
    IBOutlet UIImageView *halfLends_text15;
    IBOutlet UIImageView *halfLends_text16;
    IBOutlet UIImageView *halfLends_text17;
    IBOutlet UIImageView *halfLends_text18;
    IBOutlet UIImageView *halfLends_text19;
    IBOutlet UIImageView *halfLends_text20;
    IBOutlet UIImageView *halfLends_text21;
    IBOutlet UIImageView *halfLends_text22;
    IBOutlet UIImageView *halfLends_text23;
//    IBOutlet UIImageView *halfLends_text24;
//    IBOutlet UIImageView *halfLends_text25;
//    IBOutlet UIImageView *halfLends_text26;
    
    IBOutlet UIImageView *halfCat01;
    IBOutlet UIImageView *halfCat02;
    IBOutlet UIImageView *halfCat03;
    IBOutlet UIImageView *halfCover;
    
    IBOutlet UIButton *buttonHalfCat01;
    IBOutlet UIButton *buttonHalfCat02;
    IBOutlet UIButton *buttonHalfCat03;
    
    IBOutlet UIImageView *largeCat01;
    IBOutlet UIImageView *largeCat02;
    IBOutlet UIImageView *largeCat03;
    IBOutlet UIImageView *largeCover;
    
    IBOutlet UIButton *buttonLargeCat01;
    IBOutlet UIButton *buttonLargeCat02;
    IBOutlet UIButton *buttonLargeCat03;
    
    IBOutlet UIButton *buttonLends01;
    IBOutlet UIButton *buttonLends02;
    IBOutlet UIButton *buttonLends03;
    IBOutlet UIButton *buttonLends04;
    IBOutlet UIButton *buttonLends05;
    IBOutlet UIButton *buttonLends06;
    IBOutlet UIButton *buttonLends07;
    IBOutlet UIButton *buttonLends08;
    IBOutlet UIButton *buttonLends09;
    IBOutlet UIButton *buttonLends10;
    IBOutlet UIButton *buttonLends11;
    IBOutlet UIButton *buttonLends12;
    IBOutlet UIButton *buttonLends13;
    IBOutlet UIButton *buttonLends14;
    IBOutlet UIButton *buttonLends15;
    IBOutlet UIButton *buttonLends16;
    IBOutlet UIButton *buttonLends17;
    IBOutlet UIButton *buttonLends18;
    IBOutlet UIButton *buttonLends19;
    IBOutlet UIButton *buttonLends20;
    IBOutlet UIButton *buttonLends21;
    IBOutlet UIButton *buttonLends22;
    IBOutlet UIButton *buttonLends23;
    
    IBOutlet UIButton *buttonHalf01;
    IBOutlet UIButton *buttonHalf02;
    IBOutlet UIButton *buttonHalf03;
    IBOutlet UIButton *buttonHalf04;
    IBOutlet UIButton *buttonHalf05;
    IBOutlet UIButton *buttonHalf06;
    IBOutlet UIButton *buttonHalf07;
    IBOutlet UIButton *buttonHalf08;
    IBOutlet UIButton *buttonHalf09;
    IBOutlet UIButton *buttonHalf10;
    IBOutlet UIButton *buttonHalf11;
    IBOutlet UIButton *buttonHalf12;
    IBOutlet UIButton *buttonHalf13;
    IBOutlet UIButton *buttonHalf14;
    IBOutlet UIButton *buttonHalf15;
    IBOutlet UIButton *buttonHalf16;
    IBOutlet UIButton *buttonHalf17;
    IBOutlet UIButton *buttonHalf18;
    IBOutlet UIButton *buttonHalf19;
    IBOutlet UIButton *buttonHalf20;
    IBOutlet UIButton *buttonHalf21;
    IBOutlet UIButton *buttonHalf22;
    IBOutlet UIButton *buttonHalf23;
    IBOutlet UIButton *buttonHalf24;
    IBOutlet UIButton *buttonHalf25;
    IBOutlet UIButton *buttonHalf26;
    
    
    IBOutlet UIScrollView *scrollView1;
    IBOutlet UIImageView *myImage1;
    
    IBOutlet UIView *infoView;
    IBOutlet UIImageView *infoLeftImage;
    IBOutlet UIImageView *infoRightImage;
    
    IBOutlet UIView *helpView;
    IBOutlet UIImageView *helpImage;
    
    IBOutlet UIView *initialView;
    IBOutlet UIImageView *initialImage;

    IBOutlet UIView *gesureView;
    IBOutlet UIView *expView;
    IBOutlet UIImageView *expImage;
    
    IBOutlet UIView *moveImageView;
    IBOutlet UIImageView *moveImage;
    
    IBOutlet UIView *topPhotoView;
    IBOutlet GPUImageView *topPhotoImage;
    IBOutlet GPUImageView *maskedPhotoImage;
    
    IBOutlet UIView *halfLeftMainView;
    IBOutlet GPUImageView *halfLeftMainImage;
    IBOutlet GPUImageView *halfLeftMaskedImage;
    
    IBOutlet UIView *halfRightMainView;
    IBOutlet GPUImageView *halfRightMainImage;
    IBOutlet GPUImageView *halfRightMaskedImage;
    
    IBOutlet UIView *halfLeftView;
    IBOutlet UIImageView *halfLeftImage;
    IBOutlet UIView *halfRightView;
    IBOutlet UIImageView *halfRightImage;
    
    IBOutlet UIView *halfFrameView;
    
    IBOutlet UIView *cameraView;
    IBOutlet UIView *cameraBackView;
    IBOutlet GPUImageView *cameraBackImage;
    IBOutlet GPUImageView *cameraMaskImage;
    IBOutlet GPUImageView *cameraLendsImage;
    IBOutlet UIImageView *cameraFrontImage;
    IBOutlet UIImageView *cameraRawImage;
    
    IBOutlet UIView *videoView;
    IBOutlet UIImageView *videoRawImage;
    IBOutlet GPUImageView *videoBackImage;
    IBOutlet GPUImageView *videoFrontImage;
    
    IBOutlet UIView *filterView;
    IBOutlet GPUImageView *filterImage;
    
    IBOutlet UIView *largeFrameView;
    IBOutlet UIImageView *largeFrameImage;
    
    IBOutlet UIView *selectorView;
    IBOutlet UIImageView *selectorImage;
    
    IBOutlet UIButton *selectorButton1;
    
    IBOutlet UIView *selectorView2;
    IBOutlet UIImageView *selectorImage2;
    
    IBOutlet UIButton *selectorButton2;
    IBOutlet UIButton *selectorButton3;
    
    
    IBOutlet GPUImageView *mainBackImage;
    IBOutlet GPUImageView *mainFrontImage;
    IBOutlet UIImageView *frameImage;
    
    IBOutlet UIButton *myButton1;
    IBOutlet UISlider *mySlider1;
    IBOutlet UITextField *myTextField1;
    
    IBOutlet UIButton *myButton2;
    IBOutlet UISlider *mySlider2;
    IBOutlet UITextField *myTextField2;
    
    IBOutlet UIButton *myButton3;
    IBOutlet UISlider *mySlider3;
    IBOutlet UITextField *myTextField3;
    
    IBOutlet UIButton *myButton4;
    IBOutlet UISlider *mySlider4;
    IBOutlet UITextField *myTextField4;
    
    IBOutlet UIButton *myButton5;
    IBOutlet UISlider *mySlider5;
    IBOutlet UITextField *myTextField5;
    
    IBOutlet UIButton *myButton6;
    IBOutlet UISlider *mySlider6;
    IBOutlet UITextField *myTextField6;
    IBOutlet UIButton *myLeftButton;
    IBOutlet UIButton *myRightButton;
    
    IBOutlet UIButton *myButton7;
    IBOutlet UISlider *mySlider7;
    IBOutlet UITextField *myTextField7;
    
    IBOutlet UIButton *saveButton;
    IBOutlet UIButton *listButton;
    IBOutlet UITextField *saveTextField;
    
    IBOutlet UIButton *onoffButton;
    
    
    IBOutlet UIButton *imgButton1;
    IBOutlet UIButton *imgButton2;
    IBOutlet UIButton *imgButton3;
    IBOutlet UIButton *imgButton4;
    IBOutlet UIButton *imgButton5;
    IBOutlet UIButton *imgButton6;
    IBOutlet UIButton *imgButton7;
    
}


@property (nonatomic, retain) IBOutlet UIButton *shopButton;

@property(nonatomic, retain) IBOutlet UIImageView *nav01;
@property(nonatomic, retain) IBOutlet UIImageView *nav02;
@property(nonatomic, retain) IBOutlet UIImageView *nav03;
@property(nonatomic, retain) IBOutlet UIImageView *nav04;
@property(nonatomic, retain) IBOutlet UIImageView *nav05;
@property(nonatomic, retain) IBOutlet UIImageView *nav06;
@property(nonatomic, retain) IBOutlet UIImageView *nav07;
@property(nonatomic, retain) IBOutlet UIImageView *nav_cover;
@property(nonatomic, retain) IBOutlet UIImageView *nav_cover2;
@property(nonatomic, retain) IBOutlet UIImageView *nav_cover3;

@property(nonatomic, retain) IBOutlet UIImageView *nav11;
@property(nonatomic, retain) IBOutlet UIImageView *nav12;
@property(nonatomic, retain) IBOutlet UIImageView *nav13;
@property(nonatomic, retain) IBOutlet UIImageView *nav14;
@property(nonatomic, retain) IBOutlet UIImageView *nav15;
@property(nonatomic, retain) IBOutlet UIImageView *nav16;
@property(nonatomic, retain) IBOutlet UIImageView *nav17;

@property (nonatomic, retain) IBOutlet UIButton *buttonNav01;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav02;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav03;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav04;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav05;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav06;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav07;

@property (nonatomic, retain) IBOutlet UIButton *buttonNav11;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav12;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav13;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav14;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav15;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav16;
@property (nonatomic, retain) IBOutlet UIButton *buttonNav17;

@property(nonatomic, retain) IBOutlet UIImageView *lends01;
@property(nonatomic, retain) IBOutlet UIImageView *lends02;
@property(nonatomic, retain) IBOutlet UIImageView *lends03;
@property(nonatomic, retain) IBOutlet UIImageView *lends04;
@property(nonatomic, retain) IBOutlet UIImageView *lends05;
@property(nonatomic, retain) IBOutlet UIImageView *lends06;
@property(nonatomic, retain) IBOutlet UIImageView *lends07;
@property(nonatomic, retain) IBOutlet UIImageView *lends08;
@property(nonatomic, retain) IBOutlet UIImageView *lends09;
@property(nonatomic, retain) IBOutlet UIImageView *lends10;
@property(nonatomic, retain) IBOutlet UIImageView *lends11;
@property(nonatomic, retain) IBOutlet UIImageView *lends12;
@property(nonatomic, retain) IBOutlet UIImageView *lends13;
@property(nonatomic, retain) IBOutlet UIImageView *lends14;
@property(nonatomic, retain) IBOutlet UIImageView *lends15;
@property(nonatomic, retain) IBOutlet UIImageView *lends16;
@property(nonatomic, retain) IBOutlet UIImageView *lends17;
@property(nonatomic, retain) IBOutlet UIImageView *lends18;
@property(nonatomic, retain) IBOutlet UIImageView *lends19;
@property(nonatomic, retain) IBOutlet UIImageView *lends20;
@property(nonatomic, retain) IBOutlet UIImageView *lends21;
@property(nonatomic, retain) IBOutlet UIImageView *lends22;
@property(nonatomic, retain) IBOutlet UIImageView *lends23;

@property(nonatomic, retain) IBOutlet UIImageView *lends24;
@property(nonatomic, retain) IBOutlet UIImageView *lends25;
@property(nonatomic, retain) IBOutlet UIImageView *lends26;



@property(nonatomic, retain) IBOutlet UIImageView *lends_text01;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text02;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text03;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text04;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text05;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text06;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text07;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text08;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text09;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text10;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text11;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text12;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text13;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text14;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text15;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text16;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text17;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text18;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text19;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text20;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text21;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text22;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text23;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text24;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text25;
@property(nonatomic, retain) IBOutlet UIImageView *lends_text26;

@property(nonatomic, retain) IBOutlet UIImageView *selector2;

@property(nonatomic, retain) IBOutlet UIImageView *halfLends01;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends02;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends03;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends04;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends05;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends06;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends07;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends08;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends09;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends10;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends11;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends12;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends13;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends14;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends15;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends16;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends17;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends18;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends19;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends20;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends21;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends22;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends23;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends24;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends25;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends26;

@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text01;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text02;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text03;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text04;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text05;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text06;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text07;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text08;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text09;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text10;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text11;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text12;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text13;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text14;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text15;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text16;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text17;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text18;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text19;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text20;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text21;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text22;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text23;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text24;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text25;
@property(nonatomic, retain) IBOutlet UIImageView *halfLends_text26;

@property(nonatomic, retain) IBOutlet UIImageView *halfCat01;
@property(nonatomic, retain) IBOutlet UIImageView *halfCat02;
@property(nonatomic, retain) IBOutlet UIImageView *halfCat03;
@property(nonatomic, retain) IBOutlet UIImageView *halfCover;

@property (nonatomic, retain) IBOutlet UIButton *buttonHalfCat01;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalfCat02;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalfCat03;

@property(nonatomic, retain) IBOutlet UIImageView *largeCat01;
@property(nonatomic, retain) IBOutlet UIImageView *largeCat02;
@property(nonatomic, retain) IBOutlet UIImageView *largeCat03;
@property(nonatomic, retain) IBOutlet UIImageView *largeCover;

@property (nonatomic, retain) IBOutlet UIButton *buttonLargeCat01;
@property (nonatomic, retain) IBOutlet UIButton *buttonLargeCat02;
@property (nonatomic, retain) IBOutlet UIButton *buttonLargeCat03;

@property (nonatomic, retain) IBOutlet UIButton *buttonLends01;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends02;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends03;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends04;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends05;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends06;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends07;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends08;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends09;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends10;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends11;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends12;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends13;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends14;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends15;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends16;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends17;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends18;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends19;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends20;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends21;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends22;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends23;


@property (nonatomic, retain) IBOutlet UIButton *buttonLends24;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends25;
@property (nonatomic, retain) IBOutlet UIButton *buttonLends26;

@property (nonatomic, retain) IBOutlet UIButton *buttonHalf01;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf02;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf03;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf04;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf05;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf06;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf07;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf08;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf09;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf10;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf11;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf12;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf13;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf14;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf15;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf16;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf17;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf18;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf19;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf20;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf21;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf22;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf23;


@property (nonatomic, retain) IBOutlet UIButton *buttonHalf24;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf25;
@property (nonatomic, retain) IBOutlet UIButton *buttonHalf26;

@property (strong, nonatomic) IBOutlet UIView *infoView;
@property(nonatomic, retain) IBOutlet UIImageView *infoLeftImage;
@property(nonatomic, retain) IBOutlet UIImageView *infoRightImage;

@property (strong, nonatomic) IBOutlet UIView *gestureView;
@property (strong, nonatomic) IBOutlet UIView *expView;
@property(nonatomic, retain) IBOutlet UIImageView *expImage;

@property (strong, nonatomic) IBOutlet UIView *moveImageView;
@property (strong, nonatomic) IBOutlet UIImageView *moveImage;

@property (strong, nonatomic) IBOutlet UIView *navigationView;
@property (strong, nonatomic) IBOutlet UIView *initialView;
@property (strong, nonatomic) IBOutlet UIImageView *initialImage;
@property (strong, nonatomic) IBOutlet UIView *helpView;
@property (strong, nonatomic) IBOutlet UIImageView *helpImage;
@property (strong, nonatomic) IBOutlet UIView *topPhotoView;
@property(nonatomic, retain) IBOutlet GPUImageView *topPhotoImage;
@property(nonatomic, retain) IBOutlet GPUImageView *maskedPhotoImage;

@property (strong, nonatomic) IBOutlet UIView *halfLeftMainView;
@property(nonatomic, retain) IBOutlet GPUImageView *halfLeftMainImage;
@property(nonatomic, retain) IBOutlet GPUImageView *halfLeftMaskedImage;

@property (strong, nonatomic) IBOutlet UIView *halfRightMainView;
@property(nonatomic, retain) IBOutlet GPUImageView *halfRightMainImage;
@property(nonatomic, retain) IBOutlet GPUImageView *halfRightMaskedImage;

@property (strong, nonatomic) IBOutlet UIView *halfLeftView;
@property (strong, nonatomic) IBOutlet UIImageView *halfLeftImage;
@property (strong, nonatomic) IBOutlet UIView *halfRightView;
@property (strong, nonatomic) IBOutlet UIImageView *halfRightImage;

@property (strong, nonatomic) IBOutlet UIView *halfFrameView;

@property (strong, nonatomic) IBOutlet UIView *filterView;
@property(nonatomic, retain) IBOutlet GPUImageView *filterImage;

@property (strong, nonatomic) IBOutlet UIView *cameraView;
@property (strong, nonatomic) IBOutlet UIView *cameraBackView;
@property(nonatomic, retain) IBOutlet GPUImageView *cameraBackImage;
@property(nonatomic, strong) IBOutlet GPUImageView *cameraMaskImage;
@property(nonatomic, strong) IBOutlet GPUImageView *cameraLendsImage;
@property (strong, nonatomic) IBOutlet UIImageView *cameraFrontImage;
@property (strong, nonatomic) IBOutlet UIImageView *cameraRawImage;

@property (strong, nonatomic) IBOutlet UIView *videoView;
@property (strong, nonatomic) IBOutlet UIImageView *videoRawImage;
@property (strong, nonatomic) IBOutlet GPUImageView *videoBackImage;
@property(nonatomic, strong) IBOutlet GPUImageView *videoFrontImage;

@property (strong, nonatomic) IBOutlet UIView *largeFrameView;
@property(nonatomic, retain) IBOutlet UIImageView *largeFrameImage;

@property(nonatomic, retain) IBOutlet UIScrollView *scrollView1;
@property(nonatomic, retain) IBOutlet UIImageView *myImage1;

@property (strong, nonatomic) IBOutlet UIView *selectorView;
@property(nonatomic, retain) IBOutlet UIImageView *selectorImage;
@property (nonatomic, retain) IBOutlet UIButton *selectorButton1;

@property (strong, nonatomic) IBOutlet UIView *selectorView2;
@property(nonatomic, retain) IBOutlet UIImageView *selectorImage2;
@property (nonatomic, retain) IBOutlet UIButton *selectorButton2;
@property (nonatomic, retain) IBOutlet UIButton *selectorButton3;

@property(nonatomic, retain) IBOutlet GPUImageView *mainBackImage;
@property(nonatomic, retain) IBOutlet GPUImageView *mainFrontImage;
@property(nonatomic, retain) IBOutlet UIImageView *frameImage;

@property (nonatomic, retain) IBOutlet UIButton *myButton1;
@property (nonatomic, retain) IBOutlet UISlider *mySlider1;
@property (nonatomic, retain) IBOutlet UITextField *myTextField1;

@property (nonatomic, retain) IBOutlet UIButton *myButton2;
@property (nonatomic, retain) IBOutlet UISlider *mySlider2;
@property (nonatomic, retain) IBOutlet UITextField *myTextField2;

@property (nonatomic, retain) IBOutlet UIButton *myButton3;
@property (nonatomic, retain) IBOutlet UISlider *mySlider3;
@property (nonatomic, retain) IBOutlet UITextField *myTextField3;

@property (nonatomic, retain) IBOutlet UIButton *myButton4;
@property (nonatomic, retain) IBOutlet UISlider *mySlider4;
@property (nonatomic, retain) IBOutlet UITextField *myTextField4;

@property (nonatomic, retain) IBOutlet UIButton *myButton5;
@property (nonatomic, retain) IBOutlet UISlider *mySlider5;
@property (nonatomic, retain) IBOutlet UITextField *myTextField5;

@property (nonatomic, retain) IBOutlet UIButton *myButton6;
@property (nonatomic, retain) IBOutlet UISlider *mySlider6;
@property (nonatomic, retain) IBOutlet UITextField *myTextField6;
@property (nonatomic, retain) IBOutlet UIButton *myLeftButton;
@property (nonatomic, retain) IBOutlet UIButton *myRightButton;

@property (nonatomic, retain) IBOutlet UIButton *myButton7;
@property (nonatomic, retain) IBOutlet UISlider *mySlider7;
@property (nonatomic, retain) IBOutlet UITextField *myTextField7;

@property (nonatomic, retain) IBOutlet UIButton *saveButton;
@property (nonatomic, retain) IBOutlet UIButton *listButton;
@property (nonatomic, retain) IBOutlet UITextField *saveTextField;
@property (nonatomic, retain) IBOutlet UIButton *onoffButton;

@property (nonatomic, retain) IBOutlet UIButton *imgButton1;
@property (nonatomic, retain) IBOutlet UIButton *imgButton2;
@property (nonatomic, retain) IBOutlet UIButton *imgButton3;
@property (nonatomic, retain) IBOutlet UIButton *imgButton4;
@property (nonatomic, retain) IBOutlet UIButton *imgButton5;
@property (nonatomic, retain) IBOutlet UIButton *imgButton6;
@property (nonatomic, retain) IBOutlet UIButton *imgButton7;


- (IBAction) sliderValueChanged:(id)sender;
- (IBAction) changeButtonPressed:(id)sender;

- (IBAction) slider2ValueChanged:(id)sender;
- (IBAction) change2ButtonPressed:(id)sender;

- (IBAction) slider3ValueChanged:(id)sender;
- (IBAction) change3ButtonPressed:(id)sender;

- (IBAction) slider4ValueChanged:(id)sender;
- (IBAction) change4ButtonPressed:(id)sender;

- (IBAction) slider5ValueChanged:(id)sender;
- (IBAction) change5ButtonPressed:(id)sender;

- (IBAction) slider6ValueChanged:(id)sender;
- (IBAction) change6ButtonPressed:(id)sender;
- (IBAction) leftButtonPressed:(id)sender;
- (IBAction) rightButtonPressed:(id)sender;

- (IBAction) slider7ValueChanged:(id)sender;
- (IBAction) change7ButtonPressed:(id)sender;

- (IBAction) saveButtonPressed:(id)sender;
- (IBAction) listButtonPressed:(id)sender;
- (IBAction) onoffButtonPressed:(id)sender;

- (IBAction) imgButton1Pressed:(id)sender;
- (IBAction) imgButton2Pressed:(id)sender;
- (IBAction) imgButton3Pressed:(id)sender;
- (IBAction) imgButton4Pressed:(id)sender;
- (IBAction) imgButton5Pressed:(id)sender;
- (IBAction) imgButton6Pressed:(id)sender;
- (IBAction) imgButton7Pressed:(id)sender;

- (IBAction)handlePreview:(id)sender;
- (IBAction)handleNext:(id)sender;
- (IBAction)handleRefresh:(id)sender;

- (IBAction) shopButtonPressed:(id)sender;

- (IBAction) selector1ButtonPressed:(id)sender;
- (IBAction) selector2ButtonPressed:(id)sender;
- (IBAction) selector3ButtonPressed:(id)sender;

- (IBAction) buttonNav01Pressed:(id)sender;
- (IBAction) buttonNav02Pressed:(id)sender;
- (IBAction) buttonNav03Pressed:(id)sender;
- (IBAction) buttonNav04Pressed:(id)sender;
- (IBAction) buttonNav05Pressed:(id)sender;
- (IBAction) buttonNav06Pressed:(id)sender;
- (IBAction) buttonNav07Pressed:(id)sender;

- (IBAction) buttonNav11Pressed:(id)sender;
- (IBAction) buttonNav12Pressed:(id)sender;
- (IBAction) buttonNav13Pressed:(id)sender;
- (IBAction) buttonNav14Pressed:(id)sender;
- (IBAction) buttonNav15Pressed:(id)sender;
- (IBAction) buttonNav16Pressed:(id)sender;
- (IBAction) buttonNav17Pressed:(id)sender;

- (IBAction) buttonLends01Pressed:(id)sender;
- (IBAction) buttonLends02Pressed:(id)sender;
- (IBAction) buttonLends03Pressed:(id)sender;
- (IBAction) buttonLends04Pressed:(id)sender;
- (IBAction) buttonLends05Pressed:(id)sender;
- (IBAction) buttonLends06Pressed:(id)sender;
- (IBAction) buttonLends07Pressed:(id)sender;
- (IBAction) buttonLends08Pressed:(id)sender;
- (IBAction) buttonLends09Pressed:(id)sender;
- (IBAction) buttonLends10Pressed:(id)sender;
- (IBAction) buttonLends11Pressed:(id)sender;
- (IBAction) buttonLends12Pressed:(id)sender;
- (IBAction) buttonLends13Pressed:(id)sender;
- (IBAction) buttonLends14Pressed:(id)sender;
- (IBAction) buttonLends15Pressed:(id)sender;
- (IBAction) buttonLends16Pressed:(id)sender;
- (IBAction) buttonLends17Pressed:(id)sender;
- (IBAction) buttonLends18Pressed:(id)sender;
- (IBAction) buttonLends19Pressed:(id)sender;
- (IBAction) buttonLends20Pressed:(id)sender;
- (IBAction) buttonLends21Pressed:(id)sender;
- (IBAction) buttonLends22Pressed:(id)sender;
- (IBAction) buttonLends23Pressed:(id)sender;

- (IBAction) buttonHalf01Pressed:(id)sender;
- (IBAction) buttonHalf02Pressed:(id)sender;
- (IBAction) buttonHalf03Pressed:(id)sender;
- (IBAction) buttonHalf04Pressed:(id)sender;
- (IBAction) buttonHalf05Pressed:(id)sender;
- (IBAction) buttonHalf06Pressed:(id)sender;
- (IBAction) buttonHalf07Pressed:(id)sender;
- (IBAction) buttonHalf08Pressed:(id)sender;
- (IBAction) buttonHalf09Pressed:(id)sender;
- (IBAction) buttonHalf10Pressed:(id)sender;
- (IBAction) buttonHalf11Pressed:(id)sender;
- (IBAction) buttonHalf12Pressed:(id)sender;
- (IBAction) buttonHalf13Pressed:(id)sender;
- (IBAction) buttonHalf14Pressed:(id)sender;
- (IBAction) buttonHalf15Pressed:(id)sender;
- (IBAction) buttonHalf16Pressed:(id)sender;
- (IBAction) buttonHalf17Pressed:(id)sender;
- (IBAction) buttonHalf18Pressed:(id)sender;
- (IBAction) buttonHalf19Pressed:(id)sender;
- (IBAction) buttonHalf20Pressed:(id)sender;
- (IBAction) buttonHalf21Pressed:(id)sender;
- (IBAction) buttonHalf22Pressed:(id)sender;
- (IBAction) buttonHalf23Pressed:(id)sender;

- (IBAction) buttonHalfCat01Pressed:(id)sender;
- (IBAction) buttonHalfCat02Pressed:(id)sender;
- (IBAction) buttonHalfCat03Pressed:(id)sender;

- (IBAction) buttonLargeCat01Pressed:(id)sender;
- (IBAction) buttonLargeCat02Pressed:(id)sender;
- (IBAction) buttonLargeCat03Pressed:(id)sender;



- (void) changeLeftInfo:(NSInteger)targetNo;
- (void) changeRightInfo:(NSInteger)targetNo;
- (void) lendsSelectHidden;
- (void) lendsSelectHidden2;
- (void) updateLends;
- (void) changeLendsSelector;
- (void) cameraMode;
- (void) changeLendsSelector2;
- (void) navButtonHidden;



@end


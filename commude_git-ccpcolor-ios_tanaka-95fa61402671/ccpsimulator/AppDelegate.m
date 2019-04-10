//
//  AppDelegate.m
//  ccpsimulator
//
//  Created by 坂本 功 on 2015/02/10.
//  Copyright (c) 2015年 Isao Sakamoto. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
   [defaults setInteger:26 forKey:@"target"];
    [defaults synchronize];
    BOOL isUser = [defaults boolForKey:@"isUser"];
    if(!isUser) {
        
        NSString *data00 = @"0<>TS<>1.000f<>1.000f<>0.900f<>1.08f<>0.00f<>0.50f<>0.90f<>0.00f<>0.00f<>";
        NSString *data01 = @"1<>RS<>1.000f<>1.050f<>0.970f<>1.08f<>0.00f<>0.50f<>0.90f<>0.00f<>0.00f<>";
        NSString *data02 = @"2<>LG<>0.950f<>0.950f<>0.950f<>1.00f<>0.00f<>0.50f<>0.80f<>0.00f<>0.00f<>";
        NSString *data03 = @"3<>MG<>0.850f<>0.850f<>0.850f<>1.00f<>0.00f<>0.50f<>0.65f<>0.00f<>0.00f<>";
        NSString *data04 = @"4<>OG<>0.950f<>0.850f<>0.000f<>1.10f<>0.00f<>0.50f<>0.50f<>0.00f<>0.00f<>";
        NSString *data05 = @"5<>SP<>1.000f<>1.000f<>0.700f<>1.10f<>0.00f<>0.50f<>0.80f<>0.00f<>0.00f<>";
        NSString *data06 = @"6<>LV<>1.000f<>0.860f<>0.950f<>1.05f<>0.00f<>0.50f<>0.90f<>0.00f<>0.00f<>";
        NSString *data07 = @"7<>MV<>0.800f<>0.640f<>0.810f<>1.10f<>0.00f<>0.50f<>0.70f<>0.00f<>0.00f<>";
        NSString *data08 = @"8<>RO<>1.000f<>0.350f<>0.000f<>1.31f<>0.00f<>0.50f<>0.10f<>0.00f<>0.00f<>";
        NSString *data09 = @"9<>OY<>1.200f<>0.600f<>0.150f<>1.27f<>0.00f<>0.50f<>0.20f<>0.00f<>0.00f<>";
        NSString *data10 = @"10<>YL<>1.350f<>0.850f<>0.350f<>1.27f<>0.00f<>0.50f<>0.35f<>0.00f<>0.00f<>";
        NSString *data11 = @"11<>LY<>1.470f<>1.050f<>0.350f<>1.19f<>0.00f<>0.50f<>0.45f<>0.00f<>0.00f<>";
        NSString *data12 = @"12<>AC<>1.100f<>1.080f<>0.680f<>1.10f<>0.00f<>0.50f<>0.65f<>0.00f<>0.00f<>";
        NSString *data13 = @"13<>TR<>0.720f<>0.500f<>0.000f<>1.15f<>0.00f<>0.50f<>0.30f<>0.00f<>0.00f<>";
        NSString *data14 = @"14<>FL<>0.760f<>0.630f<>0.430f<>1.15f<>0.00f<>0.50f<>0.50f<>0.00f<>0.00f<>";
        NSString *data15 = @"15<>NA<>1.090f<>1.000f<>0.880f<>1.10f<>0.00f<>0.50f<>0.80f<>0.00f<>0.00f<>";
        NSString *data16 = @"16<>SA<>1.000f<>1.060f<>1.000f<>1.10f<>0.00f<>0.50f<>0.85f<>0.00f<>0.00f<>";
        NSString *data17 = @"17<>SC<>1.000f<>1.120f<>0.950f<>1.10f<>0.00f<>0.50f<>0.70f<>0.00f<>0.00f<>";
        NSString *data18 = @"18<>NL<>0.730f<>0.840f<>0.680f<>1.20f<>0.00f<>0.50f<>0.55f<>0.00f<>0.00f<>";
        NSString *data19 = @"19<>FR<>0.400f<>0.470f<>0.240f<>1.22f<>0.00f<>0.50f<>0.35f<>0.00f<>0.00f<>";
        NSString *data20 = @"20<>UG<>0.660f<>0.700f<>0.000f<>1.27f<>0.00f<>0.50f<>0.50f<>0.00f<>0.00f<>";
        NSString *data21 = @"21<>YG<>0.830f<>0.670f<>0.000f<>1.25f<>0.00f<>0.50f<>0.50f<>0.00f<>0.00f<>";
        NSString *data22 = @"22<>BR<>0.880f<>0.500f<>0.090f<>1.22f<>0.00f<>0.50f<>0.40f<>0.00f<>0.00f<>";
        
         NSString *data23 = @"23<>BR<>0.721f<>0.537f<>0.254f<>1.22f<>0.00f<>0.50f<>0.40f<>0.00f<>0.00f<>";
         NSString *data24 = @"24<>BR<>0.631f<>0.658f<>0.376f<>1.22f<>0.00f<>0.50f<>0.40f<>0.00f<>0.00f<>";
        NSString *data25 = @"25<>BR<>0.517f<>0.529f<>0.576f<>1.22f<>0.00f<>0.50f<>0.40f<>0.00f<>0.00f<>";
        
         NSString *data26 = @"26<>TEST04<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
       
        
        /*
        NSString *data23 = @"23<>TEST01<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
        NSString *data24 = @"24<>TEST02<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
        NSString *data25 = @"25<>TEST03<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
       
        NSString *data27 = @"27<>TEST05<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
        NSString *data28 = @"28<>TEST06<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
        NSString *data29 = @"29<>TEST07<>1.000f<>1.000f<>1.000f<>1.00f<>0.00f<>0.50f<>0.00f<>0.00f<>0.00f<>";
        */
        NSMutableArray *listArray = [NSMutableArray array];
        /*
        for(int i=0; i<30; i++) {
            NSString *titleString = [NSString stringWithFormat:@"レンズ%02d",i];
            NSString *arrString = [NSString stringWithFormat:@"%d<>%@<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>%f<>",
                                   i,titleString,
                                   1.000f,1.000f,1.000f,1.00f,0.00f,0.20f,0.00f,0.00f,0.00f];
            
            [listArray addObject:arrString];
        }*/
        
        [listArray addObject:data00];
        [listArray addObject:data01];
        [listArray addObject:data02];
        [listArray addObject:data03];
        [listArray addObject:data04];
        [listArray addObject:data05];
        [listArray addObject:data06];
        [listArray addObject:data07];
        [listArray addObject:data08];
        [listArray addObject:data09];
        [listArray addObject:data10];
        [listArray addObject:data11];
        [listArray addObject:data12];
        [listArray addObject:data13];
        [listArray addObject:data14];
        [listArray addObject:data15];
        [listArray addObject:data16];
        [listArray addObject:data17];
        [listArray addObject:data18];
        [listArray addObject:data19];
        [listArray addObject:data20];
        [listArray addObject:data21];
        [listArray addObject:data22];
        [listArray addObject:data23];
        [listArray addObject:data24];
        [listArray addObject:data25];
        [listArray addObject:data26];
        /*
        [listArray addObject:data23];
        [listArray addObject:data24];
        [listArray addObject:data25];
        [listArray addObject:data26];
        [listArray addObject:data27];
        [listArray addObject:data28];
        [listArray addObject:data29];
        */
        
        
        [defaults setInteger:26 forKey:@"target"];
        [defaults setObject:listArray forKey:@"LendsList"];
        [defaults setBool:true forKey:@"isUser"];
        //BOOL successful = [defaults synchronize];
        [defaults synchronize];
    }
    
    //[UIApplication sharedApplication].statusBarHidden = YES;
    
    //	StoryBoardを使わないコード
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = viewController;
    //UIViewController* viewController = [[UIViewController alloc] init];
    //self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    [[UIScreen mainScreen] setBrightness:0.5f];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

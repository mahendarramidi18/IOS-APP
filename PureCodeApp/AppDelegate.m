//
//  AppDelegate.m
//  PureCodeApp
//
//  Created by remotetiger_user on 3/10/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (){
    
    UITextField *txtField;
    UILabel * lbl;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window =[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UIViewController *vc = [[UIViewController alloc] init];
    
    txtField =[[UITextField alloc]initWithFrame:CGRectMake(20, 100, vc.view.frame.size.width - 40, 30)];
    txtField.borderStyle = UITextBorderStyleRoundedRect;
    txtField.textColor = [UIColor redColor];
    txtField.placeholder =@"Enter Your Name";
    [self.window addSubview:txtField];
    
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame =CGRectMake(vc.view.frame.size.width /2 -60,160 , 40, 30);
    [btn setTitle:@"Go" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:btn];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, vc.view.frame.size.width - 40, 40)];
    lbl.text =@"Welcome";
    lbl.textAlignment = NSTextAlignmentCenter;
    [self.window addSubview:lbl];
    
    
    
    self.window.rootViewController =vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void) btnClicked{
    lbl.text= [NSString stringWithFormat:@"Welcome, %@",txtField.text];
    
}

@end

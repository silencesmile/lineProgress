//
//  ViewController.m
//  JinDuTiao
//
//  Created by youngstar on 15/9/18.
//  Copyright (c) 2015年 杨铭星. All rights reserved.
//

#import "ViewController.h" 
#import "ProgressGradientView.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (nonatomic, strong) ProgressGradientView *pgv;
@property (nonatomic, assign) CGFloat progress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pgv=[[ProgressGradientView alloc] initWithFrame:CGRectMake(10, 200, self.view.frame.size.width-20, 5)];
    [self.view addSubview:_pgv];
    
//    UITextField *textfield = [[UITextField alloc]initWithFrame:(CGRectMake(20, 50, 300, 200))];
//    textfield.backgroundColor = [UIColor lightGrayColor];
//    textfield.placeholder = @"是短发是公司的功夫大使馆";
//    textfield.borderStyle = UITextBorderStyleRoundedRect;
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 30, 5, 5)];
//    view.backgroundColor = [UIColor redColor];
//    textfield.leftView = view;
//    textfield.leftViewMode = UITextFieldViewModeAlways;
//    textfield.textAlignment = 0;
//    [self.view addSubview:textfield];
    
//    [NSTimer scheduledTimerWithTimeInterval:1.0/30 target:self selector:@selector(animationTimerFired:) userInfo:nil repeats:YES];
    [_pgv setProgress:0.12];
}

- (void)animationTimerFired:(NSTimer*)theTimer {
    int re=rand()%10;
    if (re==2) {
        _progress+=0.02;
        [_pgv setProgress:_progress];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

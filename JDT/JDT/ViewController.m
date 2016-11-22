//
//  ViewController.m
//  JDT
//
//  Created by youngstar on 16/7/29.
//  Copyright © 2016年 杨铭星. All rights reserved.
//

#import "ViewController.h"
#import "ASProgressPopUpView.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIView.h>
#import <UIKit/UIKitDefines.h>


@interface ViewController () <ASProgressPopUpViewDataSource>
//@property (strong, nonatomic) ASProgressPopUpView *progressView;
@property (strong, nonatomic) UIProgressView *progressView;

@end

@implementation ViewController

{
    NSTimer *_timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    self.progressView = [[ASProgressPopUpView alloc]init];
//    self.progressView.frame = CGRectMake(50, 200, 200, 100);
//    self.progressView.popUpViewAnimatedColors = @[ [UIColor orangeColor]];
//
//    self.progressView.dataSource = self;
//    
//    [self.view addSubview:_progressView];
//    
//    // 控制显示进度条的说明
//    [self.progressView showPopUpViewAnimated:YES];
//    [self progress];
    
    
    self.progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];//这里是设定progressView的模式为默认模式
    self.progressView.frame = CGRectMake(16, 100, 200, 12);
     self.progressView.progressTintColor=[UIColor yellowColor];//设定progressView的显示颜色
    CGAffineTransform transform = CGAffineTransformMakeScale(1.0f, 4.0f);
    self.progressView.transform = transform;//设定宽高
//    self.progressView.trackImage = image4;
   self.progressView.contentMode = UIViewContentModeScaleAspectFill;
    //设定两端弧度
    self.progressView.layer.cornerRadius = 1.0;
    self.progressView.layer.masksToBounds = YES;
    //设定progressView的现实进度（一般情况下可以从后台获取到这个数字）
     [self.progressView setProgress:0.50 animated:YES];
     [self.view addSubview:self.progressView];
}


//#pragma mark - Timer
//
//- (void)progress
//{
//    self.progressView.progress = 0.87;
//    float progress = self.progressView.progress;
//    
//        [self.progressView setProgress:progress animated:YES];
//        [NSTimer scheduledTimerWithTimeInterval:200
//                                         target:self
//                                       selector:@selector(progress)
//                                       userInfo:nil
//                                        repeats:NO];
//////    }
//}
//
//
//#pragma mark - ASProgressPopUpView dataSource
//
//// <ASProgressPopUpViewDataSource> is entirely optional
//// it allows you to supply custom NSStrings to ASProgressPopUpView
//- (NSString *)progressView:(ASProgressPopUpView *)progressView stringForProgress:(float)progress
//{
//    NSString *s;
//    if (progress < 0.2) {
//        s = @"Just starting";
//    } else if (progress > 0.4 && progress < 0.6) {
//        s = @"About halfway";
//    } else if (progress > 0.75 && progress < 1.0) {
//        s = @"Nearly there";
//    } else if (progress >= 1.0) {
//        s = @"Complete";
//    }
//    return s;
//}
//
//// by default ASProgressPopUpView precalculates the largest popUpView size needed
//// it then uses this size for all values and maintains a consistent size
//// if you want the popUpView size to adapt as values change then return 'NO'
//- (BOOL)progressViewShouldPreCalculatePopUpViewSize:(ASProgressPopUpView *)progressView;
//{
//    return NO;
//}


@end

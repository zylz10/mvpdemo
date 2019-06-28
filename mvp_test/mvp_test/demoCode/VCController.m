//
//  VCController.m
//  mvpdemo
//
//  Created by zhangyiling on 16/12/2.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "VCController.h"
#import "VCView.h"
#import "VCPresenter.h"

@interface VCController ()
{
    VCView *_view;
}
@property(nonatomic, strong) VCPresenter *presenter;

@end

@implementation VCController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _view  = [[VCView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_view];
    
    self.presenter = [[VCPresenter alloc] init];
    [self.presenter setView:_view];
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}
-(void)dealloc{
    NSLog(@"页面销毁");
}
@end

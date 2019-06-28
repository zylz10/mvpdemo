//
//  VCView.m
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "VCView.h"

@interface VCView()
{
    UIButton *_btn;
    UIActivityIndicatorView *_juhua;
}

@property(nonatomic, weak) id<VCModelProtocol> p;

@end

@implementation VCView

- (void) setPresender:(id<BaseModelProtocol>)presender
{
    self.p = (id<VCModelProtocol>)presender;
}

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    [self intView];
    
    return self;
}

-(void)intView{
    
    float w = self.frame.size.width - 30*2;
    
    _btn = [[UIButton alloc]initWithFrame:CGRectMake(30, 100, w , 48)];
    [_btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [_btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [_btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [_btn setTitle:@"获取数据" forState:UIControlStateNormal];
    _btn.layer.borderColor = [UIColor orangeColor].CGColor;
    _btn.layer.borderWidth = 1.f;
    [self addSubview:_btn];
    _btn.tag = 1;
    
    _juhua = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    _juhua.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    _juhua.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    [_juhua setBackgroundColor:[UIColor orangeColor]];
    _juhua.layer.cornerRadius = 10.f;
    _juhua.layer.masksToBounds = YES;
    _juhua.alpha = 0.5;
    [self addSubview:_juhua];
}

-(void)click:(UIButton *)btn{
    _btn.enabled = NO;
    [_juhua startAnimating];
    [self.p sendTag:btn.tag];
}

#pragma VCViewProtocol
/*获取到P层传来的数据*/
-(void)VGetData:(NSString *)data{
    _btn.enabled = YES;
    [_juhua stopAnimating];
    UIAlertView *alter = [[UIAlertView alloc]initWithTitle:nil message:data delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil];
    [alter show];
}

-(void)dealloc{
    NSLog(@"V销毁");
}
@end

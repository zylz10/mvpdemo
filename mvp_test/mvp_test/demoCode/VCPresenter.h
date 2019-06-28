//
//  VCPresenter.h
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "BasePresenter.h"
#import <UIKit/UIKit.h>

/*
 P层V层通讯协议
 */
@protocol VCViewProtocol <BaseViewProtocol>

-(void)VGetData:(NSString *)data;

@end
/*
 P层V层通讯协议
 */
@protocol VCModelProtocol <BaseModelProtocol>

-(void)sendTag:(NSInteger)tag;

@end

/*
 P层M层通讯协议
 */
@protocol VCMtoPProtocol <BaseMtoPProtocol>

-(void)PGetData:(NSString *)data;

@end

@interface VCPresenter : BasePresenter<VCModelProtocol,VCMtoPProtocol>

@end

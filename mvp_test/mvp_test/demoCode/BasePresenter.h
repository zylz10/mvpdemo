//
//  BasePresenter.h
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * MVP·M的Base抽离
 */
@protocol BaseModelProtocol <NSObject>
@end

/**
 * MVP·V的Base抽离
 */
@protocol BaseViewProtocol <NSObject>
- (void) setPresender:(id<BaseModelProtocol>)presender;

@end

/**
 * MVP·P<->M的Base抽离
 */
@protocol BaseMtoPProtocol <NSObject>


@end

@interface BasePresenter : NSObject

/**
 * 设置视图
 */
- (void) setView:(id<BaseViewProtocol>)view;

@end

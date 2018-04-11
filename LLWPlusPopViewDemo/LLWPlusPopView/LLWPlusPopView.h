//
//  LLWPlusPopView.h
//  LLWPlusPopViewDemo
//
//  Created by Eleven on 2018/4/10.
//  Copyright © 2018年 TGF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLWPlusPopView : UIView

/**
 弹出视图

 @param imgs 图片名字集合
 @param titles 文字集合
 @param selectBlock 点击的Item回调
 */
+ (void)showWithImages:(NSArray *)imgs titles:(NSArray *)titles selectBlock:(void (^)(NSInteger index))selectBlock;

@end

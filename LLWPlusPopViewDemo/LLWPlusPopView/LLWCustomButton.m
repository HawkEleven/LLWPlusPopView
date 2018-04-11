//
//  LLWCustomButton.m
//  LLWPlusPopViewDemo
//
//  Created by Eleven on 2018/4/10.
//  Copyright © 2018年 TGF. All rights reserved.
//

#import "LLWCustomButton.h"

static CGFloat const kIconHeight = 71;
static CGFloat const kTitleHeight = 30;

@implementation LLWCustomButton

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGRect rect = CGRectMake(0, (contentRect.size.height - kIconHeight - kTitleHeight) / 2, contentRect.size.width, kIconHeight);
    return rect;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGRect rect = CGRectMake(0, (contentRect.size.height - kIconHeight - kTitleHeight) / 2 + kIconHeight, contentRect.size.width, kTitleHeight);
    return rect;
}

- (void)setHighlighted:(BOOL)highlighted {
    
}

- (void)dealloc {
    NSLog(@"LLWCustomButton");
}

@end

//
//  CoreGrapicsView.m
//  OC_CoreGrapics
//
//  Created by wenze on 2018/9/21.
//  Copyright © 2018年 wenze. All rights reserved.
//

#import "CoreGrapicsView.h"

@implementation CoreGrapicsView

 -(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self drawOneRectangle:rect];
}

/**
 绘制一个矩形
 **/

- (void)drawOneRectangle:(CGRect)rect
{

    //获取上下文
    CGContextRef ctx =  UIGraphicsGetCurrentContext();
    // 画线
    CGContextAddRect(ctx, rect);
    
    CGContextSetFillColorWithColor(ctx, [UIColor greenColor].CGColor);
    
    CGContextFillPath(ctx);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

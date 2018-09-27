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
    //[self drawOneRectangle:rect];
   // [self drawCircleAtx:rect];
    [self drawEllipse:rect];
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

/**
 绘制一个圆
 CGContextAddArc
 x:圆弧的中心点坐标X
 y:曲线控制点的y坐标
 radius:指定的x坐标值
 startAngle:弧的起点与x轴的夹角
 endAngle:弧的终点与x轴的夹角
 clockWise:指定值1
 **/

- (void)drawCircleAtx:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx, rect.origin.x + rect.size.width/2, rect.origin.y + rect.size.width/2, rect.size.width/2, 0, 2* M_PI, 1);
    CGContextSetFillColorWithColor(ctx, [UIColor orangeColor].CGColor);
    CGContextFillPath(ctx);

}

/**
 绘制一个椭圆
 **/

-(void)drawEllipse:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, rect);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextFillPath(ctx);
    CGContextStrokePath(ctx);
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

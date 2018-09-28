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
   // [self drawEllipse:rect];
    //[self drawTriangle];
    [self drawQuadCurve];
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

/**
绘制个多边形 三角形
 **/

- (void)drawTriangle
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    CGContextMoveToPoint(ctx, 100, 40);
    CGContextAddLineToPoint(ctx, 80, 80);
    CGContextAddLineToPoint(ctx, 130, 80);
    CGPDFContextClose(ctx);
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    //CGContextFillPath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);

}

/**
 绘制不规则图片
 **/
- (void)drawQuadCurve{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    CGContextMoveToPoint(ctx, 0,40);
    // cpx:曲线控制点的x轴
    // cpy:曲线控制点的y轴
    CGContextAddQuadCurveToPoint(ctx, 0, 100, 25, 25);
    CGContextSetLineWidth(ctx, 5);
    //CGContextSetLineCap(<#CGContextRef  _Nullable c#>, <#CGLineCap cap#>)
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextSetFillColorWithColor(ctx, [UIColor blueColor].CGColor);
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

//
//  UIColor+AlphaBlend.m
//  Fika30
//
//  Created by Damir Stuhec on 5/29/14.
//  Copyright (c) 2014 damirstuhec. All rights reserved.
//

#import "UIColor+AlphaBlend.h"

@implementation UIColor (AlphaBlend)

- (UIColor *)alphaBlendWithColor:(UIColor *)blendColor alpha:(CGFloat)alpha
{
    CGFloat redComponent;
    CGFloat greenComponent;
    CGFloat blueComponent;
    
    [self getRed:&redComponent green:&greenComponent blue:&blueComponent alpha:nil];
    
    CGFloat blendColorRedComponent;
    CGFloat blendColorGreenComponent;
    CGFloat blendColorBlueComponent;
    
    [blendColor getRed:&blendColorRedComponent green:&blendColorGreenComponent blue:&blendColorBlueComponent alpha:nil];
    
    CGFloat blendedRedComponent = ((blendColorRedComponent - redComponent) * alpha + redComponent);
    CGFloat blendedGreenComponent = ((blendColorGreenComponent - greenComponent) * alpha + greenComponent);
    CGFloat blendedBlueComponent = ((blendColorBlueComponent - blueComponent) * alpha + blueComponent);
    
    return [UIColor colorWithRed:blendedRedComponent green:blendedGreenComponent blue:blendedBlueComponent alpha:1.0f];
}

@end

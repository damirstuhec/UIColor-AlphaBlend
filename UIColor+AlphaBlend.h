//
//  UIColor+AlphaBlend.h
//  Fika30
//
//  Created by Damir Stuhec on 5/29/14.
//  Copyright (c) 2014 damirstuhec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (AlphaBlend)

- (UIColor *)alphaBlendWithColor:(UIColor *)blendColor alpha:(CGFloat)alpha;

@end

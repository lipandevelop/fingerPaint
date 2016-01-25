//
//  DrawingTool.h
//  DrawingTool
//
//  Created by Li Pan on 2016-01-23.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingTool : UIView
@property (nonatomic, strong) UIColor *currentColor;
@property (nonatomic, assign) CGPoint gesturePoints;
@property (nonatomic, assign) CGPoint gestureDrags;
@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic, assign) double velocity;



@end

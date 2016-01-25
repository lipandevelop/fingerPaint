//
//  ViewController.m
//  DrawingTool
//
//  Created by Li Pan on 2016-01-23.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "ViewController.h"
#import "DrawingTool.h"

@interface ViewController ()
@property (nonatomic, strong) DrawingTool *drawingTool;
@property (nonatomic, strong) UIPanGestureRecognizer *panGestureTool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setCanvas];
    [self setTools];
}
- (void)setCanvas {
    DrawingTool *pen = [[DrawingTool alloc] initWithFrame:self.view.bounds];
    pen.currentColor = [UIColor colorWithRed:109.0/255.0 green:177.0/255.0 blue:236.0/255.0 alpha:0.8];
    pen.backgroundColor = [UIColor colorWithRed:28.0/255.0 green:47.0/255.0 blue:64.0/255.0 alpha:1.0];
    [self.view addSubview:pen];
}

- (void)linkPanGestureTool: (UIPanGestureRecognizer *)touches {
    NSLog(@"touched");
    self.drawingTool.gesturePoints = [touches velocityInView:self.view];
    self.drawingTool.currentColor = [UIColor blackColor];
    [self.drawingTool.path moveToPoint:self.drawingTool.gesturePoints];
    [self.drawingTool.path addLineToPoint:self.drawingTool.gesturePoints];
    [self.drawingTool drawRect:self.view.bounds];
    [self.drawingTool setNeedsDisplay];
}

- (void)setTools {
    self.panGestureTool = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(linkPanGestureTool:)];
    [self.view addSubview:self.panGestureTool.view];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

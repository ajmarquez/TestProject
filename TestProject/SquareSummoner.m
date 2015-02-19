//
//  SquareSummoner.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/14/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "SquareSummoner.h"

@interface SquareSummoner ()

@end


@implementation SquareSummoner
@synthesize size;
@synthesize fontName;






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) summonSquare:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view{
    
    //Create the button
    sender.frame = CGRectMake(xnum, ynum, self.size, self.size);
    sender.backgroundColor = color;
    
    
    //caption
    UILabel* captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum+20, self.size, self.size)];
    captionLabel.text= caption;
    captionLabel.textColor= [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    captionLabel.numberOfLines= 2;
     
     //Create the Imageview and Image
     UILabel* iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum-10, self.size, self.size)];
     iconLabel.text = [NSString stringWithUTF8String:code];
     iconLabel.textColor = [UIColor whiteColor];
     iconLabel.textAlignment = NSTextAlignmentCenter;
     iconLabel.font = [UIFont fontWithName:self.fontName size:32];
    
    [view addSubview:sender];
    [view addSubview:captionLabel];
    [view addSubview:iconLabel];
    
}

-(void) summonSquareRoundedTopLeft:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view{
    
    //Create the button
    sender.frame = CGRectMake(xnum, ynum, self.size, self.size);
    sender.backgroundColor = color;
    
    
    //caption
    UILabel* captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum+20, self.size, self.size)];
    captionLabel.text= caption;
    captionLabel.textColor= [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    captionLabel.numberOfLines= 2;
    
    
    //Create the Imageview and Image
    UILabel* iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum-10, self.size, self.size)];
    iconLabel.text = [NSString stringWithUTF8String:code];
    iconLabel.textColor = [UIColor whiteColor];
    iconLabel.textAlignment = NSTextAlignmentCenter;
    iconLabel.font = [UIFont fontWithName:self.fontName size:32];
    //mask
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:sender.bounds
                                     byRoundingCorners:(UIRectCornerTopLeft)
                                           cornerRadii:CGSizeMake(15.0,15.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = sender.bounds;
    maskLayer.path = maskPath.CGPath;
    sender.layer.mask = maskLayer;
    
    [view addSubview:sender];
    [view addSubview:captionLabel];
    [view addSubview:iconLabel];
    
}

-(void) summonSquareRoundedTopRight:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view{
    
    //Create the button
    sender.frame = CGRectMake(xnum, ynum, self.size, self.size);
    sender.backgroundColor = color;
    
    
    //caption
    UILabel* captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum+20, self.size, self.size)];
    captionLabel.text= caption;
    captionLabel.textColor= [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    captionLabel.numberOfLines= 2;
    
    
    //Create the Imageview and Image
    UILabel* iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum-10, self.size, self.size)];
    iconLabel.text = [NSString stringWithUTF8String:code];
    iconLabel.textColor = [UIColor whiteColor];
    iconLabel.textAlignment = NSTextAlignmentCenter;
    iconLabel.font = [UIFont fontWithName:self.fontName size:32];
    //mask
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:sender.bounds
                                     byRoundingCorners:(UIRectCornerTopRight)
                                           cornerRadii:CGSizeMake(15.0,15.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = sender.bounds;
    maskLayer.path = maskPath.CGPath;
    sender.layer.mask = maskLayer;
    
    [view addSubview:sender];
    [view addSubview:captionLabel];
    [view addSubview:iconLabel];
    
}

-(void) summonSquareRoundedBottonLeft:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view{
    
    //Create the button
    sender.frame = CGRectMake(xnum, ynum, self.size, self.size);
    sender.backgroundColor = color;
    
    
    //caption
    UILabel* captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum+20, self.size, self.size)];
    captionLabel.text= caption;
    captionLabel.textColor= [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    captionLabel.numberOfLines= 2;
    
    //Create the Imageview and Image
    UILabel* iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum-10, self.size, self.size)];
    iconLabel.text = [NSString stringWithUTF8String:code];
    iconLabel.textColor = [UIColor whiteColor];
    iconLabel.textAlignment = NSTextAlignmentCenter;
    iconLabel.font = [UIFont fontWithName:self.fontName size:32];
    //mask
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:sender.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft)
                                           cornerRadii:CGSizeMake(15.0,15.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = sender.bounds;
    maskLayer.path = maskPath.CGPath;
    sender.layer.mask = maskLayer;
    
    [view addSubview:sender];
    [view addSubview:captionLabel];
    [view addSubview:iconLabel];
    
}

-(void) summonSquareRoundedBottonRight:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view{
    
    //Create the button
    sender.frame = CGRectMake(xnum, ynum, self.size, self.size);
    sender.backgroundColor = color;
    
    
    //caption
    UILabel* captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum+20, self.size, self.size)];
    captionLabel.text= caption;
    captionLabel.textColor= [UIColor whiteColor];
    captionLabel.textAlignment = NSTextAlignmentCenter;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:10];
    captionLabel.numberOfLines= 2;
    
    
    //Create the Imageview and Image
    UILabel* iconLabel = [[UILabel alloc] initWithFrame:CGRectMake(xnum, ynum-10, self.size, self.size)];
    iconLabel.text = [NSString stringWithUTF8String:code];
    iconLabel.textColor = [UIColor whiteColor];
    iconLabel.textAlignment = NSTextAlignmentCenter;
    iconLabel.font = [UIFont fontWithName:self.fontName size:32];
    //mask
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:sender.bounds
                                     byRoundingCorners:(UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(15.0,15.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = sender.bounds;
    maskLayer.path = maskPath.CGPath;
    sender.layer.mask = maskLayer;
    
    [view addSubview:sender];
    [view addSubview:captionLabel];
    [view addSubview:iconLabel];
    
}

    
    



@end

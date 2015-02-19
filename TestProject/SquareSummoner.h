//
//  SquareSummoner.h
//  TestProject
//
//  Created by Abelardo Marquez on 10/14/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SquareSummoner : UIViewController

//Defining the properties of the squares
// color,  size,fontName, caption



@property CGFloat size;
@property (strong, nonatomic) NSString* fontName;



-(void) summonSquare:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view;
-(void) summonSquareRoundedTopLeft:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view;
-(void) summonSquareRoundedTopRight:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view;
-(void) summonSquareRoundedBottonLeft:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view;
-(void) summonSquareRoundedBottonRight:(UIColor*) color codechar:(const char*) code name:(NSString*) caption xpos:(CGFloat) xnum ypos:(CGFloat) ynum button:(UIButton*) sender view:(UIView*)view;




@end




//
//  RegistryVC.h
//  TestProject
//
//  Created by Abelardo Marquez on 10/16/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistryVC : UIViewController <UITextFieldDelegate>


//Choice Button
@property BOOL optionA;
@property BOOL optionB;
@property (strong, nonatomic) UIButton* optionAButton;
@property (strong, nonatomic) UIButton* optionBButton;
//@property NSString* captionA;
//@property NSString* captionB;
//@property NSString* caption;
@property NSString* selected;

//Methods

-(void) nakedFormField:(NSString*) name
             xposition:(CGFloat) xpos
             yposition:(CGFloat) ypos;

-(void)takeChoice:(NSString*) caption
        optionOne:(NSString*) captionA
          optionB:(NSString*) captionB
             posX:(CGFloat) xpos
             posY:(CGFloat) ypos;

-(void)dressedFormField:(NSString*)caption
                   hint:(NSString*)placeholder
              yposition:(CGFloat) ypos;

@end

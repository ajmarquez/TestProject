//
//  nestedText.h
//  TestProject
//
//  Created by Abelardo Marquez on 9/15/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nestedText : UIViewController

@property (strong, nonatomic) UILabel* titleLabel;
@property (strong, nonatomic) UILabel* descriptionLabel;
@property (strong, nonatomic) NSString* atitleText;
@property (strong, nonatomic) NSString* adescriptionText;
@property (strong, nonatomic) NSString* openIcon;
@property (strong, nonatomic) NSString* closeIcon;
@property (strong, nonatomic) UIColor* titleColor;
@property (strong, nonatomic) UIColor* descriptionColor;
@property (strong, nonatomic) UIButton* titleButton;
@property int jumpContainer;
@property int sizeDescription;

- (void)viewDidLoad:(UIView*)view;
-(IBAction)butOne:(UILabel*)label;



@end

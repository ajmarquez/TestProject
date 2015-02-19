//
//  navbarConstructor.h
//  
//
//  Created by Abelardo Marquez on 9/1/14.
//
//

/*
 [WHEN IMPLEMENTING THIS CLASS COPY AND PASTE THIS FOR REFERENCE]
 
 This Class creates a NavBar using elected icons, colors ans size. Currently works for 4, 3 and 2 buttons NavBar. The
 variables are the following:
 
 Respecting the NavBar:
 
 abarHeightIpad: For the height of the bar on iPad devices
 abarHeightIphone: For the height of the bar on iPhone devices
 abarDiv: for number of divisions
 abarLateralIpad: for lateral space on iPad
 abarLateralIphone: for lateral space on iPhone
 abarBotton: for botton space
 colorBar: the background color of the NavBar
 
 
 iconNumber: The name of the image file for the icon of the current button
 colorNumber: the UIColor for the button
 buttonNumber: the button object
 
 */

#import <UIKit/UIKit.h>

@interface navbarConstructor : UIViewController

@property int abarHeightIpad;
@property int abarHeightIphone;
@property int abarDiv;
@property int abarLateralIpad;
@property int abarLateralIphone;
@property int abarBotton;

@property int iconSize;

@property (strong, nonatomic) UIColor* colorBar;

@property (strong, nonatomic) NSString* iconOne;
@property (strong, nonatomic) UIColor* colorOne;
@property (strong, nonatomic) UIButton* buttonOne;

@property (strong, nonatomic) NSString* iconTwo;
@property (strong, nonatomic) UIColor* colorTwo;
@property (strong, nonatomic) UIButton* buttonTwo;

@property (strong, nonatomic) NSString* iconThree;
@property (strong, nonatomic) UIColor* colorThree;
@property (strong, nonatomic) UIButton* buttonThree;

@property (strong, nonatomic) NSString* iconFour;
@property (strong, nonatomic) UIColor* colorFour;
@property (strong, nonatomic) UIButton* buttonFour;

-(void)buildFourHeadedNavBar:(UIViewController*)view;
-(void)buildThreeHeadedNavBar:(UIViewController*)view;
-(void)buildTwoHeadedNavBar:(UIViewController*)view;

@end

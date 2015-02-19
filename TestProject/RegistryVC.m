//
//  RegistryVC.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/16/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "RegistryVC.h"
#import <QuartzCore/QuartzCore.h>

@interface RegistryVC ()

@end

@implementation RegistryVC
@synthesize optionA;
@synthesize optionB;
@synthesize optionAButton;
@synthesize optionBButton;
//@synthesize caption;
@synthesize selected;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self nakedFormField:@"Prueba" xposition:10 yposition:50];
    
    
    
    [self takeChoice:@"prueba" optionOne:@"1" optionB:@"2" posX:10 posY:100];
    
    [self dressedFormField:@"Nombre" hint:@"Escribe tu nombre" yposition:150 ];
 
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
//
// Here be the methods for the registry
//
//


//-nakedFormField
//Ou yeah, this is a naked form field. Which means that it's a regular form field but with only a planceholder and the horrible colors

-(void) nakedFormField:(NSString*) name xposition:(CGFloat) xpos yposition:(CGFloat) ypos {
    
    //CGRect screenRect = [[UIScreen mainScreen] bounds];
    //CGFloat totalwidth= (screenRect.size.width);
    //CGFloat totalheight= (screenRect.size.height);
    
    UITextField* container = [[UITextField alloc] initWithFrame:CGRectMake(xpos, ypos, self.view.bounds.size.width-20, 40)];
    container.placeholder= name;
    container.layer.masksToBounds = YES;
    container.layer.borderColor = [[UIColor colorWithRed:252/255.0f
                                                   green:162/255.0f
                                                    blue:102/255.0f
                                                   alpha:1] CGColor];
    container.layer.borderWidth = 2.0f;
    container.backgroundColor = [UIColor whiteColor];
    container.textAlignment = NSTextAlignmentLeft;
    container.font = [UIFont fontWithName:@"Helvetica" size:12];
    container.delegate = self;
    container.attributedPlaceholder = [[NSAttributedString alloc] initWithString:name
                                                                      attributes:@{NSForegroundColorAttributeName:
                                                                                       [UIColor colorWithRed:227/255.0f green:103/255.0f blue:86/255.0f alpha:1.f]}];
    container.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
    
    [self.view addSubview:container];
    
    
}

//-takeChoice
//Choose your destiny! well actually it's a simple square choice thingy.

-(void)takeChoice:(NSString*) caption
             optionOne:(NSString*) captionA
               optionB:(NSString*) captionB
                  posX:(CGFloat) xpos
                  posY:(CGFloat) ypos{
    
    
    UILabel* captionLabel = [[UILabel alloc] init];
    captionLabel.frame = CGRectMake(xpos, ypos+5, 200, 100);
    captionLabel.text = caption;
    [captionLabel sizeToFit];
    captionLabel.numberOfLines=0;
    captionLabel.font = [UIFont fontWithName:@"Helvetica" size:12];
    captionLabel.textColor = [UIColor redColor];
    
    
    
    
    
    self.optionAButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.optionBButton = [[UIButton alloc] init];
    //Create frame
    CGFloat marginCaption = 5;
    self.optionAButton.frame=  CGRectMake(xpos+0+captionLabel.bounds.size.width+marginCaption, ypos+0 , 30, 30);
    self.optionBButton.frame=  CGRectMake(xpos+35+captionLabel.bounds.size.width+marginCaption, ypos+0 , 30, 30);
    //customize colors (ugly mofo colors man...) first the A
    self.optionAButton.backgroundColor= [UIColor whiteColor];
    
    
    
    [self.optionAButton setTitle:captionA forState:UIControlStateNormal];
    [self.optionAButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    self.
    
    //Now the B
    self.optionBButton.backgroundColor= [UIColor whiteColor];
    
    [self.optionBButton setTitle:captionB forState:UIControlStateNormal];
    [self.optionBButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [self.view addSubview:captionLabel];
    [self.view addSubview:self.optionAButton];
    [self.view addSubview:self.optionBButton];
    
    [self.optionAButton addTarget:self action:@selector(optionASelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.optionBButton addTarget:self action:@selector(optionBSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    if (self.optionA==YES) {
        self.selected = captionA;
        
    } else {
        self.selected = captionB;
    }
    
       NSLog(self.selected);

}


-(void)dressedFormField:(NSString*) caption hint:(NSString*)placeholder yposition:(CGFloat) ypos{
    
    UIView* container = [[UITextField alloc] initWithFrame:CGRectMake(10, ypos, self.view.bounds.size.width-20, 40)];
    container.layer.borderColor = [[UIColor colorWithRed:252/255.0f
                                                   green:162/255.0f
                                                    blue:102/255.0f
                                                   alpha:1] CGColor];
    container.layer.borderWidth = 2.0f;
    
    UILabel* nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, ypos, 100, 40)];
    nameLabel.text=caption;
    nameLabel.font = [UIFont fontWithName:@"Helvetica" size:12];
    nameLabel.textColor = [UIColor redColor];
    //[nameLabel sizeToFit];
    
    UITextField* textfield = [[UITextField alloc] initWithFrame:CGRectMake(nameLabel.bounds.size.width, ypos, self.view.bounds.size.width-120, 40)];
    textfield.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder
                                                                      attributes:@{NSForegroundColorAttributeName:
                                                                                       [UIColor colorWithRed:227/255.0f green:103/255.0f blue:86/255.0f alpha:1.f]}];
    //textfield.textColor = [UIColor colorWithRed:227/255.0f green:103/255.0f blue:86/255.0f alpha:1.f];
    textfield.font = [UIFont fontWithName:@"Helvetica" size:12];
   
    
    [self.view addSubview:container];
    [self.view addSubview:nameLabel];
    [self.view addSubview:textfield];
    
    
    
    
}

//
//
//
//   Utility methods: It's a fancy way to say that this are the things used to build the other things.
//
//
//

-(void) optionASelected: (UIButton*) button {
    self.optionA=YES;
    self.optionB=NO;
    [self.optionAButton.layer setBorderColor:[[UIColor colorWithRed:252/255.0f
                                                              green:162/255.0f
                                                               blue:102/255.0f
                                                              alpha:1] CGColor]];
    [self.optionAButton.layer setBorderWidth:2.0f];
    [self.optionBButton.layer setBorderWidth:0.0f];
    [self.optionBButton setBackgroundColor:[UIColor whiteColor]];
    
}

-(void) optionBSelected: (UIButton*) button {
    self.optionA=NO;
    self.optionB=YES;
    [self.optionBButton.layer setBorderColor:[[UIColor colorWithRed:252/255.0f
                                                              green:162/255.0f
                                                               blue:102/255.0f
                                                              alpha:1] CGColor]];
    [self.optionBButton.layer setBorderWidth:2.0f];
    [self.optionAButton.layer setBorderWidth:0.0f];
    [self.optionAButton setBackgroundColor:[UIColor whiteColor]];
}



@end

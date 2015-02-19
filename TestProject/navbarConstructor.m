//
//  navbarConstructor.m
//  
//
//  Created by Abelardo Marquez on 9/1/14.
//
//

#import "navbarConstructor.h"

@interface navbarConstructor ()

@end

@implementation navbarConstructor

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //Declare buttons
    self.buttonOne= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonTwo= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonThree= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonFour= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    
}

-(void)buildFourHeadedNavBar:(UIViewController*)view {
    
    [view.view addSubview:self.view];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    CGFloat totalwidth= screenRect.size.width;
    CGFloat totalheight= screenRect.size.height;
    CGFloat yPosition= 0;
    CGFloat xPosition= 0;
    CGFloat barHeight= 0;
    CGFloat navbarWidth= 0;
    self.abarDiv=4;
    

#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad
   
    
    if ( IDIOM == IPAD ) {
        xPosition= self.abarLateralIpad;
        barHeight=self.abarHeightIpad;
        yPosition= totalheight-self.abarHeightIpad-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIpad*2;
        
    } else {
        xPosition= self.abarLateralIphone;
        barHeight= self.abarHeightIphone;
        yPosition= totalheight-self.abarHeightIphone-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIphone*2;
    }
   
   CGFloat buttonWidth=navbarWidth/self.abarDiv; 
    //Load BackgroundBar
    UIImageView *barra = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, yPosition,navbarWidth, barHeight)];
    barra.backgroundColor = self.colorBar;
    [self.view addSubview:barra];
    
    //Build Buttons
    //Then Images
    
    self.buttonOne.frame = CGRectMake(xPosition, yPosition, buttonWidth, barHeight);
    self.buttonOne.backgroundColor = self.colorOne;
    UIImage *theimageOne = [UIImage imageNamed:self.iconOne];
    UIImageView *theimageViewOne = [[UIImageView alloc] init];
    theimageViewOne.image = theimageOne;
    theimageViewOne.frame = CGRectMake(xPosition+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonOne];
    [self.view addSubview:theimageViewOne];
    


    self.buttonTwo.frame = CGRectMake(xPosition+1*buttonWidth, yPosition, buttonWidth, barHeight);
    self.buttonTwo.backgroundColor = self.colorTwo;
    UIImage *theimageTwo = [UIImage imageNamed:self.iconTwo];
    UIImageView *theimageViewTwo = [[UIImageView alloc] init];
    theimageViewTwo.image = theimageTwo;
    theimageViewTwo.frame = CGRectMake(xPosition+1*buttonWidth+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonTwo];
    [self.view addSubview:theimageViewTwo];

    

    self.buttonThree.frame = CGRectMake(xPosition+2*buttonWidth, yPosition, buttonWidth, barHeight);
    self.buttonThree.backgroundColor = self.colorThree;
    UIImage *theimageThree = [UIImage imageNamed:self.iconThree];
    UIImageView *theimageViewThree = [[UIImageView alloc] init];
    theimageViewThree.image = theimageThree;
    theimageViewThree.frame = CGRectMake(xPosition+2*buttonWidth+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonThree];
    [self.view addSubview:theimageViewThree];
    
    

    self.buttonFour.frame = CGRectMake(xPosition+3*buttonWidth, yPosition, buttonWidth, barHeight);
    self.buttonFour.backgroundColor = self.colorFour;
    UIImage *theimageFour = [UIImage imageNamed:self.iconFour];
    UIImageView *theimageViewFour = [[UIImageView alloc] init];
    theimageViewFour.image = theimageFour;
    theimageViewFour.frame = CGRectMake(xPosition+3*buttonWidth+(buttonWidth/2)-(self.iconSize/2),
                                         totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                         self.iconSize,
                                         self.iconSize);
    [self.view addSubview:self.buttonFour];
    [self.view addSubview:theimageViewFour];
    
   
}


-(void)buildThreeHeadedNavBar:(UIViewController*)view {
    
    [view.view addSubview:self.view];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    CGFloat totalwidth= screenRect.size.width;
    CGFloat totalheight= screenRect.size.height;
    CGFloat yPosition= 0;
    CGFloat xPosition= 0;
    CGFloat barHeight= 0;
    CGFloat navbarWidth= 0;
    self.abarDiv=4;
    
    
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad
    
    
    if ( IDIOM == IPAD ) {
        xPosition= self.abarLateralIpad;
        barHeight=self.abarHeightIpad;
        yPosition= totalheight-self.abarHeightIpad-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIpad*2;
        
    } else {
        xPosition= self.abarLateralIphone;
        barHeight= self.abarHeightIphone;
        yPosition= totalheight-self.abarHeightIphone-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIphone*2;
    }
    
    CGFloat buttonWidth=navbarWidth/self.abarDiv;
    //Load BackgroundBar
    UIImageView *barra = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, yPosition,navbarWidth, barHeight)];
    barra.backgroundColor = self.colorBar;
    [self.view addSubview:barra];
    
    //Build Buttons
    //Then Images
    
    self.buttonOne.frame = CGRectMake(xPosition, yPosition, buttonWidth, barHeight);
    self.buttonOne.backgroundColor = self.colorOne;
    UIImage *theimageOne = [UIImage imageNamed:self.iconOne];
    UIImageView *theimageViewOne = [[UIImageView alloc] init];
    theimageViewOne.image = theimageOne;
    theimageViewOne.frame = CGRectMake(xPosition+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonOne];
    [self.view addSubview:theimageViewOne];
    
    
    
    self.buttonTwo.frame = CGRectMake(xPosition+1*buttonWidth, yPosition, 2*buttonWidth, barHeight);
    self.buttonTwo.backgroundColor = self.colorTwo;
    UIImage *theimageTwo = [UIImage imageNamed:self.iconTwo];
    UIImageView *theimageViewTwo = [[UIImageView alloc] init];
    theimageViewTwo.image = theimageTwo;
    theimageViewTwo.frame = CGRectMake(xPosition+1*buttonWidth+buttonWidth-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonTwo];
    [self.view addSubview:theimageViewTwo];
    
    
    self.buttonThree.frame = CGRectMake(xPosition+3*buttonWidth, yPosition, buttonWidth, barHeight);
    self.buttonThree.backgroundColor = self.colorThree;
    UIImage *theimageThree = [UIImage imageNamed:self.iconFour];
    UIImageView *theimageViewThree = [[UIImageView alloc] init];
    theimageViewThree.image = theimageThree;
    theimageViewThree.frame = CGRectMake(xPosition+3*buttonWidth+(buttonWidth/2)-(self.iconSize/2),
                                        totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                        self.iconSize,
                                        self.iconSize);
    [self.view addSubview:self.buttonThree];
    [self.view addSubview:theimageViewThree];
    
}


-(void)buildTwoHeadedNavBar:(UIViewController*)view {
    
    [view.view addSubview:self.view];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    CGFloat totalwidth= screenRect.size.width;
    CGFloat totalheight= screenRect.size.height;
    CGFloat yPosition= 0;
    CGFloat xPosition= 0;
    CGFloat barHeight= 0;
    CGFloat navbarWidth= 0;
    self.abarDiv=2;
   
    
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad
    
    
    if ( IDIOM == IPAD ) {
        xPosition= self.abarLateralIpad;
        barHeight=self.abarHeightIpad;
        yPosition= totalheight-self.abarHeightIpad-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIpad*2;
        
    } else {
        xPosition= self.abarLateralIphone;
        barHeight= self.abarHeightIphone;
        yPosition= totalheight-self.abarHeightIphone-self.abarBotton;
        navbarWidth = totalwidth- self.abarLateralIphone*2;
    }
    
     CGFloat buttonWidth=navbarWidth/self.abarDiv;
    //Load BackgroundBar
    UIImageView *barra = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, yPosition,navbarWidth, barHeight)];
    barra.backgroundColor = self.colorBar;
    [self.view addSubview:barra];
    
    //Build Buttons
    //Then Images
    
    self.buttonOne.frame = CGRectMake(xPosition, yPosition, buttonWidth, barHeight);
    self.buttonOne.backgroundColor = self.colorOne;
    UIImage *theimageOne = [UIImage imageNamed:self.iconOne];
    UIImageView *theimageViewOne = [[UIImageView alloc] init];
    theimageViewOne.image = theimageOne;
    theimageViewOne.frame = CGRectMake(xPosition+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    [self.view addSubview:self.buttonOne];
    [self.view addSubview:theimageViewOne];
    
    
    
    self.buttonTwo.frame = CGRectMake(xPosition+1*buttonWidth, yPosition, 1*buttonWidth, barHeight);
    self.buttonTwo.backgroundColor = self.colorTwo;
    UIImage *theimageTwo = [UIImage imageNamed:self.iconTwo];
    UIImageView *theimageViewTwo = [[UIImageView alloc] init];
    theimageViewTwo.image = theimageTwo;
    theimageViewTwo.frame = CGRectMake(xPosition+1*buttonWidth+(buttonWidth/2)-(self.iconSize/2),
                                       totalheight-self.abarBotton-barHeight+((barHeight-self.iconSize)/2),
                                       self.iconSize,
                                       self.iconSize);
    
    [self.view addSubview:self.buttonTwo];
    [self.view addSubview:theimageViewTwo];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

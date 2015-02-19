//
//  CornerVC.m
//  TestProject
//
//  Created by Abelardo Marquez on 10/14/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "CornerVC.h"
#import "SquareSummoner.h"

@interface CornerVC ()

@end

@implementation CornerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    CGFloat totalheight= (screenRect.size.height);
    
    self.view.backgroundColor = [UIColor whiteColor];
    /*
    UIImageView* background = [[UIImageView alloc] initWithFrame:CGRectMake(10, 50, 300, 300)];
    background.backgroundColor = [UIColor redColor];
    
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:background.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(15.0, 15.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = background.bounds;
    maskLayer.path = maskPath.CGPath;
    background.layer.mask = maskLayer;
    
    [self.view addSubview:background];
     */
    //[maskLayer release];
    
    UIButton* buscador = [[UIButton alloc] init];
    UIButton* test2 = [[UIButton alloc] init];
    UIButton* test3 = [[UIButton alloc] init];
    UIButton* test4 = [[UIButton alloc] init];
    UIButton* test5 = [[UIButton alloc] init];
    UIButton* test6 = [[UIButton alloc] init];
    UIButton* test7 = [[UIButton alloc] init];
    UIButton* test8 = [[UIButton alloc] init];
    UIButton* test9 = [[UIButton alloc] init];
    
    //Color Declarations... wow such serious wow
    
    UIColor* colorTopLeft = [UIColor colorWithRed:154/255.0f green:92/255.0f blue:165/255.0f alpha:1];
    UIColor* colorMiddleLeft = [UIColor colorWithRed:161/255.0f green:122/255.0f blue:175/255.0f alpha:1];
    UIColor* colorBottonLeft = [UIColor colorWithRed:186/255.0f green:155/255.0f blue:197/255.0f alpha:1];
    
    UIColor* colorTopMiddle = [UIColor colorWithRed:0.0f green:145/255.0f blue:162/255.0f alpha:1.0f];
    UIColor* colorMiddleMiddle = [UIColor colorWithRed:0.0f green:183/255.0f blue:183/255.0f alpha:1.0f];
    UIColor* colorMiddleBotton = [UIColor colorWithRed:52/255.0f green:198/255.0f blue:198/255.0f alpha:1.0f];
    
    UIColor* colorTopRight = [UIColor colorWithRed:245/255.0f green:160/255.0f blue:31/255.0f alpha:1.0f];
    UIColor* colorMiddleRight = [UIColor colorWithRed:248/255.0f green:179/255.0f blue:76/255.0f alpha:1.0f];
    UIColor* colorBottonRight = [UIColor colorWithRed:249/255.0f green:198/255.0f blue:119/255.0f alpha:1.0f];
    
    
    
    
    SquareSummoner* first = [[SquareSummoner alloc] init];
    first.fontName = @"farmahorro_icon";
    
    CGFloat offSetX= 20;
    CGFloat offSetY= 50;
   
    first.size = ((totalwidth-40)/3);
    
    //[first summonSquare:[UIColor redColor] codechar:"\ue600" name:@"Caption" xpos:10 ypos:50 button:test view:self.view];
    
    [first summonSquareRoundedTopLeft:colorTopLeft codechar:"\ue615" name:@"Buscador de Productos" xpos:offSetX ypos:offSetY button:buscador view:self.view];
    [first summonSquare:colorTopMiddle codechar:"\ue610" name:@"Promociones" xpos:offSetX+first.size ypos:offSetY button:test2 view:self.view];
    [first summonSquareRoundedTopRight:colorTopRight codechar:"\ue616" name:@"Gestor de Tratamiento" xpos:offSetX+first.size*2 ypos:50 button:test3 view:self.view];
    [first summonSquare:colorMiddleLeft codechar:"\ue618" name:@"Realidad Aumentada" xpos:offSetX+first.size*0 ypos:offSetY+first.size button:test4 view:self.view];
    [first summonSquare:colorMiddleMiddle codechar:"\ue611" name:@"Ubícanos" xpos:offSetX+first.size*1 ypos:offSetY+first.size button:test5 view:self.view];
    [first summonSquare:colorMiddleRight codechar:"\ue617" name:@"Empleo" xpos:offSetX+first.size*2 ypos:offSetY+first.size button:test6 view:self.view];
    [first summonSquareRoundedBottonLeft:colorBottonLeft codechar:"\ue60b" name:@"Registro de Clientes" xpos:offSetX+first.size*0 ypos:offSetY+first.size*2 button:test7 view:self.view];
    [first summonSquare:colorMiddleBotton codechar:"\ue603" name:@"Contáctanos" xpos:offSetX+first.size*1 ypos:offSetY+first.size*2 button:test8 view:self.view];
    [first summonSquareRoundedBottonRight:colorBottonRight codechar:"\ue60c" name:@"Configuración" xpos:offSetX+first.size*2 ypos:offSetY+first.size*2 button:test9 view:self.view];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


    
    


@end

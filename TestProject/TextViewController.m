//
//  TextViewController.m
//  TestProject
//
//  Created by Abelardo Marquez on 9/26/14.
//  Copyright (c) 2014 singular. All rights reserved.
//

#import "TextViewController.h"
#import "UILabel+Boldify.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat totalwidth= (screenRect.size.width);
    CGFloat totalheight= (screenRect.size.height);
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel* header= [[UILabel alloc] init];
    header.text=@"Preguntas Frecuentes";
    header.frame= CGRectMake(0, 20, totalwidth, 30);
    header.font = [UIFont fontWithName:@"Avenir-Heavy" size:16];
    header.textAlignment = NSTextAlignmentCenter;
    
    UILabel* faqText = [[UILabel alloc] init];
    
    faqText.text = @"\n¿Qué es Singular?\n\nEs una aplicación móvil que te permite disfrutar de experiencias de realidad aumentada, al fusionar las propiedades del mundo físico y digital en los objetos del mundo a tu alrededor, añadiendo capaz de información que enriquecen la experiencia humana.\n\n\n¿Qué es la Realidad Aumentada?\n\nEs la tecnología que nos permite añadir capacidades propias del mundo digital a objetos del mundo físico, a travÈs de dispositivos moviles como teléfonos celulares, tablets y próximamente, lentes inteligentes como Google Glass.\n\n\n¿Cuales contenidos tienen Realidad Aumentada?\n\nTodos aquellos que estén identificados con las iniciales de \"Augmented Reality\" (AR) de Singular. Donde quiera que veas este símbolo, una grandiosa experiencia interactiva de Realidad Aumentada estará esperando a ser descubierta por ti.\n\n\n¿Dónde puedo encontrar más experiencias?\n\nCada día más y más contenidos contienen experiencias aumentadas. Busca en los periódicos, revistas, envases, etc. el símbolo (AR) y sabrás que allí existe un mundo enriquecido. También puedes visitar la Sección de Noticias donde podrás enterarte de las últimos productos que han creado experiencias interactivas para ti.\n\n\nNo están funcionando las experiencias ¿Por qué?\n\nCONEXIÓN: La principal causa por la cual puede que no estés experimento la RA es que tengas un problema de conexión. Revisa que estés conectado a internet y vuelve a intentar.\n\nHARDWARE: Otra razón podrÌa ser que el procesador de tu celular no tenga las especificaciones adecuadas para funcionar con la RA, y debas actualizar tu equipo.\n\nRECONOCIMIENTO: La app de Singular reconoce los contenidos que se visualizan a través del modo cámara para a su vez mostrar el contenido interactivo. A veces, la iluminación directa sobre la superficie del contenido físico (que genera manchas de luz) puede afectar el proceso de reconocimiento. Cambia el ángulo de visualización y prueba otra vez.\n\nCONTENIDO INERTE: ¡Hey! ¿Ya revisaste que lo que estés explorando tiene el sÌmbolo de (AR)?. Quizá la revista, libro o empaque que estás explorando aún no tiene contenido aumentado. Pronto pequeño saltamontes... pronto\n\n";
    faqText.textAlignment= NSTextAlignmentLeft;
    faqText.numberOfLines= 0;
    faqText.lineBreakMode= NSLineBreakByWordWrapping;
    faqText.frame = CGRectMake(10, 45, totalwidth-40, totalheight*2);
    faqText.font = [UIFont fontWithName:@"Avenir-Light" size:12 ];
    
    //[faqText boldSubstring:@"¿"];
    [faqText boldSubstring:@"¿Qué es Singular?"];
    [faqText boldSubstring:@"¿Qué es la Realidad Aumentada?"];
    [faqText boldSubstring:@"¿Cuales contenidos tienen Realidad Aumentada?"];
    [faqText boldSubstring:@"¿Dónde puedo encontrar más experiencias?"];
    [faqText boldSubstring:@"No están funcionando las experiencias ¿Por qué?"];
    
   
    
    UIScrollView* panorama = [[UIScrollView alloc] init];
    panorama.backgroundColor = [UIColor clearColor];
    
    [panorama setFrame:CGRectMake(0, 0, totalwidth, totalheight)];
    [panorama setContentSize:CGSizeMake(totalwidth, totalheight*2)];
    [panorama setScrollEnabled:YES];
    [panorama setShowsVerticalScrollIndicator:YES];
    [panorama setShowsHorizontalScrollIndicator:NO];
    
    [self.view addSubview:panorama];
    [panorama addSubview:header];
    [panorama addSubview:faqText];
    
    
    
    
    
    
    
    
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

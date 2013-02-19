//
//  ViewController.h
//  CalculadorIngresos
//
//  Created by Pedro A. Marín Reyes on 31/01/13.
//  Copyright (c) 2013 Pedro A. Marín Reyes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelMesIni;
@property (weak, nonatomic) IBOutlet UILabel *labelAnos;
@property (weak, nonatomic) IBOutlet UITextField *anos;
@property (weak, nonatomic) IBOutlet UITextField *interes;
@property (weak, nonatomic) IBOutlet UILabel *labelMesFin;
@property (weak, nonatomic) IBOutlet UITextField *saldo;
@property (weak, nonatomic) IBOutlet UITextField *ahorro;

- (IBAction)boton:(id)sender;
- (IBAction)fin:(id)sender;

@end

//
//  ViewController.m
//  CalculadorIngresos
//
//  Created by Pedro A. Marín Reyes on 31/01/13.
//  Copyright (c) 2013 Pedro A. Marín Reyes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    float benef;
}

@end

@implementation ViewController
@synthesize labelMesIni =_labelMes;
@synthesize labelAnos = _labelAnos;
@synthesize anos = _anos;
@synthesize interes = _interes;
@synthesize saldo = _saldo;
@synthesize labelMesFin=_labelMesFin;
@synthesize ahorro=_ahorro;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    benef=0.;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boton:(id)sender {
    float ahorro = [_ahorro.text floatValue];
    float anos = [_anos.text floatValue];
    float saldo = [_saldo.text floatValue];
    float interes = [_interes.text floatValue];
    float resultado= ((saldo*interes)/100.0);
    resultado-=resultado*0.21; //ganancias anuales
    float it = resultado;
    benef=it;
    resultado/=12.; // ganancia inicial
    NSString *ristra = [[NSString alloc] initWithFormat:@"%1.2f",resultado ];
    _labelMes.text=ristra;
    [_interes resignFirstResponder];
    [_saldo resignFirstResponder];
    [_anos resignFirstResponder];
    [_ahorro resignFirstResponder];
    for (int i=1;i<anos;i++) {
        saldo+=it+ahorro*12;
        it= ((saldo*interes)/100.0);
        it-=it*0.21;
        benef+=it;
    }
    saldo+=it + ahorro*12;
    it /=12.;
    _labelMesFin.text=[[NSString alloc]initWithFormat:@"%1.2f",it];
     NSString *ristra2 = [[NSString alloc]initWithFormat:@"%1.2f",saldo];
    _saldo.text=ristra2;
    _labelAnos.text = [[NSString alloc]initWithFormat:@"Beneficio de %f en %@ años",benef, _anos.text ];
    
}

- (IBAction)fin:(id)sender {
    
}
@end

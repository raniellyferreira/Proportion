//
//  ViewController.m
//  Proportion
//
//  Created by Ranielly Ferreira on 19/06/15.
//  Copyright (c) 2015 Ranielly Ferreira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.fromX.delegate = self;
    self.fromY.delegate = self;
    self.toX.delegate = self;
    self.toY.delegate = self;
    
    UIToolbar *barraTeclado = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320.0f, 44.0f)];
    
    UIBarButtonItem *btFechar = [[UIBarButtonItem alloc] initWithTitle:@"Fechar" style:UIBarButtonItemStylePlain target:self action:@selector(touchesBegan:withEvent:)];
    
    //FAKFontAwesome *downIcon = [FAKFontAwesome chevronDownIconWithSize:20.0f];
    //UIBarButtonItem *btFechar = [[UIBarButtonItem alloc] initWithImage:[downIcon imageWithSize:CGSizeMake(20.0f, 20.0f)] style:UIBarButtonItemStylePlain target:self action:@selector(touchesBegan:withEvent:)];
    
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    FAKFontAwesome *prevIcon = [FAKFontAwesome chevronLeftIconWithSize:20.0f];
    UIBarButtonItem *prevCamp = [[UIBarButtonItem alloc] initWithImage:[prevIcon imageWithSize:CGSizeMake(20.0f, 20.0f)] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    FAKFontAwesome *nextIcon = [FAKFontAwesome chevronRightIconWithSize:20.0f];
    UIBarButtonItem *nextCamp = [[UIBarButtonItem alloc] initWithImage:[nextIcon imageWithSize:CGSizeMake(20.0f, 20.0f)] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [barraTeclado setItems:@[btFechar,space,prevCamp,nextCamp] animated:YES];
    
    self.fromX.inputAccessoryView = barraTeclado;
    self.fromY.inputAccessoryView = barraTeclado;
    self.toX.inputAccessoryView = barraTeclado;
    self.toY.inputAccessoryView = barraTeclado;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"%@",textField.text);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.fromX resignFirstResponder];
    [self.fromY resignFirstResponder];
    [self.toX resignFirstResponder];
    [self.toY resignFirstResponder];
    
}

@end

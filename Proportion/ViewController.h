//
//  ViewController.h
//  Proportion
//
//  Created by Ranielly Ferreira on 19/06/15.
//  Copyright (c) 2015 Ranielly Ferreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FontAwesomeKit/FAKFontAwesome.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *fromX;
@property (weak, nonatomic) IBOutlet UITextField *fromY;

@property (weak, nonatomic) IBOutlet UITextField *toX;
@property (weak, nonatomic) IBOutlet UITextField *toY;

@end


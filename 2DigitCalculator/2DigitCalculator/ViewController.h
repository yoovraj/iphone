//
//  ViewController.h
//  2DigitCalculator
//
//  Created by yoovraj shinde on 10/4/14.
//  Copyright (c) 2014 ___YOOVRAJSHINDE___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *subButton;
@property (weak, nonatomic) IBOutlet UIButton *mulButton;
@property (weak, nonatomic) IBOutlet UIButton *divButton;

- (IBAction)operationButton:(id) sender;
@end


//
//  ViewController.m
//  2DigitCalculator
//
//  Created by yoovraj shinde on 10/4/14.
//  Copyright (c) 2014 ___YOOVRAJSHINDE___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *operation;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) operationButton:(id) sender {
    NSLog(@"OPeration Button pressed");
    double firstNumber  = [_firstNumber.text  isEqual: [NSNull null]] ?  0: [_firstNumber.text  doubleValue];
    double secondNumber = [_secondNumber.text isEqual: [NSNull null]] ?  0: [_secondNumber.text doubleValue];
    
    double result = 0;
    
    if( (UIButton*) sender == _addButton) {
        NSLog(@" Add ");
        _operation.text = @" + ";
        result = firstNumber + secondNumber;
        
    } else if ( (UIButton*) sender == _subButton ){
        NSLog(@" Sub ");
        _operation.text = @" - ";
        result = firstNumber - secondNumber;
        
    } else if ( (UIButton*) sender == _mulButton ){
        NSLog(@" Mul ");
        _operation.text = @" x ";
        result = firstNumber * secondNumber;
        
    } else if ( (UIButton*) sender == _divButton ){
        NSLog(@" Div ");
        _operation.text = @" / ";
        if (secondNumber != 0) {
            result = firstNumber / secondNumber;
        } else {
            result = 0;
        }
    }
    _result.text = [NSString stringWithFormat:@"%.3f", result];
}
@end

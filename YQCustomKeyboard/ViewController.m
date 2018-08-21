//
//  ViewController.m
//  YQCustomKeyboard
//
//  Created by 杨清 on 2018/8/8.
//  Copyright © 2018年 Soargift. All rights reserved.
//

#import "ViewController.h"
#import "YQCustomKeyboardView.h"

@interface ViewController () <YQCustomKeyboardViewDelegate,UITextFieldDelegate>

@property (strong, nonatomic) UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 90, 200, 44)];
    _textField.borderStyle = UITextBorderStyleLine;
    _textField.placeholder = @"请输入";
    _textField.inputView = [YQCustomKeyboardView keyboardWithType:YQCustomKeyboardViewTypeCarnumber delegate:self];
    _textField.delegate = self;
    [self.view addSubview:_textField];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - < YQCustomKeyboardViewDelegate >
- (void)customKeyboardInputKey:(NSString *)key
{
    NSLog(@"key = %@",key);
    if (self.textField.text) {
        self.textField.text = [self.textField.text stringByAppendingString:key];
    }
    else {
        self.textField.text = key;
    }
    
}

- (void)customKeyboardDeleteKey
{
    if (self.textField.text) {
        if (self.textField.text.length>0) {
            self.textField.text = [self.textField.text substringToIndex:self.textField.text.length-1];
        }
    }
    else {
    }
}
@end

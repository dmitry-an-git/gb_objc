//
//  PostRequestViewController.m
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import "PostRequestViewController.h"

@interface PostRequestViewController ()

@end

@implementation PostRequestViewController

- (UITextView *) outputTextView {
    if (!_outputTextView) {
        _outputTextView = [[UITextView alloc] initWithFrame:CGRectZero];
        _outputTextView.translatesAutoresizingMaskIntoConstraints = NO;
        _outputTextView.backgroundColor = [UIColor blackColor];
        _outputTextView.font = [UIFont monospacedSystemFontOfSize:10 weight: UIFontWeightRegular];
        _outputTextView.textColor = [UIColor whiteColor];
        _outputTextView.editable = NO;
    }
    return _outputTextView;
}

- (UIButton *) button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        _button.translatesAutoresizingMaskIntoConstraints = NO;
        _button.backgroundColor = [UIColor systemBlueColor];
        _button.layer.cornerRadius = 20.0;
        [_button setTitle:@"Submit" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (UITextField *) inputTextField1 {
    if (!_inputTextField1) {
        _inputTextField1 = [self createTextField];
        _inputTextField1.placeholder = @"Enter parameter 1 here";
    }
    return _inputTextField1;
}

- (UITextField *) inputTextField2 {
    if (!_inputTextField2) {
        _inputTextField2 = [self createTextField];
        _inputTextField2.placeholder = @"Enter parameter 2 here";
    }
    return _inputTextField2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.inputTextField1];
    [self.view addSubview:self.inputTextField2];
    [self.view addSubview:self.button];
    [self.view addSubview:self.outputTextView];
    [self setupConstraints];
}

- (UITextField *) createTextField {
    UITextField * inputTextField = [[UITextField alloc] init];
    inputTextField.translatesAutoresizingMaskIntoConstraints = NO;
    inputTextField.borderStyle = UITextBorderStyleRoundedRect;
    inputTextField.backgroundColor = [UIColor lightGrayColor];
    return inputTextField;
}

- (void)setupConstraints {
    [NSLayoutConstraint activateConstraints:@[
        
        [self.inputTextField1.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
        [self.inputTextField1.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.inputTextField1.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.inputTextField1.bottomAnchor constraintEqualToAnchor:self.inputTextField1.topAnchor constant:50],
        
        [self.inputTextField2.topAnchor constraintEqualToAnchor:self.inputTextField1.bottomAnchor constant:20],
        [self.inputTextField2.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.inputTextField2.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.inputTextField2.bottomAnchor constraintEqualToAnchor:self.inputTextField2.topAnchor constant:50],
        
        [self.button.topAnchor constraintEqualToAnchor:self.inputTextField2.bottomAnchor constant:20],
        [self.button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.button.widthAnchor constraintEqualToConstant:200],
        [self.button.bottomAnchor constraintEqualToAnchor:self.button.topAnchor constant:40],
        
        [self.outputTextView.topAnchor constraintEqualToAnchor:self.button.bottomAnchor constant:20],
        [self.outputTextView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.outputTextView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.outputTextView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20]
        
    ]];
}

- (void)buttonTapped {
    NSString * userInput1 = self.inputTextField1.text;
    NSString * userInput2 = self.inputTextField2.text;
    
    NSString * firstKey = @"var1";
    NSString * secondKey = @"var2";
    
    NSDictionary * dictionary = @{
        firstKey : userInput1,
        secondKey : userInput2
    };
    
    [self performLoadingForPostRequest:dictionary];
    
}

- (void)performLoadingForPostRequest:(NSDictionary *) dictionary {
    [self.loader performPostRequestFromURL:@"https://postman-echo.com/post" arguments:dictionary block:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                self.outputTextView.text = [error description];
                return;
            }
            self.outputTextView.text = [dictionary description];
            return;
            
        });
    }];
}


@end

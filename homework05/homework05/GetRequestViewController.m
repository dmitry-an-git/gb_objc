//
//  GetRequestViewController.m
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import "GetRequestViewController.h"

//@interface GetRequestViewController ()
//
//@end

@implementation GetRequestViewController

- (UITextView *) textView {
    if (!_textView) {
        _textView = [[UITextView alloc] initWithFrame:CGRectZero];
        _textView.translatesAutoresizingMaskIntoConstraints = NO;
        _textView.backgroundColor = [UIColor blackColor];
        _textView.font = [UIFont monospacedSystemFontOfSize:10 weight: UIFontWeightRegular];
        _textView.textColor = [UIColor whiteColor];
        _textView.editable = NO;
    }
    return _textView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.textView];
    [self setupConstraints];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self performLoadingForGetRequest];
}

- (void)performLoadingForGetRequest {
    [self.loader performGetRequestFromURL:@"https://postman-echo.com/get" arguments:@{@"var1":@"first",@"var2":@"second"} block:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                self.textView.text = [error description];
                return;
            }
            self.textView.text = [dictionary description];
            return;
            
        });
    }];
}

- (void)setupConstraints {
    [NSLayoutConstraint activateConstraints:@[
        [self.textView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
        [self.textView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.textView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.textView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20]
    ]];
}

@end

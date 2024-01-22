//
//  ViewController.m
//  recitation05uikit
//
//  Created by Dmitry An on 22/01/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self performLoadingForGetRequest];
    [self performLoadingForPostRequest];
}


- (void)performLoadingForPostRequest {
    [self.loader performPostRequestFromURL:@"https://postman-echo.com/post" arguments:@{@"var1":@"first",@"var2":@"second"} block:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@",error);
                return;
            }
            NSLog(@"%@", dictionary);
            
        });
    }];
}

- (void)performLoadingForGetRequest {
    [self.loader performGetRequestFromURL:@"https://postman-echo.com/get" arguments:@{@"var1":@"first",@"var2":@"second"} block:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@",error);
                return;
            }
            NSLog(@"%@", dictionary);
            
        });
    }];

}

@end

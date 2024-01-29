//
//  ViewController.m
//  homework05
//
//  Created by Dmitry An on 22/01/2024.
//

#import "ViewController.h"
#import "GetRequestViewController.h"
#import "PostRequestViewController.h"

//@interface ViewController ()
//
//@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configTabBar];
}

- (void)configTabBar {
    GetRequestViewController * getRequestVC = [GetRequestViewController new];
    PostRequestViewController * postRequestVC = [PostRequestViewController new];
    
    getRequestVC.title = @"Sending GET request";
    postRequestVC.title = @"Sending POST request";
    
    UINavigationController * getRequestNC = [[UINavigationController alloc] initWithRootViewController:getRequestVC];
    UINavigationController * postRequestNC = [[UINavigationController alloc] initWithRootViewController:postRequestVC];
    
    [self setViewControllers:[NSArray arrayWithObjects: getRequestNC, postRequestNC, nil]];
    getRequestNC.title = @"GET";
    postRequestNC.title = @"POST";
    
}

@end

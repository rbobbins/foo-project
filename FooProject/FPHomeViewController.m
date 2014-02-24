//
//  FPHomeViewController.m
//  FooProject
//
//  Created by Rachel Bobbins on 2/23/14.
//  Copyright (c) 2014 Rachel Bobbins. All rights reserved.
//

#import "FPHomeViewController.h"
#import "FPAPIClient.h"
#import "UIColor+Monokai.h"

@interface FPHomeViewController ()
@property (nonatomic, strong) FPAPIClient *apiClient;
@end

@implementation FPHomeViewController

- (id)initWithAPIClient:(FPAPIClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor darkGrey];
    
    self.fetchButton.backgroundColor = [UIColor lightGray];
    [self.fetchButton setTitleColor:[UIColor mellowYellow] forState:UIControlStateNormal];
    self.fetchButton.layer.borderColor = [UIColor mellowYellow].CGColor;
    self.fetchButton.layer.borderWidth = 1.0;
    self.fetchButton.layer.cornerRadius = 2.0;
    self.fetchButton.titleLabel.text = @"Fetch";
    
    [self.fetchButton addTarget:self
                         action:@selector(didTapFetchButton)
               forControlEvents:UIControlEventTouchUpInside];
    self.welcomeLabel.text = @"NPR Sample Client";
    self.welcomeLabel.textColor = [UIColor mellowYellow];
}

#pragma mark - Private

- (void)didTapFetchButton {
    [self.apiClient getArticleList];
}
@end

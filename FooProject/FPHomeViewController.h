//
//  FPHomeViewController.h
//  FooProject
//
//  Created by Rachel Bobbins on 2/23/14.
//  Copyright (c) 2014 Rachel Bobbins. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FPAPIClient;

@interface FPHomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *fetchButton;

- (id)initWithAPIClient:(FPAPIClient *)apiClient;

@end

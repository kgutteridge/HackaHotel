//
//  HotelDetailViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "HotelDetailViewController.h"

@interface HotelDetailViewController ()

@end

@implementation HotelDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadView];
    [self setupBackButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)loadView {
    
    // Switch view to be Landscape Only - Flip Height and Width
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, applicationFrame.size.height, applicationFrame.size.width)];
    contentView.backgroundColor = [UIColor whiteColor];
    
    self.view = contentView;
}


#pragma mark - Autorotate
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark - Setup

-(void)setupBackButton
{
    UIButton *tempButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [tempButton setFrame:CGRectMake(80, 50, 180, 40)];
    [tempButton setTitle:@"Back" forState:UIControlStateNormal];
    [tempButton addTarget:self action:@selector(backButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempButton];
    
}

-(IBAction)backButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end

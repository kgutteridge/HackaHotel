//
//  HotelDetailViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "HotelDetailViewController.h"

@interface HotelDetailViewController ()
@property (nonatomic, strong) UIImageView *backgroundImage;
@property (nonatomic, strong) UIView *overlayViewTop;
@property (nonatomic, strong) UIView *overlayViewBottom;
@end

@implementation HotelDetailViewController

- (void)loadView {
    
    // Switch view to be Landscape Only - Flip Height and Width
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, applicationFrame.size.height, applicationFrame.size.width)];
    contentView.backgroundColor = [UIColor blackColor];
    
    self.view = contentView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupBackgroundImageView];
    [self setupBackButton];
    
    [self setupOverlayTop];
    [self setupOverlayBottom];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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

- (void)setupBackgroundImageView {
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    self.backgroundImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.backgroundImage setUserInteractionEnabled:YES];
    [self.backgroundImage addGestureRecognizer:tapGesture];
    
    [self.view addSubview:self.backgroundImage];
}

- (void)setupOverlayTop {
    
    self.overlayViewTop = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 150)];
    [self.overlayViewTop setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
    [self.overlayViewTop setTransform:CGAffineTransformMakeTranslation(0, CGRectGetHeight(self.overlayViewTop.bounds))];
    [self.overlayViewTop setAlpha:0.5];
    
    [self.view addSubview:self.overlayViewTop];
}

- (void)setupOverlayBottom {
    self.overlayViewBottom = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 150, CGRectGetWidth(self.view.bounds), 150)];
    [self.overlayViewBottom setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
    [self.overlayViewBottom setTransform:CGAffineTransformMakeTranslation(0, CGRectGetHeight(self.overlayViewTop.bounds))];
    [self.overlayViewBottom setAlpha:0.5];
    
    [self.view addSubview:self.overlayViewBottom];
}

- (void)transitionOverlay {
    
    if (!CGAffineTransformIsIdentity(self.overlayViewTop.transform)) {
        [self.overlayViewTop setTransform:CGAffineTransformIdentity];
        [self.overlayViewBottom setTransform:CGAffineTransformIdentity];
    }
    
}

-(IBAction)backButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)imageTapped:(UITapGestureRecognizer *)gesture {
    
    UIImageView *backgroundImageView = (UIImageView *) [gesture view];
    
    //DO SOMETHING TO TRANSITION TO NEW IMAGE
}

@end

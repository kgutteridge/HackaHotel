//
//  HotelDetailViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "HotelDetailViewController.h"
#import "UIImageView+AFNetworking.h"

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
    contentView.backgroundColor = [UIColor whiteColor];
    
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
    
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageDoubleTapped:)];
    [doubleTapGesture setNumberOfTapsRequired:2];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(transitionOverlay:)];
    [tapGesture requireGestureRecognizerToFail:doubleTapGesture];
    
    self.backgroundImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.backgroundImage setUserInteractionEnabled:YES];
    [self.backgroundImage addGestureRecognizer:tapGesture];
    [self.backgroundImage addGestureRecognizer:doubleTapGesture];
    
    [self.view addSubview:self.backgroundImage];
}

- (void)setupOverlayTop {
    
    self.overlayViewTop = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 150)];
    [self.overlayViewTop setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
    [self.overlayViewTop setTransform:CGAffineTransformMakeTranslation(0, -CGRectGetHeight(self.overlayViewTop.bounds))];
    [self.overlayViewTop setAlpha:0.5];
    
    [self.view addSubview:self.overlayViewTop];
}

- (void)setupOverlayBottom {
    self.overlayViewBottom = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.bounds) - 150, CGRectGetWidth(self.view.bounds), 150)];
    [self.overlayViewBottom setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
    [self.overlayViewBottom setTransform:CGAffineTransformMakeTranslation(0, CGRectGetHeight(self.overlayViewBottom.bounds))];
    [self.overlayViewBottom setAlpha:0.5];
    
    UIImageView *hotelImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 110, 110)];
    [hotelImageView setClipsToBounds:YES];
    [hotelImageView setContentMode:UIViewContentModeScaleAspectFill];
    NSString *hotelImageURL = [NSString stringWithFormat:@"%@%@",MEDIA_URL_PREFIX,self.hotel.thumbnailURL];
    [hotelImageView setImageWithURL:[NSURL URLWithString:hotelImageURL]];
    [self.overlayViewBottom addSubview:hotelImageView];
    
    UILabel *hotelNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(hotelImageView.frame) + 20,
                                                                       CGRectGetMinY(hotelImageView.frame),
                                                                        CGRectGetWidth(self.overlayViewBottom.bounds) - CGRectGetMaxX(hotelImageView.frame) - 20, 40)];
    [hotelNameLabel setText:self.hotel.name];
    [hotelNameLabel setTextColor:[UIColor colorWithWhite:0.95 alpha:1.0]];
    [hotelNameLabel setFont:[UIFont boldSystemFontOfSize:36]];
    [hotelNameLabel setShadowColor:[UIColor darkGrayColor]];
    [hotelNameLabel setShadowOffset:CGSizeMake(0, -1.0)];
    [hotelNameLabel setBackgroundColor:[UIColor clearColor]];
    
    UILabel *addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(hotelImageView.frame) + 20,
                                                                        CGRectGetMaxY(hotelNameLabel.frame) + 10,
                                                                        CGRectGetWidth(self.overlayViewBottom.bounds) - CGRectGetMaxX(hotelImageView.frame) - 20, 26)];
    [addressLabel setText:[NSString stringWithFormat:@"%@ %@ %@", self.hotel.address1, self.hotel.city, self.hotel.postalCode]];
    [addressLabel setTextColor:[UIColor colorWithWhite:0.85 alpha:1.0]];
    [addressLabel setFont:[UIFont systemFontOfSize:20]];
    [addressLabel setShadowColor:[UIColor darkGrayColor]];
    [addressLabel setShadowOffset:CGSizeMake(0, -1.0)];
    [addressLabel setBackgroundColor:[UIColor clearColor]];
    
    [self.overlayViewBottom addSubview:hotelImageView];
    [self.overlayViewBottom addSubview:hotelNameLabel];
    [self.overlayViewBottom addSubview:addressLabel];
    
    [self.view addSubview:self.overlayViewBottom];
}

- (void)transitionOverlay:(UIGestureRecognizer *)gesture {
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         if (!CGAffineTransformIsIdentity(self.overlayViewTop.transform)) {
                             [self.overlayViewTop setTransform:CGAffineTransformIdentity];
                             [self.overlayViewBottom setTransform:CGAffineTransformIdentity];
                             [self.overlayViewTop setAlpha:1.0];
                             [self.overlayViewBottom setAlpha:1.0];
                         } else {
                             [self.overlayViewTop setTransform:CGAffineTransformMakeTranslation(0, -CGRectGetHeight(self.overlayViewTop.bounds))];
                             [self.overlayViewBottom setTransform:CGAffineTransformMakeTranslation(0, CGRectGetHeight(self.overlayViewBottom.bounds))];
                             [self.overlayViewTop setAlpha:0.5];
                             [self.overlayViewBottom setAlpha:0.5];
                         }
                     }];
}

-(IBAction)backButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)imageDoubleTapped:(UITapGestureRecognizer *)gesture {
    
    UIImageView *backgroundImageView = (UIImageView *) [gesture view];
    
    //DO SOMETHING TO TRANSITION TO NEW IMAGE
}

@end

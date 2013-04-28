//
//  HotelDetailViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "HotelDetailViewController.h"
#import <objectiveflickr/ObjectiveFlickr.h>


@interface HotelDetailViewController() <OFFlickrAPIRequestDelegate>
@property (nonatomic, strong) UIImageView *backgroundImage;
@property (nonatomic, strong) UIView *overlayViewTop;
@property (nonatomic, strong) UIView *overlayViewBottom;

@property (nonatomic, strong) OFFlickrAPIRequest *flickrRequest;
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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"Hotel location %@,%@",self.hotel.latitude, self.hotel.longtitude);
    
    //http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=4cb26b7f09f917e2f9154d48087de93d&lat=51.48929&lon=-0.18007&format=rest
    
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"25", @"per_page",
                            nil]
    
    [self.flickrRequest callAPIMethodWithGET:@"flickr.photos.search" arguments:params];
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


#pragma mark flickr integration
- (OFFlickrAPIRequest *)flickrRequest
{
    if (!_flickrRequest) {
        
         OFFlickrAPIContext *context = [[OFFlickrAPIContext alloc] initWithAPIKey:SECRET_FLICKR_KEY sharedSecret:SECRET_FLICKR_SECRET];
        
        _flickrRequest = [[OFFlickrAPIRequest alloc] initWithAPIContext:context];
        _flickrRequest.delegate = self;
		_flickrRequest.requestTimeoutInterval = 60.0;
    }
    
    return _flickrRequest;
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didCompleteWithResponse:(NSDictionary *)inResponseDictionary
{
    
}
- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didFailWithError:(NSError *)inError
{
    
}
- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest imageUploadSentBytes:(NSUInteger)inSentBytes totalBytes:(NSUInteger)inTotalBytes
{
    
}

@end

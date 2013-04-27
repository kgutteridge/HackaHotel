//
//  GalleryViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "GalleryViewController.h"
#import "UIImageView+AFNetworking.h"

@interface GalleryViewController ()
@property (nonatomic, strong) UIView *imagesCanvas;
@property (nonatomic, strong) NSArray *hotelImagesURL;
@property (nonatomic, strong) NSDictionary *visibleHotels;

@end

#define MAX_IMAGES_PER_ROW 10.0f
#define MAX_ROWS 5

@implementation GalleryViewController

- (void)loadView {
    
    // Switch view to be Landscape Only - Flip Height and Width
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, applicationFrame.size.height, applicationFrame.size.width)];
    contentView.backgroundColor = [UIColor whiteColor];
    
    self.view = contentView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    [self setupImagesCanvas];
    [self updateImages];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self updateUIWithImages:self.hotelImagesURL];
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
- (void)setupImagesCanvas {
    
    self.imagesCanvas = [[UIView alloc] initWithFrame:CGRectMake(0, 10, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) - 10 - 50)];
    [self.imagesCanvas setBackgroundColor:[UIColor colorWithWhite:0.05 alpha:1.0]];
    [self.view addSubview:self.imagesCanvas];
}

- (void)updateImages {
  /*
    self.hotelImagesURL = @[@"http://www.duchysoftware.com/yahoohack/0.jpg",
                            @"http://www.duchysoftware.com/yahoohack/1.jpg",
                            @"http://www.duchysoftware.com/yahoohack/2.jpg",
                            @"http://www.duchysoftware.com/yahoohack/1.jpg",
                            @"http://www.duchysoftware.com/yahoohack/2.jpg",
                            @"http://www.duchysoftware.com/yahoohack/1.jpg",
                            @"http://www.duchysoftware.com/yahoohack/2.jpg",
                            @"http://www.duchysoftware.com/yahoohack/1.jpg",
                            @"http://www.duchysoftware.com/yahoohack/2.jpg"
                         ];
   */
    
    self.hotelImagesURL = @[@"http://www.duchysoftware.com/yahoohack/0.png",
                            @"http://www.duchysoftware.com/yahoohack/1.png"];
}


#pragma mark - UpdateUI
- (void)updateUIWithImages:(NSArray *)imageURLs {
    
    NSInteger rows = [self numberOfRowsForImages:imageURLs];
    NSInteger cols = [self numberOfColumnsForImages:imageURLs];
    NSLog(@"R%d,C%d", rows, cols);
    // calculate image dimensions
    
    
    
    for (int index = 0; index < [imageURLs count]; index++) {
        
        CGRect frame = [self frameForImageAtIndex:index];
        
        NSString *imageURL = imageURLs[index];
        UIImageView *hotelImageView = [[UIImageView alloc] initWithFrame:frame];
        [hotelImageView setImageWithURL:[NSURL URLWithString:imageURL]];
        [self.imagesCanvas addSubview:hotelImageView];
    }
    
}


#pragma mark - Layout Helpers
- (NSInteger)numberOfRowsForImages:(NSArray *)images {
    
    NSLog(@"%f", ([images count] / MAX_IMAGES_PER_ROW));
    NSInteger rows = ceil([images count] / MAX_IMAGES_PER_ROW);
    return rows;
}

- (NSInteger)numberOfColumnsForImages:(NSArray *)images {
    
   // NSInteger col = ceil([images count] / MAX_IMAGES_PER_ROW);
    return 10;
}

- (CGRect)frameForImageAtIndex:(NSInteger)index {
    
    // Dummy
    switch (index) {
        case 0:
            return CGRectMake(0, 0, 200, 180);
            break;
        case 1:
            return CGRectMake(205, 0, 200, 180);
            break;
            
        default:
            break;
    }
}

@end


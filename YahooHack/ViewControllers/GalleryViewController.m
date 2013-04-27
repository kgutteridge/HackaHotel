//
//  GalleryViewController.m
//  YahooHack
//
//  Created by Matt Glover on 27/04/2013.
//  Copyright (c) 2013 Duchy Software Ltd. All rights reserved.
//

#import "GalleryViewController.h"
#import "UIImageView+AFNetworking.h"
#import "Math.h"

@interface GalleryViewController ()
@property (nonatomic, strong) UIView *imagesCanvas;
@property (nonatomic, strong) NSMutableArray *hotelImagesURL;
@property (nonatomic, strong) NSDictionary *visibleHotels;

@end

#define MAX_IMAGES_PER_ROW 10.0f
#define MAX_ROWS 5
#define MIN_PADDING_BETWEEN_IMAGES 5.0f

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
    
    self.imagesCanvas = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 700, 700)];
    [self.imagesCanvas setBackgroundColor:[UIColor colorWithWhite:0.2 alpha:1.0]];
    [self.view addSubview:self.imagesCanvas];
}

- (void)updateImages {
    
    self.hotelImagesURL = [[NSMutableArray alloc] init];
    for (int loop = 0; loop < 15; loop++) {
        int filenumber = loop % 3;
        NSString *url = [NSString stringWithFormat:@"http://www.duchysoftware.com/yahoohack/%d.png", filenumber];
        [self.hotelImagesURL addObject:url];
        [self updateUIWithImages:self.hotelImagesURL];
    }
}


#pragma mark - UpdateUI
- (void)updateUIWithImages:(NSArray *)imageURLs {
    
    int square = [self getSquare:imageURLs];
    
    int cols = [imageURLs count] - (square * square)  <= square ? square + 1 : square;
    int rows = [imageURLs count] - (square * square)   > square ? square + 1 : square;
    NSLog(@"COLS(%d) ROWS(%d)", cols, rows);
    
   /* NSInteger cols = [imageURLs count] / square;
    NSInteger rows = ([imageURLs count] % square == 0) ? square : square + 1;
    NSLog(@"COLS(%d) ROWS(%d)", cols, rows);
    */
    CGFloat imageSize= floor(CGRectGetWidth(self.imagesCanvas.bounds) / MAX(cols, rows));
   // NSLog(@"Img Size: %f", imageSize);
    
    CGFloat leftInset = (CGRectGetWidth(self.imagesCanvas.bounds) - (imageSize * cols)) / 2;
    
    
    
    
    int yOff = 0;
    
    
   
    
    
    /*
    // calculate image dimensions
    for (int index = 0; index < [imageURLs count]; index++) {
        
        int thisIndexRow = (index == 0) ? 0 : floor(index / cols);
        int thisIndexCol = (index == 0) ? 0 : floor(index % cols);
      //  NSLog(@"Row:%d - Col:%d", thisIndexRow, thisIndexCol);
        
        NSString *imageURL = imageURLs[index];
        CGRect frame = CGRectMake((thisIndexCol * imageWidth) + leftInset,
                                  (thisIndexRow * imageWidth),
                                  imageWidth, imageWidth);
        
        UIImageView *hotelImageView = [[UIImageView alloc] initWithFrame:CGRectInset(frame, 3, 3)];
        [hotelImageView setClipsToBounds:YES];
        [hotelImageView setContentMode:UIViewContentModeScaleAspectFill];
       // [hotelImageView setImageWithURL:[NSURL URLWithString:imageURL]];
        [hotelImageView setBackgroundColor:[UIColor colorWithRed:1 green:0 blue:1 alpha:1]];
        [self.imagesCanvas addSubview:hotelImageView];
    }
     
     */
}


#pragma mark - Math Helpers
- (int)getSquare:(NSArray *)images{
    return floor(sqrt([images count]));
}

@end


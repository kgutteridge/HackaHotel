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
#import "EANWebService.h"
#import "Hotel.h"

@interface GalleryViewController ()
@property (nonatomic, strong) UIView *imagesCanvas;
@property (nonatomic, strong) NSArray *allHotels;
//@property (nonatomic, strong) NSMutableArray *hotelImagesURL;

@property (nonatomic, strong) UILabel *sliderValueLabel;
@property (nonatomic, strong) UISlider *slider;

@end

#define MAX_IMAGES_PER_ROW 10.0f
#define MAX_ROWS 5
#define MIN_PADDING_BETWEEN_IMAGES 5.0f
#define HOTEL_IMAGEVIEW_EDGE_INSET 1.0f

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
    //[self updateImages];
    //[self setupSlider];
    //[self setupSliderValueLabel];
    
    [self downloadHotelsforCity:@"London"
                   provinceCode:@""
                    countryCode:@"GB"
                      startDate:[NSDate date]
                        endDate:[NSDate dateWithTimeIntervalSinceNow:604800]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
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
- (void)setupSlider {
    
    self.slider = [[UISlider alloc] initWithFrame:
                   CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 20,
                              400,
                              CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.imagesCanvas.bounds) - 40,
                              44)];
    [self.slider setMaximumValue:256.0];
    [self.slider setMinimumValue:1.0];
    [self.slider setValue:10];
    [self.slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.slider];
}

- (void)setupSliderValueLabel {
    
    self.sliderValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.sliderValueLabel setFont:[UIFont boldSystemFontOfSize:40]];
    [self.sliderValueLabel setTextColor:[UIColor whiteColor]];
    [self.sliderValueLabel setTextAlignment:NSTextAlignmentCenter];
    [self.sliderValueLabel setBackgroundColor:self.view.backgroundColor];
    [self.sliderValueLabel setText:[NSString stringWithFormat:@"%d", 10]];
    [self.sliderValueLabel setCenter:CGPointMake(CGRectGetMidX(self.slider.frame), CGRectGetMaxY(self.slider.frame) + CGRectGetHeight(self.sliderValueLabel.bounds))];
    
    [self.view addSubview:self.sliderValueLabel];
}

- (void)setupImagesCanvas {
    
    self.imagesCanvas = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 700, 700)];
    [self.imagesCanvas setBackgroundColor:[UIColor colorWithWhite:0.2 alpha:1.0]];
    [self.view addSubview:self.imagesCanvas];
}

- (void)updateImages {
  /*
    for (UIView *subview in self.imagesCanvas.subviews) {
        [subview removeFromSuperview];
    }
    [self.hotelImagesURL removeAllObjects];
    self.hotelImagesURL = nil;
    
    // temp
    int numberOfImages = floorf([self.slider value]) > 0 ? floorf([self.slider value]) : 10 ;
    
    self.hotelImagesURL = [[NSMutableArray alloc] init];
    for (int loop = 0; loop < numberOfImages; loop++) {
        int filenumber = loop % 3;
        NSString *url = [NSString stringWithFormat:@"http://farm9.staticflickr.com/8536/8685310573_c8b50f7e59_d.jpg"];
        [self.hotelImagesURL addObject:url];
    }
    */
}


#pragma mark - UpdateUI
- (void)updateUIWithHotels:(NSArray *)selectedHotels {
    
    int square = [self getSquare:[selectedHotels count]];
    int hotelCount = [selectedHotels count];
    
    int cols = square +1;
    if(square * square == hotelCount) {
        cols = square;
    }
    
    int rows = hotelCount -(square * square) > square ? square + 1 : square;
//    NSLog(@"Total images %i COLS(%d) ROWS(%d)", imageCount, cols, rows);
    
    CGFloat imageSize= floor(CGRectGetWidth(self.imagesCanvas.bounds) / MAX(cols, rows));
//    NSLog(@"Img Size: %f", imageSize);
    
    CGFloat leftInset = (CGRectGetWidth(self.imagesCanvas.bounds) - (imageSize * cols)) / 2;
    
    int currentHotel = 0;
    for (int y = 0; y < rows; y++)
    {
        for(int x = 0; x< cols; x++)
        {
            CGRect frame = CGRectMake((x * imageSize) + leftInset,
                                      (y * imageSize),
                                      imageSize, imageSize);
            
            UIImageView *hotelImageView = [[UIImageView alloc] initWithFrame:CGRectInset(frame, HOTEL_IMAGEVIEW_EDGE_INSET, HOTEL_IMAGEVIEW_EDGE_INSET)];
            [hotelImageView setClipsToBounds:YES];
            [hotelImageView setContentMode:UIViewContentModeScaleAspectFill];
            
            if(currentHotel >= hotelCount) {
                [hotelImageView setBackgroundColor:[UIColor clearColor]];
            } else {
                Hotel *hotel = selectedHotels[currentHotel];
                [hotelImageView setImageWithURL:[NSURL URLWithString:hotel.thumbnailURL]];
            }
            
            [self.imagesCanvas addSubview:hotelImageView];
            currentHotel++;
        }
    }
}


#pragma mark - UISlider Listener
- (void)sliderValueChanged:(UISlider *)sender {
    [self updateImages];
  //  [self.sliderValueLabel setText:[NSString stringWithFormat:@"%d", [self.hotelImagesURL count]]];
}


#pragma mark - Update
- (void)downloadHotelsforCity:(NSString *)city provinceCode:(NSString *)provinceCode countryCode:(NSString *)countyCode startDate:(NSDate *)startDate endDate:(NSDate *)endDate {
    
    [EANWebService hotelDetailsForCity:city
                     stateProvinceCode:provinceCode
                           countryCode:countyCode
                             startDate:startDate
                               endDate:endDate
                           withSuccess:^(NSURLRequest *request, NSURLResponse *response, id JSON) {
                            
                               NSDictionary *json = (NSDictionary *)JSON;
                               NSArray *hotelSummaries = json[@"HotelListResponse"][@"HotelList"][@"HotelSummary"];
                               
                               NSMutableArray *hotels = [NSMutableArray array];
                               for(NSDictionary *hotelDict in hotelSummaries)
                               {
                                   
                                   //need to search and see if this is unique 
                                   Hotel *hotel = [Hotel MR_createEntity];
                                   [hotel setPropertiesFromDictionary:hotelDict];
                                   [hotels addObject:hotel];
                               }
                               
                               
                               [self updateUIWithHotels:hotels];
                           }
                            andFailure:^(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON) {
                                NSLog(@"ERROR : %@", error);
                            }];
}

#pragma mark - Math Helpers
- (int)getSquare:(NSInteger)numToSquareRoot{
    return floor(sqrt(numToSquareRoot));
}

@end


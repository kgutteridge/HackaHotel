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
#import "NSDictionary+Helper.h"
#import "HotelDetailViewController.h"

@interface GalleryViewController ()
@property (nonatomic, strong) UIView *imagesCanvas;
@property (nonatomic, strong) NSArray *allHotels;
@property (nonatomic, assign) BOOL initialImageLoadComplete;

//@property (nonatomic, strong) UILabel *sliderValueLabel;
//@property (nonatomic, strong) UISlider *slider;
@property (nonatomic, strong) UIActivityIndicatorView *spinner;

@end

#define MAX_IMAGES_PER_ROW 10.0f
#define MAX_ROWS 5
#define MIN_PADDING_BETWEEN_IMAGES 5.0f
#define HOTEL_IMAGEVIEW_EDGE_INSET 1.0f

#define MEDIA_URL_PREFIX @"http://media.expedia.com"

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
    [self setupSpinner];
    
    [self downloadHotelsforCity:@"London"
                   provinceCode:@""
                    countryCode:@"GB"
                      startDate:[NSDate date]
                        endDate:[NSDate dateWithTimeIntervalSinceNow:604800]];

    [self setupTempButton];
    
    // [self setupSlider];
    // [self setupSliderValueLabel];
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
/*
 - (void)setupSlider {
 
 self.slider = [[UISlider alloc] initWithFrame:
 CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 20,
 400,
 CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.imagesCanvas.bounds) - 40,
 44)];
 [self.slider setMaximumValue:144.0];
 [self.slider setMinimumValue:1.0];
 [self.slider setValue:144.0];
 [self.slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
 
 [self.view addSubview:self.slider];
 }
 
 - (void)setupSliderValueLabel {
 
 self.sliderValueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
 [self.sliderValueLabel setFont:[UIFont boldSystemFontOfSize:40]];
 [self.sliderValueLabel setTextColor:[UIColor whiteColor]];
 [self.sliderValueLabel setTextAlignment:NSTextAlignmentCenter];
 [self.sliderValueLabel setBackgroundColor:self.view.backgroundColor];
 [self.sliderValueLabel setText:[NSString stringWithFormat:@"%d", 144]];
 [self.sliderValueLabel setCenter:CGPointMake(CGRectGetMidX(self.slider.frame), CGRectGetMaxY(self.slider.frame) + CGRectGetHeight(self.sliderValueLabel.bounds))];
 
 [self.view addSubview:self.sliderValueLabel];
 }
 */

- (void)setupImagesCanvas {
    
    self.imagesCanvas = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 700, 700)];
    [self.imagesCanvas setBackgroundColor:[UIColor colorWithWhite:0.1 alpha:1.0]];
    [self.view addSubview:self.imagesCanvas];
}

- (void)setupSpinner {
    
    self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [self.spinner setCenter:CGPointMake(CGRectGetMidX(self.imagesCanvas.bounds), CGRectGetMidY(self.imagesCanvas.bounds))];
    [self.spinner setHidesWhenStopped:YES];
    [self.spinner startAnimating];
    [self.imagesCanvas addSubview:self.spinner];
}

- (void)setupTempButton {
    
    UIButton *tempButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [tempButton setFrame:CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 80, 50, 80, 40)];
    [tempButton setTitle:@"Remove 20 Hotels" forState:UIControlStateNormal];
    [tempButton addTarget:self action:@selector(tempButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempButton];
}

- (void)tempButtonPressed:(UIButton *)sender {
    
    // pick 20 random hotels to remove
    NSMutableArray *randomHotels = [[NSMutableArray alloc] initWithCapacity:20];
    
    while ([randomHotels count] < 20) {
        
        int randomIndex = rand() % ([self.allHotels count] - 1);
        Hotel *randomHotel = [self.allHotels objectAtIndex:randomIndex];
        
        if (![randomHotels containsObject:randomHotel]) {
            [randomHotels addObject:randomHotel];
        }
    }

NSMutableArray *subSelectionHotels = [[NSMutableArray alloc] initWithArray:self.allHotels];
[subSelectionHotels removeObjectsInArray:randomHotels];

[self updateUIWithHotels:subSelectionHotels];

}

#pragma mark - UpdateUI
/*
 - (void)updateSlider {
 [self.sliderValueLabel setText:[NSString stringWithFormat:@"%2.0f", [self.slider value]]];
 }
 */

- (void)updateImages {
    
    int newNumberOfHotels = 10; //= [self.slider value];
    
    NSMutableArray *newSelectedHotels = [[NSMutableArray alloc] initWithCapacity:newNumberOfHotels];
    
    for (int index = 0; index < newNumberOfHotels; index++) {
        [newSelectedHotels addObject:self.allHotels[index]];
    }
    
    [self updateUIWithHotels:newSelectedHotels];
    //  [self updateSlider];
}

- (void)updateUIWithHotels:(NSArray *)selectedHotels {
    
    [self.spinner stopAnimating];
    
    // go through all existing HotelImageViews and separate the selected from the unselected in allHotels
    NSMutableArray *selectedImageViews = [[NSMutableArray alloc] init];
    NSMutableArray *unSelectedImageViews = [[NSMutableArray alloc] init];
    
    for (Hotel *hotel in selectedHotels) {
        for (UIView *hotelImageView in self.imagesCanvas.subviews) {
            if ([hotel.hotelId integerValue] == hotelImageView.tag) {
                [selectedImageViews addObject:hotelImageView];
                break;
            }
        }
    }
    
    for (UIView *thisView in self.imagesCanvas.subviews) {
        if (![thisView isKindOfClass:[UIActivityIndicatorView class]] && ![selectedImageViews containsObject:thisView]) {
            [unSelectedImageViews addObject:thisView];
        }
    }
    
    NSLog(@"Selected/Unselected : %d/%d", [selectedImageViews count], [unSelectedImageViews count]);
    
    int square = [self getSquare:[selectedHotels count]];
    int hotelCount = [selectedHotels count];
    
    int cols = square +1;
    if(square * square == hotelCount) {
        cols = square;
    }
    
    int rows = hotelCount - (square * square) > square ? square + 1 : square;
    CGFloat imageSize = floor(CGRectGetWidth(self.imagesCanvas.bounds) / MAX(cols, rows));
    CGFloat leftInset = (CGRectGetWidth(self.imagesCanvas.bounds) - (imageSize * cols)) / 2;
    
    int currentHotel = 0;
    for (int y = 0; y < rows; y++)
    {
        for(int x = 0; x< cols; x++)
        {
            CGRect frame = CGRectMake((x * imageSize) + leftInset,
                                      (y * imageSize),
                                      imageSize, imageSize);
            
            
            
            UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hotelSelected:)];
            UIImageView *hotelImageView = [[UIImageView alloc] initWithFrame:CGRectInset(frame, HOTEL_IMAGEVIEW_EDGE_INSET, HOTEL_IMAGEVIEW_EDGE_INSET)];
            [hotelImageView setUserInteractionEnabled:YES];
            [hotelImageView addGestureRecognizer:tapGesture];
            [hotelImageView setClipsToBounds:YES];
            [hotelImageView setContentMode:UIViewContentModeScaleAspectFill];
            if (!self.initialImageLoadComplete) {
                [self moveOffScreenInitialImageView:hotelImageView];
            }
            
            if(currentHotel >= hotelCount) {
                [hotelImageView setBackgroundColor:[UIColor clearColor]];
            } else {
                Hotel *hotel = selectedHotels[currentHotel];
                NSString *hotelImageURL = [NSString stringWithFormat:@"%@%@",MEDIA_URL_PREFIX,hotel.thumbnailURL];
                [hotelImageView setImageWithURL:[NSURL URLWithString:hotelImageURL]];
                [hotelImageView setTag:[hotel.hotelId integerValue]];
            }
            
            [self.imagesCanvas addSubview:hotelImageView];
            currentHotel++;
        }
    }
    
    if (!self.initialImageLoadComplete) {
        [self onboardAnimateHotelImageViews];
    }
}


#pragma mark - UIGestureRecogniser Listener
- (void)hotelSelected:(UITapGestureRecognizer *)gesture {
    
    UIView *hotelThumbnail = [gesture view];
    
    Hotel *selectedHotel = nil;
    for (Hotel *hotel in self.allHotels) {
        if ([hotel.hotelId integerValue] == hotelThumbnail.tag) {
            selectedHotel = hotel;
            break;
        }
    }
    
    if (selectedHotel) {
        HotelDetailViewController *detailViewController = [[HotelDetailViewController alloc] init];
        [detailViewController setHotel:selectedHotel];
        
        [self.navigationController pushViewController:detailViewController animated:YES];
    } else {
        NSLog(@"Unable to display Hotel");
    }
}


#pragma mark - UISlider Listener
- (void)sliderValueChanged:(UISlider *)sender {
    [self updateImages];
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
                               
                               for(NSDictionary *hotelDict in hotelSummaries) {
                                   
                                   //need to search and see if this is unique
                                   NSNumber * hotelId = [hotelDict objectForKeyNotNull:@"hotelId"];
                                   
                                   Hotel *thisHotel = [Hotel MR_findFirstByAttribute:@"hotelId" withValue:hotelId];
                                   
                                   if(!thisHotel)
                                   {
                                       thisHotel = [Hotel MR_createEntity];
                                   }
                                   
                                   [thisHotel setPropertiesFromDictionary:hotelDict];
                                   [hotels addObject:thisHotel];
                                   
                                   if ([hotels count] >= 144) {
                                       break;
                                   }
                                   //NSLog(@"%d", [hotels count]);
                               }
                               
                               self.allHotels = hotels;
                               
                               [self updateUIWithHotels:self.allHotels];
                           }
                            andFailure:^(NSURLRequest *request, NSURLResponse *response, NSError *error, id JSON) {
                                NSLog(@"ERROR : %@", error);
                                [self.spinner stopAnimating];
                            }];
}

#pragma mark - Math Helpers
- (int)getSquare:(NSInteger)numToSquareRoot{
    return floor(sqrt(numToSquareRoot));
}


- (void)moveOffScreenInitialImageView:(UIView *)view {
    
    int randX = (rand() % 100) + 1024;
    int randY = (rand() % 100) + 768;
    
    randX = (randX % 2 == 0) ? randX * -1 : randX;
    randY = (randY % 2 == 0) ? randY * -1 : randY;
    
    [view setTransform:CGAffineTransformMakeTranslation(randX, randY)];
}


#pragma mark - Animation Helpers
- (void)onboardAnimateHotelImageViews {
    [UIView animateWithDuration:1.0
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         for (UIView *hotelImageView in self.imagesCanvas.subviews) {
                             [hotelImageView setTransform:CGAffineTransformIdentity];
                         }
                     }
                     completion:^(BOOL finished) {
                         self.initialImageLoadComplete = YES;
                         
                         [UIView animateWithDuration:0.3
                                          animations:^{
                                              for (UIView *hotelImageView in self.imagesCanvas.subviews) {
                                                  [hotelImageView setTransform:CGAffineTransformMakeScale(0.95, 0.95)];
                                                  [hotelImageView setAlpha:0.7];
                                              }
                                          } completion:^(BOOL finished) {
                                              [UIView animateWithDuration:0.3
                                                               animations:^{
                                                                   for (UIView *hotelImageView in self.imagesCanvas.subviews) {
                                                                       [hotelImageView setTransform:CGAffineTransformMakeScale(1.05, 1.05)];
                                                                       [hotelImageView setAlpha:1.0];
                                                                   }
                                                               }
                                                               completion:^(BOOL finished) {
                                                                   [UIView animateWithDuration:0.3
                                                                                    animations:^{
                                                                                        for (UIView *hotelImageView in self.imagesCanvas.subviews) {
                                                                                            [hotelImageView setTransform:CGAffineTransformIdentity];
                                                                                        }
                                                                                    } completion:nil
                                                                    ];
                                                                   
                                                               }];
                                          }];
                         
                     }];
}

@end


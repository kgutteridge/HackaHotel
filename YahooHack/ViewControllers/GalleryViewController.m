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
#import "MGCheckbox.h"

@interface GalleryViewController () <MGCheckboxDelegate, NSFetchedResultsControllerDelegate>
@property (nonatomic, strong) UIView *imagesCanvas;
@property (nonatomic, strong) NSArray *allHotels;
@property (nonatomic, assign) BOOL initialImageLoadComplete;

@property (nonatomic, strong) UIActivityIndicatorView *spinner;

@property (nonatomic, strong) UIView *locationTextFieldContainerView;
@property (nonatomic, strong) UIView *filterContainerView;

@end

#define MAX_IMAGES_PER_ROW 10.0f
#define MAX_ROWS 5
#define MIN_PADDING_BETWEEN_IMAGES 5.0f
#define HOTEL_IMAGEVIEW_EDGE_INSET 3.0f

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
    [self setLocationTextFieldContainerView];
    [self setupFilterView];
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
- (void)setLocationTextFieldContainerView {
    
    self.locationTextFieldContainerView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 20,
                                                                                  CGRectGetMinY(self.imagesCanvas.frame),
                                                                                  CGRectGetWidth(self.view.bounds) - CGRectGetMaxX(self.imagesCanvas.frame) - 40,
                                                                                  90)];
    
    [self.locationTextFieldContainerView setBackgroundColor:self.imagesCanvas.backgroundColor];
    [self.view addSubview:self.locationTextFieldContainerView];
    [self.view sendSubviewToBack:self.locationTextFieldContainerView];
}

- (void)setupFilterView {
    
    self.filterContainerView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 20,
                                                                        CGRectGetMaxY(self.locationTextFieldContainerView.frame) + 20,
                                                                        CGRectGetWidth(self.locationTextFieldContainerView.bounds),
                                                                        CGRectGetHeight(self.view.bounds) - CGRectGetMaxY(self.locationTextFieldContainerView.frame) - 78)];
    
    [self.filterContainerView setTransform:CGAffineTransformMakeTranslation(500, 0)];
    
    [self.filterContainerView setBackgroundColor:self.imagesCanvas.backgroundColor];
    UIScrollView *filterScrollView = [[UIScrollView alloc] initWithFrame:UIEdgeInsetsInsetRect(self.filterContainerView.bounds, UIEdgeInsetsMake(20, 0, 10, 0))];
    [self.filterContainerView addSubview:filterScrollView];
    
    [self.view addSubview:self.filterContainerView];
    [self.view sendSubviewToBack:self.filterContainerView];
    
    MGCheckbox *kidsActivity        = [self checkboxWithCenter:CGPointMake(40, 80) tag:4];
    [filterScrollView addSubview:kidsActivity];
    MGCheckbox *kitchen             = [self checkboxWithCenter:CGPointMake(40, 130) tag:5];
    [filterScrollView addSubview:kitchen];
    MGCheckbox *allowsPets          = [self checkboxWithCenter:CGPointMake(40, 180) tag:6];
    [filterScrollView addSubview:allowsPets];
    MGCheckbox *pool                = [self checkboxWithCenter:CGPointMake(40, 230) tag:7];
    [filterScrollView addSubview:pool];
    MGCheckbox *restaurantOnSite    = [self checkboxWithCenter:CGPointMake(40, 280) tag:8];
    [filterScrollView addSubview:restaurantOnSite];
    MGCheckbox *spaOnSite           = [self checkboxWithCenter:CGPointMake(40, 330) tag:9];
    [filterScrollView addSubview:spaOnSite];
    MGCheckbox *Whirlpool           = [self checkboxWithCenter:CGPointMake(40, 380) tag:10];
    [filterScrollView addSubview:Whirlpool];
    MGCheckbox *breakfast           = [self checkboxWithCenter:CGPointMake(40, 430) tag:11];
    [filterScrollView addSubview:breakfast];
    MGCheckbox *babysiting          = [self checkboxWithCenter:CGPointMake(40, 480) tag:12];
    [filterScrollView addSubview:babysiting];
    MGCheckbox *jacuzzi             = [self checkboxWithCenter:CGPointMake(40, 530) tag:13];
    [filterScrollView addSubview:jacuzzi];
    MGCheckbox *parking             = [self checkboxWithCenter:CGPointMake(40, 580) tag:14];
    [filterScrollView addSubview:parking];
    MGCheckbox *roomService         = [self checkboxWithCenter:CGPointMake(40, 630) tag:15];
    [filterScrollView addSubview:roomService];
    MGCheckbox *accesibleTravel     = [self checkboxWithCenter:CGPointMake(40, 680) tag:16];
    [filterScrollView addSubview:accesibleTravel];
    MGCheckbox *accesibleBathroom   = [self checkboxWithCenter:CGPointMake(40, 730) tag:17];
    [filterScrollView addSubview:accesibleBathroom];
    MGCheckbox *rollInShower        = [self checkboxWithCenter:CGPointMake(40, 780) tag:18];
    [filterScrollView addSubview:rollInShower];
    MGCheckbox *handicapParking     = [self checkboxWithCenter:CGPointMake(40, 830) tag:19];
    [filterScrollView addSubview:handicapParking];
    MGCheckbox *roomAccesibility    = [self checkboxWithCenter:CGPointMake(40, 880) tag:20];
    [filterScrollView addSubview:roomAccesibility];
    MGCheckbox *deafEquipment       = [self checkboxWithCenter:CGPointMake(40, 930) tag:21];
    [filterScrollView addSubview:deafEquipment];
    MGCheckbox *braille             = [self checkboxWithCenter:CGPointMake(40, 980) tag:22];
    [filterScrollView addSubview:braille];
    MGCheckbox *indoorPool          = [self checkboxWithCenter:CGPointMake(40, 1030) tag:23];
    [filterScrollView addSubview:indoorPool];
    MGCheckbox *outdoorPool         = [self checkboxWithCenter:CGPointMake(40, 1080) tag:24];
    [filterScrollView addSubview:outdoorPool];
    MGCheckbox *freeAirportShuttle  = [self checkboxWithCenter:CGPointMake(40, 1130) tag:25];
    [filterScrollView addSubview:freeAirportShuttle];
    MGCheckbox *extendedParking     = [self checkboxWithCenter:CGPointMake(40, 1180) tag:26];
    [filterScrollView addSubview:extendedParking];
    MGCheckbox *freeParking         = [self checkboxWithCenter:CGPointMake(40, 1230) tag:27];
    [filterScrollView addSubview:freeParking];
    
    [filterScrollView setContentSize:CGSizeMake(CGRectGetWidth(filterScrollView.bounds), CGRectGetMaxY(freeParking.frame))];
}

- (MGCheckbox *)checkboxWithCenter:(CGPoint)center tag:(NSInteger)tag {
    MGCheckbox *checkbox = [MGCheckbox checkbox];
    [checkbox setCenter:center];
    [checkbox setDelegate:self];
    [checkbox setTag:tag];
    
    return checkbox;
}

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
    [tempButton setFrame:CGRectMake(CGRectGetMaxX(self.imagesCanvas.frame) + 80, 50, 180, 40)];
    [tempButton setTitle:@"Remove 100 Hotels" forState:UIControlStateNormal];
    [tempButton addTarget:self action:@selector(tempButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempButton];
}

- (void)tempButtonPressed:(UIButton *)sender {
    
    // pick 100 random hotels to remove
    NSMutableArray *randomHotels = [[NSMutableArray alloc] initWithCapacity:50];
    
    while ([randomHotels count] < 100) {
        
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
    //NSLog(@"Selected/Unselected : %d/%d", [selectedImageViews count], [unSelectedImageViews count]);
    
    // Do the Grid sums based on whether or not we have existing views (eg. Selected or UnSelected)
    int square      = [selectedImageViews count] > 0 ? [self getSquare:[selectedImageViews count]] : [self getSquare:[selectedHotels count]];
    int hotelCount  = [selectedImageViews count] > 0 ? [selectedImageViews count] : [selectedHotels count];
    
    int cols = square +1;
    if(square * square == hotelCount) {
        cols = square;
    }
    
    int rows = hotelCount - (square * square) > square ? square + 1 : square;
    CGFloat imageSize = floor(CGRectGetWidth(self.imagesCanvas.bounds) / MAX(cols, rows));
    CGFloat leftInset = (CGRectGetWidth(self.imagesCanvas.bounds) - (imageSize * cols)) / 2;
    
    if ([selectedImageViews count] > 0) {
        // Hide Unselected Hotels (if any)
        [UIView animateWithDuration:0.5
                         animations:^{
                             for (UIView *unselectedView in unSelectedImageViews) {
                                 [unselectedView setTransform:CGAffineTransformMakeScale(0.1, 0.1)];
                                 [unselectedView setAlpha:0.0];
                             }
                         } completion:^(BOOL finished) {
                                                         
                             [UIView animateWithDuration:0.5
                                              animations:^{
                                                  
                                                  int currentHotel = 0;
                                                  for (int y = 0; y < rows; y++)
                                                  {
                                                      for(int x = 0; x< cols; x++)
                                                      {
                                                          CGRect frame = CGRectMake((x * imageSize) + leftInset,
                                                                                    (y * imageSize),
                                                                                    imageSize, imageSize);
                                                          
                                                          if(currentHotel >= hotelCount) {
                                                             // Just Ignore
                                                          } else {
                                                              UIImageView *hotelImageView = selectedImageViews[currentHotel];
                                                              if (!CGAffineTransformIsIdentity(hotelImageView.transform)) {
                                                                  [hotelImageView setTransform:CGAffineTransformIdentity];
                                                              }
                                                              [hotelImageView setFrame:frame];
                                                              [hotelImageView setAlpha:1.0];
                                                          }
                                                          
                                                          currentHotel++;
                                                      }
                                                  }
                                              }
                                              completion:^(BOOL finished) {
                                                  NSLog(@"Reordering Selected Hotels");
                                              }];
                         }];
    } else {
        // This is the first load
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
                                                                   [self.filterContainerView setTransform:CGAffineTransformIdentity];
                                                               }
                                                               completion:^(BOOL finished) {
                                                                   [UIView animateWithDuration:0.3
                                                                                    animations:^{
                                                                                        for (UIView *hotelImageView in self.imagesCanvas.subviews) {
                                                                                            [hotelImageView setTransform:CGAffineTransformIdentity];
                                                                                        }
                                                                                    } completion:nil];
                                                                   
                                                               }];
                                          }];
                         
                     }];
}


#pragma mark - MGCheckBox Delegate
- (void)checkbox:(MGCheckbox *)checkbox didChangeState:(BOOL)selected {
    NSLog(@"%s", __FUNCTION__);
    
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"name LIKE[c] %@", @"Hilton"];
    NSArray *hotels = [[Hotel MR_fetchAllSortedBy:@"name" ascending:NO withPredicate:filter groupBy:nil delegate:self] fetchedObjects];
     
    [self updateUIWithHotels:hotels];
}

@end


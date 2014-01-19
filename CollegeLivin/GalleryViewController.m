//
//  GalleryViewController.m
//  CollegeLivin
//
//  Created by Matthew Ao on 1/19/14.
//  Copyright (c) 2014 Matthew Ao. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark -
#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _partyImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ItemViewCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ItemCell" forIndexPath:indexPath];
    
    UIImage *img;
    long row = [indexPath row];
    
    img = [UIImage imageNamed:_partyImages[row]];
    
    myCell.imageView.image = img;
    return myCell;
}


- (IBAction)unwindToHome:(UIStoryboardSegue *)segue
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	_partyImages = [@[@"images (1).jpeg",
                      @"images.jpeg"
                      @"download (4).jpeg"
                      @"download (3).jpeg"
                      @"download (2).jpeg"
                      @"download (1).jpeg"
                      @"download.jpeg"] mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

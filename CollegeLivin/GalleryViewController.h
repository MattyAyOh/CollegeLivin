//
//  GalleryViewController.h
//  CollegeLivin
//
//  Created by Matthew Ao on 1/19/14.
//  Copyright (c) 2014 Matthew Ao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemViewCell.h"

@interface GalleryViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong,nonatomic) NSMutableArray *partyImages;
//@property (strong,nonatomic) IBOutlet UICollectionView *galleryView;
@end

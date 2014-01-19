//
//  MainViewController.h
//  CollegeLivin
//
//  Created by Matthew Ao on 1/18/14.
//  Copyright (c) 2014 Matthew Ao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemViewCell.h"


@interface HomeViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    UIImagePickerController *picker;
    UIImagePickerController *picker2;
    UIImage *image;
    IBOutlet UIImageView *imageview;
}

@property (strong,nonatomic) NSMutableArray *partyImages;

- (IBAction)TakePhoto;
- (IBAction)ChooseExisting;

@end

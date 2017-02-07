//
//  ImageViewController.h
//  imgpicker
//
//  Created by Sreenika Jaihan on 31/05/16.
//  Copyright © 2016 Sreenika Jaihan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"

@interface ImageViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic,retain) IBOutlet UITableView *tableview;
@property (nonatomic,retain) UIImageView *imageview;

@end

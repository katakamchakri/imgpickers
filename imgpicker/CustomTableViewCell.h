//
//  CustomTableViewCell.h
//  imgpicker
//
//  Created by Sreenika Jaihan on 31/05/16.
//  Copyright © 2016 Sreenika Jaihan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgview;
@property (strong, nonatomic) IBOutlet UILabel *lableobj;
@property (strong, nonatomic) IBOutlet UIButton *btn;

@end

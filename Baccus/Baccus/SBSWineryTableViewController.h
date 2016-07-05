//
//  SBSWineryTableViewController.h
//  Baccus
//
//  Created by Sandra Basquero on 5/7/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBSWineryModel.h"

#define RED_WINE_SECTION 0
#define WHITE_WINE_SECTION 1
#define OTHER_WINE_SECTION 2

@interface SBSWineryTableViewController : UITableViewController

@property (nonatomic, strong) SBSWineryModel *model;

-(id)initWithModel:(SBSWineryModel*)aModel
             style:(UITableViewStyle) aStyle;

@end

//
//  SBSWineViewController.h
//  Baccus
//
//  Created by Sandra on 7/3/16.
//  Copyright (c) 2016 Sandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBSWineModel.h"

@interface SBSWineViewController : UIViewController

@property (strong, nonatomic) SBSWineModel *model;
-(id) initWithModel: (SBSWineModel*) aModel;

@end

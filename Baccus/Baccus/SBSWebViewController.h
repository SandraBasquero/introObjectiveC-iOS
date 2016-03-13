//
//  SBSWebViewController.h
//  Baccus
//
//  Created by Sandra on 13/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBSWineModel.h"

@interface SBSWebViewController : UIViewController

@property (weak, nonatomic) SBSWineModel *model;
@property (weak, nonatomic) UIWebView *browser;

-(id)initWithModel: (SBSWineModel*) aModel;

@end

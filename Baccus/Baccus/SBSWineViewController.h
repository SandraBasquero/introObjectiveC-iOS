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

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *grapesLabel;
@property (weak, nonatomic) IBOutlet UILabel *notesLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingViews;


@property (strong, nonatomic) SBSWineModel *model;
-(id) initWithModel: (SBSWineModel*) aModel;

- (IBAction)displayWeb:(id)sender;

@end

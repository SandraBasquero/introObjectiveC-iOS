//
//  SBSWineViewController.m
//  Baccus
//
//  Created by Sandra on 7/3/16.
//  Copyright (c) 2016 Sandra. All rights reserved.
//

#import "SBSWineViewController.h"


@implementation SBSWineViewController

-(id) initWithModel: (SBSWineModel*) aModel{
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        self.model = aModel;
    }
    return self;
}



// Sincronizamos modelo y vista
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self syncModelWithView];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)displayWeb:(id)sender {
    NSLog(@"Go to %@", self.model.wineCompanyWeb);
}


#pragma mark - Utils

- (void) syncModelWithView {
    self.nameLabel.text = self.model.name;
    self.typeLabel.text = self.model.type;
    self.originLabel.text = self.model.origin;
    self.notesLabel.text = self.model.notes;
    self.wineryNameLabel.text = self.model.wineCompanyName;
    self.photoView.image = self.model.photo;
    self.grapesLabel.text = [self arrayToString: self.model.grapes];
    
    [self displayRating: self.model.rating];
}

-(void) clearRatings{
    for (UIImageView *imgView in self.ratingViews) {
        imgView.image = nil;
    }
}
-(void) displayRating: (int) aRating {
    [self clearRatings];
    
    UIImage *glass = [UIImage imageNamed:@"splitView_score_glass.png"];
    
    for (int i = 0; i < aRating; i++) {
        [[self.ratingViews objectAtIndex:i]setImage:glass];
    }
}

- (NSString *) arrayToString: (NSArray *) anArray {
    NSString *repr = nil;
    if ([anArray count] == 1) {
        repr = [@"100% " stringByAppendingString:[anArray lastObject]];
    } else {
        repr = [[anArray componentsJoinedByString:@", "] stringByAppendingString:@"."];
    }
    return repr;
}





@end

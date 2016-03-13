//
//  SBSWebViewController.m
//  Baccus
//
//  Created by Sandra on 13/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import "SBSWebViewController.h"


@implementation SBSWebViewController

-(id)initWithModel: (SBSWineModel*) aModel {
    if (self = [self initWithNibName:nil
                              bundle:nil]) {
        self.model = aModel;
    }
    return self;
}


-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self displayLayer:self.model.wineCompanyWeb];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Utils

-(void) displayLayer: (NSURL*) aURL {
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
}

@end

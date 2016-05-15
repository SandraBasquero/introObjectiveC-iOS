//
//  SBSWineryModel.h
//  Baccus
//
//  Created by Sandra on 15/5/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBSWineModel.h"

@interface SBSWineryModel : NSObject

@property (readonly, nonatomic) NSUInteger redWineCount;
@property (readonly, nonatomic) NSUInteger whiteWineCount;
@property (readonly, nonatomic) NSUInteger otherWineCount;

-(SBSWineModel*) redWineAtIndex: (int) index;
-(SBSWineModel*) whiteWineAtIndex: (int) index;
-(SBSWineModel*) otherWineAtIndex: (int) index;


@end

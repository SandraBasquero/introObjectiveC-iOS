//
//  SBSWineModel.m
//  Baccus
//
//  Created by Sandra Basquero on 4/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import "SBSWineModel.h"

@implementation SBSWineModel

#pragma mark - Class methods

//Métodos de clase
+(id) wineWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) aType
            origin: (NSString *) anOrigin
            grapes: (NSArray *) arrayOfGrapes
    wineCompanyWeb: (NSURL *) aURL
             notes: (NSString *) aNotes
            rating: (int) aRating
             photo: (UIImage *) aPhoto {
    return [[self alloc]initWithName:aName
                     wineCompanyName:aWineCompanyName
                                type:aType
                              origin:anOrigin
                              grapes:arrayOfGrapes
                      wineCompanyWeb:aURL
                               notes:aNotes
                              rating:aRating photo:aPhoto];
}

+(id) wineWithName:(NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) aType
            origin: (NSString *) anOrigin{
    return [[self alloc]initWithName:aName
                     wineCompanyName:aWineCompanyName
                                type:aType
                              origin:anOrigin];
    
}

#pragma mark - Init

//Designado
-(id) initWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) aType
            origin: (NSString *) anOrigin
            grapes: (NSArray *) arrayOfGrapes
    wineCompanyWeb: (NSURL *) aURL
             notes: (NSString *) aNotes
            rating: (int) aRating
             photo: (UIImage *) aPhoto {
    
    if (self = [super init]) {
        //Asignamos los valores a las propiedades de la instancia
        self.name = aName;
        self.wineCompanyName = aWineCompanyName;
        self.type  = aType;
        self.origin = anOrigin;
        self.grapes = arrayOfGrapes;
        self.wineCompanyWeb = aURL;
        self.notes = aNotes;
        self.photo = aPhoto;
        self.rating = aRating;
    }
    return self;
}

//Conveniencia
-(id) initWithName: (NSString *) aName
   wineCompanyName: (NSString *) aWineCompanyName
              type: (NSString *) aType
            origin: (NSString *) anOrigin {
    return [self initWithName:aName
              wineCompanyName:aWineCompanyName
                         type:aType
                       origin:anOrigin
                       grapes:nil
               wineCompanyWeb:nil
                        notes:nil
                       rating:NO_RATING
                        photo:nil];
}

@end

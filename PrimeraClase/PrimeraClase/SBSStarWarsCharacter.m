//
//  SBSStarWarsCharacter.m
//  PrimeraClase
//
//  Created by Sandra Basquero on 3/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import "SBSStarWarsCharacter.h"

@implementation SBSStarWarsCharacter

//Inicializador designado
-(id) initWithFirstName: (NSString *)firstName
               lastName: (NSString *)lastName
                  alias: (NSString *) alias {
    
    if (self = [super init]) {
        self.firstName = firstName;
        self.lastName  = lastName;
        self.alias = alias;
    }
    return self;
}

//Inicializador de conveniencia
-(id) initWithAlias: (NSString *) alias {
    return [self initWithFirstName:@""
                          lastName:@""
                             alias:alias];
}

@end

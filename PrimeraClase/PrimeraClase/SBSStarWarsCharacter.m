//
//  SBSStarWarsCharacter.m
//  PrimeraClase
//
//  Created by Sandra Basquero on 3/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import "SBSStarWarsCharacter.h"

@implementation SBSStarWarsCharacter

//Métodos de clase
+(id) starwarsCharacterWithFirstName: (NSString *)firstName
                            lastName: (NSString *)lastName
                               alias: (NSString *) alias {
    return [[self alloc] initWithFirstName:firstName
                                  lastName:lastName
                                     alias:alias];
}

+(id) starwarsCharacterWithAlias: (NSString *) alias{
    return [[self alloc] initWithAlias:alias];
    
}

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

//Sobreescribir el método "description" de la clase NSObject para mejorar los NSLog.
-(NSString *)description {
    return [NSString stringWithFormat:@"<%@: %@ %@ %@>", [self class], [self firstName], [self lastName], [self alias]];
}

@end





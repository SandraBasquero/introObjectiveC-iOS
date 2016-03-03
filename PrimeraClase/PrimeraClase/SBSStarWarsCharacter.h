//
//  SBSStarWarsCharacter.h
//  PrimeraClase
//
//  Created by Sandra Basquero on 3/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBSStarWarsCharacter : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSString *alias;

//Métodos de clase
+(id) starwarsCharacterWithFirstName: (NSString *)firstName
                            lastName: (NSString *)lastName
                               alias: (NSString *) alias;

+(id) starwarsCharacterWithAlias: (NSString *) alias;

//Inicializador designado
-(id) initWithFirstName: (NSString *)firstName
               lastName: (NSString *)lastName
                  alias: (NSString *) alias;

//Inicializador de conveniencia
-(id) initWithAlias: (NSString *) alias;
@end

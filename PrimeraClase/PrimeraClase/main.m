//
//  main.m
//  PrimeraClase
//
//  Created by Sandra Basquero on 3/3/16.
//  Copyright © 2016 Sandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBSStarWarsCharacter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Crear instancia de la clase
        SBSStarWarsCharacter *anakin = [SBSStarWarsCharacter new];
        
        //Asignar valores a las propiedades
        [anakin setFirstName:@"Anakin"];
        [anakin setLastName:@"Skywalker"];
        [anakin setAlias:@"Darth Vader"];
        
        //NSLog
        NSLog(@"Mi nombre es %@ %@ y soy más conocido como %@.",[anakin firstName], [anakin lastName], [anakin alias]);
        
        
    }
    return 0;
}

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
        /*
        //Crear instancia de la clase
        SBSStarWarsCharacter *anakin = [[SBSStarWarsCharacter alloc] initWithFirstName:@"Anakin" lastName:@"Skywalker" alias:@"Darth Vader"];
        //Asignar valores a las propiedades
        [anakin setFirstName:@"Anakin"];
        [anakin setLastName:@"Skywalker"];
        [anakin setAlias:@"Darth Vader"];*/
        
        //Crear instancia de la clase usando un inicializador designado
        SBSStarWarsCharacter *anakin = [[SBSStarWarsCharacter alloc] initWithFirstName:@"Anakin"
                                                                              lastName:@"Skywalker"
                                                                                 alias:@"Darth Vader"];
        
        
        
        //Inicializador de conveniencia
        SBSStarWarsCharacter *c3po = [[SBSStarWarsCharacter alloc] initWithAlias:@"C-3PO"];
                
        //NSLog
        NSLog(@"Mi nombre es %@ %@ y soy más conocido como %@.",[anakin firstName], [anakin lastName], [anakin alias]);
        NSLog(@"Mi nombre es %@ y soy un androide de protocolo.",[c3po alias]);
    }
    return 0;
}

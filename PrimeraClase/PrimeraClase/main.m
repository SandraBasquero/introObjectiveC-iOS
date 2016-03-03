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
        SBSStarWarsCharacter *anakin = [[SBSStarWarsCharacter alloc] init];
        //Asignar valores a las propiedades
        [anakin setFirstName:@"Anakin"];
        [anakin setLastName:@"Skywalker"];
        [anakin setAlias:@"Darth Vader"];*/
        
        //Crear instancia de la clase usando el inicializador designado
        SBSStarWarsCharacter *anakin = [[SBSStarWarsCharacter alloc] initWithFirstName:@"Anakin"
                                                                              lastName:@"Skywalker"
                                                                                 alias:@"Darth Vader"];
        
        //Crear instancia de la clase usando un inicializador de conveniencia
        SBSStarWarsCharacter *c3po = [[SBSStarWarsCharacter alloc] initWithAlias:@"C-3PO"];
        
        
        //Crear instancia de la clase usando métodos de la clase
        SBSStarWarsCharacter *leia = [SBSStarWarsCharacter starwarsCharacterWithFirstName:@"Leia"
                                                                                 lastName:@"Organa"
                                                                                    alias:@"Leia"];
        
        SBSStarWarsCharacter *r2d2 = [SBSStarWarsCharacter starwarsCharacterWithAlias:@"R2-D2"];
        
        
        
                
        //NSLog
        NSLog(@"Mi nombre es %@ %@ y soy más conocido como %@.",[anakin firstName], [anakin lastName], [anakin alias]);
        NSLog(@"Mi nombre es %@ y soy un androide de protocolo.",[c3po alias]);
        NSLog(@"Mi nombre es %@ %@ y soy más conocida como %@.",[leia firstName], [leia lastName], [leia alias]);
        NSLog(@"Mi nombre es %@ y soy un androide... navaja-suiza.",[r2d2 alias]);
        NSLog(@"%@", c3po);
    }
    return 0;
}

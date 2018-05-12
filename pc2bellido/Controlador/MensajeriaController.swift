//
//  MensajeriaController.swift
//  pc2bellido
//
//  Created by Elias Daniel on 10/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import Foundation

class MensajeriaController{
    
    
    
    func obtenerTelefono() -> [Mensajeria]{
        
        var telefono : [Mensajeria] = []
        
        let miTelefono1 = Mensajeria(foto: "f1", nombre: "MotoX2", marca: "Motorola", precio: 150.90)
        
        let miTelefono2 = Mensajeria(foto: "f2", nombre: "IphoneX", marca: "Apple", precio: 2300.50)
        
        let miTelefono3 = Mensajeria(foto: "f3", nombre: "Galaxy S8", marca: "Samsung", precio: 950.30)
        
        let miTelefono4 = Mensajeria(foto: "f4", nombre: "Nokia J10", marca: "Nokia", precio: 790.40)
        
        telefono.append(miTelefono1)
        telefono.append(miTelefono2)
        telefono.append(miTelefono3)
        telefono.append(miTelefono4)
        
        return telefono
        
    }
}

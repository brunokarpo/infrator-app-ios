//
//  companhia.swift
//  infraero
//
//  Created by Aluno on 17/02/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import Foundation

class Companhia {
    private var _nome:String
    
    init(nome:String) {
        self._nome = nome
    }
    
    var nome:String {
        get {
            return self._nome
        }
    }
}

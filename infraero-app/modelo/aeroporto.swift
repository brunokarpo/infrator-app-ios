//
//  aeroporto.swift
//  infraero
//
//  Created by Aluno on 17/02/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import Foundation

class Aeroporto {
    
    private var _nome:String
    private var _voos:Array<Voo>
    
    init(nome:String) {
        self._nome = nome
        self._voos = Array<Voo>()
    }
    
    var nome:String {
        get {
            return self._nome
        }
    }
    
    func adicionarVoo(voo:Voo) {
        self._voos.append(voo)
    }
    
    func recuperarVoos()->Array<Voo> {
        return self._voos
    }
}

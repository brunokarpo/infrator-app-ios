//
//  Voo.swift
//  infraero
//
//  Created by Aluno on 17/02/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import Foundation

class Voo {
    private var _numero:Int
    private var _saida:Date
    private var _chegada:Date
    private var _companhia:Companhia
    
    init(numero:Int, saida:Date, chegada:Date, companhia:Companhia) {
        self._numero = numero
        self._saida = saida
        self._chegada = chegada
        self._companhia = companhia
    }
    
    var numero:Int {
        get {
            return self._numero
        }
    }
    
    var saida:Date {
        get {
            return self._saida
        }
    }
    
    var chegada:Date {
        get {
            return self._chegada
        }
    }
    
    var companhia:Companhia {
        get {
            return self._companhia
        }
    }
}

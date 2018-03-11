//
//  infraero.swift
//  infraero
//
//  Created by Aluno on 17/02/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import Foundation

class Infraero {
    
    private var _aeroportos:Array<Aeroporto>
    
    init() {
        self._aeroportos = Array<Aeroporto>()
    }
    
    func adicionarAeroporto(aeroporto:Aeroporto)->Void {
        self._aeroportos.append(aeroporto);
    }
    
    func buscarAeroportoPorNome(nome:String)->Aeroporto? {
        for aeroporto in self._aeroportos {
            if(aeroporto.nome.elementsEqual(nome)) {
                return aeroporto
            }
        }
        return nil
    }
    
    func buscarVoosAeroportoPorNomeAeroporto(nome:String)->Array<Voo>? {
        let aeroporto:Aeroporto? = buscarAeroportoPorNome(nome: nome);
        if let aero = aeroporto {
            return aero.recuperarVoos()
        }
        return nil
    }
    
}

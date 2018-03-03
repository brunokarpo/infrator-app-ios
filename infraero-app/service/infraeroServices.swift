
import Foundation

class InfraeroServices{
    // CRIANDO COMPANHIAS
    private var companhiaTam:Companhia
    private var companhiaGol:Companhia
    private var companhiaAzul:Companhia
    
    // CRIANDO VOOS
    private var vooGoianiaSaoPaulo:Voo
    private var vooGoianiaSantos:Voo
    private var vooBrasiliaPalmas:Voo
    private var vooFortalezaCuritiba:Voo
    private var vooFortalezaManaus:Voo
    
    // CRIANDO AEROPORTOS E REGISTRANDO VOOS
    private var aeroportoGoiania:Aeroporto
    private var aeroportoBrasilia:Aeroporto
    private var aeroportoFortaleza:Aeroporto
    
    // CRIANDO INFRAERO
    private var _infraero:Infraero = Infraero();
    
    var infraero:Infraero {
        get {
            return self._infraero
        }
    }
    init() {
        companhiaTam = Companhia(nome: "TAM")
        companhiaGol = Companhia(nome: "GOL")
        companhiaAzul = Companhia(nome: "Azul")
        
        vooGoianiaSaoPaulo = Voo(numero: 1515, saida: Date.distantPast, chegada: Date.distantFuture, companhia: companhiaTam)
        vooGoianiaSantos = Voo(numero: 1516, saida: Date.distantPast, chegada: Date.distantFuture, companhia: companhiaGol)
        vooBrasiliaPalmas = Voo(numero: 7541, saida: Date.distantPast, chegada: Date.distantFuture, companhia: companhiaGol)
        vooFortalezaCuritiba = Voo(numero: 7133, saida: Date.distantPast, chegada: Date.distantFuture, companhia: companhiaAzul)
        vooFortalezaManaus = Voo(numero: 11234, saida: Date.distantPast, chegada: Date.distantFuture, companhia: companhiaTam)
        
        aeroportoGoiania = Aeroporto(nome: "Santa Genoveva")
        aeroportoGoiania.adicionarVoo(voo: vooGoianiaSaoPaulo)
        aeroportoGoiania.adicionarVoo(voo: vooGoianiaSantos)
        
        aeroportoBrasilia = Aeroporto(nome: "Mane Garrincha")
        aeroportoBrasilia.adicionarVoo(voo: vooBrasiliaPalmas)
        
        aeroportoFortaleza = Aeroporto(nome: "Sol do Meio Dia")
        aeroportoFortaleza.adicionarVoo(voo: vooFortalezaCuritiba)
        aeroportoFortaleza.adicionarVoo(voo: vooFortalezaManaus)
        
        infraero.adicionarAeroporto(aeroporto: aeroportoGoiania)
        infraero.adicionarAeroporto(aeroporto: aeroportoBrasilia)
        infraero.adicionarAeroporto(aeroporto: aeroportoFortaleza)
    }
}

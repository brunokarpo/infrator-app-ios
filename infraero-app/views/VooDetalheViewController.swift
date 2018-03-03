//
//  VooDetalheViewController.swift
//  infraero-app
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class VooDetalheViewController: UIViewController {

    var vrVoo: Voo?
    
    @IBOutlet weak var vrNumeroVoo: UILabel!
    @IBOutlet weak var vrDataSaida: UILabel!
    @IBOutlet weak var vrDataChegada: UILabel!
    @IBOutlet weak var vrCompanhia: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vrNumeroVoo.text = String(describing: vrVoo!.numero)
        vrDataSaida.text = String(describing: vrVoo!.saida)
        vrDataChegada.text = String(describing: vrVoo!.chegada)
        vrCompanhia.text = vrVoo!.companhia.nome
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

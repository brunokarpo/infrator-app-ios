//
//  VoosViewController.swift
//  infraero-app
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit
import AVFoundation

class VoosViewController: UITableViewController {
    
    var aeroporto:Aeroporto?
    
    @IBOutlet var vrTableVoos: UITableView!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula:CelVoosTableViewCell = vrTableVoos.dequeueReusableCell(withIdentifier: "cellvoo") as! CelVoosTableViewCell
        celula.vrNumero.text = String(describing: self.aeroporto!.recuperarVoos()[indexPath.row].numero)
        celula.vrCompanhia.text = self.aeroporto!.recuperarVoos()[indexPath.row].companhia.nome
        return celula
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let indexPath = vrTableVoos.indexPathForSelectedRow
        {
            let telaVoos = segue.destination as! VooDetalheViewController
            telaVoos.vrVoo = (self.aeroporto?.recuperarVoos()[indexPath.row])!
        }
    }
    
    

}

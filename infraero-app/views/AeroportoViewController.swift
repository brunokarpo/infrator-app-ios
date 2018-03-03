//
//  AeroportoViewController.swift
//  infraero-app
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit
import AVFoundation

class AeroportoViewController: UIViewController, UITableViewDataSource {
    
    private var _infraeroService:InfraeroServices = InfraeroServices()
    @IBOutlet weak var vrTable: UITableView!
    //Implementacao dos metodos de DataSource
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self._infraeroService.infraero.aeroportos().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula:CelAeroportoTableViewCell = vrTable.dequeueReusableCell(withIdentifier: "cell") as! CelAeroportoTableViewCell
        celula.vrImagem.image = UIImage(named: self._infraeroService.infraero.aeroportos()[indexPath.row].nome)
        celula.vrLabel.text = self._infraeroService.infraero.aeroportos()[indexPath.row].nome        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let indexPath = vrTable.indexPathForSelectedRow
        {
            let telaVoos = segue.destination as! VoosViewController
            telaVoos.aeroporto = self._infraeroService.infraero.aeroportos()[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vrTable.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

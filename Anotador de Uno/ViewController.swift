//
//  ViewController.swift
//  Anotador de Uno
//
//  Created by Nicolás Fiore on 10/03/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cantidadJugadores: UILabel!
    @IBOutlet weak var stepperJuadores: UIStepper!
    @IBOutlet weak var tableView: UITableView!
    
    var cantidadDeJugadores: [Int] = [1,1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "JugadoresTableViewCell", bundle: nil), forCellReuseIdentifier: "jugadoresCard")
        tableView.dataSource = self
        
        stepperJuadores.minimumValue = 2
        stepperJuadores.maximumValue = 14
        stepperJuadores.value = 0
        cantidadJugadores.text = "2"
        
    }

    @IBAction func stepperJugadoresMasMenos(_ sender: Any) {
        let cantidad = Int(stepperJuadores.value)
        cantidadJugadores.text = String(cantidad)
        
        if stepperJuadores.value > 2 {
            cantidadDeJugadores.append(1)
            tableView.reloadData()
            print(cantidadDeJugadores)
            print("Cantidad:\(cantidad)")
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cantidadDeJugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jugadoresCard") as? JugadoresTableViewCell
        return cell!
    }
}

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
        
        
        switch Int(stepperJuadores.value){
        case 2:
            cantidadDeJugadores.removeAll()
            for x in 1...2 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 3:
            cantidadDeJugadores.removeAll()
            for x in 1...3 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 4:
            cantidadDeJugadores.removeAll()
            for x in 1...4 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 5:
            cantidadDeJugadores.removeAll()
            for x in 1...5 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 6:
            cantidadDeJugadores.removeAll()
            for x in 1...6 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 7:
            cantidadDeJugadores.removeAll()
            for x in 1...7 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 8:
            cantidadDeJugadores.removeAll()
            for x in 1...8 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 9:
            cantidadDeJugadores.removeAll()
            for x in 1...9 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 10:
            cantidadDeJugadores.removeAll()
            for x in 1...10 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 11:
            cantidadDeJugadores.removeAll()
            for x in 1...11 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 12:
            cantidadDeJugadores.removeAll()
            for x in 1...12 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 13:
            cantidadDeJugadores.removeAll()
            for x in 1...13 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        case 14:
            cantidadDeJugadores.removeAll()
            for x in 1...14 {
                cantidadDeJugadores.append(x)
                print(cantidadDeJugadores)
                tableView.reloadData()
            }
            break
        default:
            print("ERROR")
        }
        
        /*
        if stepperJuadores.value > 2 {
            cantidadDeJugadores.append(1)
            tableView.reloadData()
            print(cantidadDeJugadores)
            print("Cantidad:\(cantidad)")
        }*/
        
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

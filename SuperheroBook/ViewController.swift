//
//  ViewController.swift
//  SuperheroBook
//
//  Created by Rabia Cırık on 8.05.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var TableView: UITableView!
    var superheroNames = [String]()
    var superheroImageNames = [String]()
    var secilenIsimler = ""
    var secilenGorseller = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate=self
        TableView.dataSource=self
        
       
        superheroNames.append("Batman")
        superheroNames.append("Captain America")
        superheroNames.append("Iron Man")
        superheroNames.append("Spiderman")
        superheroNames.append("Superman")
        
        //var superheroImageNames = [UIImage]()
        //superheroImageNames.append(UIImage(named: "Batman")!)
        
        superheroImageNames.append("Batman")
        superheroImageNames.append("Captain America")
        superheroImageNames.append("Iron Man")
        superheroImageNames.append("Spiderman")
        superheroImageNames.append("Superman")
        
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=superheroNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle : UITableViewCell.EditingStyle,
       forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superheroNames.remove(at: indexPath.row)
            superheroImageNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         secilenIsimler = superheroNames[indexPath.row]
         secilenGorseller = superheroImageNames[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! Details_ViewController
            destinationVC.secilenKahramanIsmi = secilenIsimler
            destinationVC.secilenKahramanGorselIsimi = secilenGorseller
        }
    }
}



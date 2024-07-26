//
//  Details ViewController.swift
//  SuperheroBook
//
//  Created by Rabia Cırık on 27.07.2024.
//

import UIKit

class Details_ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanIsmi = " "
    var secilenKahramanGorselIsimi = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = UIImage(named: secilenKahramanIsmi )
        label.text = secilenKahramanIsmi
        // Do any additional setup after loading the view.
    }
    

    

}

//
//  ViewController.swift
//  homeWork3
//
//  Created by Яна Павлова on 24.06.2023.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var cirvleView: UIView!
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        print(#function)
        cirvleView.layer.cornerRadius = cirvleView.frame.width / 2.0
        cirvleView.clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UniversityText.text = "Innopolis"
        CityText.text = "Russia, Innopolis"
        
        
    }
    
    @IBOutlet weak var UniversityText: UITextView!
    
    @IBAction func UniversityButton(_ sender: Any) {
        let alert = UIAlertController(title: "Enter New Value", message: "", preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .default, handler: {_ in if let newUniversity = alert.textFields?.first?.text{self.UniversityText.text = newUniversity}})
        alert.addAction(doneAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        alert.addTextField { (textField) in textField.placeholder = "University"}
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var CityText: UITextView!
    
    @IBAction func cityButton(_ sender: Any) {
        let alert = UIAlertController(title: "Enter New Value", message: "", preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .default, handler: {_ in if let newCity = alert.textFields?.first?.text{self.CityText.text = newCity}})
        alert.addAction(doneAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        alert.addTextField { (textField) in textField.placeholder = "City"}
        present(alert, animated: true, completion: nil)
    }
    
}


//
//  ViewController.swift
//  Zoo App
//
//  Created by Kishor Mainali on 10/5/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    

    var listOfNotKillerAnimals = [Animal]()
    var listOfKillerAnimals = [Animal]()
    var AnimalType = ["Not Killer","Killer"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfNotKillerAnimals.append(Animal(name: "Zebrs", description: "Zebra", image: "zebra"))
        listOfNotKillerAnimals.append(Animal(name: "BullDog", description: "BullDog", image: "bulldog"))
        listOfKillerAnimals.append(Animal(name: "Baboon", description: "Baboon", image: "baboon"))
        listOfNotKillerAnimals.append(Animal(name: "Panda", description: "Panda", image: "panda"))
        listOfNotKillerAnimals.append(Animal(name: "Swallow Bird", description: "Swallow Bird", image: "swallow_bird"))
        listOfKillerAnimals.append(Animal(name: "White Tiger", description: "White TIger", image: "white_tiger"))
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return listOfNotKillerAnimals.count
        }else{
            return listOfKillerAnimals.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AnimalType[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print(listOfNotKillerAnimals[indexPath.row].name)
            listOfNotKillerAnimals.append(listOfNotKillerAnimals[indexPath.row])
        }else{
            print(listOfKillerAnimals[indexPath.row].name)
            listOfKillerAnimals.append(listOfKillerAnimals[indexPath.row])
        }
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal:TableItem = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for:indexPath) as! TableItem
        
        
        if indexPath.section == 0 {
            cellAnimal.setItem(animal: listOfNotKillerAnimals[indexPath.row])
        }else{
            cellAnimal.setItem(animal: listOfKillerAnimals[indexPath.row])
        }
        
       
        return cellAnimal
    }

}


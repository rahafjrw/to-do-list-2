//
//  AddToDoViewController.swift
//  to-do list 2
//
//  Created by Rahaf Aljerwi on 5/12/21.
//  Copyright © 2021 Rahaf Aljerwi. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = TableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    @IBAction func addTapped(_ sender: Any) {
        
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()

        navigationController?.popViewController(animated: true)
    }
    */

   @IBAction func addTapped(_ sender: Any) {


     if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

       let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

    
       if let titleText = titleTextField.text {
           // we will take the titleText and assign that value to toDo.name
           // this .name and .important came from the attributes you typed in on the Core Data page!
           toDo.name = titleText
           toDo.important = importantSwitch.isOn
       }

       try? context.save()

       navigationController?.popViewController(animated: true)
     }

   }
    /*
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
 */
}

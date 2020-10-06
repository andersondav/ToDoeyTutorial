//
//  AddToDoViewController.swift
//  ToDoeyTutorial
//
//  Created by Anderson David on 10/5/20.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveNewToDo" {
            let newToDo = ToDo(title: titleField.text ?? "New ToDo", description: descField.text, dueDate: datePicker.date)
            
            let tableViewController = segue.destination as! ToDoeyTableViewController
            
            tableViewController.todos.append(newToDo)
            tableViewController.toDoeyTableView.reloadData()
        }
    }

}

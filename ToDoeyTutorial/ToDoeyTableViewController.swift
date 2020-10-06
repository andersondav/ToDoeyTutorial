//
//  ViewController.swift
//  ToDoeyTutorial
//
//  Created by Anderson David on 10/5/20.
//

import UIKit

class ToDoeyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoeyTableView: UITableView!
    
    // data structure used to hold our toDo items
    var todos: [ToDo] = [ToDo(title: "Math HW", description: "Integrals", dueDate: Date()), ToDo(title: "180 Project", description: "Finish final function", dueDate: Date()), ToDo(title: "Research paper", description: "Finish rough draft", dueDate: Date())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // for table views, we need to set a delegate and datasource
        // in this case, the view controller itself fills these roles
        toDoeyTableView.delegate = self
        toDoeyTableView.dataSource = self
    }
    
    // this function is required by UIKit for Table Views so it knows the number of cells to render
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    // this function is required by UIKit for Table Views to know what should be in each table view cell at each index
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this function gets a reusable cell; the identifier is set in the storyboard
        let cell = toDoeyTableView.dequeueReusableCell(withIdentifier: "ToDoeyCell") as! ToDoeyTableViewCell
        
        let toDisplay = todos[indexPath.row]
        
        cell.titleField.text = toDisplay.title
        cell.descField.text = toDisplay.description
        
        // formatting the date
        let df = DateFormatter()
        df.dateFormat = "MM-dd-yyyy"
        
        cell.dateField.text = df.string(from: toDisplay.dueDate)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            toDoeyTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }

}


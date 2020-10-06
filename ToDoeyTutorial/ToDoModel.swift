//
//  ToDoModel.swift
//  ToDoeyTutorial
//
//  Created by Anderson David on 10/5/20.
//

import Foundation

// a model for a ToDo item
// Note: we could use a class here, but since the model is relatively small and simple, a struct gets the job done, and does so efficiently
struct ToDo {
    
    var title: String
    var description: String
    var dueDate: Date
    
}

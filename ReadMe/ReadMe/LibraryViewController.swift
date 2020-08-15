//
//  ViewController.swift
//  ReadMe
//
//  Created by Himanshu  on 15/08/20.
//  Copyright © 2020 Himanshu . All rights reserved.
//

import UIKit

class LibraryViewController: UITableViewController {
    
    @IBSegueAction func showDetailView(_ coder: NSCoder) -> DetailViewController? {
        guard let indexPath = tableView.indexPathForSelectedRow else { fatalError("Nothing Selected!") }
        let book = Library.books[indexPath.row]
        return DetailViewController(coder: coder, book: book)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        cell.textLabel?.text = Library.books[indexPath.row].title
        cell.imageView?.image = Library.books[indexPath.row].image
        return cell
    }
}


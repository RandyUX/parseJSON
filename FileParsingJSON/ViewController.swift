//
//  ViewController.swift
//  FileParsingJSON
//
//  Created by Randy on 15/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var result:[Result?] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableList", for: indexPath) as! TableList
        
        cell.title?.text = self.result[indexPath.row]?.title
        cell.author?.text = self.result[indexPath.row]?.author
        cell.year?.text = String(self.result[indexPath.row]?.year ?? 0)
        return cell
        
    }
    

    
    
    
    @IBOutlet var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
   

    private func parseJSON(){
        guard let path = Bundle.main.path(forResource: "books", ofType: "json")else{
            return
        }
        let url = URL(fileURLWithPath: path)
        
        do{
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode([Result?].self, from: jsonData)
            print(result)
            return
        }
        catch{
            print("error: \(error)")
        }
    }
}


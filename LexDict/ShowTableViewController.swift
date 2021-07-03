//
//  ShowTableViewController.swift
//  LexDict
//
//  Created by SEZAX development on 03/07/2021.
//

import UIKit

class ShowTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getShow()
    }

    func getShow() {
        if let url = URL(string: "https://dictapi.lexicala.com/test") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request){(data, response, error) in
                
                if error != nil {
                    print("There was an error")
                } else if data != nil {
                    print(String(data: data!, encoding: .utf8))
                }
                
            }.resume()
        }
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


}

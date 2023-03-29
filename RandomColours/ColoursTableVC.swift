//
//  ColoursTableVC.swift
//  RandomColours
//
//  Created by Dru Mumba on 24/03/2023.
//

import UIKit

class ColoursTableVC: UIViewController {
    
    var colours: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColours()
    }
    
    func addRandomColours(){
        for _ in 0..<50 {
            colours.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColoursDetailVC
        destVC.colour = sender as? UIColor
    }
}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //how many rows to show
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //what to show in each row
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else {
            return UITableViewCell()
        }
        //let colour = colours[indexPath.row]
        //cell.backgroundColor = colour
        
        cell.backgroundColor = colours[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: colour)
    }
}

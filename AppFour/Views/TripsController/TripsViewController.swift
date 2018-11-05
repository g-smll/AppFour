//
//  TripsViewController.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/2.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var addButton: FloatingActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        TripFunction.readTrips (completion: { [weak self] in
            // completion
            self?.tableview.reloadData()
        })
        
        view.backgroundColor = Theme.backgroundColor
        
//        addButton.createFloatingActionBtton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddTripSegue"{
            let popup = segue.destination as! AddTripViewController
            
            popup.doSave = { [weak self] in
                self?.tableview.reloadData()
            }
        }
    }
}

extension TripsViewController:UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! TripsTableViewCell;
        
        //cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        
        cell.setup(tripModel: Data.tripModels[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

}

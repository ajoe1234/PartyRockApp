//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Jo on 4/4/2560 BE.
//  Copyright © 2560 Jo. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://placehold.it/120x120&text=image1", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LBhq1bSqMP4?list=RDLBhq1bSqMP4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hello1")
        
        let p2 = PartyRock(imageURL: "http://placehold.it/120x120&text=image2", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LBhq1bSqMP4?list=RDLBhq1bSqMP4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hello2")
        
        let p3 = PartyRock(imageURL: "http://placehold.it/120x120&text=image3", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LBhq1bSqMP4?list=RDLBhq1bSqMP4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hello3")
        
        let p4 = PartyRock(imageURL: "http://placehold.it/120x120&text=image4", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LBhq1bSqMP4?list=RDLBhq1bSqMP4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hello4")
        
        let p5 = PartyRock(imageURL: "http://placehold.it/120x120&text=image5", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LBhq1bSqMP4?list=RDLBhq1bSqMP4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hello5")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else{
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }


}


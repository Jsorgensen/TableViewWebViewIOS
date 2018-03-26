//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Michael Jorgensen on 3/25/18.
//  Copyright © 2018 Jsorgensen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var headers = [MediaHeader]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headers.append(MediaHeader(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNvH_zunkflSEPvlnID75S5nLeLsDcJ3s722uKaJGgZ5OmS3oEhA", videoURL: "https://www.youtube.com/watch?v=6ZfuNTqbHE8&t=10s", videoTitle: "Avengers: Infinity Wars, trailer 1"))
        headers.append(MediaHeader(imageURL: "https://cdn.movieweb.com/img.news.tops/NE3f4fO5mZpp64_1_b/Avengers-Infinity-War-Release-Date-Change-April.jpg", videoURL: "https://www.youtube.com/watch?v=NWepvH6LnEw", videoTitle: "Avengers: Infinity Wars, trailer 2"))
        headers.append(MediaHeader(imageURL: "https://i1.wp.com/wafturenews.com/wp-content/uploads/2017/08/ant_man_and_the_wasp_movie_poster_by_arkhamnatic-da24z6k.jpg?fit=807%2C989&ssl=1", videoURL: "https://www.youtube.com/watch?v=8_rTIAOohas", videoTitle: "Ant Man and the Wasp Trailer"))
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "header", for: indexPath) as? PartyTableViewCell{
            cell.updateUI(header: headers[indexPath.row])
            
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headers.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mediaItem = headers[indexPath.row]
        
        performSegue(withIdentifier: "videoIntent", sender: mediaItem)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoViewController{
            if let item = sender as? MediaHeader{
                destination.mediaItem = item
            }
        }
    }
}


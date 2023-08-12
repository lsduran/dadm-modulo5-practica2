//
//  GamesController.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 05/08/23.
//

import UIKit

class GamesController: UIViewController {
    
    @IBOutlet var coverImage: UIImageView!
    
    @IBOutlet var coverPageControl: UIPageControl!
    
    
    
    // TODO: Obtener el arreglo de manera dinámica, not hardcoded
    let gameCovers = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        coverPageControl.numberOfPages = gameCovers.count
        coverImage.image = UIImage(named: String(gameCovers.first!))
    }
    
    @IBAction func rightSwipeGestureDone(_ sender: Any) {
        print("right swipe")
        if coverPageControl.currentPage == 0  {
            coverPageControl.currentPage = 7
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        else{
            coverPageControl.currentPage = coverPageControl.currentPage - 1
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
    }
    
    @IBAction func leftSwipeGestureDone(_ sender: Any) {
        print("left swipe")
        if coverPageControl.currentPage == 7  {
            coverPageControl.currentPage = 0
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
        else{
            coverPageControl.currentPage = coverPageControl.currentPage + 1
            coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
        }
    }
    
    @IBAction func onCoverChanged(_ sender: Any) {
        coverImage.image = UIImage(named: String(gameCovers[coverPageControl.currentPage]))
    }
    
}

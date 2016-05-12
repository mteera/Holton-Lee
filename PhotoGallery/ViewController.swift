//
//  ViewController.swift
//  PhotoGallery
//
//  Created by Mongkol Teera (i7676893) on 11/05/2016.
//  Copyright © 2016 Hexatech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource {
    
    @IBOutlet var carouselView: iCarousel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    var birds = buildBirds()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carouselView.type = .CoverFlow
        imageLabel.text = birds[carouselView.currentItemIndex].name
        descriptionLabel.text = birds[carouselView.currentItemIndex].description
    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int {
        return birds.count
        
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        let tempView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 350))
        
        
        tempView.image = UIImage(named: birds[index].name)
        
        return tempView
        
    }
    
    func carousel(carousel: iCarousel, valueForOption option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == iCarouselOption.Spacing{
            return 1.2
        }
        return value
    }
    

}

extension ViewController: iCarouselDelegate {
    
    func carouselCurrentItemIndexDidChange(carousel: iCarousel) {
        imageLabel.text = birds[carousel.currentItemIndex].name
        descriptionLabel.text = birds[carousel.currentItemIndex].description
    }

    
}


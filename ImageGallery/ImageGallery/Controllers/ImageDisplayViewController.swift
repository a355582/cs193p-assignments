//
//  ImageDisplayViewController.swift
//  ImageGallery
//
//  Created by Tiago Maia Lopes on 21/03/18.
//  Copyright © 2018 Tiago Maia Lopes. All rights reserved.
//

import UIKit

class ImageDisplayViewController: UIViewController, UIScrollViewDelegate {

  // MARK: - Properties
  
  /// The imageView displaying the passed image.
  @IBOutlet weak var imageView: UIImageView!
  
  /// The scrollView containing the view.
  @IBOutlet weak var scrollView: UIScrollView! {
    didSet {
      scrollView.minimumZoomScale = 1/8
      scrollView.maximumZoomScale = 1
    }
  }
  
  /// The image being displayed.
  var image: ImageGallery.Image!
  
  // MARK: - Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    if let data = image?.imageData {
      imageView?.image = UIImage(data: data)
    }
  }
  
  // MARK: - scroll view delegate
  
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
}

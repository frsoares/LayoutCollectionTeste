//
//  ViewController.swift
//  LayoutCollectionTeste
//
//  Created by Francisco Soares on 26/04/18.
//  Copyright © 2018 Francisco Soares. All rights reserved.
//

import UIKit
import PBJHexagon

class ViewController: UIViewController {

    
    @IBOutlet weak var collection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let fl = collection.collectionViewLayout as? PBJHexagonFlowLayout
//        fl?.scrollDirection = .vertical
//        fl?.sectionInset = .zero
//        fl?.headerReferenceSize = .zero
//        fl?.footerReferenceSize = .zero
//        fl?.itemSize = CGSize(width: 80, height: 92)
//        fl?.itemsPerRow = 4
        
        collection.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .blue
        return cell
    }
    
}

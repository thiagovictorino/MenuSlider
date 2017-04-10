//
//  SideMenuHeaderViewController.swift
//  010SideMenu
//
//  Created by macmini_2 on 31/03/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit

class SideMenuHeaderViewController: UIViewController {

	@IBOutlet var headerView: UIView!
	@IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	public func setLabel(text: String) {
		self.label.text = text
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

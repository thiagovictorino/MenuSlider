//
//  SideMenuFooterViewController.swift
//  010SideMenu
//
//  Created by macmini_2 on 03/04/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit

public class SideMenuFooterViewController: UIViewController {

	@IBOutlet public var footerView: UIView!
	@IBOutlet public weak var label: UILabel!
	
	public func setLabel(text: String) {
		self.label.text = text
	}

    override public func viewDidLoad() {
        super.viewDidLoad()
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
	}

}

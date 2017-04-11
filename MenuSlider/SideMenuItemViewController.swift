//
//  SideMenuItemViewController.swift
//  010SideMenu
//
//  Created by macmini_2 on 29/03/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit

public class SideMenuItemViewController: UIViewController {

	@IBOutlet weak var labelText: UILabel!

	public func setLabel(text: String) {
		self.labelText?.text? = text
	}

}

//
//  TestViewController.swift
//  010SideMenu
//
//  Created by macmini_2 on 04/04/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, SideMenuDelegate {
	var menu: SideMenuViewController!

	init() {
		super.init(nibName: nil, bundle: nil)
		let menuItem1: SideMenuItem = SideMenuItemFactory().make(title: "Home", action: { () -> Void in
			print(1)
		})

		let menuItem2: SideMenuItem = SideMenuItemFactory().make(title: "Profile", action: { () -> Void in
			print(2)
		})

		let menuItem3: SideMenuItem = SideMenuItemFactory().make(title: "About", action: { () -> Void in
			print(3)
		})

		let viewAdd = UIView()
		let label = UILabel()

		label.textAlignment = NSTextAlignment.center
		label.text = "More"
		label.textColor = UIColor.black
		label.autoresizingMask = [.flexibleWidth, .flexibleHeight]

		viewAdd.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		viewAdd.addSubview(label)

		let menuItem4 = SideMenuItemFactory().make(view: viewAdd, action: { () -> Void in
			print(4)
		})

		let headerView = UIView()
		headerView.backgroundColor = UIColor.blue
		let header = SideMenuHeaderFactory().make(title: "Header")

		let footerView = UIView()
		footerView.backgroundColor = UIColor.red
		let footer = SideMenuFooterFactory().make(title: "Footer")

		let menu: SideMenu = SideMenu(menuItems: [menuItem1, menuItem2, menuItem3, menuItem4], header: header, footer: footer)

		self.menu = menu.build()
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func onMenuClose() {
		print("menu Closed")
	}

	func onMenuOpen() {
		print("menu Opened")
	}

	@IBAction func showMenuAction(_ sender: Any) {
		self.menu.expand(onController: self)
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		menu.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

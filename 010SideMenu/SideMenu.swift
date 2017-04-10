//
//  SideMenu.swift
//  010SideMenu
//
//  Created by macmini_2 on 28/03/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import Foundation
import UIKit

class SideMenu {

	var menuViewController: SideMenuViewController?
	var menuItems: [SideMenuItem]
	var headerView: SideMenuHeader?
	var footerView: SideMenuFooter?

	init(menuItems items: [SideMenuItem]) {
		self.menuItems = items
	}

	init(menuItems items: [SideMenuItem], header headerView: SideMenuHeader) {
		self.menuItems = items
		self.headerView = headerView
	}

	init(menuItems items: [SideMenuItem], footer footerView: SideMenuFooter) {
		self.menuItems = items
		self.footerView = footerView
	}

	init(menuItems items: [SideMenuItem], header headerView: SideMenuHeader, footer footerView: SideMenuFooter) {
		self.menuItems = items
		self.headerView = headerView
		self.footerView = footerView
	}

	func build() -> SideMenuViewController! {
		self.menuViewController = SideMenuViewController()
		self.menuViewController?.setItems(items: menuItems)

		if (self.headerView) != nil {
			self.menuViewController?.setHeader(view: self.headerView!)
		}

		if (self.footerView) != nil {
			self.menuViewController?.setFooter(view: self.footerView!)
		}

		return self.menuViewController
	}

}

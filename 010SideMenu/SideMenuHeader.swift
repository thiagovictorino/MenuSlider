//
//  SideMenuHeaderFactory.swift
//  010SideMenu
//
//  Created by macmini_2 on 24/03/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit


class SideMenuHeader: SideMenuBoxViewProtocol {

	internal func getView() -> UIView {
		fatalError("Subclasses need to implement the 'getView()' method.")
	}

}

public class SideMenuHeaderFactory {

	private var headerView: UIView!

	func make(title: String) -> SideMenuHeader {
		return SideMenuHeaderSimple(title: title)
	}

	func make(view: UIView) -> SideMenuHeader {
		return SideMenuHeaderView(view: view)
	}

	private class SideMenuHeaderSimple: SideMenuHeader {

		var title: String

		init(title: String) {
			self.title = title
		}

		public override func getView() -> UIView {
			let sideMenuHeaderView: SideMenuHeaderViewController = SideMenuHeaderViewController()
			sideMenuHeaderView.loadView()
			sideMenuHeaderView.setLabel(text: title)
			return sideMenuHeaderView.view
		}

	}

	private class SideMenuHeaderView: SideMenuHeader {

		var headerView: UIView

		init(view: UIView) {
			self.headerView = view
		}

		public override func getView() -> UIView {
			return self.headerView
		}

	}

}

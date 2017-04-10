//
//  SideMenuFooter.swift
//  010SideMenu
//
//  Created by macmini_2 on 03/04/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit


class SideMenuFooter: SideMenuBoxViewProtocol {

	internal func getView() -> UIView {
		fatalError("Subclasses need to implement the 'getView()' method.")
	}

}

class SideMenuFooterFactory {

	private var footerView: UIView!

	func make(title: String) -> SideMenuFooter {
		return SideMenuFooterSimple(title: title)
	}

	func make(view: UIView) -> SideMenuFooter {
		return SideMenuFooterView(view: view)
	}

	private class SideMenuFooterSimple: SideMenuFooter {

		var title: String

		init(title: String) {
			self.title = title
		}

		public override func getView() -> UIView {
			let sideMenuFooterView: SideMenuFooterViewController = SideMenuFooterViewController()
			sideMenuFooterView.loadView()
			sideMenuFooterView.setLabel(text: title)
			return sideMenuFooterView.view
		}

	}

	private class SideMenuFooterView: SideMenuFooter {

		var footerView: UIView

		init(view: UIView) {
			self.footerView = view
		}

		public override func getView() -> UIView {
			return self.footerView
		}

	}
}

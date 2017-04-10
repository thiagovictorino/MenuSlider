//
//  SideMenuItem.swift
//  010SideMenu
//
//  Created by macmini_2 on 28/03/17.
//  Copyright © 2017 010Minds. All rights reserved.
//

import UIKit


class SideMenuItem: SideMenuBoxViewProtocol {
	var action: () -> Void

	internal func getView() -> UIView {
		fatalError("Subclasses need to implement the `getView()` method.")
	}

	init(listener: @escaping (() -> Void)) {
		self.action = listener
	}

}

public class SideMenuItemFactory {

	func make(title str: String, action: @escaping (() -> Void)) -> SideMenuItem {
		return SideMenuItemSimple(title: str, listener: action)
	}

	func make(view: UIView, action: @escaping (() -> Void)) -> SideMenuItem {
		return SideMenuItemView(view: view, listener: action)
	}

	private class SideMenuItemView: SideMenuItem {

		var itemView: UIView = UIView()

		init(view: UIView, listener: @escaping (() -> Void)) {
			self.itemView = view
			super.init(listener: listener)
		}

		public override func getView() -> UIView {
			return self.itemView
		}

	}

	private class SideMenuItemSimple: SideMenuItem {
		var title: String

		init(title string: String, listener: @escaping (() -> Void)) {
			self.title = string
			super.init(listener: listener)
		}

		public override func getView() -> UIView {
			let view = SideMenuItemViewController()
			view.loadView()
			view.setLabel(text: self.title)
			return view.view
		}

	}

}

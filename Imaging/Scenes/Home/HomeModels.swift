//
//  HomeModels.swift
//  Imaging
//
//  Created by Raymond Law on 7/7/18.
//  Copyright (c) 2018 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

struct Entry
{
  var text: String
  var icon: UIImage
}

enum Home
{
  struct DisplayedEntry
  {
    var text: String
    var icon: UIImage
  }
  
  // MARK: Use cases
  
  enum FetchEntries
  {
    struct Request
    {
    }
    struct Response
    {
      var entries: [Entry]
    }
    struct ViewModel
    {
      var displayedEntries: [DisplayedEntry]
    }
  }
  
  enum SetIcon
  {
    struct Request
    {
      var icon: UIImage
      var indexPath: IndexPath
    }
    struct Response
    {
      var entry: Entry
      var indexPath: IndexPath
    }
    struct ViewModel
    {
      var displayedEntry: DisplayedEntry
      var indexPath: IndexPath
    }
  }
}

//
//  Theme.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 03/04/2023.
//

import Foundation
import SwiftUI

// Font Styles
enum FontSize: Double {
    case size10 = 10,
         size11 = 11,
         size12 = 12,
         size13 = 13,
         size14 = 14,
         size15 = 15,
         size16 = 16,
         size17 = 17,
         size18 = 18,
         size19 = 19,
         size20 = 20,
         size21 = 21,
         size22 = 22,
         size23 = 23,
         size24 = 24,
         size25 = 25,
         size26 = 26,
         size27 = 27,
         size28 = 28,
         size29 = 29,
         size30 = 30,
         size31 = 31,
         size32 = 32,
         size33 = 33,
         size34 = 34,
         size35 = 35,
         size36 = 36,
         size37 = 37,
         size38 = 38,
         size39 = 39,
         size40 = 40
}


// Font Names
enum FontName: String {
    case bold = "SFProDisplay-Bold",
         heavy = "SFProDisplay-Heavy",
         medium = "SFProDisplay-Medium",
         regular = "SFProDisplay-Regular",
         semiBold = "SFProDisplay-Semibold",
         textBold = "SFProText-Bold",
         textLight = "SFProText-Light",
         textMedium = "SFProText-Medium",
         textRegular = "SFProText-Regular",
         textSemiBold = "SFProText-Semibold"
}

// AppColors
/*
enum AppColors: String {
    case black = "black",
         white = "white",
         whiteSex = "whiteSex",
         red = "red",
         blue = "blue"
}
*/

extension Color {
    public static let veryLightPink = Color("veryLightPink")
    public static let blueBlue = Color("blueBlue")
    public static let whiteThree = Color("whiteThree")
    public static let redRed = Color("redRed")
    public static let whiteSix = Color("whiteSix")
    public static let blackWhite = Color("blackWhite")
    public static let whiteBlack = Color("whiteBlack")
    
    // Task Status Todo
    public static let todoTextColor = Color("todoText")
    public static let todoBgColor = Color("todoBg")
    
    // Task Status In Progress
    public static let inProgressTextColor = Color("inProgressText")
    public static let inProgressBgColor = Color("inProgressBg")
    
    // Task Status Complete
    public static let completeTextColor = Color("completeText")
    public static let completeBgColor = Color("completeBg")
    
    // Task Status Backlog
    public static let backlogTextColor = Color("backlogText")
    public static let backlogBgColor = Color("backlogBg")
    
    /// Invoice Status
    /// UnPaid
    public static let invoiceUnpaidTextColor = Color("invoiceUnpaidText")
    public static let invoiceUnpaidBgColor = Color("invoiceUnpaidBg")
    
    /// Paid
    public static let invoicePaidTextColor = Color("invoicePaidText")
    public static let invoicePaidBgColor = Color("invoicePaidBg")
}


//
//  StringsHelper.swift
//  LocalizableStrings
//
//  Created by Plenumsoft on 08/11/17.
//  Copyright © 2017 Majesova. All rights reserved.
//

import UIKit


extension String {
    
    public static func localized(key:String)->String{
        return NSLocalizedString(key, comment:"")
    }
    
    public static func localizedWithFormat(key:String, _ args: CVarArg...)->String{
        return withVaList(args) {
            NSString(format: self.localized(key: key), locale: Locale.current, arguments: $0) as String
        }
    }   

}

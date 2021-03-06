/*
Copyright 2016 IslandJohn and the TeamRadar Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied
See the License for the specific language governing permissions and
limitations under the License.
*/

import Foundation

enum SettingsKey: String {
    case URL = "url"
    case USER = "user"
    case PASSWORD = "password"
}

class Settings {
    static func get(key: SettingsKey) -> String?{
        return NSUserDefaults.standardUserDefaults().stringForKey(key.rawValue)
    }
    
    static func set(key:SettingsKey, value:String){
        NSUserDefaults.standardUserDefaults().setObject(value, forKey: key.rawValue)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}
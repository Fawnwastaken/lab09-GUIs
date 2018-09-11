//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Aidan Scarlet on 9/12/18.
//  Copyright © 2018 Aidan Scarlet. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSSpeechSynthesizerDelegate {

    @IBOutlet weak var window: NSWindow!
    
    var speechSynth = NSSpeechSynthesizer()

    @IBOutlet weak var textField: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func stopIt(_ sender: NSButton) {
        speechSynth.stopSpeaking()
    }
    
    @IBAction func sayIt(_ sender: NSButton) {
        let input = textField.stringValue
        if input != ""{
            speechSynth.startSpeaking(input)
        }
    }
}


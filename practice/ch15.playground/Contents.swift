import UIKit

//: 15.2
enum FileTransferError: Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}

//: 15.3
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

func transferFile() throws {
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}

func sendFile() -> String {
    do {
        try transferFile()
    } catch FileTransferError.noConnection {
        return ("No Network Connection")
    } catch FileTransferError.lowBandwidth {
        return ("File Transfer Speed too Low")
    } catch FileTransferError.fileNotFound {
        return ("File not Found")
    } catch {
        return ("Unknown error")
    }
    
    return ("Successful transfer")
}

let _ = {
    func sendFile() -> String {
        do {
            try transferFile()
        } catch FileTransferError.noConnection, FileTransferError.lowBandwidth {
            return ("Connection problem")
        } catch FileTransferError.fileNotFound {
            return ("File not Found")
        } catch {
            return ("Unknown error")
        }
        
        return ("Successful transfer")
    }
}

sendFile()

//: 15.5
//do {
//    try filemgr.createDirectory(atPath: newDir,
//                                withIntermediateDirectories: true,
//                                attributes: nil)
//} catch let error {
//    print("Error: \(error.localizedDescription)")
//}

//: 15.6
//try! transferFile()

//: 15.7
// defer {
//    removeTmpFiles()
//    closeConnection()
//}

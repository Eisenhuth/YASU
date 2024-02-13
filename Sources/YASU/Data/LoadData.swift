import Foundation
import AsyncHTTPClient

public func loadData<T: Decodable>(_ url: URL) async -> T? {
    
    let httpClient = HTTPClient(eventLoopGroupProvider: .singleton)
    
    do{
        let request = HTTPClientRequest(url: url.absoluteString)
        let response = try await httpClient.execute(request, timeout: .seconds(30))
        let data = try await response.body.collect(upTo: 1024 * 1024 * 100)
        let decoded = try JSONDecoder().decode(T.self, from: data)
        
        try await httpClient.shutdown()
        return decoded
        
    } catch {
        print("error loading data\n\(url)\n\(error.localizedDescription)")
    }
    
    try? await httpClient.shutdown()
    return nil
}

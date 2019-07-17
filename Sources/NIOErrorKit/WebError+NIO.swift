import NIO
import NIOHTTP1
import WebErrorKit

extension WebError {
    
    public func fail<T>(on e: EventLoop) -> EventLoopFuture<T> {
        return e.makeFailedFuture(self)
    }
    
    public var status: HTTPResponseStatus {
        return HTTPResponseStatus(statusCode: statusCode, reasonPhrase: reason ?? "")
    }
    
}


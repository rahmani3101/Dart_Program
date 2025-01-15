streams are used for handling asynchronous data, such as handling a sequence of events or data over time. A stream can emit multiple values, and you can listen for those values asynchronously.

Key Concepts:

    Stream: A sequence of asynchronous events or values.
    StreamController: Used to control a stream and add values to it.
    StreamSubscription: Represents an active listener on a stream, allowing you to cancel the stream or pause it.
    async and await for*: Special syntax for creating and consuming streams in an asynchronous manner.

Types of Streams:

    Single-Subscription Stream: This type of stream emits events one by one, and you can only listen to it once.
    Broadcast Stream: This type of stream can have multiple listeners. It’s like a publisher that can broadcast the events to multiple subscribers.

# NavControllerAsDelegate
NavControllerAsDelegate is an experiment in allowing a manager class to invoke a UI process from a background queue.

A manager class may want to show a message as a result of a background process. This can be tricky, since we probably need to know which UIViewController should be in charge of presenting the, say, UIAlertController.

This solution extends UINavigationController to act as the delegate for the manager class.

With this solution, there are no singletons, and no use of the app delegate.

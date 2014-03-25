# motion-weakref-demo
Demo of using weak references in RubyMotion

## Overview
This app is used to demonstrate an example of a memory leak in iOS, and how to fix it using a WeakRef.

## Labels
There are several labels in the repo that show different stages in the process.

### simple-item
Creates/releases a ToDoItem.  The ToDoItem allocates a large array to be able to observe 
the memory in Xcode Instruments

### notifier
Adds a notifier to the ToDoItem.  In this branch, the notifier does not reference the parent ToDoItem,
so there is no change in memory

### retain-cycle
Now the notifier has a strong reference to the ToDoItem.  This creates a memory leak.

### weak-ref
The notifier uses a weak reference to store the reference to the parent.  This fixes the memory leak.

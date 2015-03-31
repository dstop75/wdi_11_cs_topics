## Monday

Write an essay describing Queue and Stack; Sets, Associative Array & Array; what they are, how they are different, why we use them. It may be useful to include pseudocode, code, analogies, diagrams and references to external sources.


QUEUE:
  Restricted data structure:
    Only a small number of operations are performed on it.

  Similar to a Stack, but:
    First In First Out(Last In Last Out):
      Just like a queue in the UK, flight-standby, or any line of people waiting for anything, it's first come, first served.

  Useful when:
    Elements must be removed in the same order as they were added.  For example, a list of magazine subscribers requiring email responses.

  Other common uses:
    Circular buffers, linked lists

  Useful methods:
    Enqueuing/push/add: adding an element to the list - the element is added to the Tail of the Queue (go to the back of the line)

    Dequeueing/pop/remove: element is removed from the Head of the Queue (the front of the line, who's next?)

    Current Length

    Empty?

    Peek (Head.value)

  No access to the middle of the queue is typically provided

STACK:
  Restricted data structure:
    Only a small number of operations are performed on it.

  Similar to a Queue, but:
    Last In First Out(First In Last Out):
      Picture a stack of plates in a cafeteria.

  Commonly used:
    Nested function calls will essentially pile up in a stack and run from top to bottom starting with the most-recently added.

  Useful methods:

    Push/add elements to the head/top of the stack:
      If capacity is limited, make sure the stack isn't full.
      Make the new element's next_element attribute point to the current head.
      Move the head of the stack to the new element.

    Pop/remove elements from the head/top of the stack:
      Make sure the stack isn't empty.
      remove and return the first element.
      Move the head of the stack to the next element.

    Current Length

    Empty?

    Full?

    Peek (Head.value)

  No access to the middle of the stack is typically provided

Set:
  A simple list of elements:
    No indeces
    No duplicates
    No order
    No values

  Useful for:
    Comparing collections where order is irrelevant, such as 2 lists of magazine subscribers.

    Checking if an element or a subset is included.

  Common operations:
    Union:
      Unites 2 (or more) sets without creating duplicates.

    Intersection:
      Defines the common set between 2 (or more) sets.

    Subtraction:
      Removes values or subsets from a set.

    Subset:
      Creates a subset.

Associative Array/Hash/Dictionary:
  A set of key/value pairs

  Significantly faster lookup time than an Array:
    Can lookup in O(1)

  Uses a hashing function to map unique keys to unique memory addresses that store corresponding values.

Array:
  2 types:
    Dynamic:
      Length can be changed:
        May just double the length when more is needed, which may waste memory resources
    Fixed:
      Length is fixed

  Slower than a Hash:
    Lookup time is O(n)

    Multi-dimensional array lookup is O(n-squared)

  Common methods:
    Search using indexes
    Append elements
    Delete elements




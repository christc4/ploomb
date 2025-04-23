# ploomb <sub>(plumbing in Linux)</sub>

this is a POSIX script for 'plumbing' text as search queries to websites

## What is plumbing?

Plumbing is a mechanism for passing messages between applications. It has a customizable set of rules (see `plumb(6)`) to process incoming messages and dispatch them to target applications.

The `plumber(4)` is the file server that performs the message processing and dispatch.

It is up to each application how it wishes to use this mechanism, but in the user-interface domain, the mechanism often allows the user to point to a file-name or URL and have the associated resource processed by an appropriate application.

— [9p.io/wiki/plan9/using_plumbing/](https://9p.io/wiki/plan9/using_plumbing/)

## Using ploomb

- Bind to a key: [ploomb](//git.bauherren.ovh/ploomb)
- Highlight a word/sentence in your graphical application
- Run `ploomb`
- Select an option from `dmenu`

## Thanks

- [Plumbing in Linux (a la Plan 9 from Bell Labs), by Luke Smith](//youtu.be/RlMxbQmMz_4?si=lQNjGDTkD1qvvUfw)  
  - Author of *cabl*, a BASH script to bring the concept of plumbing to Linux. Discusses using *cabl* without a mouse.

- [Plumbing for language learners](//tatsumoto-ren.github.io/blog/plumbing-for-language-learners.html)  
  - Adds replete and more complex functions to Luke's *cabl* script, tailored to language learning.

## Author

Forward complaints to [christos@bauherren.ovh](mailto:christos@bauherren.ovh)


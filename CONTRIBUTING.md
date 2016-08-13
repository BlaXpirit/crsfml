Writing issues
==============

There are no particular requirements about opening an issue to this repository. But the more details you provide, the better.

Don't hesitate about informing the author about minor issues, even with the documentation, but remember that the API documentation is taken directly from C++ and it is known that there are a lot of things that don't make sense.

Contributing code
=================

*CrSFML* consists mostly of automatically generated code. The generator program ([*generate.cr*](generate.cr)), the static parts of *CrSFML* and the build files (CMake) are contained in the *master* branch. So, while all development happens there, the *master* branch can't directly be used as an actual library.

To browse the generated source code, you may go to the *sources* branch or, better, just [build *CrSFML*](README.md#approach-1) for yourself.

Each SFML "module" has 4 files generated for it:

- *voidcsfml/src/voidcsfml/__module__.cpp* (C++) - functions that interact with C++ SFML objects but expose a pure C interface
- *voidcsfml/include/voidcsfml/__module__.h* (C) - header file for the functions
- *src/__module__/lib.cr* (Crystal) - definition of the header file for Crystal
- *src/__module__/obj.cr* (Crystal) - object-oriented wrappers

[How *VoidCSFML* works](voidcsfml/README.md#usage)

- *src/__module__/__module__.cr* files are tiny additions that can't be automatically generated, but they serve as the entry point for each module.

- *src/sizes.cr* files contain the sizes of each SFML object for the current platform, so that Crystal code can know at compile time what amount of memory it needs to allocate to store the data of a C++ object. In case of subclassing, the size is just the difference between the class and its parent.


Most of the changes to *CrSFML* will happen within one file, [*generate.cr*](generate.cr). It is indeed a very complicated and messy program. The main idea is to parse SFML's header files with... regular expressions (yes, I'm very happy with this decision, it works out nicely due to the extreme quality and consistency of SFML), form an object-based model of the constructs, and use them to render 4 files per module (as seen above).

If you want to implement a small change but are totally lost as to where it should go, you may want to `crystal run -Ddebug generate.cr`. This annotates every line in the generated files with the number of line in *generate.cr* that produced it. Then, hopefully, the backtracking won't be too bad.

After introducing a change to *generate.cr* you can immediately try it out in some example code after running `cmake . && make`, but you may also want to see how exactly your change affects all of the generated source code. For that, a [*diff.sh*](diff.sh) tool is provided which generates and compares the code based on two different commits or the current uncommitted state. Run `./diff.sh` (equivalent to `./diff.sh HEAD`) to see the impact of the current uncommitted change, or compare any two commits (the syntax of commit shorthands is the same as in *git*).
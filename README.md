Demo of Three20 baseline bug
============================

Files
-----

*   "BaselineTest", a sample project to reproduce the bug.  **Important:** This project will not
    compile until you link Three20 to it.  To do that:

        $ cd <your-three20-dir>/src/scripts
        $ python ttmodule.py <path>/three20-baseline-bug/BaselineTest/BaselineTest.xcodeproj -c Debug -c Release Three20

*   Screenshots: `before-patches.png`, `after-only-patch-1.png`, `after-only-patch-2.png`, `after-both-patches.png`.

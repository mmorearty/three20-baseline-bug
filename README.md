Demo of Three20 baseline bugs
=============================

This is a demo of two bugs in the Three20 library: [issue 377](https://github.com/facebook/three20/issues/377)
and [issue 378](https://github.com/facebook/three20/issues/378).

Files
-----

*   "BaselineTest", a sample project to reproduce the bugs.  **Important:** This project will not
    compile until you link Three20 to it.  To do that:

        $ cd <your-three20-dir>/src/scripts
        $ python ttmodule.py <path>/three20-baseline-bug/BaselineTest/BaselineTest.xcodeproj -c Debug -c Release Three20

*   Screenshots:

    Before patches: <br>
    ![before](https://github.com/mmorearty/three20-baseline-bug/raw/master/before-patches.png)

    After only patch 1:  <br>
    ![after patch 1](https://github.com/mmorearty/three20-baseline-bug/raw/master/after-only-patch-1.png)

    After only patch 2:  <br>
    ![after patch 2](https://github.com/mmorearty/three20-baseline-bug/raw/master/after-only-patch-2.png)

    After both patches:  <br>
    ![after both patches](https://github.com/mmorearty/three20-baseline-bug/raw/master/after-both-patches.png)

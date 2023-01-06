Git Cheat Sheet
===============

Configure Tooling
-----------------

Setting a name to be recorded in created commits

.. code-block:: bash

    $ git config user.name "[your full name]"


Setting an email address to be recorded in commits.

.. code-block:: bash

    $ git config user.email "[email address]"


Make Changes
------------

Showing differences between staged and the last file version

.. code-block:: bash

    $ git diff --staged


Unstaging a file while keeping it in the working tree

.. code-block:: bash

    $ git reset [file]

Canceling the previous commit while keeping the working tree

.. code-block:: bash

    $ git reset --soft HEAD^

Discarding a change to a file

.. code-block:: bash

    $ git checkout -- [file]


Manage Branches
---------------

Creating a new branch and checking it out

.. code-block:: bash

    $ git checkout -b [branch-name] 

or

.. code-block:: bash

   $ git branch [branch-name]
   $ git checkout [branch-name]

Misc
----

Showing the commit ID of HEAD

.. code-block:: bash

   $ git rev-parse HEAD

Retrieving files from a repository without cloaning it


.. code-block:: bash

    $ git archive --format tar --remote [path] HEAD | tar xvf - 
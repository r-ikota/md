fixture
========

.. _fixture_experiments_1:

Using a fixture and a parameter at the same time
-------------------------------------------------

.. code-block:: python

    # content of test_fixture_exp01.py

    import pytest


    @pytest.fixture
    def a():
        return 3


    @pytest.mark.parametrize("x", [3, 4])
    def test_f(a, x):
        assert a == x

.. code-block:: pytest

    $ pytest fixture_exp01.py    
    ============================= test session starts ==============================
    platform darwin -- Python 3.7.6, pytest-5.3.5, py-1.8.1, pluggy-0.13.1
    rootdir: /Users/user/work/
    plugins: hypothesis-5.5.4, arraydiff-0.3, remotedata-0.3.2, openfiles-0.4.0, doctestplus-0.5.0, astropy-header-0.1.2
    collected 2 items

    test_fixture_exp01.py .F                                                 [100%]

    =================================== FAILURES ===================================
    __________________________________ test_f[4] ___________________________________

    a = 3, x = 4

        @pytest.mark.parametrize("x", [3, 4])
        def test_f(a, x):
    >       assert a == x
    E       assert 3 == 4

    test_fixture_exp01.py:13: AssertionError
    ========================= 1 failed, 1 passed in 0.02s ==========================

### Exercise 1
Use a diagram to group the methods in these examples:

```
Bank
  - get_balance
  - credit_account(date, amount)
  - debit_account(date, amount)
  - print_statement
  ```

```

  ---------------------
  |  * credit_account |
  |  * debit_account  |
  ---------------------

                -------------------
                |  * get_balance  |
                -------------------

                        -----------------------
                        |  * print_statement  |
                        -----------------------
```

** Key point ** - Best to keep presentation logic away from business logic

argument for get balance to be separate but they could be combined into the credit and debit classes

  ```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries
  ```

  ```

    -----------------
    |  * add_entry  |
    -----------------

                  -------------------
                  |  * get_entries  |
                  -------------------

                          --------------
                          |  * lock    |
                          |  * unlock  |
                          --------------
  ```

  could keep add and get together as using the same data set

  ```

    ------DIARY--------
    |  * add_entry    |
    |  * get_entries  |
    -------------------

                          ---SECURITY---
                          |  * lock    |
                          |  * unlock  |
                          --------------
  ```

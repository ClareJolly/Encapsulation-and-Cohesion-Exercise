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

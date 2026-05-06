**FREE
ctl-opt                      dftactgrp(*no) actgrp(*new);

// Display File
dcl-f                        CUSTOMERDSPF workstn;

// Variables
dcl-s                        customerId int(10);
dcl-s                        name varchar(50);
dcl-s                        balance packed(10:2);

// SQL Cursor
exec sql
    declare c1 cursor for
    select customer_id, name, balance
    from customers;

// Open cursor
exec sql open c1;

// Loop through records
dow '1' = '1';

    exec sql
        fetch c1 into :customerId, :name, :balance;

    if sqlcode <> 0;
        leave;
    endif;

    // Assign values to display fields
    CUSTID   = customerId;
    CUSTNAME = name;
    CUSTBAL  = balance;

    write CUSTOMER;

    // Wait for user interaction
    exfmt CUSTOMER;

    if *in03; // F3 pressed
        leave;
    endif;

enddo;

// Close cursor
exec sql close c1;

*inlr = *on;
return;
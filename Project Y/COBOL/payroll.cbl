       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAYROLL.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EMPLOYEE-NAME     PIC A(30).
       01 HOURS-WORKED      PIC 9(3)V99.
       01 HOURLY-RATE       PIC 9(3)V99.
       01 GROSS-PAY         PIC 9(5)V99.

       PROCEDURE DIVISION.
           PERFORM BEGIN.
       BEGIN.
           DISPLAY "Enter Employee Name: "
           ACCEPT EMPLOYEE-NAME

           DISPLAY "Enter Hours Worked: "
           ACCEPT HOURS-WORKED

           DISPLAY "Enter Hourly Rate: "
           ACCEPT HOURLY-RATE

           COMPUTE GROSS-PAY = HOURS-WORKED * HOURLY-RATE

           DISPLAY "Employee: " EMPLOYEE-NAME
           DISPLAY "Gross Pay: R" GROSS-PAY

           STOP RUN.


       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREDIT-RULE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-CREDIT-SCORE       PIC 9(3).
       01 WS-MONTHLY-INCOME     PIC 9(7).
       01 WS-MONTHLY-DEBT       PIC 9(7).

       01 WS-MIN-SCORE          PIC 9(3) VALUE 700.
       01 WS-MIN-INCOME         PIC 9(7) VALUE 30000.
       01 WS-MAX-DEBT           PIC 9(7) VALUE 10000.

       PROCEDURE DIVISION.

           DISPLAY "ENTER CREDIT SCORE:"
           ACCEPT WS-CREDIT-SCORE

           DISPLAY "ENTER MONTHLY INCOME:"
           ACCEPT WS-MONTHLY-INCOME

           DISPLAY "ENTER MONTHLY DEBT:"
           ACCEPT WS-MONTHLY-DEBT

           IF WS-CREDIT-SCORE < WS-MIN-SCORE
               DISPLAY "FAIL - RULE 1: LOW CREDIT SCORE"
           ELSE
               IF WS-MONTHLY-INCOME < WS-MIN-INCOME
                   DISPLAY "FAIL - RULE 2: LOW INCOME"
               ELSE
                   IF WS-MONTHLY-DEBT > WS-MAX-DEBT
                       DISPLAY "FAIL - RULE 3: HIGH DEBT"
                   ELSE
                       DISPLAY "PASS"
                   END-IF
               END-IF
           END-IF

           STOP RUN.

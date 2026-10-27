IDENTIFICATION DIVISION.
       PROGRAM-ID. CHECK-DUPLICATES-SORT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01  WS-TABLE-DATA.
           05  WS-ITEM             PIC X(10) OCCURS 5 TIMES.

       01  WS-TOTAL-COUNT          PIC 9(3) VALUE 5.
       01  WS-I                    PIC 9(3) VALUE 0.
       01  WS-NEXT                 PIC 9(3) VALUE 0.
       01  WS-DUPLICATE-FOUND      PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           MOVE "XYZ789AB" TO WS-ITEM(1)
           MOVE "ABC123XY" TO WS-ITEM(2)
           MOVE "DEF456ZZ" TO WS-ITEM(3)
           MOVE "ABC123XY" TO WS-ITEM(4)
           MOVE "GHI012JK" TO WS-ITEM(5)

           *> Correct syntax: table name without (ALL)
           SORT WS-ITEM ASCENDING KEY WS-ITEM

           PERFORM VARYING WS-I FROM 1 BY 1 
                   UNTIL WS-I >= WS-TOTAL-COUNT
               COMPUTE WS-NEXT = WS-I + 1
               IF WS-ITEM(WS-I) = WS-ITEM(WS-NEXT)
                   MOVE 'Y' TO WS-DUPLICATE-FOUND
                   DISPLAY "Duplicate Detected: " WS-ITEM(WS-I)
                           " (Matched at sorted positions " 
                           WS-I " and " WS-NEXT ")"
               END-IF
           END-PERFORM

           IF WS-DUPLICATE-FOUND = 'N'
               DISPLAY "No duplicate strings found."
           END-IF

           STOP RUN.

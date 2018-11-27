/*2. Value (1.75)

An integer d is a divisor of an integer n if the remainder of n / d = 0.

Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.

Note: Each digit is considered to be unique, so each occurrence of the same digit should be counted (e.g. for n = 111, 1 is a divisor of 111 each time it occurs so the answer is 3).

Function Description:

Create a function called find_digits. It should return an integer representing the number of digits of d that are divisors of d. The parameters are:

* n: an integer to analyze

Examples

Sample input n = 12. Sample output = 2
Sample input n = 1012. Sample output = 3

Explanation

The number 12 is broken into two digits, 1 and 2. When 12 is divided by either of those two digits, the remainder is 0 so they are both divisors.

The number 1012 is broken into four digits, 1, 0, 1, and 2. 1012 is evenly divisible by its digits 1, 1, and 2, but it is not divisible by 0 as division by zero is undefined */

CREATE OR REPLACE FUNCTION find_digits(n in integer)
return integer
is 
cont   integer;
begin
FOR i IN 1 .. n 
    LOOP 
     IF(mod(n,i) = 0)THEN
     cont:= cont+1;
     end if;
    END LOOP;
    return cont;
end;

select find_digits(12) from dual;
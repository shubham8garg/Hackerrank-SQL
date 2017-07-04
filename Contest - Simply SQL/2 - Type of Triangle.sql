SELECT CASE
    WHEN (A+B<=C) or (B+C<=A) or (C+A<=B) THEN 'Not A Triangle'
    ELSE CASE
        WHEN ((A=B) and (B=C)) THEN 'Equilateral'
        WHEN ((A=B and B!=C) or (B=C and A!=B) or (A=C and B!=A)) THEN 'Isosceles'
        WHEN ((A!=B) and (B!=C) and (A!=C)) THEN 'Scalene'
        END
    END
FROM TRIANGLES;
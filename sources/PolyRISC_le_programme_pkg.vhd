---------------------------------------------------------------------------------------------------
--
-- PolyRISC_le_programme_pkg.vhd
--
-- contenu de la m�moire des instructions
--
---------------------------------------------------------------------------------------------------
use work.PolyRISC_utilitaires_pkg.all;

package PolyRISC_le_programme_pkg is

    -----------------------------------------------------------------------------------------------
    -- partie 0 : programme de d�monstration, suite de Fibonacci
    --constant memoireInstructions : memoireInstructions_type := (
    --(memoire, lireGPIO_in, 0, 0, 0),               -- 0 : R0 := lire GPIO_in
    --(reg_valeur, passeB, 1, 0, 2),                 -- 1 : R1 := #2
    --(reg_valeur, passeB, 3, 0, 0),                 -- 2 : R3 := #0
    --(memoire, ecrireGPIO_out, 3, 0, 0),            -- 3 : GPIO_out := R3
    --(reg_valeur, passeB, 4, 0, 1),                 -- 4 : R4 := #1
    --(memoire, ecrireGPIO_out, 4, 0, 0),            -- 5 : GPIO_out := R4
    --(reg, AplusB, 5, 3, 4),                        -- 6 : R5 := R3 + R4
    --(reg, passeA, 3, 4, 0),                        -- 7 : R3 := R4
    --(reg, passeA, 4, 5, 0),                        -- 8 : R4 := R5
    --(memoire, ecrireGPIO_out, 4, 0, 0),            -- 9 : GPIO_out := R4
    --(reg_valeur, AplusB, 1, 1, 1),                 -- 10 : R1 := R1 + #1
    --(branchement, ppe, 0, 1, -5),                  -- 11 : si R1 <= R0 goto CP + -5
    --STOP,
    --NOP);

    -----------------------------------------------------------------------------------------------
    -- parties 1 et 2 : votre code � d�velopper
    -- placez le code de la partie 0 en commentaires
    -- utilisez le code de la partie 0 pour vous inspirer

    constant memoireInstructions : memoireInstructions_type := (
      (memoire, lireGPIO_in, 0, 0, 0),               -- 0 : R0 := lire GPIO_in
      (reg_valeur, passeB, 2, 0, 32767),             -- 1 : R2 := 32767
      (reg_valeur, passeB, 3, 0, 0),                 -- 2 : R3 := 0
      (reg_valeur, passeB, 7, 0, 16),                -- 3 : R7 := 16
      (reg_valeur, passeB, 1, 0, 0),                -- 4 : R1 := 0
      (branchement, egal, 1, 7, 10),                   -- 5 : si r1 = r7 goto cp + 10
      (reg, AplusB, 4, 2, 3),                         -- 6 : R4 := R2 + R3
      (reg, Adiv2, 4, 4, 0),                         -- 7 : R4 := R4 div2
      (reg, AmulB, 5, 4, 4),                         -- 8 : R5 := R4 x R4
      (branchement, pgq, 5, 0, 3),                   -- 9 : si r0 > r5 goto cp + 3
      (reg_valeur, passeA, 2, 4, 0),                 -- 10 : R2 := R4
      (branchement, toujours, 0, 0, 2),              -- 11 : goto cp + 2
      (reg_valeur, passeA, 3, 4, 0),                 -- 12 : R3 := R4
      (reg_valeur, AmoinsB, 7, 7, 1),                -- 13 : R7 := R7 - 1
      (branchement, toujours, 0, 0, - 9),            -- 14 : goto cp - 9
      (memoire, ecrireGPIO_out, 4, 0, 0),            -- 15 : GPIO_out := R4
       STOP,
       NOP);

end package;

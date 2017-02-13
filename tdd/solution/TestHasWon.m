classdef TestHasWon < matlab.unittest.TestCase
    properties
        EMPTY_BOARD =       ['.' '.' '.';
                             '.' '.' '.';
                             '.' '.' '.'];
        X_WIN_ROW1 =        ['X' 'X' 'X';
                             '.' '.' '.';
                             '.' '.' '.'];
        X_WIN_COLUMN2 =     ['.' 'X' '.';
                             '.' 'X' '.';
                             '.' 'X' '.'];
        O_WIN_COLUMN2 =     ['.' 'O' '.';
                             '.' 'O' '.';
                             '.' 'O' '.'];
        X_WIN_DIAGONAL_LR = ['X' '.' '.';
                             '.' 'X' '.';
                             '.' '.' 'X'];
        X_WIN_DIAGONAL_RL = ['.' '.' 'X';
                             '.' 'X' '.';
                             'X' '.' '.'];
    end

    methods (Test)
        function testNoWinOnEmptyBoardForX(tc)
            tc.assertFalse(hasWon(tc.EMPTY_BOARD, 'X'))
        end

        function testNoWinOnEmptyBoardForO(tc)
            tc.assertFalse(hasWon(tc.EMPTY_BOARD, 'O'))
        end

        function testWinOnColumnForX(tc)
            tc.assertTrue(hasWon(tc.X_WIN_COLUMN2, 'X'))
        end

        function testWinOnColumnForO(tc)
            tc.assertTrue(hasWon(tc.O_WIN_COLUMN2, 'O'))
        end

        function testWinOnDiagonal1ForX(tc)
            tc.assertTrue(hasWon(tc.X_WIN_DIAGONAL_LR, 'X'))
        end

        function testWinOnDiagonal2ForX(tc)
            tc.assertTrue(hasWon(tc.X_WIN_DIAGONAL_RL, 'X'))
        end
    end
end

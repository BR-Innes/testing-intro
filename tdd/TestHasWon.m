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
        function testSomething(tc)
           tc.assertTrue(true)
        end
    end
end

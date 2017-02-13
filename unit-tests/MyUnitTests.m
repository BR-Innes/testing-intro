classdef MyUnitTests < matlab.unittest.TestCase
% * initialise and run tests in Command Window via:
%       tests = MyUnitTests
%       tests.run

    properties
        TEST_STR = 'testing';
    end

    methods (Test)
        function testIsTrue(tc)
            tc.assertTrue(true)
        end

        function test2Equals2(tc)
            tc.assertEqual(2, 2)
        end
        
        function testStringLength(tc)
            tc.assertLength(tc.TEST_STR, 7)
        end
        
        function testRegex(tc)
            tc.assertMatches(tc.TEST_STR, '^t.+g$')
        end
    end
end

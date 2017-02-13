classdef UnitTestTemplate < matlab.unittest.TestCase
% * rename class and save with suitable filename
% * fill in the blanks
% * initialise and run tests in Command Window via:
%       tests = YourClass
%       tests.run
%   or if you just want to run one test:
%       tests.testSomething

    properties
        % optional: variables available to all tests
    end

    methods (TestClassSetup)
        % optional: method to be run *once* at start of tests
    end

    methods (TestClassTeardown)
        % optional: method to be run *once* at end of tests
    end

    methods (TestMethodSetup)
        % optional: method to be run at start of each test
    end

    methods (TestMethodTeardown)
        % optional: method to be run at end of each test
    end

    methods (Test)
        % actual tests...

        function test1(tc)
            tc.assertTrue(true)
        end

        function test2(tc)
            tc.assertEqual(1, 1)
        end
    end
end

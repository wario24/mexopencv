classdef TestSIFT
    %TestSIFT
    properties (Constant)
        path = fileparts(fileparts(mfilename('fullpath')))
        img = rgb2gray(imread([TestSIFT.path,filesep,'img001.jpg']))
    end
    
    methods (Static)
        function test_1
            result = cv.SIFT(TestSIFT.img);
        end
        
        function test_2
            [kpts,desc] = cv.SIFT(TestSIFT.img);
        end
        
        function test_error_1
            try
                cv.SIFT();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end


require File.expand_path('../test_helper.rb', __FILE__)

describe OpenCV::Cv do
    before do
    end

    after do
    end

    describe "perspectiveTransfrom" do
        it "can be called from ruby" do
            t = cv::Mat::eye(3,3, cv::CV_64FC1)
            points = std::Vector.new(cv::Point2f)
            0.upto 10 do |i|
                points << cv::Point2f.new(i,i)
            end
            mat = cv::Mat.new(points).reshape(2,points.size)
            out = cv::Mat.new
            cv::perspectiveTransform(mat,out,t)
            assert_equal points.size, out.rows
        end
    end
end


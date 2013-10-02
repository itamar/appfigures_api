require_relative '../../../test_helper'
 
describe AppfiguresApi::Sales do
 
  subject { AppfiguresApi::Sales.new }
 
  describe AppfiguresApi::Sales do

    describe ".totals" do
      before do
        @response = subject.totals('products', [400653])
      end
      it "success" do
        @response.success?
      end
      it 'returns as a JSON' do
        @response.header['Content-Type'] == 'application/json'
      end
    end

    describe ".report_by_product" do
      before do
        @response = subject.report_by_product("2013-09-01", "2013-09-30")
      end
      it "success" do
        @response.success?
      end
      it "returns sales by product" do
        @respobse.kind_of?(Hash)
      end
    end

    describe ".report_by_country" do
      before do
        @response = subject.report_by_country({:products => "214416092"})
      end
      it "success" do
        @response.success?
      end
      it 'returns all time sales by country' do
        @response.has_key?('US')
      end
    end

    describe ".report_by_date" do
      before do
        @response = subject.report_by_date()
      end
      it "success" do
        @response.success?
      end
      it 'returns all time sales by date' do
        @respobse.kind_of?(Hash)
      end
    end

    describe ".report_by_region" do
      before do
        @response = subject.report_by_region()
      end
      it "success" do
        @response.success?
      end
      it 'returns all time sales by region' do
        @response.has_key?('Australia')
      end
    end
  end 
end
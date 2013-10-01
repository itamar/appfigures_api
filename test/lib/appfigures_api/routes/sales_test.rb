require_relative '../../../test_helper'
 
describe AppfiguresApi::Sales do
 
  subject { AppfiguresApi::Sales.new }
 
  describe AppfiguresApi::Sales do
    describe ".alltime_totals" do
      it 'returns as a JSON' do
        response = subject.alltime_totals('products', [400653])
        response.header['Content-Type'] == 'application/json'
      end

      it 'returns all time sales for all products' do
        subject.alltime_totals('products', []).size >= 2
      end

      it 'returns all time sales for specific products' do
        subject.alltime_totals('products', [400653]).size == 1
      end

      it 'returns all time sales by country' do
        subject.report_by_country({:products => 400653})
      end

    end
  end 
end
require_relative '../../test_helper'
 
describe AppfiguresApi::Base do
 
  subject { AppfiguresApi::Base.new }
 
  describe "can make a request to the API" do
    it "with a valid credentials" do
      # pending
    end
  end

  describe "cannot make a request to the API" do
    it "with an invalid credentials" do
      # pending
    end
  end

  it 'handles exceptions' do
    # subject.should_receive(:authenticate_user).and_return(true)
    # subject.should_receive(:index).and_raise(Exception.new("no joy"))
    # get :index, :token => "fake_key"
    # json_response.should == { "exception" => "no joy" }
  end
 
end
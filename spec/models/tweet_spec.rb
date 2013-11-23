require 'spec_helper'
 
describe Tweet do
 
  before do
    @sampletweet = Tweet.new(status: "Testing Tweet Status", user_id: 99 )
  end
  
  subject { @sampletweet }
 
  it { should respond_to(:status) }
  it { should respond_to(:user_id) }
  
  it { should be_valid }
 
  # Testing tweet Status for blanks and over 140 chars
  describe "when status is blank" do
    before { @sampletweet.status = " " }
  	it { should_not be_valid }
  end
 
  describe "when status is too long" do
    before { @sampletweet.status = "a" * 141 }
    it { should_not be_valid }
  end
 
 
end

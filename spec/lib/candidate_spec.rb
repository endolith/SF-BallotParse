require 'candidate'

describe Candidate do
  describe 'initialization' do
    subject { Candidate.new(name: 'WARREN', id: '0000042') }
    its(:name) { should == 'WARREN' }
    its(:id) { should == '0000042' }
  end
  
  describe '#name' do
    it 'can have a name' do
      Candidate.new(name: 'WARREN').name.should == 'WARREN'
    end
  end
  
  describe 
  
  describe '#is_preferred to and #pref_count' do
    it 'works together to tell how many times this candidate has been preferred to the target' do
      opponent = Candidate.new
      subject.pref_count(opponent).should == 0
      2.times { subject.is_preferred_to(opponent) }
      subject.pref_count(opponent).should == 2
    end
  end
end
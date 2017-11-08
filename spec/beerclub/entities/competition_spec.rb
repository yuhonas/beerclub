require_relative '../../spec_helper'

describe Competition do
  describe "it's attributes" do
    def setup
      @competition = Competition.new(
        title: 'IPA Beer Theme',
        date_start: '2018/12/1 16:00',
        date_end: '2018/12/1 18:00'
      )  
    end
  
    it 'can be initialized with a title' do
      @competition.title.must_equal 'IPA Beer Theme'
    end
  
    it 'can be initialized with a starting date' do
      @competition.date_start.must_equal Time.parse('2018/12/1 16:00')
    end
  
    it 'can be initialized with an ending date' do
      @competition.date_end.must_equal Time.parse('2018/12/1 18:00')
    end
  end

  describe "#active?" do
    it "should be active when the current time is between the date start and end" do
      competition = Competition.new(date_start: '2020/1/1 14:00', date_end: '2020/1/1 15:00')

      Time.stub :now, Time.at(Time.parse('2020/1/1 14:30')) do
        assert_predicate competition, :active?
      end
    end

    it "should not be active when the current time is between the date start and end" do
      competition = Competition.new(date_start: '2020/1/1 14:00', date_end: '2020/1/1 15:00')

      Time.stub :now, Time.at(Time.parse('2020/1/1 15:30')) do
        refute_predicate competition, :active?
      end
    end
  end
end

require 'date_finder'
require 'statement'

describe Date_finder do
  subject(:date_finder) {described_class.new}

  describe 'date' do
    it 'returns the current date' do
      # allow(Time).to receive(:now).and_return("2016-08-10 11:32:08 +0100")
      # allow(@time_now).to receive(:strftime).and_return(@date_now)
      @current_date = Time.now.strftime("%d / %m / %Y")
      expect(date_finder.retrieve_date).to eq @current_date
    end
  end
end

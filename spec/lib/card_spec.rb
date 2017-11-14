require "spec_helper"

RSpec.describe Card do
  let(:seven_of_hearts) { Card.new("7", "♥") }
  it 'should create a card with a suit and class' do
    expect(seven_of_hearts.rank).to eq "7"
    expect(seven_of_hearts.suit).to eq '♥'
    end
end

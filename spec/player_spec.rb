require_relative '../lib/player.rb'

describe Player do
    it 'returns its own name' do
        player = Player.new('Chris')
        expect(player.name).to eq 'Chris'
    end
end
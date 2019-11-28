# frozen_string_literal: true

require_relative "../lib/player"

RSpec.describe(Player) do
  let(:player) {Player.new('Player 1', 'X')}

  it('has a name') do
    expect(player.name).to(eq('Player 1'))
  end

  it('has a sign') do
    expect(player.sign).to(eq('X'))
  end

  it('has a choices array') do
    expect(player.choices).to(eq([]))
  end

  it('has a winner status') do
    expect(player.winner).to(eq(false))
  end

  it('can update the winner status') do
    player.winner = true
    expect(player.winner).to(eq(true))
  end

  it("can update the player's choices") do
    player.make_choice(6)
    expect(player.choices).to(eq([6]))
  end

end

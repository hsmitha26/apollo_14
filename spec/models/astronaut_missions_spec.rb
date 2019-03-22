require 'rails_helper'

RSpec.describe AstronautMission, type: :model do
  describe 'Relationships' do
    it { should belong_to :astronaut }
    it { should belong_to :mission }
  end
end

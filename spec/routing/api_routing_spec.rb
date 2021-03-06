require "rails_helper"

RSpec.describe Api::DevicesController, type: :routing do
  describe 'routing' do
    it 'routes to #register' do
      expect(post: '/api/devices/register').to route_to('api/devices#register', format: :json)
    end
  end
end

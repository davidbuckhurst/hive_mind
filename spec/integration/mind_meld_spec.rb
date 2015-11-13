require 'rails_helper'
require 'mind_meld'
require 'rake'

describe 'mind_meld' do
  let(:device1) { { name: 'First device' } }
  let(:api) { MindMeld.new(url: 'http://localhost:3000') }

  before(:each) do
    #Rake::Task['db:purge'].invoke
    Device.delete_all
    sleep 5
    @pid = Process.spawn('rails server')
    Process.detach @pid
    sleep 5
  end

  it 'registers a device' do
    expect(Device.all.length).to eq 0
    sleep 5
    retn = api.register( device1 )
    sleep 5
    expect(Device.all.length).to eq 1
    sleep 5
  end

  after(:each) do
    Process.spawn("kill #{@pid}")
  end
end

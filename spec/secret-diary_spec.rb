require './secret-diary.rb'

describe SecretDiary do
let(:SecretDiary) { double :security, :secure => true}

  it 'locked on creation' do
    # allow(subject).to receive(:check_secure).and_return(true)
    expect(subject.check_secure).to eq true
  end

  it 'add entry when unlocked' do
    # allow(subject).to receive(:check_secure).and_return(false)
    subject.unlock
    expect(subject.add_entry("test")).to eq ["test"]
  end

  it 'errors when locked and add entry attempted' do
    allow(subject).to receive(:check_secure).and_return(true)
    expect { subject.add_entry("test") }.to raise_error "Diary locked."
  end

  it 'get entries when unlocked' do
    # allow(subject).to receive(:check_secure).and_return(false)
    subject.unlock
    subject.add_entry("test")
    expect(subject.get_entries).to eq ["test"]
  end

  it 'errors when locked and get entries attempted' do
    allow(subject).to receive(:check_secure).and_return(true)
    expect { subject.get_entries }.to raise_error "Diary locked."
  end

end

describe Security do

  it 'lock' do
    subject.lock
    expect(subject.secure).to eq true
  end

  it 'unlock' do
    subject.unlock
    expect(subject.secure).to eq false
  end

end

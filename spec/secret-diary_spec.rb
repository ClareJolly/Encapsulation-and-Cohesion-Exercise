require './secret-diary.rb'

describe SecretDiary do

  it 'locked on creation' do
    expect(subject.secure).to eq true
  end

  it 'add entry when unlocked' do
    subject.unlock
    expect(subject.add_entry("test")).to eq ["test"]
  end

  it 'errors when locked and add entry attempted' do
    expect { subject.add_entry("test") }.to raise_error "Diary locked."
  end

  it 'get entries when unlocked' do
    subject.unlock
    subject.add_entry("test")
    expect(subject.get_entries).to eq ["test"]
  end

  it 'errors when locked and get entries attempted' do
    expect { subject.get_entries }.to raise_error "Diary locked."
  end

  it 'lock' do
    subject.lock
    expect(subject.secure).to eq true
  end

  it 'unlock' do
    subject.unlock
    expect(subject.secure).to eq false
  end
end

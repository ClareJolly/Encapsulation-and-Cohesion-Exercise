class SecretDiary

  attr_reader :secure

  def initialize
    @secure = true
    @entries = []
  end

  def add_entry(text)
    fail "Diary locked." if @secure
    @entries << text
  end

  def get_entries
    fail "Diary locked." if @secure
    @entries
  end

  def lock
    @secure = true
  end

  def unlock
    @secure = false
  end
end

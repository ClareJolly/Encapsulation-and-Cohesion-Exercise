class SecretDiary

  attr_reader :secure

  def initialize
    @secure = true
  end

  def add_entry
    fail "Diary locked." if @secure
    true
  end

  def get_entries
    fail "Diary locked." if @secure
    true
  end

  def lock
    @secure = true
  end

  def unlock
    @secure = false
  end
end

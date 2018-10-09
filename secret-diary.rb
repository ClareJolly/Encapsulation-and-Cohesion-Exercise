class SecretDiary

  # attr_reader :secure

  def initialize
    @security = Security.new
    # @secure = true
    @entries = []
  end

  def add_entry(text)
    fail "Diary locked." if @security.secure
    @entries << text
  end

  def get_entries
    fail "Diary locked." if @security.secure
    @entries
  end

  def check_secure
    @security.secure
  end


  def lock
    @security.lock
  end

  def unlock
    @security.unlock
  end
end

class Security

  attr_reader :secure

  def initialize
    @secure = true
  end

  def lock
    @secure = true
  end

  def unlock
    @secure = false
  end

  def toggle
    @secure ? @Secure = false : true
  end
end

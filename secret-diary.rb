class SecretDiary
  def initialize
    @security = Security.new
    # @secure = true
    @entries = []
  end

  def add_entry(text)
    raise 'Diary locked.' if @security.secure
    @entries << text
  end

  def get_entries
    raise 'Diary locked.' if @security.secure
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
    @secure ? @secure = false : true
  end
end

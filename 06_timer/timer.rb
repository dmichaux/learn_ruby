class Timer
  #write your code here
  def initialize
  	@seconds = 0
  end
  attr_accessor :seconds
  def time_string
  	s = seconds % 60
	m = (seconds / 60) % 60
	h = seconds / (60 * 60)

	return format("%02d:%02d:%02d", h, m, s)
  end
end

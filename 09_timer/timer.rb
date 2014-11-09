class Timer
	attr_accessor :seconds

	def initialize
		@seconds=0
	end

	def time_string
    	hour = seconds/3600
		min = (seconds - (hour*3600))/60
		sec = (seconds - (min*60) - (hour*3600))
		if hour < 10
    		hour = "0" + hour.to_s
    	end
    	if min < 10
    		min = "0" + min.to_s
    	end
    	if sec < 10
    		sec = "0" + sec.to_s
    	end
	hour.to_s + ":" + min.to_s + ":" + sec.to_s
	end
end
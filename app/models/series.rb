class Series < ActiveRecord::Base
	attr_accessor :data_array, :mean, :var
	attr_accessor :ac_series

	# Method for automatically doing the autocorrelation from t=1 up to t=n, whereas n == the array length.
	def auto_ac
		self.do_mean
		self.do_variance
		self.ac_series = Array.new

		@n = self.data_array.length
		
		for i in 1 ... @n
			self.ac_series << do_autocorrelation(i)
		end
	end

	# Method for doing the autocorrelation for a given lag
	def do_autocorrelation(lag)
		@autocv = 0
		for i in 0 ... self.data_array.length - lag
			@autocv += ((self.data_array[i].to_f - self.mean) * (self.data_array[i+lag].to_f - self.mean) / (self.data_array.length - lag))
		end
		@ac_value = @autocv / self.var

		return @ac_value
	end

	# Method for calculating the variance of a given series
	def do_variance
		@variance = 0
		@i = 0

		self.data_array.each{|data| @variance += ((data.to_f - self.mean)**2) / self.data_array.length}
		self.var = @variance
	end

	# Method for calculating the mean of a given series
	def do_mean
		# Splitting the String series into an array
		self.data_array = self.data_series.split(/,/)
		# Converting everything from string to float
		self.data_array = self.data_array.collect {|i| i.to_f}
		# Calculating the mean for the series
		@mean = 0
		self.data_array.each{|data| @mean += data.to_f / self.data_array.length}
		self.mean = @mean
	end

end

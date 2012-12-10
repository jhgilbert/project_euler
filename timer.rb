def timer
	start = Time.now.to_f
	result = yield
	finish = Time.now.to_f
	elapsed_time = (finish - start).round # Result just needs to clock in at about a minute or less
	"Processed in #{elapsed_time} seconds with a result of #{result}."
end
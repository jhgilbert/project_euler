def timer
	start = Time.now.to_f
	result = yield
	finish = Time.now.to_f
	elapsed_time = (finish - start)
	"Processed in #{elapsed_time} seconds with a result of #{result}."
end
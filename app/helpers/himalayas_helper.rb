module HimalayasHelper

	def descount
		 session[:descount]

	end
	def free
		session[:free]
	end


def time_now
	 time=Time.new
  return "#{time.hour}:30" if  time.min <= 25
  return  "#{time.hour + 1 }:00" if  time.min  >= 26 && time.min <=55
  return  "#{time.hour + 1 }:30" if  time.min  >= 55
end
def time
	time=Time.new
case time.hour
	when 13,14,15
		time_now
  when 20,21,22,23
  	time_now
  when 1,2,3,4,5,6,7,8,9,10,11,12,00
  	"1:30"
  when 16,17,18,19
      "20:30"
end
end

end
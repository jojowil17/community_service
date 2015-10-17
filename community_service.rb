require 'date'
require 'csv'

def comm_serv_file_RnW
#probaitoners = CSV.read("Community_service_scrubbed.csv")
data = []
#comm_serv_org = File.open("Community_service_scrubbed.csv","r")
filename = "community_service_update.csv"
file_new= File.open(filename,"w") 
 
    CSV.foreach('Community_service_scrubbed.csv', :headers=>true) do |row|
data << row
hours_given = row[4].to_f
hours_completed = row[5].to_f
if row[6] == nil
	row[6] = "01.01.1960"
end	
max_date = row[6].split(".")
formatted_max_date = max_date[1].to_s + "-" + max_date[0].to_s + "-" + max_date[2].to_s
 puts formatted_max_date 
todays_date = Date.parse("17/10/15")
days_remaining = Date.parse(formatted_max_date) - todays_date
hours_remaining =  hours_given - hours_completed
 warning =  hours_remaining / days_remaining

# days_left = days_remaining 
 # file_new = File.open('Community_service_scrubbed.csv', "w")



def hours_remaining(assigned,completed)
	assigned.to_f - completed.to_f
end

def days_remaining(max_days,todays_date)
	Date.parse(max_days) - Date.parse(todays_date)
end

 file_new.puts row.to_csv.chomp + "," + hours_remaining.to_s + "," + warning.round(5).to_s 

end
end

comm_serv_file_RnW

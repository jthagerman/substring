#Returns dictionary of total counts of occurances of keywords in a string
def substrings(str,dict)
    output = Hash.new
    
    str.split().each do |item|
        dict.each do |keys|
            if item.downcase.include?(keys)
                output.has_key?(keys) ? output[keys] = output[keys] + 1 : output[keys] = 1         
            end
        end  
    end
    puts output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?",dictionary)
substrings("below", dictionary)


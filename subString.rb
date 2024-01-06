#requried to covnert the word string to an array
#convert the dictionary to a string ensuring downcase is used
#remove punctuations
#then compare the word array elements to the dictionary 
#then i should count the number of times that element is present in the word array
#create the hash to appened the value of the word array element and its respective count
#return the new hash 

def sub_string(word,dictionary)
    in_dic=Hash.new
    dic_conv=dictionary.join(' ')
    dic_conv.downcase!
    word.slice!(/'s/).gsub!(/[!@#$%^&*()-=_+|;:",.<>?']/,"")
    word_array=word.downcase!.split(' ')
    dictionary.each do |element|
        if word.include?(element)==true
            instances=word_array.count {|element_check| element_check.include?(element)}
        in_dic[element]=instances
        end
     end
     return in_dic
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_string("Howdy partner, sit down! How's it going?", dictionary)

    
    
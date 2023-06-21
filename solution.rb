###First solution
def number_of_lines(widths, s)
     lines = 1
     width = 0
     
     s.each_char do |char|  ##iterate over each character in input string
       char_width = widths[char.ord - 'a'.ord] ## .ord method in ruby that returns integer value
       if width + char_width > 100
         lines += 1
         width = char_width
       else
         width += char_width
       end
     end
     
     [lines, width]
end

###second solution
def number_of_lines(widths, s)
     lines = 1
     curr_width = 0 
   
     s.each_char do |char|
       char_width = widths[("a".."z").to_a.index(char)]
   
       if curr_width + char_width > 100 
         lines += 1
         curr_width = char_width
       else
         curr_width += char_width ##this was where my error was iit is += not +only
       end
     end
   
     [lines, curr_width]
   end
   
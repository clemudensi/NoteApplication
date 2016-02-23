module Rubyist
    class NotesApplication
    attr_reader :author 
    attr_accessor :notes_list
    
    
    def initialize(author)
        @author = author
        @notes_list = []
    end
        
    def create(note_content)
      if note_content.length > 0
             @notes_list.push(note_content)
        return "Note Created"

            else

            return "Enter a Valid Note"

            end        
    end
    
    def list
        key = ""

          for i in 0...@notes_list.length

           content = "Note ID: #{i} \n #{@notes[i]} \n By Author: #{@author}"

           key+=content

          return key
    end
  end

    def get(note_id)
       return @notes_list[note_id]
    end
  
   def search(search_text)
       return "Showing results for search '#{search_text}'"
       input = search_text.downcase
       @notes_list.each do |key, value|
           downcase_note = @note_list[key]["note"].downcase
           if downcase_note.include?(input)
              return  "Note ID: #{key} \n #{value["note"]}\n By Author #{value["author"]}\n"
            end
        end
    end
 
   def delete(note_id)
       @notes_list.delete_at(note_id)
   end
   
   def edit(note_id, new_content)
      @notes_list.insert(note_id, new_content)
 end   
end
end

require './mode1' 
RSpec.describe "NotesApplication" do
    
  context 'checks for several instances of initialize method' do 
    note_clem =  Rubyist::NotesApplication.new("Clem")
    note_amaka =  Rubyist::NotesApplication.new("Amaka")
    note_mali =  Rubyist::NotesApplication.new("Mali")
    note_tolu =  Rubyist::NotesApplication.new("Tolu")
    note_mayowa =  Rubyist::NotesApplication.new("Mayowa")
    note_steven=  Rubyist::NotesApplication.new("Steven")

    it "should return author name Clem" do
      expect(note_clem.author).to eq "Clem"
    end
    it "should reutrn author name Amaka" do
      expect(note_amaka.author).to eq "Amaka"
    end
    it "should reutrn author name Mali" do
      expect(note_mali.author).to eq "Mali"
    end
    it "should reutrn author name Tolu" do
      expect(note_tolu.author).to eq "Tolu"
    end
    it "should reutrn author name Mayowa" do
      expect(note_mayowa.author).to eq "Mayowa"
    end
    it "should reutrn author name Steven" do
      expect(note_steven.author).to eq "Steven"
    end
  end
   
    
  context "Checks if method" do
    newauthor =  Rubyist::NotesApplication.new("Clem")
    newauthor.create("Ruby and application Building")
    newauthor.create("Ruby class")
    newauthor.create("The life of a Fellow")
    newauthor.create("The life of a programmer")

    it 'initialize returns name of author' do 
      expect(newauthor.author).to eq "Clem"
    end
    it 'get returns notes with index 0' do
      expect(newauthor.get(0)).to eq "Ruby and application Building"
    end
    it 'get returns notes with index 1' do
      expect(newauthor.get(1)).to eq "Ruby class"
    end
    it 'get returns notes with index 2' do
      expect(newauthor.get(2)).to eq "The life of a Fellow"
    end
    it 'get returns notes with index 3' do
      expect(newauthor.get(3)).to eq "The life of a programmer"
    end
        
    it 'edit edit the the note given the index and the new content' do
      expect {newauthor.edit(0,"live and learn")}.to change {newauthor.get(0)}. from("Ruby and application Building").to("live and learn")
    end

    it 'delete returns some notes with index 0' do
      expect(newauthor.delete(0)).to eq nil
    end

    it 'delete returns some notes with index 1' do
      expect(newauthor.delete(1)).to eq nil
    end
    it 'delete returns some notes with index 2' do
      expect(newauthor.delete(2)).to eq nil
    end

    it 'delete returns some notes with index 3' do
      expect(newauthor.delete(3)).to eq nil
    end
  end
end

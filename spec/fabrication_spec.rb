RSpec.describe "Fabrication" do
  context "creation" do
    it "creates with default attributes" do
      book = Fabricate.create(:book)

      expect(book.id).to_not be_nil
      expect(book.title).to  eq("Hanami")
    end

    it "creates with inline attributes" do
      book = Fabricate.create(:book, title: "Fabrication")

      expect(book.id).to_not be_nil
      expect(book.title).to  eq("Fabrication")
    end
  end

  context "build" do
    it "builds with default attributes" do
      book = Fabricate.build(:book)

      expect(book.id).to    be_nil
      expect(book.title).to eq("Hanami")
    end

    it "builds with inline attributes" do
      book = Fabricate.build(:book, title: "Fabrication")

      expect(book.id).to    be_nil
      expect(book.title).to eq("Fabrication")
    end
  end

  context "attributes" do
    it "fabricates default attributes" do
      attributes = Fabricate.attributes_for(:book)

      expect(attributes.fetch(:id, nil)).to    be_nil
      expect(attributes.fetch(:title, nil)).to eq("Hanami")
    end

    it "fabricates inline attributes" do
      attributes = Fabricate.attributes_for(:book, title: "Fabrication")

      expect(attributes.fetch(:id, nil)).to    be_nil
      expect(attributes.fetch(:title, nil)).to eq("Fabrication")
    end
  end
end

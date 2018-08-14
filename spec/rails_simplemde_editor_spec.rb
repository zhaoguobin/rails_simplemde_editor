RSpec.describe RailsSimplemdeEditor do
  it "has a version number" do
    expect(RailsSimplemdeEditor::VERSION).not_to be nil
  end

  it "has an Engine class, which inherited from Rails::Engine" do
    expect(RailsSimplemdeEditor::Engine.superclass).to be Rails::Engine
  end
end

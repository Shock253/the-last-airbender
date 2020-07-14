class Member
  attr_reader :affiliation, :photo, :enemies, :allies, :name
  def initialize(params)
    @name = params[:name]
    @affiliation = params[:affiliation]
    @photo = params[:photoUrl]
    @enemies = params[:enemies]
    @allies = params[:allies]
  end
end

class Member
  attr_reader :affiiation, :photo, :enemies, :allies, :name
  def initialize(params)
    @name = params[:name]
    @affiiation = params[:affiliation]
    @photo = params[:photoUrl]
    @enemies = params[:enemies]
    @allies = params[:allies]
  end
end

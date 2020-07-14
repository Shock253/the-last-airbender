class AvatarService

  def members(nation)
    nation_names = {
      fire_nation: "Fire Nation",
      earth_kingdom: "Earth Kingdom",
      water_tribe: "Water Tribe",
      air_nomads: "Air Nomads"
    }
    params = {
      affiliation: nation_names[nation.to_sym]
    }
    get_json('/api/v1/characters', params).reduce([]) do |members, data|
      members << Member.new(data)
    end
  end

  private
  def get_json(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com') do |f|
      f.adapter Faraday.default_adapter
    end
  end

end

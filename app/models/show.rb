class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters

    def actors_list
        actors_names = []
        self.characters.each do | character |
            first_name = character.actor.first_name
            last_name = character.actor.last_name
            actors_names << "#{first_name} #{last_name}"
        end
        actors_names
    end
end
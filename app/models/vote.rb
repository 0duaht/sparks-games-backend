class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :category



  def self.top_votes
    categories_by_id = Category.hash_by_id
    users_by_email = User.hash_by_email

    prepare_votes.map do |key, value|
      {
        category: categories_by_id[key],
        user: users_by_email[value[:email]]
      }
    end
  end

  private

  def self.prepare_votes
    result = {}
    self.group(:category_id, :email).count.each do |key, value|
      unless result[key[0]] && result[key[0]][:value] > value
        result[key[0]] = {value: value, email: key[1]}
      end
    end
    result
  end
end

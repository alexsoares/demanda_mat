class Log < ActiveRecord::Base
  belongs_to :user
  belongs_to :crianca
  def nome_user
    return User.find(user_id).nome
  end
end

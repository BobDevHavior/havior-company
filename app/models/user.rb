class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def description
    "Je suis #{job.downcase} chez Havior Company depuis #{years} ans
    et j'aime accompagner les entreprises pour que leur image les aide
    dans leurs projets. Et sinon je suis passionné de #{hobby}."
  end

  def name
    "#{first_name&.capitalize} #{last_name&.capitalize}"
  end
end

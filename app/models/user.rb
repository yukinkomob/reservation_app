# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string
#  allow_password_change  :boolean          default(FALSE)
#  birthday               :string
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  furigana               :string
#  gender                 :string
#  image                  :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  name                   :string
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  tel                    :string
#  tokens                 :text
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#
class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :stores, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :deliveries, dependent: :destroy
  has_many :word_mouths, dependent: :destroy
  has_many :store_discount_info_notifications, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :furigana, presence: true, length: { maximum: 100 }
  validates :tel, presence: true, format: { with: /[0-9]/ }, length: { maximum: 21 }
  validates :birthday, presence: true, format: { with: /[0-9]/ }, length: { maximum: 10 }
  validates :gender, presence: true
  validates :address, presence: true
end

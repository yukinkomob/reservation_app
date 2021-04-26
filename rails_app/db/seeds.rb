(1..3).each do |i| # rubocop:disable Metrics/BlockLength
  User.create!(name: "ユーザー#{i}",
               email: "user#{i}@sample.com",
               furigana: "ユーザー#{i}",
               tel: "12345678#{i}",
               birthday: "2021041#{i}",
               six: "男",
               address: "大阪",
               password: "#{i}#{i}#{i}#{i}#{i}#{i}",
               password_confirmation: "#{i}#{i}#{i}#{i}#{i}#{i}")

  Store.create!(name: "店舗#{i}",
                email: "store#{i}@sample.com",
                furigana: "テンポ#{i}",
                tel: "12345678#{i}",
                fax: "12345678#{i}",
                postal_code: "1234567",
                url: "http://sample#{i}",
                address: "大阪",
                seat: "#{i}#{i}#{i}",
                restaurant: "店舗名#{i}",
                genre: "飲食業",
                responsible_party: "担当者#{i}",
                other: "アレルギー#{i}",
                password: "#{i}#{i}#{i}#{i}#{i}#{i}",
                password_confirmation: "#{i}#{i}#{i}#{i}#{i}#{i}")

  Reservation.create!(date_at: "2021-0#{i}-0#{i}",
                      date_on: "2021-0#{i}-0#{i}",
                      number_people: "#{i}#{i}#{i}",
                      menu: "メニュー#{i}",
                      budget: 10000,
                      inquiry: "メモ#{i}",
                      reservation_number: "ABC#{i}#{i}#{i}" * 2,
                      user_id: i,
                      store_id: i)
end

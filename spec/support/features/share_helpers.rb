module Features
  module ShareHelpers
    def share_form(share)
      fill_in "Artist", with: share.artist
      fill_in "Album", with: share.album
      fill_in "Url", with: share.url
      yield
    end

    def expect_page_to_have_share(share)
      expect(page).to have_content(share.artist)
      expect(page).to have_content(share.album)
      expect(page).to have_css("a[href='#{share.url}']")
    end
  end
end

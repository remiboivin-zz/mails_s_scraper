class Scrapper
  def   initialize(link)
    url = Url.new(link)
    links = url.get_uri()
    emails = Email.new(links)
    mails = emails.get_all_mails
  end
end

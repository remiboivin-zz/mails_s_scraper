class Email
  def   initialize
    @email = []
  end

  def get_all_mails(links)
    j = 0
    emails = []
    links.each do |link|
      emails[j] = get_email(link)
      puts emails[j]
      j +=1
    end
    return emails
  end

 def get_email(url)
        page = Nokogiri::HTML(open(url))
        page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
 end
end

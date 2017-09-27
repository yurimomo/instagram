class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_picture.subject
  #
  def sendmail_picture(pic)
    @pic = pic
    @greeting = "Hi"

    mail to: "yuri715lily_momo@yahoo.co.jp",
    subject: '写真が投稿されました'

  end
end

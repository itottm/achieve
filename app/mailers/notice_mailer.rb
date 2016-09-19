class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog (blog)
    @blog = blog

    mail to: "rhcp2106@fork.ocn.ne.jp",
         subject: '【Achieve】ブログが投稿されました'
  end
  def sendmail_contact (contact)
    @contact = contact

    mail to: user.email,
         subject: '【Achieve】問い合わせを受け付けました'
  end
end

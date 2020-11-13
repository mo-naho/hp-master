class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create contact_params
    if @contact.save then
      notice_contact_info(@contact)
      redirect_to '/home'
    else
      render 'new'
    end
  end

  def notice_slack(message)
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping(message)
  end

  def notice_contact_info(contact)
    # 本文を生成
    message = <<~"EOS"
      Webサイトより，新しいコンタクトが追加されました！！
      名前：#{contact.name}
      要件:#{contact.main}
    EOS
    # Slack通知処理を呼び出し
    notice_slack(message)
  end

private
  def contact_params
    params.require(:contact).permit(:name, :mail, :main)
  end
end

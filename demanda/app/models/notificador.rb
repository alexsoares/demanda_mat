class Notificador < ActionMailer::Base
  def notificar(user)
    recipients user.email
    from  "demanda@ribeirosoares.com"
    subject "Usuário Cadastrado com sucesso"
    body :user => user
  end
end

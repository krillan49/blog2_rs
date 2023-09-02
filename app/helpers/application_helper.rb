module ApplicationHelper

  # Для доступа к ссылкам/кнопкам редактирования/удаления контента
  def have_access_to_content?(object)
    user_signed_in? && (current_user == object.user or current_user.try(:admin?))
  end

  # Проверка на админа
  def admin?
    user_signed_in? && current_user.try(:admin?)
  end
  
end

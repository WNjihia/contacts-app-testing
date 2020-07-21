class ContactsScreen
  def create_contact
    find_element(:id, "floating_action_button").click
  end

  def first_name
    find_element(:xpath, "//android.widget.EditText[@index='0']")
  end

  def last_name
    find_element(:xpath, "//android.widget.EditText[@index='1']")
  end

  def phone
    find_element(:xpath, "//android.widget.EditText[@text='Phone']")
  end

  def change_options(option)
    ReusableFunction.scroll_to(option)
    find_element(:xpath, "//android.widget.CheckedTextView[@text='#{option}']").click
  end

  def email
    find_element(:xpath, "//android.widget.EditText[@text='Email']")
  end

  def add_phone(phone_option, number)
    find_element(:xpath, "//android.widget.TextView[@text='Mobile']").click
    sleep 3
    change_options(phone_option)
    phone.send_keys(number)
  end

  def add_email(email_option, email_add)
    email.send_keys(email_add)
    ReusableFunction.scroll_up
    find_element(:xpath, "//android.widget.TextView[@text='Home']").click
    sleep 4
    change_options(email_option)
  end

  def add_contact_details
    first_name.send_keys(TestData.use_data('credentials','first_name'))
    last_name.send_keys(TestData.use_data('credentials','last_name'))
    add_email(TestData.use_data('credentials','email_option'), TestData.use_data('credentials','email'))
    add_phone(TestData.use_data('credentials','mobile_option'), TestData.use_data('credentials','mobile_number'))
    add_phone(TestData.use_data('credentials','phone_option'), TestData.use_data('credentials','phone'))
  end

  def tap_button(text)
    find_element(:xpath, "//android.widget.Button[@text='#{text}']").click
  end

  def verify_contact_saved
    element = find_element(:class_name, "//android.widget.Toast']")
    return element.text
  end

  def edit_contact
    find_element(:id, "menu_edit")
  end

  def tap_edit_contact
    edit_contact.click
  end

  def update_contact_name
    first_name.send_keys(TestData.use_data('credentials_update_options','first_name'))
    last_name.send_keys(TestData.use_data('credentials_update_options','last_name'))
    tap_button("SAVE")
  end
end
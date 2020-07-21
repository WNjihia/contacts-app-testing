Given(/^I tap on create contact$/) do
  contacts = ContactsScreen.new
  contacts.create_contact
  sleep 3
  contacts.tap_button("CANCEL")
end

Then(/^I add contact details$/) do
  sleep 3
  contacts = ContactsScreen.new
  contacts.add_contact_details
end

Then(/^I save the contact$/) do
  contacts = ContactsScreen.new
  contacts.tap_button("SAVE")
  sleep 7
end

And(/^contact is (.*?)$/) do |action|
  sleep 3
  contacts = ContactsScreen.new
  case action
  when 'created'
    raise 'Contact not created' if contacts.verify_contact_saved != "Bring Digital saved"
  when 'updated'
    raise 'Contact not updated' if contacts.verify_contact_saved != "Doris Testing saved"
  end
end

When(/^I tap on edit contact$/) do
  contacts = ContactsScreen.new
  contacts.tap_edit_contact
end

And(/^I update contact name$/) do
  sleep 4
  contacts = ContactsScreen.new
  contacts.update_contact_name
end
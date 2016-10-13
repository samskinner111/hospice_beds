# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

hospices = Hospice.create([
  {name: 'Peachtree Chrisitian', address1: '132 Dayton Highway', address2: 'Suite 201', city: 'Atlanta', state: 'Georgia', zipcode: '30043', main_phone: '770-674-2109', fax: '770-126-2019', referral_phone: '678-213-2000', description: '42 bed hospice located in heart of Atlanta.', bed_owner: true}, 
  {name: 'MeSun Hospice', address1: '821 Springwell Rd', address2: '', city: 'Alpharetta', state: 'Georgia', zipcode: '30045', main_phone: '770-432-1200', fax: '770412-0921', referral_phone: '', description: 'We take care seriously, Hospice and Palliative care only.', bed_owner: true}, 
  {name: 'Harbor Grace', address1: '2809 Light Haven Way', address2: '', city: 'Roswell', state: 'Georgia', zipcode: '30017', main_phone: '678-321-1345', fax: '470-210-2177', referral_phone: '770-198-8874', description:"When care can't wait, we get the ball rolling.", bed_owner: true}, 
  {name:"Doctor's Hospice", address1: '1 Purple Hull Drive', address2: '', city: 'Snellville', state: 'Georgia', zipcode: '30043', main_phone: '678-195-82100', fax: '404-213-0009', referral_phone: '', description: 'Care is number one on our list. Patients and families feel at home.', bed_owner: true}])

beds = Bed.create([
  {hospice_id: 1, status: 'open', room_type: 'private', bed_type: 'Respite', gender: 'male', desc: 'Green Room, Bed B'},
  {hospice_id: 1, status: 'open', room_type: 'semi-private', bed_type: 'Respite', gender: 'female', desc: 'L Corridor, Room 32, Bed A'},
  {hospice_id: 2, status: 'occupied', room_type: 'private', bed_type: 'In-patient', gender: 'female', desc: 'Bed 72A'},
  {hospice_id: 3, status: 'occupied', room_type: 'semi-private', bed_type: 'In-patient', gender: 'male', desc: 'Hall 3, Room 5, Bed 4'}])

# users = User.create([
#   {email: 'nurse1@example.com', password: 'password', hospice_id: 1, admin: true},
#   {email: 'nurse2@example.com', password: 'password', hospice_id: 2, admin: true},
#   {email: 'nurse3@example.com', password: 'password', hospice_id: 3, admin: true},
#   {email: 'nurse4@example.com', password: 'password', hospice_id: 4, admin: false}])

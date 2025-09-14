room = Room.create!(
  number: "8", 
  room_type: 8, 
  price: 50, 
  status: 8)

guest = Guest.create!(
  first_name: "Cristobal", 
  last_name:"Diaz", 
  email:"cdiaz11@miuandes.cl", 
  phone: "+56926476953", 
  document_id: "546897536")

reservation = Reservation.create!(
  code: "AA0000", 
  guest_id: guest.id, 
  room_id: room.id, 
  check_in: Date.new(2025, 9, 5), 
  check_out: Date.new(2025, 9, 7), 
  status: 0, 
  adults: 2, 
  children: 0)

service = Service.create!(
  name: "Lunch", 
  price: 10, 
  is_active: true)

ServiceUsage.create!(
  reservation_id: 8, 
  service_id: 8, 
  quantity:2, 
  used_at: DateTime.new(2025, 9, 7, 14, 30), 
  note: "Buen servicio")

Invoice.create!(
  reservation_id: 8, 
  nights_subtotal: 50 * 5, 
  services_subtotal: 50, 
  tax: 19, 
  total: 319, 
  issued_at: DateTime.new(2025, 9, 7, 14, 30), 
  status: 0)

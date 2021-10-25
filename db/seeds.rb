Client.create(
    email: "steve@apple.com",
    password: "123",
    company_name: "Apple",
    is_admin: false
)
Client.create(
    email: "Blane@revivn.com",
    password: "refresh",
    company_name: "Revivn",
    is_admin: true
)
Client.create(
    email: "Johnson.liu@fox.com",
    password: "21CF",
    company_name: "Fox",
    is_admin: true,
)
Ticket.create(
    description: "Pickup 20 Macs",
    date: "2021-10-26",
    location: "6th ave",
    status: "Picked Up",
    employee: "Jason",
    email: "steve@apple.com"
)
Ticket.create(
    description: "Pickup 20 Laptops",
    date: "2021-10-21",
    location: "5th ave",
    status: "Arrived",
    employee: "Brian",
    email: "steve@apple.com"
)
Employee.create(
    first_name: "Jason",
    last_name: "Jason",
    email: "Jason@revivn.com",
    phone_number: 2122129969
)


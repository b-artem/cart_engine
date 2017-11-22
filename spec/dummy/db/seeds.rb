Book.create(title: 'This is a test book 1 title', price: 100)
Book.create(title: 'This is a test book 2 title', price: 100)
Book.create(title: 'This is a test book 3 title', price: 100)
ShoppingCart::LineItem.create(product: Book.find(1),
                cart: ShoppingCart::Cart.last,
                price: Book.find(1).price,
                quantity: 1)
ShoppingCart::LineItem.create(product: Book.find(2),
                cart: ShoppingCart::Cart.last,
                price: Book.find(2).price,
                quantity: 1)

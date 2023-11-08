set search_path to balloon_project;


INSERT INTO customer (name, phone_number, email)
VALUES
  ('Alice', '123-456-7890', 'alice@example.com'),
  ('Bob', '987-654-3210', 'bob@example.com'),
  ('Charlie', '555-555-5555', 'charlie@example.com'),
  ('David', '111-222-3333', 'david@example.com'),
  ('Eve', '999-888-7777', 'eve@example.com');


INSERT INTO request (budget, message, event_type, customer_id)
VALUES
  (100.00, 'Looking for a birthday balloon', 'Birthday', 1),
  (50.00, 'Need balloons for a wedding', 'Wedding', 2),
  (75.00, 'Corporate event balloon order', 'Corporate', 3),
  (80.00, 'Graduation party balloons', 'Graduation', 4),
  (120.00, 'Anniversary balloon decorations', 'Anniversary', 5);

INSERT INTO address (address, city, postal_code, last_update, request_id)
VALUES
  ('123 Main St', 'Montreal', 'H1A 1A1', '2023-5-07 14:30:00', 1),
  ('456 Elm St', 'Montreal', 'H2B 2B2', '2023-6-12 15:15:00', 2),
  ('789 Oak St', 'Montreal', 'H3C 3C3', '2023-8-08 16:00:00', 3),
  ('101 Pine St', 'Montreal', 'H4D 4D4', '2023-10-10 16:45:00', 4),
  ('222 Cedar St', 'Montreal', 'H5E 5E5', '2023-11-07 17:30:00', 5);

INSERT INTO product (name, price, status, description, category, image_url, request_id)
VALUES
  ('Birthday Balloon', 10.00, 'Available', 'Colorful birthday balloons', 'Birthday', 'image1.jpg', 1),
  ('Wedding Balloon', 8.00, 'Available', 'Elegant wedding balloons', 'Wedding', 'image2.jpg', 2),
  ('Corporate Balloon', 12.00, 'Available', 'Corporate event balloons', 'Corporate', 'image3.jpg', 3),
  ('Graduation Balloon', 7.00, 'Available', 'Graduation party balloons', 'Graduation', 'image4.jpg', 4),
  ('Anniversary Balloon', 15.00, 'Available', 'Romantic anniversary balloons', 'Anniversary', 'image5.jpg', 5);

INSERT INTO banner (image_url, title)
VALUES
  ('banner1.jpg', 'Birthday Sale'),
  ('banner2.jpg', 'Wedding Balloons Special'),
  ('banner3.jpg', 'Corporate Event Promotion'),
  ('banner4.jpg', 'Graduation Balloon Offer'),
  ('banner5.jpg', 'Anniversary Celebration Sale');

INSERT INTO admin (username, password)
VALUES
  ('admin1', 'abcd1234');
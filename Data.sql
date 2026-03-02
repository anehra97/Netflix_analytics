CREATE TABLE netflix_streaming_data (
    stream_id INT PRIMARY KEY,
    user_id INT,
    user_name VARCHAR(50),
    subscription_type VARCHAR(20),
    country VARCHAR(30),
    content_title VARCHAR(100),
    content_type VARCHAR(20),
    genre VARCHAR(30),
    language VARCHAR(30),
    watch_hours DECIMAL(5,2),
    rating DECIMAL(3,1),
    device_type VARCHAR(30),
    watch_date DATE
);


INSERT INTO netflix_streaming_data VALUES
(1, 1001, 'Rahul Sharma', 'Premium', 'India', 'Sacred Games', 'Series', 'Crime', 'Hindi', 5.5, 8.5, 'Mobile', '2024-01-05'),
(2, 1002, 'Sneha Verma', 'Standard', 'India', 'Delhi Crime', 'Series', 'Crime', 'Hindi', 3.0, 8.0, 'TV', '2024-01-07'),
(3, 1003, 'Amit Singh', 'Basic', 'USA', 'Stranger Things', 'Series', 'Sci-Fi', 'English', 6.0, 9.0, 'Laptop', '2024-01-08'),
(4, 1004, 'Ritu Saxena', 'Premium', 'UK', 'The Crown', 'Series', 'Drama', 'English', 4.5, 8.8, 'TV', '2024-01-10'),
(5, 1005, 'Suresh Rao', 'Standard', 'India', 'RRR', 'Movie', 'Action', 'Telugu', 2.5, 8.2, 'Mobile', '2024-01-12'),
(6, 1006, 'Pooja Gupta', 'Premium', 'Canada', 'Extraction', 'Movie', 'Action', 'English', 3.2, 7.5, 'Laptop', '2024-01-15'),
(7, 1007, 'Neha Patel', 'Basic', 'India', 'Lust Stories', 'Movie', 'Drama', 'Hindi', 2.8, 7.0, 'Mobile', '2024-01-18'),
(8, 1008, 'Ravi Kumar', 'Premium', 'USA', 'Breaking Bad', 'Series', 'Crime', 'English', 7.5, 9.5, 'TV', '2024-01-20'),
(9, 1009, 'Anjali Mehta', 'Standard', 'India', 'Wednesday', 'Series', 'Fantasy', 'English', 4.2, 8.3, 'Laptop', '2024-01-22'),
(10, 1010, 'Vikas Das', 'Basic', 'Australia', 'Money Heist', 'Series', 'Crime', 'Spanish', 5.0, 8.7, 'Mobile', '2024-01-25'),
(11, 1011, 'Sunita Iyer', 'Premium', 'India', 'Darlings', 'Movie', 'Drama', 'Hindi', 2.2, 7.8, 'TV', '2024-02-01'),
(12, 1012, 'Karan Khanna', 'Standard', 'USA', 'Narcos', 'Series', 'Crime', 'Spanish', 4.0, 8.4, 'Laptop', '2024-02-03'),
(13, 1013, 'Manish Jain', 'Premium', 'India', 'Jawan', 'Movie', 'Action', 'Hindi', 3.5, 8.1, 'Mobile', '2024-02-05'),
(14, 1014, 'Pallavi Joshi', 'Basic', 'UK', 'The Witcher', 'Series', 'Fantasy', 'English', 6.3, 8.2, 'TV', '2024-02-07'),
(15, 1015, 'Deepak Yadav', 'Premium', 'India', 'Mirzapur', 'Series', 'Crime', 'Hindi', 5.8, 8.6, 'Laptop', '2024-02-09'),
(16, 1016, 'Mehul Shah', 'Standard', 'Canada', 'The Gray Man', 'Movie', 'Action', 'English', 2.7, 7.3, 'Mobile', '2024-02-11'),
(17, 1017, 'Rohit Malhotra', 'Premium', 'USA', 'Ozark', 'Series', 'Crime', 'English', 6.5, 8.9, 'TV', '2024-02-13'),
(18, 1018, 'Kavita Nair', 'Standard', 'India', 'Queen', 'Movie', 'Drama', 'Hindi', 3.1, 8.0, 'Laptop', '2024-02-15'),
(19, 1019, 'Nitin Agarwal', 'Basic', 'India', 'KGF', 'Movie', 'Action', 'Kannada', 2.9, 8.4, 'Mobile', '2024-02-17'),
(20, 1020, 'Ramesh Gupta', 'Premium', 'UK', 'Dark', 'Series', 'Sci-Fi', 'German', 5.6, 8.8, 'TV', '2024-02-19');

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resort Paradise</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- FontAwesome for Icons (Correct Link) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <!-- Header with Bootstrap Navbar -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <!-- Logo -->
                <a class="navbar-brand" href="#">Resort Paradise</a>

                <!-- Hamburger Button -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Collapsible Menu -->
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#rooms">Rooms</a></li>
                        <li class="nav-item"><a class="nav-link" href="#booking">Book Now</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero text-center text-white d-flex align-items-center justify-content-center" style="background: url('https://via.placeholder.com/1200x500') no-repeat center; height: 400px;">
        <div>
            <h2>Your Dream Vacation Awaits</h2>
            <p>Experience the best of luxury, relaxation, and adventure at Resort Paradise.</p>
            <a href="#booking" class="btn btn-primary">Book Your Stay</a>
        </div>
    </section>

    <!-- About Us Section -->
    <section id="about" class="container mt-5">
        <h2 class="text-center">About Us</h2>
        <p class="text-center">We provide a luxurious, serene, and adventurous experience at Resort Paradise. Enjoy breathtaking views, world-class facilities, and unique experiences.</p>
    </section>

    <!-- Rooms Section -->
    <section id="rooms" class="container mt-5">
        <h2 class="text-center">Our Rooms</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="Ocean View Suite">
                    <div class="card-body">
                        <h3 class="card-title">Ocean View Suite</h3>
                        <p class="card-text">Enjoy stunning ocean views from your private suite.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="Luxury Villa">
                    <div class="card-body">
                        <h3 class="card-title">Luxury Villa</h3>
                        <p class="card-text">Experience ultimate comfort in our spacious luxury villa.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://via.placeholder.com/300" class="card-img-top" alt="Mountain Retreat">
                    <div class="card-body">
                        <h3 class="card-title">Mountain Retreat</h3>
                        <p class="card-text">Reconnect with nature in our mountain retreat rooms.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Booking Section -->
    <section id="booking" class="container mt-5">
        <h2 class="text-center">Book Your Stay</h2>
        <form id="bookingForm" class="mx-auto" style="max-width: 500px;">
            <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Your Full Name" required>
            </div>

            <div class="mb-3">
                <label for="checkin" class="form-label">Check-In Date</label>
                <input type="date" class="form-control" id="checkin" name="checkin" required>
            </div>

            <div class="mb-3">
                <label for="checkout" class="form-label">Check-Out Date</label>
                <input type="date" class="form-control" id="checkout" name="checkout" required>
            </div>

            <div class="mb-3">
                <label for="room" class="form-label">Select Room</label>
                <select class="form-select" id="room" name="room" required>
                    <option value="ocean_suite">Ocean View Suite</option>
                    <option value="luxury_villa">Luxury Villa</option>
                    <option value="mountain_retreat">Mountain Retreat</option>
                </select>
            </div>

            <button type="submit" class="btn btn-success w-100">Book Now</button>
        </form>
    </section>

   <!-- Footer Section -->
<footer id="contact" class="bg-dark text-center text-white py-3 mt-5">
    <p>&copy; 2025 Resort Paradise | All Rights Reserved</p>
    <div class="social-icons mt-2">
        <a href="https://wa.me/yourwhatsapplink" target="_blank" class="text-white mx-2" style="text-decoration: none;">
            <i class="fab fa-whatsapp fa-2x"></i>
        </a>
        <a href="https://facebook.com/yourpage" target="_blank" class="text-white mx-2" style="text-decoration: none;">
            <i class="fab fa-facebook fa-2x"></i>
        </a>
        <a href="https://twitter.com/yourprofile" target="_blank" class="text-white mx-2" style="text-decoration: none;">
            <i class="fab fa-twitter fa-2x"></i>
        </a>
        <a href="https://instagram.com/yourprofile" target="_blank" class="text-white mx-2" style="text-decoration: none;">
            <i class="fab fa-instagram fa-2x"></i>
        </a>
    </div>
</footer>


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JavaScript -->
    <script>
        document.getElementById('bookingForm').addEventListener('submit', function(e) {
            e.preventDefault();

            const name = document.getElementById('name').value;
            const checkin = document.getElementById('checkin').value;
            const checkout = document.getElementById('checkout').value;
            const room = document.getElementById('room').value;

            alert(`Booking Confirmed!\nName: ${name}\nCheck-In: ${checkin}\nCheck-Out: ${checkout}\nRoom: ${room}`);
        });
    </script>

</body>
</html>

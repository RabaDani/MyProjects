# 🚖 Taxi Fleet Management System

This is a backend REST API application for a taxi fleet management system. The application allows managing a fleet of vehicles and provides intelligent suggestions for assigning vehicles to trips based on various parameters.

## Features

1. **Vehicle Management**
   - Add new vehicles to the fleet
   - Retrieve information about vehicles
   - Update vehicle details
   - Remove vehicles from the fleet

2. **Trip Assignment**
   - Generate suggestions for assigning vehicles to trips
   - Calculate expected profit for each suggestion
   - Consider various factors like fuel efficiency, travel time, etc.

## Technology Stack

- **Language**: Java 17
- **Framework**: Spring Boot 3.2
- **Database**: MongoDB
- **Documentation**: Swagger/OpenAPI
- **Testing**: JUnit 5, Mockito

## Prerequisites

- Java 17 or higher
- Maven 3.6 or higher
- MongoDB 5.0 or higher

## Installation and Setup

1. **Clone the repository**
   ```bash
   git clone [repository URL]
   cd taxi-fleet-management
   ```

2. **Configure MongoDB**

   Make sure MongoDB is running on your system. You can modify the connection details in `src/main/resources/application.properties` if needed.

3. **Build the application**
   ```bash
   mvn clean install
   ```

4. **Run the application**
   ```bash
   mvn spring-boot:run
   ```

   The application will start on http://localhost:8080

## API Documentation

Once the application is running, you can access the Swagger UI at:
```
http://localhost:8080/swagger-ui.html
```

This provides interactive documentation where you can explore and test all available endpoints.

## API Endpoints

### Vehicle Management

- **POST** `/api/vehicles` - Add a new vehicle to the fleet  
- **GET** `/api/vehicles` - Get all vehicles in the fleet  
- **GET** `/api/vehicles/{id}` - Get a specific vehicle by ID  
- **PUT** `/api/vehicles/{id}` - Update a vehicle's details  
- **DELETE** `/api/vehicles/{id}` - Remove a vehicle from the fleet  

### Trip Assignment

- **POST** `/api/trips/suggestions` - Get suggestions for assigning vehicles to a trip

## Business Logic Details

### Profit Calculation

For each vehicle assignment suggestion, the profit is calculated as follows:

1. **Travel Fee**:
   - €2 per kilometer traveled
   - €2 per each started half-hour of travel time

2. **Refueling Cost**:
   - Gasoline vehicles: €2 per km traveled
   - Electric vehicles: €1 per km traveled

3. **Special Rules**:
   - City trips (under 50km): 2 minutes per km
   - Highway trips (50km+): 1 minute per km
   - Hybrid vehicles in city: Range decreases by 1km for every 2km traveled

4. **Profit** = Travel Fee - Refueling Cost

## Testing

To run the tests, use the following command:

```bash
mvn test
```

This will execute all unit and integration tests using **JUnit 5** and **Mockito** to ensure the application's functionality is correct.

---

## License

This project is intended for **assessment and educational purposes only**.  
It is not licensed for commercial use or redistribution.

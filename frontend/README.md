# Frontend - ReactJS with ChakraUI

This directory contains the frontend of the application built with ReactJS and ChakraUI.

## Prerequisites

- Node.js (version 14.x or higher)
- npm (version 6.x or higher)
- Docker

## Setup Instructions

### Running the Application Locally

1. **Navigate to the frontend directory:**

   ```bash
   cd frontend
   ```

2. **Install dependencies:**

   ```bash
   npm install
   ```

3. **Run the development server:**

   ```bash
   npm run dev -- --host
   ```

4. **Accessing the application using curl:**

   ```bash
   curl localhost:5173
   ```

5. **Accessing the UI:**

   Open your browser and navigate to:

   ```bash
   http://<your_domain_name>:5173
   ```

6. **Enable login access from the UI:**

   Change the `VITE_API_URL` variable in the `.env` file to point to your domain name instead of localhost:

   ```env
   VITE_API_URL=http://<your_domain_name>
   ```

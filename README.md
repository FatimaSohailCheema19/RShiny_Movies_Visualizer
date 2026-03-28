# 🎬 Movie Browser App (1970 - 2014)

An interactive **data visualization web application** built using **R Shiny**.  
This app enables users to explore movie-related data dynamically by selecting different variables and customizing the appearance of visualizations.

The application provides a user-friendly interface to analyze relationships between different movie attributes such as ratings, scores, and categories.

---

## 🚀 Key Features

✨ Interactive and dynamic scatter plot  
🎯 User-controlled X-axis and Y-axis selection  
🎨 Color grouping based on categorical variables  
🔍 Adjustable transparency (alpha) for better visualization  
🔵 Custom point size control  
⚡ Real-time plot updates without reloading  
📊 Clean and responsive user interface  

---

## 🛠️ Technologies Used

- 🟢 **R Programming Language**  
- 📦 **Shiny** (for web application framework)  
- 📊 **ggplot2** (for data visualization)  
- 🔄 **dplyr** (for data manipulation)  

---

## 📂 Project Structure

- `app.R` → Contains both UI (User Interface) and Server logic  
- *(Dataset not included in repository)*  

---

## ⚙️ Application Functionality

The application is divided into two main components:

### 🔹 1. User Interface (UI)

The sidebar panel provides interactive controls:

- **X-axis Selector**  
  → Choose any variable from the dataset to display on the X-axis  

- **Y-axis Selector**  
  → Choose any variable for the Y-axis  

- **Color Selector**  
  → Select a categorical variable to group data points by color  

- **Alpha Slider**  
  → Controls transparency of points (range: 0.1 to 1)  

- **Size Slider**  
  → Adjusts the size of points in the scatter plot  

---

### 🔹 2. Server Logic

- The server dynamically updates the plot based on user inputs  
- Uses `ggplot2` to generate scatter plots  
- Applies:
  - Selected X and Y variables  
  - Color grouping  
  - Custom alpha (transparency)  
  - Custom size  

- The plot is rendered in real-time using `renderPlot()`  

---

## 📊 Visualization Details

- The app generates a **scatter plot**  
- Helps identify:
  - Trends between variables  
  - Relationships (e.g., Critics Score vs Audience Score)  
  - Distribution of movie ratings  

- Color differentiation improves category-based comparison  

---

## 🖼️ Application Screenshot


---
## 🎮 How to Run the App

### Step 1: Install Required Packages

```r
install.packages(c("shiny", "ggplot2", "dplyr"))
```
---
## 👩‍💻 Author

Fatima Sohail

## ⭐ Notes
- This project is created for academic purposes
- The app can be extended into a full analytics dashboard

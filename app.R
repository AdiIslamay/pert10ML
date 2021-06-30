library(shiny)
library(semantic.dashboard)

ui <- dashboardPage(
  dashboardHeader(color = "dark",title = "My Portofolio", inverted = TRUE),
  dashboardSidebar(
    size = "thin", color = "teal",
    sidebarMenu(
      menuItem(tabName = "about", "About Me", icon = icon("home")),
      menuItem(tabName = "portofolio", "Portofolio", icon = icon("briefcase")),
      menuItem(tabName = "contact", "Contact", icon = icon("phone"))
    )
  ),
  dashboardBody(
    tabItems(
      selected = 1,
      tabItem(
        tabName = "about",
        fluidRow(
          box(
            color = "black",
            title = "Hello My Name Is Adi Islamay",
            width = 14,
          img(src="gans.png", height="100%", width="100%")
          )
        )
      ),
      tabItem(
        color = "blue",
        tabName = "portofolio",
        tags$div(
          img(src="apkjava.png", height="20%", width="40%"),
          img(src="database1.png", height="20%", width="40%"),
        
          tags$br(),
          
          img(src="techno.png", height="20%", width="40%"),
          img(src="apkjava.png", height="20%", width="40%"),
          
          tags$br(),
          
          img(src="database1.png", height="20%", width="40%"),
          img(src="techno.png", height="20%", width="40%"),
          
          tags$br(),
          
          img(src="web1.png", height="20%", width="40%"),
          img(src="web2.png", height="20%", width="40%"),
          
          tags$br(),
          
          img(src="Penempatan Stock Part(After)-.jpg", height="20%", width="40%"),
          img(src="cisco.png", height="20%", width="40%"),
          
          tags$br(),
          
          img(src="CLIENT-SERVER.png", height="20%", width="40%"),
          img(src="cisco2.png", height="20%", width="40%"),
          tags$iframe(src = "www.rstudio.com"),
        ),
      ),
      tabItem(
        tabName = "contact",
        fluidRow(
          box(
            title = "My Contact",
            width = 14,
              h4("Linkedin : Adi Islamay"),
              h4("Facebook : Adi Islamay"),
              h4("Twitter  : VivaldiAdi"),
              h4("No Telp : 0812-9421-5270"),
          )
        )
      )
    )
  )
)
server <- shinyServer(function(input, output, session) {})

shinyApp(ui, server)
# The MIT License (MIT)
#
# Copyright (c) 2015 Brandon Gavett

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#   
#   The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

shinyServer(function(input, output, session) {
  library(gtools)
  ds.errors <- function(stimulus, response, forward = TRUE){
    stimulus <- as.character(stimulus)
    response <- as.character(response)
    if(forward == FALSE) {
      correct.split <- rev(strsplit(stimulus, NULL)[[1]])
      stimulus <- paste(correct.split, collapse = '')
    } else correct.split <- strsplit(stimulus, NULL)[[1]]
    if(stimulus != response){
      correct <- FALSE
      d.length <- length(correct.split)
      poss.lengths.o <- d.length-1
      combns <- t(combn(1:d.length, d.length-1))
      omissions <- apply(matrix(correct.split[combn(1:d.length, d.length-1)], 
                                nrow = nrow(combns), 
                                byrow = T),
                         1, paste, collapse = '')
      for(i in 2:(d.length-1)){
        combns <- t(combn(1:d.length, i-1))
        omissions <- c(omissions, apply(matrix(correct.split[combn(1:d.length, i-1)], 
                                               nrow = nrow(combns), 
                                               byrow = T),
                                        1, paste, collapse = ''))
      }
      error.omit <- response %in% omissions
      error.addition <- length(strsplit(response, NULL)[[1]]) > length(strsplit(stimulus, NULL)[[1]])
      perms <- permutations(d.length, 1, correct.split)
      sequences <- c(perms)
      for(i in 2:d.length){
        perms <- permutations(d.length, i, correct.split)
        sequences <- c(sequences, apply(perms, 1, paste, collapse = ''))
      }
      sequences <- sequences[!(sequences %in% stimulus)]
      error.seq <- response %in% sequences
      
      if(length(strsplit(response, NULL)[[1]]) == d.length & error.seq == FALSE & correct == FALSE){
        error.sub <- TRUE
      } else error.sub <- FALSE
    } else {
      correct <- TRUE
      error.omit <- FALSE
      error.addition <- FALSE
      error.seq <- FALSE
      error.sub <- FALSE
    }
    
    error.type <- NA    
    if(error.addition == TRUE) error.type <- "Addition"
    if(error.seq == TRUE) error.type <- "Sequencing"
    if(error.omit == TRUE) error.type <- "Omission"
    if(error.sub == TRUE) error.type <- "Substitution"
    if(correct == TRUE) error.type <- "Correct"
    return(error.type)
  }
  
  f1.1e <- reactive({
    ds.errors(17, input$f1.1, forward = TRUE)
  })
  output$f1.1.out <- renderText(f1.1e())
  
  f1.2e <- reactive({
    ds.errors(63, input$f1.2, forward = TRUE)
  })
  output$f1.2.out <- renderText(f1.2e())
  
  f2.1e <- reactive({
    ds.errors(582, input$f2.1, forward = TRUE)
  })
  output$f2.1.out <- renderText(f2.1e())
  
  f2.2e <- reactive({
    ds.errors(694, input$f2.2, forward = TRUE)
  })
  output$f2.2.out <- renderText(f2.2e())
  
  f3.1e <- reactive({
    ds.errors(6439, input$f3.1, forward = TRUE)
  })
  output$f3.1.out <- renderText(f3.1e())
  
  f3.2e <- reactive({
    ds.errors(7286, input$f3.2, forward = TRUE)
  })
  output$f3.2.out <- renderText(f3.2e())
  
  f4.1e <- reactive({
    ds.errors(42731, input$f4.1, forward = TRUE)
  })
  output$f4.1.out <- renderText(f4.1e())
  
  f4.2e <- reactive({
    ds.errors(75836, input$f4.2, forward = TRUE)
  })
  output$f4.2.out <- renderText(f4.2e())
  
  f5.1e <- reactive({
    ds.errors(619473, input$f5.1, forward = TRUE)
  })
  output$f5.1.out <- renderText(f5.1e())
  
  f5.2e <- reactive({
    ds.errors(392487, input$f5.2, forward = TRUE)
  })
  output$f5.2.out <- renderText(f5.2e())
  
  f6.1e <- reactive({
    ds.errors(5917428, input$f6.1, forward = TRUE)
  })
  output$f6.1.out <- renderText(f6.1e())
  
  f6.2e <- reactive({
    ds.errors(4179386, input$f6.2, forward = TRUE)
  })
  output$f6.2.out <- renderText(f6.2e())
  
  f7.1e <- reactive({
    ds.errors(58192647, input$f7.1, forward = TRUE)
  })
  output$f7.1.out <- renderText(f7.1e())
  
  f7.2e <- reactive({
    ds.errors(38295174, input$f7.2, forward = TRUE)
  })
  output$f7.2.out <- renderText(f7.2e())
  
  f8.1e <- reactive({
    ds.errors(275862584, input$f8.1, forward = TRUE)
  })
  output$f8.1.out <- renderText(f8.1e())
  
  f8.2e <- reactive({
    ds.errors(713942568, input$f8.2, forward = TRUE)
  })
  output$f8.2.out <- renderText(f8.2e())
  
  b1.1e <- reactive({
    ds.errors(24, input$b1.1, forward = FALSE)
  })
  output$b1.1.out <- renderText(b1.1e())
  
  b1.2e <- reactive({
    ds.errors(57, input$b1.2, forward = FALSE)
  })
  output$b1.2.out <- renderText(b1.2e())
  
  b2.1e <- reactive({
    ds.errors(629, input$b2.1, forward = FALSE)
  })
  output$b2.1.out <- renderText(b2.1e())
  
  b2.2e <- reactive({
    ds.errors(415, input$b2.2, forward = FALSE)
  })
  output$b2.2.out <- renderText(b2.2e())
  
  b3.1e <- reactive({
    ds.errors(3279, input$b3.1, forward = FALSE)
  })
  output$b3.1.out <- renderText(b3.1e())
  
  b3.2e <- reactive({
    ds.errors(4968, input$b3.2, forward = FALSE)
  })
  output$b3.2.out <- renderText(b3.2e())
  
  b4.1e <- reactive({
    ds.errors(15286, input$b4.1, forward = FALSE)
  })
  output$b4.1.out <- renderText(b4.1e())
  
  b4.2e <- reactive({
    ds.errors(61843, input$b4.2, forward = FALSE)
  })
  output$b4.2.out <- renderText(b4.2e())
  
  b5.1e <- reactive({
    ds.errors(539418, input$b5.1, forward = FALSE)
  })
  output$b5.1.out <- renderText(b5.1e())
  
  b5.2e <- reactive({
    ds.errors(724856, input$b5.2, forward = FALSE)
  })
  output$b5.2.out <- renderText(b5.2e())
  
  b6.1e <- reactive({
    ds.errors(8129365, input$b6.1, forward = FALSE)
  })
  output$b6.1.out <- renderText(b6.1e())
  
  b6.2e <- reactive({
    ds.errors(4739128, input$b6.2, forward = FALSE)
  })
  output$b6.2.out <- renderText(b6.2e())
  
  b7.1e <- reactive({
    ds.errors(94376258, input$b7.1, forward = FALSE)
  })
  output$b7.1.out <- renderText(b7.1e())
  b7.2e <- reactive({
    ds.errors(72819653, input$b7.2, forward = FALSE)
  })
  output$b7.2.out <- renderText(b7.2e())
})